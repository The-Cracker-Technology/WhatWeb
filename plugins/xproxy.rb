##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "xproxy"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-13
  "Andrew Horton", # v0.2 # 2016-04-23 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "xproxy"

# ShodanHQ results as at 2011-03-13 #
# 94 for xproxy -apache -IIS -nginx port:80
# Most results are from Japan

matches [

	# HTTP Server Header
	{ :regexp=>/^xproxy/, :search=>"headers[server]" },

	# Version Detection # HTTP Server Header
	{ :version=>/^xproxy\/([^\(]+)\([\d]+\)$/, :search=>"headers[server]" },

	# Date Detection # HTTP Server Header
	{ :string=>/^xproxy\/[^\(]+\(([\d]+)\)$/, :search=>"headers[server]" },

]

end

