require "download_strategy"

# S3DownloadStrategy downloads tarballs from AWS S3.
class S3DownloadStrategy < CurlDownloadStrategy
  def initialize(url, name, version, **meta)
    super
  end

  def _fetch(url:, resolved_url:, timeout:nil)
    if url !~ %r{^https?://([^.].*)\.s3\.amazonaws\.com/(.+)$} &&
       url !~ %r{^s3://([^.].*?)/(.+)$}
      raise "Bad S3 URL: " + url
    end

    bucket = Regexp.last_match(1)
    key = Regexp.last_match(2)

    curl_download url, to: temporary_path
  end
end
