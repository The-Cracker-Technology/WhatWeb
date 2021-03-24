##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "Steam-Steal0r-Log"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-10-15
]
version "0.1"
description "This plugin extracts passwords from Steam Steal0r logs."

# 4 results for "Possible Accountnames:" "Steam Steal0r v2" @ 2010-10-15


# Extract passwords
passive do
	m=[]

	if @body =~ /^--------------------[\s]+Steam Steal0r v2 by -=Player=-/

		if @body =~ /^ Possible Accountnames: [^\r^\n]+[\s]+Password: ([^\r^\n]+)/
			accounts=@body.scan(/^ Possible Accountnames: [^\r^\n]+[\s]+Password: ([^\r^\n]+)/)
			m << {:account=>accounts}
		end

	end

	m

end

end

