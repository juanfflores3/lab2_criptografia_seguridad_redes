curl --path-as-is -i -s -k -X $'GET' \
    -H $'Host: 127.0.0.1:8080' -H $'sec-ch-ua: \"Chromium\";v=\"135\", \"Not-A.Brand\";v=\"8\"' -H $'sec-ch-ua-mobile: ?0' -H $'sec-ch-ua-platform: \"Linux\"' -H $'Accept-Language: en-US,en;q=0.9' -H $'Upgrade-Insecure-Requests: 1' -H $'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36' -H $'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7' -H $'Sec-Fetch-Site: same-origin' -H $'Sec-Fetch-Mode: navigate' -H $'Sec-Fetch-User: ?1' -H $'Sec-Fetch-Dest: document' -H $'Referer: http://127.0.0.1:8080/vulnerabilities/brute/' -H $'Accept-Encoding: gzip, deflate, br' -H $'Connection: keep-alive' \
    -b $'PHPSESSID=cf96a9cb9c32642183de2bfc1722c376; security=low' \
    $'http://127.0.0.1:8080/vulnerabilities/brute/?username=1337&password=123456&Login=Login' -o invalid.html --compressed \
    


