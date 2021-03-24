##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "IWSS-Proxy"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-10-23
  # v0.2 # 2011-02-10 # Updated regex match. 
]
version "0.2"
description "Trend Micro InterScan Web Security Suite (IWSS) Proxy server"
website "http://us.trendmicro.com/us/products/enterprise/interscan-web-security-suite/"

# ShodanHQ results as at 2010-10-23 #
# 270 for Proxy-agent:IWSS



# Passive #
passive do
	m=[]

	# Proxy-Agent HTTP Header
	m << { :name=>"Proxy-Agent HTTP Header" } if @headers["proxy-agent"].to_s =~ /^[\s]*IWSS/

	# Return Passive Matches
	m
end

end

