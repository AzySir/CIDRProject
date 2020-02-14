# resource "aws_iam_role_policy_attachment" "hava_attach" {
#   role       = aws_iam_role.hava_role.name
#   policy_arn = aws_iam_policy.hava_policy.arn
# }

# resource "aws_iam_policy_attachment" "hava_readonly_policy" {
#   name       = "HavaReadOnly"
#   roles      = [aws_iam_role.hava_role.name]
#   policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
# }

# resource "aws_iam_role" "hava_role" {
#   name = "HavaAccountRole"

#   assume_role_policy = <<EOF
# {
#   "Version": "2012-10-17",
#   "Statement": [
#     {
#       "Effect": "Allow",
#       "Principal": {
#         "AWS": "arn:aws:iam::281013829959:root"
#       },
#       "Action": "sts:AssumeRole",
#       "Condition": {
#         "StringEquals": {
#           "sts:ExternalId": "PEq9u0vUfgIJINLa"
#         }
#       }
#     }
#   ]
# }
# EOF
#   tags = {
#     tag-key = "tag-value"
#   }
# }

# resource "aws_iam_policy" "hava_policy" {
#   name        = "HavaPolicy"
#   description = "Hava Policy to Display Architecture Diagram"

#   policy = <<EOF
# {
# 	"Version": "2012-10-17",
# 	"Statement": [{
# 		"Action": [
# 			"acm:DescribeCertificate",
# 			"acm:GetCertificate",
# 			"acm:ListCertificates",
# 			"apigateway:GET",
# 			"apigateway:HEAD",
# 			"apigateway:OPTIONS",
# 			"appstream:Get*",
# 			"autoscaling:Describe*",
# 			"cloudformation:DescribeStackEvents",
# 			"cloudformation:DescribeStackResource",
# 			"cloudformation:DescribeStackResources",
# 			"cloudformation:DescribeStacks",
# 			"cloudformation:GetTemplate",
# 			"cloudformation:List*",
# 			"cloudfront:Get*",
# 			"cloudfront:List*",
# 			"cloudsearch:Describe*",
# 			"cloudsearch:List*",
# 			"cloudtrail:DescribeTrails",
# 			"cloudtrail:GetTrailStatus",
# 			"cloudwatch:Describe*",
# 			"cloudwatch:Get*",
# 			"cloudwatch:List*",
# 			"codecommit:BatchGetRepositories",
# 			"codecommit:Get*",
# 			"codecommit:GitPull",
# 			"codecommit:List*",
# 			"codedeploy:Batch*",
# 			"codedeploy:Get*",
# 			"codedeploy:List*",
# 			"config:Deliver*",
# 			"config:Describe*",
# 			"config:Get*",
# 			"datapipeline:DescribeObjects",
# 			"datapipeline:DescribePipelines",
# 			"datapipeline:EvaluateExpression",
# 			"datapipeline:GetPipelineDefinition",
# 			"datapipeline:ListPipelines",
# 			"datapipeline:QueryObjects",
# 			"datapipeline:ValidatePipelineDefinition",
# 			"directconnect:Describe*",
# 			"ds:Check*",
# 			"ds:Describe*",
# 			"ds:Get*",
# 			"ds:List*",
# 			"ds:Verify*",
# 			"dynamodb:DescribeTable",
# 			"dynamodb:ListTables",
# 			"ec2:Describe*",
# 			"ec2:GetConsoleOutput",
# 			"ecr:GetAuthorizationToken",
# 			"ecr:BatchCheckLayerAvailability",
# 			"ecr:GetDownloadUrlForLayer",
# 			"ecr:GetManifest",
# 			"ecr:DescribeRepositories",
# 			"ecr:ListImages",
# 			"ecr:BatchGetImage",
# 			"ecs:Describe*",
# 			"ecs:List*",
# 			"elasticache:Describe*",
# 			"elasticache:List*",
# 			"elasticbeanstalk:Check*",
# 			"elasticbeanstalk:Describe*",
# 			"elasticbeanstalk:List*",
# 			"elasticbeanstalk:RequestEnvironmentInfo",
# 			"elasticbeanstalk:RetrieveEnvironmentInfo",
# 			"elasticfilesystem:DescribeMountTargets",
# 			"elasticfilesystem:DescribeTags",
# 			"elasticfilesystem:DescribeFileSystems",
# 			"elasticfilesystem:DescribeMountTargetSecurityGroups",
# 			"elasticloadbalancing:Describe*",
# 			"elasticmapreduce:Describe*",
# 			"elasticmapreduce:List*",
# 			"elastictranscoder:List*",
# 			"elastictranscoder:Read*",
# 			"es:DescribeElasticsearchDomain",
# 			"es:DescribeElasticsearchDomains",
# 			"es:DescribeElasticsearchDomainConfig",
# 			"es:ListDomainNames",
# 			"es:ListTags",
# 			"es:ESHttpGet",
# 			"es:ESHttpHead",
# 			"events:DescribeRule",
# 			"events:ListRuleNamesByTarget",
# 			"events:ListRules",
# 			"events:ListTargetsByRule",
# 			"events:TestEventPattern",
# 			"firehose:Describe*",
# 			"firehose:List*",
# 			"glacier:ListVaults",
# 			"glacier:DescribeVault",
# 			"glacier:GetDataRetrievalPolicy",
# 			"glacier:GetVaultAccessPolicy",
# 			"glacier:GetVaultLock",
# 			"glacier:GetVaultNotifications",
# 			"glacier:ListJobs",
# 			"glacier:ListMultipartUploads",
# 			"glacier:ListParts",
# 			"glacier:ListTagsForVault",
# 			"glacier:DescribeJob",
# 			"glacier:GetJobOutput",
# 			"iam:GenerateCredentialReport",
# 			"iam:Get*",
# 			"iam:List*",
# 			"inspector:Describe*",
# 			"inspector:Get*",
# 			"inspector:List*",
# 			"inspector:LocalizeText",
# 			"inspector:PreviewAgentsForResourceGroup",
# 			"iot:Describe*",
# 			"iot:Get*",
# 			"iot:List*",
# 			"kinesis:Describe*",
# 			"kinesis:Get*",
# 			"kinesis:List*",
# 			"kms:Describe*",
# 			"kms:Get*",
# 			"kms:List*",
# 			"lambda:List*",
# 			"lambda:Get*",
# 			"logs:Describe*",
# 			"logs:Get*",
# 			"logs:TestMetricFilter",
# 			"machinelearning:Describe*",
# 			"machinelearning:Get*",
# 			"mobilehub:GetProject",
# 			"mobilehub:ListAvailableFeatures",
# 			"mobilehub:ListAvailableRegions",
# 			"mobilehub:ListProjects",
# 			"mobilehub:ValidateProject",
# 			"mobilehub:VerifyServiceRole",
# 			"opsworks:Describe*",
# 			"opsworks:Get*",
# 			"rds:Describe*",
# 			"rds:ListTagsForResource",
# 			"redshift:Describe*",
# 			"redshift:ViewQueriesInConsole",
# 			"route53:Get*",
# 			"route53:List*",
# 			"route53domains:CheckDomainAvailability",
# 			"route53domains:GetDomainDetail",
# 			"route53domains:GetOperationDetail",
# 			"route53domains:ListDomains",
# 			"route53domains:ListOperations",
# 			"route53domains:ListTagsForDomain",
# 			"s3:GetAccelerateConfiguration",
# 			"s3:GetAnalyticsConfiguration",
# 			"s3:GetBucket*",
# 			"s3:GetInventoryConfiguration",
# 			"s3:GetIpConfiguration",
# 			"s3:GetLifecycleConfiguration",
# 			"s3:GetMetricsConfiguration",
# 			"s3:GetReplicationConfiguration",
# 			"s3:List*",
# 			"sdb:GetAttributes",
# 			"sdb:List*",
# 			"sdb:Select*",
# 			"ses:Get*",
# 			"ses:List*",
# 			"sns:Get*",
# 			"sns:List*",
# 			"sqs:GetQueueAttributes",
# 			"sqs:ListQueues",
# 			"sqs:ReceiveMessage",
# 			"storagegateway:Describe*",
# 			"storagegateway:List*",
# 			"swf:Count*",
# 			"swf:Describe*",
# 			"swf:Get*",
# 			"swf:List*",
# 			"tag:Get*",
# 			"trustedadvisor:Describe*",
# 			"waf:Get*",
# 			"waf:List*",
# 			"waf-regional:Get*",
# 			"waf-regional:List*",
# 			"workspaces:Describe*"
# 		],
# 		"Effect": "Allow",
# 		"Resource": "*"
# 	}]
# }
# EOF
# }




