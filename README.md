
# Sistema Patrimonial – Deploy Vercel

Este pacote contém:
- index.html (frontend)
- /api (funções serverless)
- package.json
- vercel.json
- create_tables.sql (comandos para criar tabelas no Vercel Postgres)

## Passos:
1. Suba o projeto no GitHub ou importe no Vercel.
2. Crie banco no Vercel Postgres.
3. Adicione variável de ambiente: ADMIN_SECRET = Pomerode@1959@
4. No Query Console do Postgres, cole o conteúdo de create_tables.sql e execute.
5. Faça o deploy e acesse o sistema.
