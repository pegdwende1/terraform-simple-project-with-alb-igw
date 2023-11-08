locals {
  project_tags = {
  contact = "devops@jjtech.com"
  application = "payments"
  project = "jjtech"
  environment = "${terraform.workspace}"
  # this function will print the time on all resources created

  creationTime   = formatdate("DD MM YYYY hh:mm ZZZ", timestamp())

}
}