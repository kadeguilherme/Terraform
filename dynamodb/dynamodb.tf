resource "aws_dynamodb_table" "dynamodb-bank" {
    name = "DataBbase_Bank"
    billing_mode   = "PROVISIONED"
    read_capacity  = 20
    write_capacity = 20
    hash_key = "cpf"
    
  attribute {
    name = "cpf"
    type = "S"
  }


    tags = {
    Name = "ProductCatalog-tag"
  }

}


resource "aws_dynamodb_table_item" "account" {
  table_name = aws_dynamodb_table.dynamodb-bank.name
  hash_key = aws_dynamodb_table.dynamodb-bank.hash_key

  for_each = var.account

  item = <<ITEM
  {
    "cpf": {"S": "${ each.key }"},
    "name" : {"S" : "${ each.value.name }"},
    "age" : {"N" : "${ each.value.age }"}
  }
  ITEM
}
