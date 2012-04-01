#!/usr/bin/env ruby
#
# Sitemap-Creator
# 
# copyright (c) 2012 Toshimitsu Takahshi
#
########################################


linkfile = ARGV[0]
if linkfile.nil? or !File.exists?(linkfile)
  puts "Usage: create_sitemap linkfile"
  exit 0
end


print <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
EOF


freq = "daily"

open(linkfile) do |file|
  file.each_line do |line|
    s = line.strip
    if s =~ /\[([a-z]+)\]/
      freq = $1
    elsif !s.empty?
      print <<EOF
 <url>
   <loc>#{s}</loc>
   <changefreq>#{freq}</changefreq>
 </url>
EOF
    end
  end
end

print <<EOF
</urlset>
EOF

