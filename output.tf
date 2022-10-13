output "dbname" {
 #value = "${data.vault_generic_secret.mypass.data["db_name"]}"
 #value = "data.vault_generic_secret.mypass.data[db_name]"
 value = "data.vault_generic_secret.mypass.data"
 sensitive = true
}

output "mypassword" {
 #value = "{data.vault_generic_secret.mypassword.data[db_name]}"
 value = "${data.vault_generic_secret.mypassword.data["db_name"]}"
 sensitive = true
}

output "ec2nametest" {
 #value = "{data.vault_generic_secret.mypass.data[ec2name]}"
 value = "${data.vault_generic_secret.ec2nametest.data["ec2name"]}"
 sensitive = true
} 
