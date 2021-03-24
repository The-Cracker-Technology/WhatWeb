##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "WooFramework"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-11-19
]
version "0.1"
description "WooFramework - theme framework - http://www.woothemes.com/wooframework/"



# Matches #
matches [

# Version Detection # Meta Generator
{ :version=>/<meta name="generator" content="WooFramework ([\d\.]+)"/ },

]

end

