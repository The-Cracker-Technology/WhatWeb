##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "Sagem-Router"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-08-16
]
version "0.1"
description "Sagem Router - Distributed by Wanadoo, Maroc Telecom, Sky and others."

# Default Credentials #
# admin:epicrouter
# root:1234
# admin:admin

# ShodanHQ results as at 2011-08-16 #
# 2,658 for realm Sagem



# Matches #
matches [

# WWW-Authenticate: Basic realm=Sagem 
{ :search=>"headers[www-authenticate]", :regexp=>/^Basic realm="?Sagem"?$/ },

]

end

