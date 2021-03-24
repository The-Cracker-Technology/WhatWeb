##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "Billion-Router"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-08-05
  # v0.2 # 2012-01-08 # Added logo image matches. Added www-authenticate header match. 
]
version "0.2"
description "Billion router"
website "http://www.billion.com/product/product.html"

# ShodanHQ results as at 2012-01-08 #
# 41,859 for Authenticate WebAdmin Conexant-EmWeb
#  1,462 for Billion Sky



# Matches #
matches [

# /customized/logo.gif
{ :url=>"/customized/logo.gif", :md5=>"766b7266a7324317b84be0d15cffc4aa" },
{ :url=>"/customized/logo.gif", :md5=>"82b6dea5a084044bf65f9af5440dfaf1" },

]

# Passive #
passive do
	m=[]

	# WWW-Authenticate: Basic realm="Billion Sky" 
	if @headers["www-authenticate"] =~ /Basic realm="Billion Sky"/
		m << { :name=>"WWW-Authenticate" }
	end

	# WWW-Authenticate: Basic realm="WebAdmin" # Server: =~ Conexant-EmWeb
	if @headers["www-authenticate"] =~ /Basic realm="WebAdmin"/ and @headers["server"] =~ /Conexant-EmWeb/
		m << { :name=>"WWW-Authenticate", :certainty=>25 }
	end

	# Return passive matches
	m
end
end

