# Fortio

[![Awesome Go](mentioned-badge.svg)](https://github.com/avelino/awesome-go#networking)
[![Go Report Card](https://goreportcard.com/badge/fortio.org/fortio)](https://goreportcard.com/report/fortio.org/fortio)
[![GoDoc](https://godoc.org/fortio.org/fortio?status.svg)](https://godoc.org/fortio.org/fortio)
[![codecov](https://codecov.io/gh/fortio/fortio/branch/master/graph/badge.svg)](https://codecov.io/gh/fortio/fortio)
[![CircleCI](https://circleci.com/gh/fortio/fortio.svg?style=shield)](https://circleci.com/gh/fortio/fortio)

Welcome to fortio.org the website for Fortio!

Fortio (Φορτίο) started as [Istio](https://istio.io/)'s load testing tool and now graduated to be its own [open-source](https://github.com/fortio/fortio) project.

Fortio runs at a specified query per second (qps) and records an histogram of execution time
and calculates percentiles (e.g. p99 ie the response time such as 99% of the requests take less than that number (in seconds, SI unit)).
It can run for a set duration, for a fixed number of calls, or until interrupted (at a constant target QPS, or max speed/load per connection/thread).

The name fortio comes from greek [φορτίο](https://translate.google.com/#el/en/%CF%86%CE%BF%CF%81%CF%84%CE%AF%CE%BF){:target="_blank"} ([![Play](Speaker_Icon.svg)](fortio.mp3){:target="soundframe"}) which means load/burden.

Fortio is a fast, small (3Mb docker image, minimal dependencies), reusable, embeddable go library as well as a command line tool and server process,
the server includes a simple web UI and graphical representation of the results (both a single latency graph and a multiple results comparative min, max, avg, qps and percentiles graphs).

Fortio also includes a set of server side features (similar to httpbin) to help debugging and testing: request echo back including headers, adding latency or error codes with a probability distribution, tcp proxying, GRPC echo/health in addition to http, etc...

Fortio is quite mature and very stable with no known major bugs (lots of possible improvements if you want to contribute though!),
and when bugs are found they are fixed quickly, so after 1 year of development and 42 incremental releases, we reached 1.0 in June 2018.

See [github.com/fortio/fortio](https://github.com/fortio/fortio/#fortio) for more information about fortio, see examples of use and screenshots, download the latest [release](https://github.com/fortio/fortio/releases), file any issues or any other way to contribute to the open-source effort.

You can see also see Fortio live on [istio's website performance and scalability section](https://archive.istio.io/v1.0/docs/concepts/performance-and-scalability/#synthetic-end-to-end-benchmarks)
<!-- for the sound file link above -->
<iframe name="soundframe" style="width:0; height:0; border:0; border:none"></iframe>
