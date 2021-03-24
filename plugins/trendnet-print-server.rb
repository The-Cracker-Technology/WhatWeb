##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "TRENDnet-Print-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-07
  "Andrew Horton", # v0.2 # 2016-04-23 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "TRENDnet Print Server - Print servers connect printers directly to the network so that multiple PCs can share them."
website "http://www.trendnet.com/products/products.asp?cat=46"

# ShodanHQ results as at 2011-03-07 #
# 1,142 for PRINT_SERVER WEB
# 1,142 for PRINT_SERVER WEB 1.0



# Matches #
matches [

# Frameset
{ :text=>'<frame name="Banner" scrolling="no" noresize target="Inhalt" src="head.htm">' },

# Model Detection # /head.htm
{ :url=>"/head.htm", :model=>/<td width="415" align="right" background="bg.gif" valign="bottom"><b><font size="2" color="#FFFFFF">[^<]+ Print Server<br>([^<]{5,15})<\/font><\/b><\/td>/ },

{ :certainty=>25, :version=>/^PRINT_SERVER WEB ([\d\.]+)$/, :search=>"headers[server]" },

]

end


