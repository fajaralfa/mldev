- Building

```bash
sudo docker build -t mldev .
```

- Running

```bash
sudo docker run --gpus all -v .:/workspace -p 8888:8888 -it mldev
```
