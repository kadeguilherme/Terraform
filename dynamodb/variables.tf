variable "account" {
  type = map(object({
    name = string
    age  = number
    
  }))
}