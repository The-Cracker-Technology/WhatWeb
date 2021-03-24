##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "Werkzeug"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2015-04-30
  "Andrew Horton", # v0.2 # 2019-07-10 # Added website field.

]
version "0.2"
description "Werkzeug is a WSGI utility library for Python."
website "http://werkzeug.pocoo.org/"
# About 2667 ShodanHQ results for server:Werkzeug @ 2015-04-30

matches [

# HTTP Server Header
{ :search=>"headers[server]", :version=>/^Werkzeug\/([\d\.]+)/ },

# 302 Page # Redirect Text
{ :status=>302, :certainty=>75, :text=>'<p>You should be redirected automatically to target URL:' },

]

end

