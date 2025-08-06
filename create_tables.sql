
CREATE TABLE IF NOT EXISTS items (
  id SERIAL PRIMARY KEY,
  nome TEXT NOT NULL,
  descricao TEXT NOT NULL,
  classificacao TEXT NOT NULL CHECK (classificacao IN ('ocioso','recuperável','antieconômico','irrecuperável')),
  quantidade INTEGER NOT NULL CHECK (quantidade >= 0),
  localizacao TEXT NOT NULL,
  patrimonio TEXT NOT NULL,
  imagem TEXT
);

CREATE TABLE IF NOT EXISTS requests (
  id SERIAL PRIMARY KEY,
  item_id INTEGER NOT NULL REFERENCES items(id) ON DELETE CASCADE,
  servidor TEXT NOT NULL,
  quantidade INTEGER NOT NULL CHECK (quantidade > 0),
  status TEXT NOT NULL DEFAULT 'pendente' CHECK (status IN ('pendente','aprovado','recusado')),
  created_at TIMESTAMP NOT NULL DEFAULT NOW()
);
