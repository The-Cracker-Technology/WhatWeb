##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "ionCube-PHP-Accelerator"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-10-30
  "Andrew Horton", # v0.2 # 2016-04-23 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "The ionCube PHP Accelerator is an easily installed PHP Zend engine extension that provides a PHP cache, and is capable of delivering a substantial acceleration of PHP scripts without requiring any script changes, loss of dynamic content, or other application compromises."
website "http://www.php-accelerator.co.uk/"

# About 1517 ShodanHQ results for "X-Accelerated-By: PHPA" @ 2010-10-30

matches [
	
	# X-Accelerated-By
	{ :version=>/^[\s]*PHPA\/([^\r^\n]*)/, :search=>"headers[x-accelerated-by]" },

]

end

