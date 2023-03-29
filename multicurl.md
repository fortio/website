---
title: multicurl check all IPs of a site, cert expiry, etc.
goimport: fortio.org/multicurl git https://github.com/fortio/multicurl
gosource: fortio.org/multicurl https://github.com/fortio/multicurl https://github.com/fortio/multicurl/tree/main{/dir} https://github.com/fortio/multicurl/blob/main{/dir}/{file}#L{line}
---

# multicurl
Fetches a URL from all the IPs of a given host. Optionally repeat until an expected result code is obtained from all addresses. It will also print information about certificates, including the shortest expiration found.

It's a command line tool but also a reusable library.

See details at [github.com/fortio/multicurl](https://github.com/fortio/multicurl#multicurl)

This page is also for making
<pre>
 go install fortio.org/multicurl@latest
 go get -u fortio.org/multicurl
</pre>
and godoc work.
<p>
See also the main <a href="https://fortio.org/">fortio.org</a> page.
