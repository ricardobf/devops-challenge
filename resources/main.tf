module "serverless-api" {
  source = "../modules/serverless-api"

  env    = var.env
  region = var.region

}
