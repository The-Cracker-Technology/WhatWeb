##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "Falcon-Web-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-05-31
]
version "0.1"
description "Falcon Web Server"
website "http://www.blueface.com/"

# ShodanHQ results as at 2011-05-31 #
# 28 for Falcon Web Server



# Passive #
passive do
	m=[]

	# Version Detection # HTTP Server Header
	if @headers["server"] =~ /^Falcon Web Server$/
		m << { :name=>"HTTP Server Header" }
	end

	# Return passive matches
	m
end

end

