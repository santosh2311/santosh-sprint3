resource "aws_iam_group" "group" {
  name = var.iam_group
}



resource "aws_iam_user" "user" {
  for_each = var.user
  name = each.value

  tags = {
    
    name = "santosh"

  }

}

