##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "Fujitsu-Router"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-11
  "Andrew Horton", # v0.2 # 2016-04-19 # Replaced passive function with matches. 
]
version "0.2"
description "Fujitsu-Router"
website "http://fujitsu.com/"

# ShodanHQ results as at 2011-03-11 #
# All results as are from Japan
# 68 for Si-R220B
# 11 for Si-R570
# 88 for Si-R80brin
# 109 for Si-R180B
# 302 for Si-R170

matches [

	# Model Detection # HTTP Server Header
	{ :model=>/^(Si-[A-Za-z\d]{4,10})$/, :search=>"headers[server]" },

]

end


