##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "Netscape-FastTrack"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-14
  "Andrew Horton", # v0.2 # 2016-04-23 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "This product version has been EOL'd and is beyond its end of support life (EOSL) date. Customers should migrate to a currently supported version of Sun ONE Web Server"
website "https://cds.sun.com/is-bin/INTERSHOP.enfinity/WFS/CDS-CDS_SMI-Site/en_US/-/USD/ViewProductDetail-Start?ProductRef=NSC-FT-2.01C-G-F@CDS-CDS_SMI"

# ShodanHQ results as at 2011-03-14 #
# 810 for Netscape FastTrack

matches [
	# HTTP Server Header
	{ :regexp=>/^Netscape-FastTrack/, :search=>"headers[server]" },

	# Version Detection
	{ :version=>/^Netscape-FastTrack\/(.+)$/, :search=>"headers[server]" },

]

end

