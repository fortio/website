---
title: Golang vanity URL page / meta for fortio.org/version
goimport: fortio.org/version git https://github.com/fortio/version
gosource: fortio.org/version https://github.com/fortio/version https://github.com/fortio/version/tree/main{/dir} https://github.com/fortio/version/blob/main{/dir}/{file}#L{line}
---

Fortio's version is simple wrapper for go 1.18 and newer `debug.ReadBuildInfo()` which lets
you obtain version directly from the binary, without having to use the previously necessary
`-ldflags -X main.version=1.2.3` when using `go install pkg@v1.2.3` instead.

Github: https://github.com/fortio/version

(see also https://github.com/golang/go/issues/52898)

This page also for making
<pre>
 go get fortio.org/version
 go install fortio.org/version/sample@latest
</pre>
and godoc work.
<p>
Back to <a href="https://fortio.org/">fortio.org</a>
