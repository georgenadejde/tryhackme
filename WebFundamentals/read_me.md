Simple GET request to ctf/get:
curl http://10.10.110.50:8081/ctf/get

POST request with data 'flag please' to /ctf/post:
curl -X POST --data "flag_please" http://10.10.110.50:8081/ctf/post


Send cookie and then a GET request to ctf/sendcookie:
curl -b "flagpls=flagpls" http://10.10.110.50:8081/ctf/sendcookie
