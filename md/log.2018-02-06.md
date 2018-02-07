## md-VIM Book

* Date: 2018-02-06
* Tags:
 [#curl](https://tchnmf.github.io/html/search_#curl.html)
 [#blabalba]()


---
#### Curl

Follow and print the redirects:

<pre>
$ curl -v -L www.katello.org 2>&1 | egrep "^> (Host:|GET)"
 GET / HTTP/1.1
 Host: www.katello.org
 GET /plugins/katello HTTP/1.0
 Host: theforeman.org
 GET /plugins/katello/ HTTP/1.0
 Host: theforeman.org 
</pre>

Return response code:

*301: Permanently ( browser caching) / 302: Temporary*

<pre>
$ curl www.katello.org -L -I
 HTTP/1.0 301 Moved Permanently
 Location: http://www.redhat.com/
</pre>

<br>

Тестове за работа с \#тагове
Таговете имат свои сумиращи страници: /html/search_tag
В които ще има *number of occurences* и списък с тагнатите файлове

<pre>
tag #curl ->
html/search_#curl.html
https://tchnmf.github.io/html/search_#curl.html
grep -r "#[a-z]" md/|grep search| awk '{ print $1 }'
md/log.2018-02-06.md
number of occurences
</pre>



