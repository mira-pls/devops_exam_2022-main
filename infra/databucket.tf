# Jim; this just fails ... commented it out ! We need to figure this out later, starting new task instead...

data "aws_s3_bucket" "analyticsbucket" {
  bucket = "analytics-${var.candidate_id}"
}
