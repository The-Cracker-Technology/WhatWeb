##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "Hybrid-Cluster"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-06-07
  "Andrew Horton", # v0.2 # 2016-04-20 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "Hybrid Web Cluster is a software product that sits on top of the infrastructure level to allow your application to run on the cloud without requiring any changes at the application level. It provides commodity web hosting in a distributed and fault-tolerant manner on a cluster of either real physical servers or virtual cloud computing infrastructure server instances."
website "http://www.hybrid-cluster.com/cloud-computing/"

# More Info #
# http://en.wikipedia.org/wiki/Hybrid_Web_Cluster

# ShodanHQ results as at 2011-06-07 #
# 30 for Hybrid Cluster

matches [
	# Version Detection # HTTP Server Header
	{ :version=>/^Hybrid Cluster\/([^\s]+)$/, :search=>"headers[server]" },
	
]

end

