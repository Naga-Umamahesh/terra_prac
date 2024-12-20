provider "aws" {
  region = "us-west-2" #Primary Region
}

provider "aws" {
  alias  = "secondary"
  region = "us-west-2" #Secondary region for high availability
}

