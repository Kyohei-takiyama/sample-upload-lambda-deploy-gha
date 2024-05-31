#########################
### Lambda IAM ###
#########################
data "aws_iam_policy_document" "lambda_policy" {
  statement {
    sid     = ""
    effect  = "Allow"
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "lambda_role" {
  name               = "lambda_role"
  assume_role_policy = data.aws_iam_policy_document.lambda_policy.json
}

resource "aws_iam_role_policy_attachment" "lambda_policy" {
  role       = aws_iam_role.lambda_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

#########################
### Lambda Function ###
#########################
data "aws_ecr_image" "image" {
  repository_name = var.ecr-repository-name
  most_recent     = true
}

resource "aws_lambda_function" "lambda_function" {
  function_name = var.lambda-function-name
  role          = aws_iam_role.lambda_role.arn
  package_type  = "Image"
  image_uri     = data.aws_ecr_image.image.image_uri
  timeout       = 30
}
