##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "WWWBoard"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-06-05 
  "Andrew Horton", # v0.2 # 2016-04-17 # Added website parameter. 
]
version "0.2"
description "WWWBoard is a threaded World Wide Web discussion forum and message board, which allows users to post new messages, followup to existing ones and more."
website "http://www.scriptarchive.com/wwwboard.html"

# <html><head><title>WWWAdmin For WWWBoard</title></head>
# <head><title>WWWAdmin For WWWBoard</title></head>

matches [

# http://johnny.ihackstuff.com/ghdb/?function=detail&id=625
# About 45 results @ 2010-06-05
{:name=>'GHDB: inurl:"WWWADMIN.PL" intitle:"wwwadmin"',
:certainty=>75,
:ghdb=>'inurl:"WWWADMIN.PL" intitle:"wwwadmin"'
},

{:name=>"default title", 
:text=>'<head><title>WWWAdmin For WWWBoard</title></head>'
},

{:name=>"default text",
:text=>'<center><h1>WWWAdmin For WWWBoard</h1></center>'
}

]

end

