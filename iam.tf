resource "aws_iam_user" "tim" { 

   name = "tim" 

   path = "/" 

} 

resource "aws_iam_group" "developers" { 

    name = "developers" 

    path = "/" 

} 


