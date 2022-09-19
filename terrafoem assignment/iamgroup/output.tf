output "op-grp" {
  value = var.iam_group
}

output "op-user" {
  value = {for k, v in var.username: k=>v}
}