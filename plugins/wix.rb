##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "Wix"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", # 2016-08-19
  "Andrew Horton", # v0.2 # 2017-11-27 # Description and website. 
]
version "0.2"
description "Wix is a cloud based website builder."
website "http://www.wix.com/"

# Matches #
matches [

	# Cookie 
	{ :search => "headers[set-cookie]", :regexp => /_wixAB3/, :name=>"_wixAB3 cookie" },
	{ :search => "headers[set-cookie]", :regexp => /^hs\s/, :name=>"hs cookie" },
	{ :search => "headers[set-cookie]", :regexp => /svSession/, :name=>"svSession cookie" },
	
] 

end
