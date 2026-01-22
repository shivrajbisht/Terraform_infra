module "rg" {
  source = "../../modules/RG"
  rg     = var.rg
}
module "vnet" {
  depends_on = [module.rg]
  source     = "../../modules/vnet"
  vnet       = var.vnet

}
module "pip" {
  depends_on = [module.rg]
  source     = "../../modules/pip"
  pip        = var.pip
}
module "computing" {
  depends_on = [module.rg, module.vnet, ]
  source     = "../../modules/vm"
  nic        = var.nic
}