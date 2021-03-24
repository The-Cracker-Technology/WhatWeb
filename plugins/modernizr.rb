##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "Modernizr"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-04-15
]
version "0.1"
description "Modernizr adds classes to the <html> element which allow you to target specific browser functionality in your stylesheet. You don't actually need to write any Javascript to use it. [JavaScript]"
website "http://www.modernizr.com/"



# Matches #
matches [

# JavaScript Source
{ :regexp=>/<script [^>]*src=["'][^>]*modernizr[^>]*\.js/i },

# Version Detection # JavaScript Source
{ :version=>/<script [^>]*src=["'][^>]*modernizr-([^>]+)\.js/i },

]

end


