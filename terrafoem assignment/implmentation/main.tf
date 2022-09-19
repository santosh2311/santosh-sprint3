module "iamgroup" {
  source  = "../iamgroup"
  iam_group =  var.grouplist
  username = var.userlist
}



module "iammembership" {
  source = "../iammember"
  user = var.userlist
  iam_group = var.grouplist
  depends_on = [
    module.iamuser,
    module.iamgroup
  ]
}