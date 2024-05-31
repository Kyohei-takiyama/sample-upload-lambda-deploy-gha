variable "region" {
  description = "The AWS region"
  type        = string
  default     = "us-west-2"

}

variable "lambda-function-name" {
  description = "The name of the Lambda function"
  type        = string
  default     = "sample-lambda-function"
}

variable "ecr-repository-name" {
  description = "The name of the ECR repository"
  type        = string
  default     = "sample-lambda"
}

variable "github-oidc-endpoint" {
  description = "The GitHub OIDC endpoint"
  type        = string
  default     = "https://token.actions.githubusercontent.com"
}

variable "account_id" {
  description = "The AWS account ID ※自分でapply時に指定してください"
  type        = string
}

variable "github-owner" {
  description = "The GitHub owner ※自分でapply時に指定してください"
  type        = string
}

variable "github-repo" {
  description = "The GitHub repository ※自分でapply時に指定してください"
  type        = string
}
