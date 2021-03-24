##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "BAAP-Mobile-Version"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-08-29
]
version "0.1"
description "The BAAP Mobile Version is a complete toolkit to help mobilize your WordPress site."
website "http://wordpress.org/extend/plugins/baap-mobile-version/"

# ShodanHQ results as at 2011-08-29 #
# 3 for X-Mobilized-By: BAAP Mobile



# Matches #
matches [

# Version Detection # X-Mobilized-By Header
{ :search=>"headers[x-mobilized-by]", :version=>/^BAAP Mobile Version ([^\s]+)$/ },

]

end

