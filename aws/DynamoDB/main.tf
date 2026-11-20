resource "aws_dynamodb_table" "employee_table" {
  name         = var.table_name
  hash_key     = var.Hash_Key
  billing_mode = "PAY_PER_REQUEST"
  
  attribute {
    name = var.Hash_Key
    type = "N"
  }
   
}

resource "aws_s3_bucket" "create_bucket" {
    bucket = "terraform-slate-backend"
    tags = {
        description = "This is a test bucket"
    }
}

resource "aws_dynamodb_table_item" "add_item" {
  table_name = aws_dynamodb_table.employee_table.name
  hash_key = aws_dynamodb_table.employee_table.hash_key
  item = <<EOF
    {
        "emp_ID": {"N": "1"},
        "name": {"S":"Raj"},
        "city": {"S":"Kolkata"},
        "Role": {"S":"Developer"}
    }
    EOF
}