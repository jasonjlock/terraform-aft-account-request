module "sandbox-atf" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "jason.j.lock+sandbox-aft@gmail.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "jason.j.lock+management-account-factory-for-terraform@gmail.com"
    SSOUserFirstName          = "Jason"
    SSOUserLastName           = "Lock"
  }

  account_tags = {
    "Sandbox" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Jason Lock"
    change_reason       = "Intial AWS Control Tower Account Factory for Terraform Setup"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
