# FSL Docker Image

This is a docker image for FMRIB Software Library v6.0. For official wiki please visit: https://fsl.fmrib.ox.ac.uk/fsl/fslwiki .

## How to use

1. Pull the image on your local machine
```
docker pull alerokhin/fsl6.0
```
2. Run container in interactive mode with your data mounted as a volume
```
docker run -v C:\data:/data -it alerokhin/fsl6.0 bash
```
3. Use fsl tools as you would do with a regular installation
```
cd /data
run_first_all -i t1_image -o output_name
```