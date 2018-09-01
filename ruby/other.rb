## string time stamp 
Time.now.to_s.gsub(/^(\d+)\D(\d+)\D(\d+)\s(\d+)\D(\d+)\D(\d+).*$/, "\\1\\2\\3\\4\\5\\6")
