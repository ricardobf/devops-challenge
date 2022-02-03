resource "aws_lambda_function" "api_function" {

   function_name = "api-function-${var.env}-${var.region}"

   
   s3_bucket = aws_s3_bucket.api_bucket.bucket
   s3_key    = "api.zip"

   
   handler = "api.handler"
   runtime = "nodejs12.x"

   role = aws_iam_role.lambda_role.arn
}

resource "aws_lambda_permission" "api_gateway_permission" {

   statement_id  = "AllowAPIGatewayInvoke"
   action        = "lambda:InvokeFunction"
   function_name = aws_lambda_function.api_function.function_name
   principal     = "apigateway.amazonaws.com"

   source_arn = "${aws_api_gateway_rest_api.api_lambda.execution_arn}/api/*"
}

