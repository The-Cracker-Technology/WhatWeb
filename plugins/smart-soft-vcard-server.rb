##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "SMART-SOFT-VCard-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-05-14
  "Andrew Horton", # v0.2 # 2016-04-23 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "SMART-SOFT VCard HTTP/SSL server"
website "http://www.smart-soft.ru/"

# ShodanHQ results as at 2011-05-14 #
# 36 for SMART-SOFT VCard
# 36 for Directory%20browsing%20not%20allowed
# All results are from the Russian Federation



# Matches #
matches [

# Title and h1 title with hr line
{ :text=>"<title>Error</title></head><body><h1>403 - Directory browsing not allowed</h1><hr>SMART-SOFT VCard HTTP/SSL server" },

# Version Detection # Title and h1 title with hr line
{ :version=>/<title>Error<\/title><\/head><body><h1>403 - Directory browsing not allowed<\/h1><hr>SMART-SOFT VCard HTTP\/SSL server \(([^\)]+)\)<br>/ },

# Server Name Detection # Title and h1 title with hr line
{ :string=>/<title>Error<\/title><\/head><body><h1>403 - Directory browsing not allowed<\/h1><hr>SMART-SOFT VCard HTTP\/SSL server \([^\)]+\)<br>Server - ([\w]+)/ },

# HTTP Server Header
{ :regexp=>/^SMART-SOFT VCard/, :search=>"headers[server]" },

# Version Detection # HTTP Server Header
{ :version=>/^SMART-SOFT VCard HTTP\/SSL server \(([^\)]+)\)$/, :search=>"headers[server]" },

# Exception header
{ :name=>"Exception header", :regexp=>/^Directory%20browsing%20not%20allowed$/, :search=>"headers[exception]" },

]

end

