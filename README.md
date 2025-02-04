# 🛠️ FabLabCITe - Backend (Ruby on Rails)

Este repositório contém o backend do sistema **FabLab-CITe**, responsável pelo gerenciamento de:
- 📌 **Aluguel** de máquinas 3D e CNC.  
- 🎟️ **Inscrição** em eventos e mentorias.  
- 📰 **Publicação** de projetos e notícias da FabLab.  

## 🚀 Tecnologias Utilizadas

- **Linguagem:** Ruby 3.4.1  
- **Framework:** Rails 8.0.1 
- **Banco de Dados:** 
- **Autenticação:** 
- **Hospedagem:** Hostgator (compartilhado)  

---

## 📂 Estrutura do Projeto

```bash
📦 api-fablab ├── app/ # Código principal da aplicação (models, controllers, views)
├── bin/ # Scripts executáveis para inicialização e gerenciamento
├── config/ # Configurações da aplicação
├── db/ # Arquivos do banco de dados (migrations, seeds)
├── lib/tasks/ # Tarefas personalizadas do Rake
├── public/ # Arquivos estáticos e públicos
├── script/ # Scripts auxiliares
├── storage/ # Armazenamento de arquivos temporários e uploads
├── test/ # Testes automatizados
├── vendor/ # Dependências de terceiros (caso necessário)
├── .dockerignore # Arquivos a serem ignorados pelo Docker
├── .gitattributes # Configurações específicas do Git
├── .rubocop.yml # Configuração do RuboCop (analisador de código)
├── .ruby-version # Versão do Ruby utilizada no projeto
├── Dockerfile # Definição do ambiente Docker
├── Gemfile # Lista de dependências do projeto
├── Gemfile.lock # Versões exatas das dependências
├── README.md # Documentação do projeto
├── Rakefile # Tarefas automatizadas do Rails
└── config.ru # Arquivo de configuração para execução do Rack
