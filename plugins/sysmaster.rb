##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "SysMaster"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-05-31
  "Andrew Horton", # v0.2 # 2016-04-23 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "SysMaster is a leading vendor of voice, video and wireless products and solutions, serving telecoms and service providers worldwide."
website "http://www.sysmaster.com/"

# ShodanHQ results as at 2011-05-31 #
# 181 for SysMaster

matches [
	
	# HTTP Server Header
	{ :regexp=>/^SysMaster Web Server/, :search=>"headers[server]" },

	# Version Detection # HTTP Server Header
	{ :version=>/^SysMaster Web Server\/([^\s]+)$/, :search=>"headers[server]" },

]

end

