##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "webfs"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-05-31
  "Andrew Horton", # v0.2 # 2016-04-23 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "This is a simple http server for mostly static content.  You can use it to serve the content of a ftp server via http for example."
website "http://linux.bytesex.org/misc/webfs.html"

# ShodanHQ results as at 2011-05-31 #
# 4,713 for webfs

matches [

	# HTTP Server Header
	{ :regexp=>/^webfs\//, :search=>"headers[server]" },

	# Version Detection # HTTP Server Header
	{ :version=>/^webfs\/([^\s]+)$/, :search=>"headers[server]" },

]

end

