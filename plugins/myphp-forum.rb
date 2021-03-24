##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "MyPHP-Forum"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-08-31
  # v0.2 # 2011-02-24 # Updated version detection. 
]
version "0.2"
description "MyPHP-Forum"
website "http://www.myphp.ws/"

# Google results as at 2010-08-31 #
# 23 for "powered by MyPHP Forum" -Vulnerability

# Dorks #
dorks [
'"powered by MyPHP Forum" -Vulnerability'
]



# Matches #
matches [

# Version Detection # Powered by text

{ :version=>/    <td width="50%" class="copy" height="24">Powered by: MyPHP Forum v([\d\.]+)/ },

{ :version=>/    <td width="50%" class="copy" height="24">Powered by: <a href="http:\/\/www.myphp.ws">MyPHP Forum v([\d\.]+)/ },

]

end

