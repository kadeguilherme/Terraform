# Auto Scalling

Auto Scalling mantém a disponibilidade dos aplicativos aumentando automaticamente a capacidade dos recursos.

#  Objetivo
Esse repósitorio tem como objetivo utilizar módulos do terraform, criar alguns recrusos da AWS e Terraform graph para gerar uma representação grafica do projeto :
- Utilizar variáveis no Terraform
- Utilizar o módulo output
- Criar Recursos da AWS security group, auto-scaling e Launch configurations
- Utilizar o recurso de modules 


# Utilizando terraform graph 
O terraform graph está usando o dot, é um linguagem de descrição de grafos em texto, rederiza o gráfico com formato svg e em seguida processa a saída para o arquivo graph.svg.
````
terraform graph | dot -Tsvg > graph.svg
````

## ⚠️ Dica: Gerando Representação gráfica mais amigável
O terraform Visual uma ferramenta simples para visualizar sua Plan do Terraform é bem simples e amigável de usá-lo.
[Terraform Visual]("https://hieven.github.io/terraform-visual/")


## Representacão visual da Aplicacão com Terraform Visual 

![](https://github.com/kadeguilherme/Terraform/blob/main/auto_scaling/terradorm-visual.png)
