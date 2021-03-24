##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "CoyotePoint-Load-Balancer"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-05-16
  "Andrew Horton", # v0.2 # 2016-04-19 # Replaced passive function with matches. 
]
version "0.2"
description "CoyotePoint load balancing device"
website "http://www.coyotepoint.com/products/"

# ShodanHQ results as at 2011-05-16 #
# 11 for CoyotePoint

matches [
	# HTTP Server Header
	{ :regexp=>/^CoyotePoint/, :search=>"headers[server]" },

	# Model Detection # HTTP Server Header
	{ :model=>/^CoyotePoint (L[\d]) Load Balancer$/, :search=>"headers[server]" },

]

end

