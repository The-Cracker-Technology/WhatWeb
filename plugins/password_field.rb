##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "PasswordField"
authors [
  "Caleb Anderson",
]
version "0.1"
description "find password fields"



# Matches #
matches [

{:name=>"rss link type", :regexp=>/<input [^>]*?type=["']password["'][^>]*>/i },

]

# Passive #
passive do
    m=[]
    fields=@body.scan(/<input [^>]*?type=["']password["'][^>]*>/i)
    fields.each do |field|
        name=field.scan(/name=["'](.*?)["']/i).first.first rescue nil # rescues when there is no name= element
        m << {:name=>"field name",:string=>name} unless name.nil?
    end
    return m
end


end


