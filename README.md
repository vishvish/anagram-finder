# Anagram Server

---

![image](https://travis-ci.org/vishvish/moj.svg?branch=develop)

![image](https://codeclimate.com/github/vishvish/moj.png)

This is a basic server providing anagrams of words.

## Install

`bundle install`

## Testing

`rake test`

## Running locally

`rackup config.ru`

Visit [http://localhost:2112](http://localhost:2112) to see that the server is running.

### Finding anagrams

Example:

#### A single word

[http://localhost:2112/crepitus](http://localhost:2112/crepitus)

#### Multiple words

[http://localhost:2112/crepitus,paste,kinship](http://localhost:2112/crepitus,paste,kinship)

## Benchmarking example

	ab -n 1000 -c 50 -g anagram.bench "http://127.0.0.1:2112/crepitus,paste,kinship"

	This is ApacheBench, Version 2.3 <$Revision: 655654 $>
	Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
	Licensed to The Apache Software Foundation, http://www.apache.org/

	Benchmarking 127.0.0.1 (be patient)
	Completed 100 requests
	Completed 200 requests
	Completed 300 requests
	Completed 400 requests
	Completed 500 requests
	Completed 600 requests
	Completed 700 requests
	Completed 800 requests
	Completed 900 requests
	Completed 1000 requests
	Finished 1000 requests


	Server Software:        WEBrick/1.3.1
	Server Hostname:        127.0.0.1
	Server Port:            2112

	Document Path:          /crepitus,paste,kinship
	Document Length:        127 bytes

	Concurrency Level:      50
	Time taken for tests:   3.791 seconds
	Complete requests:      100
	Failed requests:        0
	Write errors:           0
	Total transferred:      336000 bytes
	HTML transferred:       127000 bytes
	Requests per second:    263.80 [#/sec] (mean)
	Time per request:       189.541 [ms] (mean)
	Time per request:       3.791 [ms] (mean, across all concurrent requests)
	Transfer rate:          86.56 [Kbytes/sec] received

	Connection Times (ms)
	              min  mean[+/-sd] median   max
	Connect:        0    0   0.7      0       9
	Processing:    62  184  75.4    155     490
	Waiting:       36  175  71.4    149     481
	Total:         62  185  75.3    155     490

	Percentage of the requests served within a certain time (ms)
	  50%    155
	  66%    182
	  75%    206
	  80%    219
	  90%    315
	  95%    348
	  98%    406
	  99%    433
	 100%    490 (longest request)
