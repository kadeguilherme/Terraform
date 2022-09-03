resource "aws_dynamodb_table" "dynamodb-bank" {
    name = "DataBbase_Bank"
    billing_mode   = "PROVISIONED"
    read_capacity  = 20
    write_capacity = 20
    hash_key = "cpf"
    
  attribute {
    name = "cpf"
    type = "N"
  }


    tags = {
    Name = "ProductCatalog-tag"
  }

}


resource "aws_dynamodb_table_item" "account" {
  table_name = aws_dynamodb_table.dynamodb-bank.name
  hash_key = aws_dynamodb_table.dynamodb-bank.hash_key

  for_each = {
  "1" = { 
    name = "Guilherme"
    age = 20
    }
  "2" = { 
    name = "Jose"
    age = 10
    }
  "3" = {
    name = "Camila"
    age = 54
  }
  }
  

  item = <<ITEM
  {
    "cpf": {"N": "${ each.key }"},
    "name" : {"S" : "${ each.value.name }"},
    "age" : {"N" : "${ each.value.age }"}
  }
  ITEM
}
