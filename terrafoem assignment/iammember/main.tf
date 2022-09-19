resource "aws_iam_membership" "membership" {
   for_each = var.username
  user     = each.value
  groups   = [var.member]
  
}



