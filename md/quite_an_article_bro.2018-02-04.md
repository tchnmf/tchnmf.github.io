## md-VIM Book

* Date: 2018-02-04
* Tags: 


---

Продукт на скрипта md-write-custom

Много начална фаза братленка. В момента read взима var за заглавие от терминала.

В случай,че файлът вече съществува, 'if -f' ще провери единствено ако уцелиш за повторен път заглавието

И датата, понеже:

<pre>
[fergus@Maina bin]$ cat md-write-custom 
#!/bin/bash

echo "Insert title:"
read title


FILE=../md/$title.$(date "+%F").md
HTML=../html/$title.$(date "+%F").html

</pre>
