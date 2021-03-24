##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "Kandidat-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-02-24
]
version "0.1"
description "Kandidat-CMS [Russian] - Homepage http://www.kan-studio.ru/"

# Google results as at 2011-02-24 #
# 410 for "Powered by Kandidat CMS"

# Dorks #
dorks [
'"Powered by Kandidat CMS"'
]



# Matches #
matches [

# Version detection # Powered by footer
{ :regexp=>/Powered by[\ ]?[:]? <a href="http:\/\/www.kan-studio.ru[\/]?">Kandidat CMS<\/a>/ },

]

end


