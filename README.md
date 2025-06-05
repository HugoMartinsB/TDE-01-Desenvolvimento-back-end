# Hospital CRUD – TDE 01 (Back‑end)

[![Status](https://img.shields.io/badge/status-construção-yellow)]()
[![License](https://img.shields.io/badge/licença-Privado-red)]()
[![Java](https://img.shields.io/badge/Java-17-blue?logo=java)]()
[![Maven](https://img.shields.io/badge/Maven-build-red?logo=apachemaven)]()
[![MySQL](https://img.shields.io/badge/MySQL-8.x-blue?logo=mysql)]()
[![Git](https://img.shields.io/badge/Git-version%20control-orange?logo=git)]()
[![GitHub](https://img.shields.io/badge/GitHub-repo-181717?logo=github)]()


Projeto de **backend simples em Java 17** focado em operações CRUD para um sistema hospitalar.  
Utiliza **Maven**, acesso direto via **JDBC** ao **MySQL** e estrutura DAO/Model.

> **Observação:** Este repositório parte de um esqueleto de código entregue para o Trabalho de Desenvolvimento de Software (TDE‑01). Implemente as regras de negócio dentro dos pacotes `dao` e `model`.

---

## Índice

- [Pré‑requisitos](#pré‑requisitos)
- [Configuração do banco](#configuração-do-banco)
- [Como rodar](#como-rodar)
- [Estrutura de pastas](#estrutura-de-pastas)
- [Próximos passos](#próximos-passos)
- [Créditos](#créditos)

## Pré‑requisitos

| Ferramenta | Versão recomendada |
|------------|-------------------|
| **JDK** | 17 LTS |
| **Maven** | 3.9+ |
| **MySQL** | 8.0+ |

## Configuração do banco

1. Crie o banco e tabelas executando o script:

```bash
mysql -u root -p < src/main/resources/"Banco de Dados.sql"
```

2. Ajuste as credenciais de conexão nos DAOs (por enquanto em linha).  
   Sugestão: extraia para um arquivo `db.properties` e leia com `Properties`.

## Como rodar

```bash
# compilar e empacotar
./mvnw clean package

# executar (classe Main)
java -cp target/TDE-01-Desenvolvimento-back-end-1.0-SNAPSHOT.jar org.example.Main
```

> Abra **Main.java** e ajuste testes manuais ou integre com framework web (Servlets, Spring etc.) se desejar expor API HTTP.

## Estrutura de pastas
```text
TDE-01-Desenvolvimento-back-end/
├── pom.xml
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   ├── dao/        # Camada de acesso a dados
│   │   │   ├── model/      # Entidades e validações
│   │   │   └── org/example/Main.java
│   │   └── resources/
│   │       └── Banco de Dados.sql
│   └── test/
└── README.md
```

## Próximos passos

- Implementar métodos CRUD completos em cada DAO.  
- Criar camada **Service** para regras de negócio.  
- Adicionar testes JUnit.  
- (Opcional) Migrar para **Spring Boot** ou **Jakarta EE** para expor REST ou MVC.

## Créditos

- **JDBC + Maven** – Oracle / Apache Foundation  
- **MySQL** – Oracle  
- Material de apoio do professor para o TDE‑01  

---

> Licença privada. Material acadêmico – não distribuir sem autorização.
