## md-VIM Book

* Date: 2018-02-06
* Tags: curl


---
#### Curl

curl follow and print the redirect rules:

<pre>
curl -v -L www.katello.org 2>&1 | egrep "^> (Host:|GET)"
 GET / HTTP/1.1
 Host: www.katello.org
 GET /plugins/katello HTTP/1.0
 Host: theforeman.org
 GET /plugins/katello/ HTTP/1.0
 Host: theforeman.org 
<pre>
