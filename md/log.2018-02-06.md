## md-VIM Book

* Date: 2018-02-06
* Tags:
[curl]()
[tralala]()
[blabalba]()


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
