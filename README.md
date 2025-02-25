# Infraestrutura como Código com Terraform e Kubernetes no GKE

Este repositório contém os arquivos e configurações utilizados durante o curso de **Infraestrutura como Código: Terraform e Kubernetes** oferecido pela Alura. O objetivo é provisionar e gerenciar um cluster Kubernetes no Google Kubernetes Engine (GKE) utilizando o Terraform.

## Estrutura do Repositório

- `infra/`: Contém os arquivos de configuração do Terraform para provisionar recursos no GCP, incluindo o cluster GKE.
- `env/`: Inclui arquivos de configuração específicos para diferentes ambientes (por exemplo, produção, homologação).
- `.gitignore`: Especifica arquivos e diretórios que devem ser ignorados pelo controle de versão.
- `README.md`: Este arquivo de documentação.

## Pré-requisitos

Antes de iniciar, certifique-se de ter instalado e configurado:

- [Terraform](https://www.terraform.io/downloads.html)
- [Google Cloud SDK](https://cloud.google.com/sdk/docs/install)

Além disso, é necessário ter uma conta no Google Cloud Platform (GCP) com faturamento ativado.

## Como Usar

1. **Clonar o Repositório:**

   ```sh
   git clone https://github.com/moraesv/iac-alura-kubernetes.git
   cd iac-alura-kubernetes
   ```

2. **Configurar as Credenciais do GCP:**

   Autentique-se no GCP:

   ```sh
   gcloud auth application-default login
   ```

3. **Provisionar a Infraestrutura com Terraform:**

   Navegue até o diretório `env/Prod` e inicialize o Terraform:

   ```sh
   cd env/Prod
   terraform init
   ```

   Em seguida, aplique as configurações:

   ```sh
   terraform apply
   ```

   Isso criará os recursos definidos, incluindo o cluster GKE.

## Observações

- Certifique-se de revisar e ajustar as configurações nos arquivos do Terraform conforme as necessidades do seu projeto.
- Lembre-se de gerenciar adequadamente as credenciais e informações sensíveis, evitando expô-las no controle de versão.

Para mais informações, consulte a [documentação oficial do Terraform](https://www.terraform.io/docs).
