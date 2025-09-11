# Fortio

[![Awesome Go](mentioned-badge.svg)](https://github.com/avelino/awesome-go#networking)
[![Go Report Card](https://goreportcard.com/badge/fortio.org/fortio)](https://goreportcard.com/report/fortio.org/fortio)
[![GoDoc](https://godoc.org/fortio.org/fortio?status.svg)](https://godoc.org/fortio.org/fortio)
[![codecov](https://codecov.io/gh/fortio/fortio/branch/master/graph/badge.svg)](https://codecov.io/gh/fortio/fortio)
[![CircleCI](https://circleci.com/gh/fortio/fortio.svg?style=shield)](https://circleci.com/gh/fortio/fortio)

Welcome to fortio.org the website for Fortio!

Fortio (Φορτίο) started as, and is, [Istio](https://istio.io/)'s load testing tool and later (2018) graduated to be its own [open-source](https://github.com/fortio/fortio) project.

Fortio runs at a specified query per second (qps) and records an histogram of execution time
and calculates percentiles (e.g. p99 ie the response time such as 99% of the requests take less than that number (in seconds, SI unit)).
It can run for a set duration, for a fixed number of calls, or until interrupted (at a constant target QPS, or max speed/load per connection/thread).

The name fortio comes from greek [φορτίο](https://translate.google.com/#el/en/%CF%86%CE%BF%CF%81%CF%84%CE%AF%CE%BF){:target="_blank"} ([![Play](Speaker_Icon.svg)](fortio.mp3){:target="soundframe"}) which means load/burden.

Fortio is a fast, small (4Mb docker image, minimal dependencies), reusable, embeddable go library as well as a command line tool and server process,
the server includes a simple web UI and REST API to trigger run and see graphical representation of the results (both a single latency graph and a multiple results comparative min, max, avg, qps and percentiles graphs).

Fortio also includes a set of server side features (similar to httpbin) to help debugging and testing: request echo back including headers, adding latency or error codes with a probability distribution, tcp echoing, tcp proxying, http fan out/scatter and gather proxy server, GRPC echo/health in addition to http, etc...

Fortio is quite mature and very stable with no known major bugs (lots of possible improvements if you want to contribute though!),
and when bugs are found they are fixed quickly, so after 1 year of development and 42 incremental releases, we reached 1.0 in June 2018.

Fortio components can be used a library even for unrelated projects, for instance the `log`, `stats`, or `fhttp` utilities both client and server.
As well as the newly integrated [Dynamic Flags](dflag/) support (greatly inspired/imported initially from https://github.com/mwitkow/go-flagz but recently reimplemented using Go generics).
Even more recent is the new `jrpc` JSON Remote Procedure Calls library package ([docs](https://pkg.go.dev/fortio.org/fortio/jrpc)).


See [github.com/fortio/fortio](https://github.com/fortio/fortio/#fortio) for more information about fortio, see examples of use and screenshots, download the latest [release](https://github.com/fortio/fortio/releases), file any issues or any other way to contribute to the open-source effort.

## Demo

You can see also see Fortio live on [demo.fortio.org](https://demo.fortio.org/) and embeded on [istio.io/v1.0/docs/concepts/performance-and-scalability/#synthetic-end-to-end-benchmarks](https://istio.io/v1.0/docs/concepts/performance-and-scalability/#synthetic-end-to-end-benchmarks)

## Log package

[Logger](log) package extracted/usable as standalone, now with optional JSON structured logging. Use [logc](logc) to convert JSON back to human readable logs.

## DFlag package

[Dynamic Flag](dflag) package extracted/usable as standalone.

## Version package

[Version](version) extraction utility package extracted/usable as standalone.

## CLI package

[CLI](cli) abstracts the repetitive parts of a `main()` command line tool, flag parsing, usage, etc...

## Server CLI package

[SCLI](scli) extends [cli](cli) for server main() to include [dflag](dflag) setup of
a watched config directory and dynamic flag UI/api endpoint.

## Sets package

[sets](sets) type and operations in golang, using generics (go 1.18 and newer).

## Struct2env package

[struct2env](struct2env) allows you to convert from Go structures to environment variables (and back). For configuration interactions between shell and go objects.

## DNS ping

Checks and gather statistic about DNS server responses with [DNSping](dnsping/).

## Fortio TLS proxy

Front and multiplex your services (like fortio servers, including gRPC) behind a single auto cert valid TLS ingress with [Fortio proxy](proxy.md). It fronts the demo site above, it also includes an optional debug proxy which you can find at [debug.fortio.org](https://debug.fortio.org/).

## Fortio with Open Telemetry support (OTEL)

[Fortiotel](fortiotel.md).

## Multicurl Fetch the same URL from all the IPs of a site

See details at [github.com/fortio/multicurl](https://github.com/fortio/multicurl#multicurl)

## Slack proxy

[slack-proxy](slack-proxy) allows to multiplex and rate control your slack api calls.

## Terminal and Ansipixels

[terminal](terminal) is `readline` style library fully encapsulating yet based on an improved version of `x/term`. As well as [ansipixels](https://pkg.go.dev/fortio.org/terminal/ansipixels) for TUI games and utilities (TUI Fps, brick, game of life,...), [gvi](gvi) a super basic vi clone in go, [tev](tev) a tool to debug what your terminal emulator is sending (`xev` for TUIs).

A new addition is also [tclock](tclock) a terminal digial clock with big digits and color options.
Also [tcolor](tcolor) a color chooser (including Hue Saturation Lightness (HSL) space and more) and [tfonts](tfonts) to pick and show fonts in your terminal (much better than plain "big ascii text").

## Safecast

[safecast](safecast) allows you to safely cast between numeric types in Go and return errors (or panic when using the
`Must*` variants) when the cast would result in a loss of precision, range or sign.

## ProgressBar

[progressbar](progressbar) a zero dependency simple library to show progress bars for go terminal/CLIs.

## Duration

[duration](duration) a zero dependency library to overcome issues with lack of days and weeks in standard library's duration as well as ease parsing for common date/times and print durations without zeroes (eg `1d3m` instead of `24h3m0s`) - it originated in [tclock](tclock). Also available via [dflag](dflag).


<!-- for the sound file link above -->
<iframe name="soundframe" style="width:0; height:0; border:0; border:none"></iframe>
