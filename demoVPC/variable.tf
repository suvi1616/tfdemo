variable "DEP_ENV"{
	type = string
	validation{
		condition = contains(["prod","dev"],lower(var.DEP_ENV))
		error_message = "Deployment allowed in dev and prod."
	}
}
