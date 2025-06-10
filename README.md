# Aplicação com Docker e Docker Compose

Este projeto é uma atividade prática que demonstra como subir uma aplicação web (CRUD de Contatos) com banco de dados MySQL e interface PHPMyAdmin, utilizando Docker e Docker Compose.

---

## 📁 Estrutura da Aplicação

- `app/` — Contém o código-fonte da aplicação PHP.
- `sql/` — Scripts SQL para criação do banco de dados e inserção de dados de teste.
- `docker-compose.yml` — Orquestra os serviços da aplicação (PHP, MySQL e PHPMyAdmin).
- `Dockerfile` — Define a imagem personalizada do ambiente PHP usado pela aplicação.

---

## ✅ Pré-requisitos

- Docker instalado  
- Docker Compose instalado

---

## ⚙️ Como executar

1. Clone este repositório:

```bash
git clone https://github.com/leefell/atv-docker.git
cd atv-docker
```

2. Construa e inicie os containers:

```bash
docker compose up --build -d
```

---

## 🌐 Acesso

O objetivo desta atividade é rodar a aplicação em uma instância **EC2 (Ubuntu)** da AWS, utilizando Docker e Docker Compose.

Após subir os containers, os serviços estarão disponíveis nos seguintes endereços:

- 🧩 **Aplicação:** `http://<IP-PÚBLICO-DA-EC2>:8080`
- 🛠️ **PHPMyAdmin:** `http://<IP-PÚBLICO-DA-EC2>:8081`

> 🔐 **Importante:** Certifique-se de que as portas `8080` e `8081` estão liberadas no **Security Group** da sua instância EC2, para permitir o acesso externo via navegador.

---

## 📌 Observações

- A aplicação principal estará disponível na porta `8080`.
- O PHPMyAdmin será acessado pela porta `8081`.
