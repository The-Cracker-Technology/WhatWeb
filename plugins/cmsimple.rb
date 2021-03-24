##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "CMSimple"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-06-05 
  # v0.2 # Added version detection. Updated matches.. 
  "Andrew Horton", # v0.3 # 2016-04-17 # Added website. 
]
version "0.3"
description "CMSimple is a simple content management system for smart maintainance of small commercial or private sites."
website "http://www.cmsimple.org/"

# About 70,800 results for "Powered by CMSimple.dk" +welcome @ 2010-06-04

# Dorks #
dorks [
'"Powered by CMSimple.dk" "welcome"'
]

matches [

# GHDB Match
{ :ghdb=>'"Powered by CMSimple.dk" welcome', :certainty=>75 },

# Meta generator
{ :text=>'<meta name="generator" content="CMSimple' },

# Version detection # Meta generator
{ :version=>/<meta name="generator" content="CMSimple ([\d\.]+)[^>]*>/ },

]

end

