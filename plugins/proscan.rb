##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "ProScan"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-05-13
  "Andrew Horton", # v0.2 # 2016-04-23 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "Streams audio"
website "http://www.proscan.org/"

# ShodanHQ results as at 2011-05-13 #
# 12 for ProScan

matches [
	# HTTP Server Header
	{ :regexp=>/^ProScan/, :search=>"headers[server]" },

	# Version Detection # HTTP Server Header
	{ :version=>/^ProScan ([^\s]+)$/, :search=>"headers[server]" },
	
	# icy-notice2 Header
	{ :name=>"icy-notice2 header", :regexp=>/^ProScan/, :search=>"headers[icy-notice2]" },

]

end

