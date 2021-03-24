##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "WindWeb"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-10-26
]
version "0.1"
description "WindWeb Webserver"

# About 21746 ShodanHQ results for "server: WindWeb" @ 2010-10-26

matches [
  { :version => /^WindWeb\/([^\s]+)$/, :search => "headers[server]" }
]

end

