##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "SpeedTouch"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-05-30
  "Andrew Horton", # v0.2 # 2016-04-23 # Moved patterns from passive function to matches[]. 
  # Andrew Horton # v0.3 # 2019-07-10 # Added website field.
]
version "0.3"
description "SpeedTouch is the brand name of a line of networking equipment produced by Alcatel and Technicolor SA. Before 27 January 2010 Technicolor was known as Thomson SA. Under the SpeedTouch name Alcatel and Technicolor retail a variety of equipment including ADSL and ADSL2+ modems, residential gateways, wireless access equipment, VoIP handsets and SHDSL interconnect equipment. They are a major brand in home and business networking products. - More Info: http://en.wikipedia.org/wiki/SpeedTouch"
website "http://www.thomsontelecom.com.au/speedtouch/support.htm"

# ShodanHQ results as at 2011-05-30 #
# 435,213 for SpeedTouch -SIP http

# Matches #
matches [

# Default Favicon
{ :url=>"/favicon.ico", :md5=>"befcded36aec1e59ea624582fcb3225c" },

{ :regexp=>/(Basic|Digest) realm="SpeedTouch/, :search=>"headers[www-authenticate]", :name=>"WWW-Authenticate realm" },

# WWW-Authenticate # realm SpeedTouch # MAC Address Detection
{ :string=>/Basic realm="SpeedTouch \(([\dA-F]{2}\-[\dA-F]{2}\-[\dA-F]{2}\-[\dA-F]{2}\-[\dA-F]{2}\-[\dA-F]{2})\)/, 
	:search=>"headers[www-authenticate]", :name=>"WWW-Authenticate realm" },

]

end

