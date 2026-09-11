-- 02_import_csv.sql — importa pedidos e itens a partir de data/raw.
-- Rodar a partir da raiz do repo (os caminhos são relativos a ela).
-- --skip 1 descarta o cabeçalho; sem .mode csv a vírgula não é reconhecida.
-- Pedidos antes dos itens: os itens referenciam o pedido.

.mode csv
.import --skip 1 data/raw/pedidos.csv Pedidos
.import --skip 1 data/raw/itens_pedido.csv ItensPedidos
