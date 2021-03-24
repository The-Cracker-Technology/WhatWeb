##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "ArGoSoft-Mail-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-06-13 
  # v0.2 # Updated matches and version detection. 
  # v0.3 # 2011-01-07 # Updated HTTP Server Header match. Added OS detection. 
  # v0.4 # 2011-03-06 # Updated OS detection. 
  "Andrew Horton", # v0.5 # 2016-04-23 # Moved patterns from passive function to matches[]. 
]
version "0.5"
description "ArGoSoft-Mail-Server web interface"
website "http://www.argosoft.com/"

# Google results as at 2010-06-13 #
# 26 for +intitle:"adding new user" "ArGoSoft Mail Server" +inurl:addnewuser -inurl 

# Dorks #
dorks [
'intitle:"adding new user" "ArGoSoft Mail Server" inurl:addnewuser -inurl',
'"adding new user" inurl:addnewuser -"there are no domains"'
]



# Matches #
matches [

	# GHDB Match
	{ :ghdb=>'intitle:"adding new user" "ArGoSoft Mail Server" inurl:addnewuser', :certainty=>75 },

	# Version and OS detection
	{ :version=>/ArGoSoft Mail Server Pro for WinNT\/2000, Version [\d\.]+ \(([\d\.]+)\)<\/p>/, :os=>"Windows NT/2000" },
	{ :version=>/ArGoSoft Mail Server Pro for WinNT\/2000\/XP, Version [\d\.]+ \(([\d\.]+)\)<\/p>/, :os=>"Windows NT/2000/XP" },

	# Version and OS detection # HTTP Header Server
	{ :search=>"headers[server]", :version=>/ArGoSoft Mail Server Pro for WinNT\/2000, Version [\d\.]+ \(([\d\.]+)\)/, :os=>"Windows NT/2000" },

	{ :search=>"headers[server]", :version=>/ArGoSoft Mail Server Pro for WinNT\/2000\/XP, Version [\d\.]+ \(([\d\.]+)\)/, :os=>"Windows NT/2000/XP" },

]

end

