# Commands Used


### To fix the container starting issue

```

docker run  --platform=linux/amd64 -itd -v /Users/subinmathew/work/infracloud/csvserver/inputFile:/csvserver/inputdata infracloudio/csvserver:latest

```

### To run the container on port 9393

```
docker run  --platform=linux/amd64 -itd -p 9393:9300 -v /Users/subinmathew/work/infracloud/csvserver/inputFile:/csvserver/inputdata infracloudio/csvserver:latest 

```
### To add orange border with environment variable

```
sudo docker run  --platform=linux/amd64 -itd -p 9393:9300  -e CSVSERVER_BORDER='Orange' -v /Users/subinmathew/work/infracloud/csvserver/inputFile:/csvserver/inputdata infracloudio/csvserver:latest
```