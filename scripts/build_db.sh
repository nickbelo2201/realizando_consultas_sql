#!/usr/bin/env sh
# Reconstrói serenato_dados.db do zero: schema -> carga -> views.
# Uso (de qualquer pasta): sh scripts/build_db.sh
set -e

cd "$(dirname "$0")/.."
DB=serenato_dados.db

rm -f "$DB" 2>/dev/null || true  # se o .db estiver aberto, o schema faz os DROPs
for f in sql/01_schema/*.sql sql/02_load/*.sql sql/03_transform/*.sql; do
    echo ">> $f"
    sqlite3 "$DB" < "$f"
done

echo "Pedidos: $(sqlite3 "$DB" 'SELECT COUNT(*) FROM Pedidos;')"
echo "Itens:   $(sqlite3 "$DB" 'SELECT COUNT(*) FROM ItensPedidos;')"
