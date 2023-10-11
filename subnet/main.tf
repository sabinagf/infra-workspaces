terraform {
  cloud {
    organization = "terraform_class990"

    workspaces {
      name = "infra-subnet"
    }
  } 
}