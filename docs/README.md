# Docker for API

You can build and run the docker using the following process:

Cloning
```console
git clone https://github.com/jqueguiner/asciify
```

Building Docker
```console
cd asciify && docker build -t asciify -f Dockerfile .
```

Running Docker
```console
echo "http://$(curl ifconfig.io):5000" && docker run -p 5000:5000 -d asciify
```

Calling the API
```console
curl -X POST "http://MY_SUPER_API_IP:5000/process" -H "accept: text/plain" -H "Content-Type: application/json" -d '{"url":"https://i.ibb.co/JqLZ4KZ/input.jpg"}'
```
