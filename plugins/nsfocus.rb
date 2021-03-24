##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "NSFocus"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-05-10
  "Andrew Horton", # v0.2 # 2016-04-23 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "NSFOCUS Web Application Firewall"
website "http://www.nsfocus.com/"
# Manual: http://www.nsfocus.com/jp/3_products/090714WAF.pdf

# ShodanHQ results as at 2011-03-13 #
# 25 for nsfocus # All results are from China

# Matches #
matches [

	# Default Page
	{ :md5=>"4a6a68c719d64f1dd153a94122287f54" },

	# HTTP Server Header
	{ :regexp=>/^NSFocus/, :search=>"headers[server]" },

	# Version Detection
	{ :version=>/^NSFocus\/([^\s]+) \( NSFOCUS \)/, :search=>"headers[server]" },

]

end

