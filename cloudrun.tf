env {
          name = "DB_USERNAME"
          value = "${data.vault_generic_secret.db_username.data["db_username"]}"
        }
