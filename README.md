# sample-upload-lambda-deploy-gha

- Quita:https://qiita.com/Kyohei-takiyama/items/86e71e1f4f989bbfc665

# Terraform

- 前提条件
  - ECR を手動作成しておくこと
  - ECR へ Lambda へデプロイする用のイメージを一つ以上 Push しておくこと
- Terraform で作成するリソース
  - lambda
  - lambda 実行用のロール
  - GHA の OIDC 用のロール

```sh
# move terraform directory
cd terraform
```

```sh
terraform init

# apply時に引数の入力を求められるので、適宜入力してください
terraform apply
```
