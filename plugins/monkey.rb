##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "Monkey"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-06-02
  "Andrew Horton", # v0.2 # 2016-04-21 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "Monkey is a very small, fast and scalable web server for Linux."
website "http://www.monkey-project.com/"

# ShodanHQ results as at 2011-06-02 #
# 41 for Server Monkey Linux

matches [
	# HTTP Server Header
	{ :regexp=>/^Monkey/, :search=>"headers[server]" },
	# Version Detection # HTTP Server Header
	{ :version=>/^Monkey\/([\d\.]+)/, :search=>"headers[server]" },

]

end

