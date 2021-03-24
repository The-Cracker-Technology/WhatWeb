##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "TAC-Xenta-Controller"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-03-06
  "Andrew Horton", # v0.2 # 2016-04-23 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "SCADA - The TAC Xenta devices are multifunctional control systems with an embedded web server that allows you to access your control application and configuration pages via a web browser anywhere in the world, anytime."
website "http://www.tac.com/ap/Navigate?node=1656"

# Matches #
matches [

# Home Page # Default HTML
{ :text=>'<html><body><script>var url="https://"+location.hostname+"/www/index/Slogin.html";location.href=url;</script></body></html>' },

# HTTP Server Header
{ :regexp=>/^TAC\/Xenta/, :search=>"headers[server]" },

# HTTP Server Header # Model
{ :model=>/^TAC\/Xenta([\d]{3}|[\d]{3}-[A-Z]{3}) [\d\.]{4}/, :search=>"headers[server]" },

# HTTP Server Header # Firmware
{ :firmware=>/^TAC\/Xenta[^\ ]+ ([\d\.]{4})/, :search=>"headers[server]" },

]

end


