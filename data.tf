data "vault_generic_secret" "mypassword"{
 path = "secret/terraform"
}

data "vault_generic_secret" "ec2nametest"{
 path = "secret/terraform"
}