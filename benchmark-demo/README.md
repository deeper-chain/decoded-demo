# benchmark-demo

## build docker image

x86
```
docker build -f Dockerfile -t xcaptain/benchmark-demo .
```

arm64
```
docker build -f Dockerfile.arm64 -t xcaptain/benchmark-demo .
```

## view old benchmark report 
```
curl http://81.68.122.162:8000/benchmark_report
```

## remove old benchmark report

```
curl -XDELETE http://81.68.122.162:8000/benchmark_report
```

## publish task

benchmark baidu

```
python run_app.py
```

then view benchmark report again