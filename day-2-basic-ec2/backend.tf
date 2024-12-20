# terraform {
#   backend "s3" {
#     bucket  = "MulticlouddevOps" #Name of the s3 bucket
#     region  = "us-west-2"        #Specify the region
#     key     = "terraform.tfstate"#Path within the bucket where the state will be read/written
#     encrypt = true               #Ensure the state is encrypted at rest in s3
#   }
# }