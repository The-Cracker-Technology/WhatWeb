##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "Blogger"
authors [
  "Andrew Horton",
   # v0.2 # fixed examples= bug
]
version "0.2"
description "Blogger.com free blogging site"



# identifying strings
# <meta content='blogger' name='generator'/>

#<a href="http://www.blogger.com"><img width=88 height=31 src="http://www.blogger.com/buttons/bloggerbutton1.gif" border=0 alt="Powered by Blogger"></a>

matches [
{:text=>"<meta content='blogger' name='generator'/>"},
{:name=>"Powered by link", :regexp=>/<a href="http:\/\/www.blogger.com"><img [^>]* alt="Powered by Blogger"><\/a>/},
]


end



