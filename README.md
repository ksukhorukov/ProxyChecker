# Proxy Checker

Parses data from https://spys.one/en/socks-proxy-list

## Preparation 

Copy list to clipboard and save to ``raw.txt`` 

## Usage 

``$ ./app.rb``

## Results Sample

```
user@air ProxyChecker $ date
Tue Mar 12 17:14:35 PST 2024
user@air ProxyChecker $ ./app.rb 

[+] Checking proxies list
[+] Parsing raw data...

	[~] Time Out Error. 107.180.95.177:1405
	[~] Time Out Error. 104.236.0.129:29249
	[~] Time Out Error. 46.241.57.29:1080
	[~] Time Out Error. 188.165.237.26:52982
	[~] Time Out Error. 132.148.155.180:45578
	[~] Time Out Error. 116.97.240.147:4996
	[~] Time Out Error. 36.64.22.18:8199

148.72.209.174:39458
192.111.129.145:16894
98.181.137.80:4145
199.102.105.242:4145
74.119.147.209:4145
192.252.208.67:14287
208.102.51.6:58208
199.229.254.129:4145
107.152.98.5:4145
98.162.25.7:31653
142.54.237.34:4145
72.210.221.197:4145
68.1.210.163:4145
142.54.228.193:4145
184.181.217.210:4145
184.170.248.5:4145
24.249.199.12:4145
192.111.137.35:4145
192.111.135.17:18302
199.102.106.94:4145
192.111.134.10:4145
184.178.172.17:4145
45.117.179.179:17827

[+] Done! 7 failed. 23 working.
```

# LICENSE

```
Copyright 2024 KIRILL SUKHORUKOV

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License V.3
along with this program.  If not, see <http://www.gnu.org/licenses/>.
```

## [EOF]



