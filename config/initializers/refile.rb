require "refile/s3"

aws = {
  access_key_id: "AKIAI37TT4PZGZ65SEPQ",
  secret_access_key: "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",
  region: "ap-northeast-1",
  bucket: "rails-shunblog",
}
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)
