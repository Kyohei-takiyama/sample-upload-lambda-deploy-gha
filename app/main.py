# https://docs.aws.amazon.com/ja_jp/lambda/latest/dg/python-image.html
import sys


def handler(event, context):
    return "Hello from AWS Lambda using Python" + sys.version + "!"
