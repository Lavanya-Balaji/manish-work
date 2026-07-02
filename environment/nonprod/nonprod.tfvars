application       = "Finance"

primary_location  = "Japan East"
secondary_location = "Japan West"

variable "tags" {
  description = "Tags for all resources"
  type        = map(string)
  default = {
    Application = "UCMSNonProd"
    DEPT        = "Dev"
    Environment = "Non-prod"
    created_by  = "Terraform"
    Location    = "East US"
  }
}

sql_admin_login    = "sqladmin"
sql_admin_password = "YourStrongPassword123!"