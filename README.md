# Sitemap-Creator

Sitemap-Creator makes a simple sitemap xml by Ruby.

# Link File ex.

    [monthly]
    http://foo.com/
    http://foo.com/stats/
    http://foo.com/archive/

    [daily]
    http://foo.com/
    http://foo.com/news/20120320/
    http://foo.com/news/20120321/

# Run Command to make sitemap xml
    ./create-sitemap.rb link.txt > sitemap.xml
