resource "aws_dynamodb_table" "basic-dynamodb-lock" {
    name = "basic-dynamodb-lock"
    read_capacity  = 20
    write_capacity = 20
    hash_key = "UserId"
  
  attribute {
    name = "UserId"
    type = "S"
    
}

    tags = {
    Name = "dynamodb-table-1"

  }

  
}
