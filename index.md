# Fortio

[![Awesome Go](https://raw.githubusercontent.com/istio/fortio/master/docs/mentioned-badge.svg?sanitize=true)](https://github.com/avelino/awesome-go#networking)
[![Go Report Card](https://goreportcard.com/badge/istio.io/fortio)](https://goreportcard.com/report/istio.io/fortio)
[![GoDoc](https://godoc.org/istio.io/fortio?status.svg)](https://godoc.org/istio.io/fortio)
[![codecov](https://codecov.io/gh/istio/fortio/branch/master/graph/badge.svg)](https://codecov.io/gh/istio/fortio)
[![CircleCI](https://circleci.com/gh/istio/fortio.svg?style=shield)](https://circleci.com/gh/istio/fortio)

Welcome to fortio.org the website for Fortio!

Fortio (Φορτίο) started as [Istio](https://istio.io/)'s load testing tool.
Fortio runs at a specified query per second (qps) and records an histogram of execution time
and calculates percentiles (e.g. p99 ie the response time such as 99% of the requests take less than that number (in seconds, SI unit)).
It can run for a set duration, for a fixed number of calls, or until interrupted (at a constant target QPS, or max speed/load per connection/thread).

The name fortio comes from greek [φορτίο](https://translate.google.com/translate_tts?q=Φορτίο&tl=el&tk=452076.38818&client=t) which means load/burden.

Fortio is a fast, small (3Mb docker image, minimal dependencies), reusable, embeddable go library as well as a command line tool and server process,
the server includes a simple web UI and graphical representation of the results (both a single latency graph and a multiple results comparative min, max, avg, qps and percentiles graphs).

Fortio is quite mature and very stable with no known major bugs (lots of possible improvements if you want to contribute though!),
and when bugs are found they are fixed quickly, so after 1 year of development and 42 incremental releases, I'm proud to announce we just reached 1.0 !

See <a href="https://github.com/istio/fortio/#fortio">github.com/istio/fortio</a> for more information about fortio.
