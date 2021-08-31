require "download_strategy"

# S3DownloadStrategy downloads tarballs from AWS S3.
# To use it, add `:using => :s3` to the URL section of your
# formula.  This download strategy uses AWS access tokens (in the
# environment variables `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`)
# to sign the request.  This strategy is good in a corporate setting,
# because it lets you use a private S3 bucket as a repo for internal
# distribution.  (It will work for public buckets as well.)
class S3DownloadStrategy < CurlDownloadStrategy
  def initialize(url, name, version, **meta)
    odeprecated("S3DownloadStrategy",
      "maintaining S3DownloadStrategy in your own formula or tap")
    super
  end

  def _fetch(url:, resolved_url:)
    if url !~ %r{^https?://([^.].*)\.s3\.amazonaws\.com/(.+)$} &&
       url !~ %r{^s3://([^.].*?)/(.+)$}
      raise "Bad S3 URL: " + url
    end

    bucket = Regexp.last_match(1)
    key = Regexp.last_match(2)

    ENV["AWS_ACCESS_KEY_ID"] = ENV["HOMEBREW_AWS_ACCESS_KEY_ID"]
    ENV["AWS_SECRET_ACCESS_KEY"] = ENV["HOMEBREW_AWS_SECRET_ACCESS_KEY"]

    begin
      signer = Aws::S3::Presigner.new
      s3url = signer.presigned_url :get_object, bucket: bucket, key: key
    rescue Aws::Sigv4::Errors::MissingCredentialsError
      ohai "AWS credentials missing, trying public URL instead."
      s3url = url
    end

    curl_download s3url, to: temporary_path
  end
end
