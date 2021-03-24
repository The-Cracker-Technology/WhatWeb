##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "Applet"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-10-15
  # v0.2 # 2011-01-07 # Updated URL extraction method. 
]
version "0.2"
description "This plugin detects instances of applet HTML elements and retrieves the URL from the code parameter."
website "http://en.wikipedia.org/wiki/Java_applet"

# Google results as at 2010-10-15 #
# 183 for "this site requires java"



# Matches #
matches [

# Extract Code
{ :string=>/<applet[^>]+code[\s]*=[\s]*["|']?([^\s^>^"^']+)[^>]*>/i },

]

end

