##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "PageUp-People"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-07-03
  "Andrew Horton", # v0.2 # 2016-04-17 # Added website parameter and description. 
]
version "0.2"
description "PageUpPeople is a commercial SaaS platform to recruit, onboard, train, develop, manage and retain employees."
website "http://www.pageuppeople.com/"

# Google results as at 2010-07-02 #
# 216 for "Powered by PageUp People"

# Dorks #
dorks [
'"Powered by PageUp People"'
]



# Matches #
matches [

# GHDB
{:ghdb=>'"Powered by PageUp People"', :certainty=>75 },

# Powered by text
{:text=>'<a class="pageupLink" href="http://www.pageuppeople.com" target="self">Powered by PageUp People</a>' },

]

# Passive #
passive do
        m=[]

	# sPULastSelectedLanguage Cookie
        m << { :name=>"sPULastSelectedLanguage Cookie" } if @headers["set-cookie"] =~ /sPULastSelectedLanguage=/

	# Return passive matches
        m
end

end

