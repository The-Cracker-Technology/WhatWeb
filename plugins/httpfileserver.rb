##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "HttpFileServer"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-05-30
  "Andrew Horton", # v0.2 # 2016-04-20 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "You can use HFS (HTTP File Server) to send and receive files. Access your remote files, over the network."
website "http://www.rejetto.com/hfs/"

# ShodanHQ results as at 2011-05-30 #
# 5,253 for HFS

# Google results as at 2011-05-30 #
# 626 for "File List" "Folder archive" "HttpFileServer" "Servertime" "Uptime"
# 642 for "File List" "Folder archive" "HttpFileServer" "Servertime" "Uptime" "Build-time"
# 636 for "File List" "Folder archive" "HttpFileServer" "Servertime" "Uptime" "Build-time" intitle:HFS

# Dorks #
dorks [
'"File List" "Folder archive" "HttpFileServer" "Servertime" "Uptime" "Build-time" intitle:HFS'
]



# Matches #
matches [

# Version Detection # Footer
{ :version=>/<div id=footer>[\s]+<a href="http:\/\/www\.rejetto\.com\/hfs\/">HttpFileServer ([^<]+)<\/a>[\s]+<br \/>Servertime/ },

# Version Detection # HTTP Server Header
{ :version=>/^HFS (\d\.\d.+)$/, :search=>"headers[server]" },

{ :regexp=>/^HFS /, :search=>"headers[server]" },

]

end

