##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "Ipswitch-IMail"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-24
  "Andrew Horton", # v0.2 # 2016-04-20 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "IMail Server matches the capabilities of Exchange without the maintenance headache or hefty price tag. From install assistance to unlimited tech support, IMail delivers your complete messaging solution."
website "http://www.imailserver.com/"

# ShodanHQ results as at 2011-03-24 #
# 5,802 for Ipswitch-IMail

matches [

	{ :regexp=>/^Ipswitch-IMail/, :search=>"headers[server]" },
	# Version Detection # HTTP Server Header
	{ :version=>/^Ipswitch-IMail\/([\d\.]+)$/, :search=>"headers[server]" },
	
]

end

