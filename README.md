# Laboratório prático com Terraform Cloud AWS

Gerenciando infraestrutura como código com o Terraform.
O Terraform Labs reúne diversos projetos que desenvolvo para praticar o domínio sobre certos recursos, fixar meus conhecimentos em Terraform.

# Configurando seu ambiente
1 - Colocando as chaves de acesso no arquivo main.tf
```bash
provider "aws" {
    region = "us-east-1"
    access_key = "minha-chave-acesso"
    secret_key = "minha-chave-secreta"
  }
 ```
 >:warning:   As Chaves integrado no arquivo main.tf não são recomendadas em ambientes de produção só em abientes de teste, pois correm o risco de vazamento das chaves caso esse arquivo esteja em algum controle de versão de codigo.
>

2 - Colocando as chaves na Variáveis de ambiente (Linux)
```bash
    $ export AWS_ACCESS_KEY_ID="minha-chave-acesso"
    $ export AWS_SECRET_ACCESS_KEY="minha-chave-secreta"   
 ```
    
# Worflow Terraform
   ## Terraform init
   Inicializar o diretório de trabalho que contém os arquivos de configuracão. 
   
  ```bash
      terraform init  
  ```
  ## Terraform plan
   O comando executa um plano que verificar se o plano de execucão corresponde ás suas expectativas. Aqui podemos ver alterações nos recursos.
  
  ```bash
     terraform plan  
  ```
 ## Terraform apply
   O comando criar ou aplicar alteraçoẽs qeu estava no plan na infra-estrutura.
  
  ```bash
      terraform apply  
  ```
    
  ## Terraform destroy
   O comando destrói a infrasturura governada pelo terraform.state
  
  ```bash
      terraform destroy  
 ```
