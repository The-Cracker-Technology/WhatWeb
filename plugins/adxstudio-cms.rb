##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "adxstudio-cms"
authors [
  "Aung Khant <http://yehg.net/>", # 2012-02-12
  "Andrew Horton", # v0.2 # 2019-07-10 # Added website field.
]
version "0.2"
description "ADXStudio CMS"
website "http://www.adxstudio.com"


# Matches #
matches [
{:name=>'Set-cookie Header', :search=>"headers[set-cookie]", :regexp=>/anonprofile/i},
{:text=>'/PoweredByADX.gif'},
{:text=>'alt="Powered by Adxstudio"'},
{:text=>'/poweredbyadx.png'},
]

end
