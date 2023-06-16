---
title: Golang vanity URL page / meta for fortio.org/log
goimport: fortio.org/log git https://github.com/fortio/log
gosource: fortio.org/log https://github.com/fortio/log https://github.com/fortio/log/tree/main{/dir} https://github.com/fortio/log/blob/main{/dir}/{file}#L{line}
---

Fortio's log is a simple GoLang logger built on top of go's default one with
additional opinionated levels similar to glog but simpler to use and configure.
```
log.Debugf() // Debug level
log.LogVf()  // Verbose level
log.Infof()  // Info/default level
log.Warnf()  // Warning level
log.Errf()   // Error level
log.Critf()  // Critical level (always logged even if level is set to max)
log.Fatalf() // Fatal level - program will panic/exit
```
See Config object for options like whether to include line number and file name of caller or not etc

Since 1.4 fortio's logger also supports JSON structured logging, including with extensible attributes:
```
log.S(log.Info, "msg", log.Attr("key", value)...)
```
Details on [github.com/fortio/log](https://github.com/fortio/log)

<p>

This page also for making
<pre>
 go get fortio.org/log
</pre>
and godoc work.
<p>
Back to <a href="https://fortio.org/">fortio.org</a>
