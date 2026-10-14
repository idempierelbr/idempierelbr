#!/bin/bash
# Ajusta o iDempiereLBR (base iDempiere 13) para o iDempiere 14.
# Uso: rode na raiz do LBR:  bash ajusta-lbr-idempiere14.sh
# Pode rodar mais de uma vez sem duplicar nada.
set -e

if [ ! -f pom.xml ] || ! ls -d org.idempierelbr.* >/dev/null 2>&1; then
  echo "Rode este script na pasta raiz do LBR (onde estão as pastas org.idempierelbr.*)."
  exit 1
fi

echo "1) Contabilidade: org.compiere.acct -> org.idempiere.acct.doc"
JAVAS=$(grep -rlE "org\.compiere\.acct\.|org\.adempiere\.base\.DefaultDocumentFactory" --include=*.java . || true)
for f in $JAVAS; do
  sed -i -E 's/\borg\.compiere\.acct\./org.idempiere.acct.doc./g; s/\borg\.adempiere\.base\.DefaultDocumentFactory\b/org.idempiere.acct.doc.DefaultDocumentFactory/g' "$f"
  echo "   $f"
done

echo "2) MANIFEST.MF: incluir org.idempiere.acct nos módulos que usam contabilidade"
for f in $JAVAS; do echo "${f#./}" | cut -d/ -f1; done | sort -u | while read mod; do
  mf="$mod/META-INF/MANIFEST.MF"
  [ -f "$mf" ] || continue
  if grep -q "org.idempiere.acct" "$mf"; then
    echo "   $mf (já tinha)"
  else
    # insere logo após a linha "Require-Bundle:" (mantém fim de linha CRLF se houver)
    awk 'BEGIN{done=0}
      /^Require-Bundle:/ && !done {
        cr=($0 ~ /\r$/)?"\r":""; line=$0; sub(/\r$/,"",line)
        if (line ~ /,$/) { print line cr; print " org.idempiere.acct;bundle-version=\"14.0.0\"," cr }
        else             { print line "," cr; print " org.idempiere.acct;bundle-version=\"14.0.0\"" cr }
        done=1; next }
      { print }' "$mf" > "$mf.tmp"
    mv "$mf.tmp" "$mf"
    echo "   $mf"
  fi
done

echo "3) Versão 13.0.0 -> 14.0.0 (pom.xml, MANIFEST.MF, feature.xml, category.xml, .product, .target)"
VERS=$(grep -rlE "13\.0\.0(-SNAPSHOT|\.qualifier|\")" --include=pom.xml --include=MANIFEST.MF --include=feature.xml --include=category.xml --include=*.product --include=*.target . || true)
for f in $VERS; do
  sed -i -E 's/13\.0\.0(-SNAPSHOT|\.qualifier|")/14.0.0\1/g' "$f"
done
echo "   $(echo "$VERS" | grep -c . ) arquivo(s)"

echo
echo "Pronto. Confira com: git status   e   git diff"
