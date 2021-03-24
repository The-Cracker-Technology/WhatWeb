##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "Trac"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-06-15
  # v0.2 # Updated version detection. 
]
version "0.2"
description "Trac is an enhanced wiki and issue tracking system for software development projects."
website "http://trac.edgewall.org/"

# About 77,000,000 results for "Powered by Trac" +intitle:Trac' @ 2010-06-14

# Dorks #
dorks [
'"Powered by Trac" intitle:Trac'
]



matches [

# GHDB Match
{ :ghdb=>'"Powered by Trac" +intitle:Trac', :certainty=>75 },

# Version detection # Powered by text
{ :version=>/Powered by <a[^>]*><strong>Trac ([^<]+)<\/strong><\/a><br \/>/ },

]

# Fingerprint cookie
passive do
        m=[]

        m << {:name=>"trac_form_token Cookie", :probability=>100 } if @headers["set-cookie"] =~ /trac_form_token=/

	m

end

end

