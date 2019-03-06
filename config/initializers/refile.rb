require "refile/s3"

aws = {
  access_key_id: "AKIAJDQNJ2SRU6LIXDMA",
  secret_access_key: "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",
  region: "ap-northeast-1",
  bucket: "shunblog",
}
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)
