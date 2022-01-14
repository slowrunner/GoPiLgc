# RGB Tiny YOLO v4 with Spatial Data

CODE: https://raw.githubusercontent.com/luxonis/depthai-python/main/examples/SpatialDetection/spatial_tiny_yolo.py  
BLOB: https://artifacts.luxonis.com/artifactory/luxonis-depthai-data-local/network/yolo-v4-tiny-tf_openvino_2021.4_6shave.blob  

REF: https://docs.luxonis.com/projects/api/en/latest/samples/SpatialDetection/spatial_tiny_yolo/  


```
mkdir ../models
wget https://artifacts.luxonis.com/artifactory/luxonis-depthai-data-local/network/yolo-v4-tiny-tf_openvino_2021.4_6shave.blob
cp *.blob ../models
wget https://raw.githubusercontent.com/luxonis/depthai-python/main/examples/SpatialDetection/spatial_tiny_yolo.py
cp spatial_tiny_yolo.py orig_spatial_tiny_yolo.py
python3 orig_spatial_tiny_yolo.py


./spatial_tiny_yolo.py [-d] [--display] [-h] [--help]
optional arguments:
  -h, --help     show this help message and exit
  -d, --display  display annotated rgb images and depth map
```

Spatial Tiny-yolo example  
  Performs inference on RGB camera and retrieves spatial location coordinates: x (h), y (v), z (range) relative to device  
  Using  tiny-yolo-v4 network and 

ANALYSIS (Raspberry Pi 3B+ Legacy Pi OS 2021-12 Ave load 0.02 45degC 5.93 Watts 0.52A at 11.4V):  
 - Returning rgb preview annotated with object boundary and spacial x,y,z data, and full depthmap display  
   13-19 FPS Ave RPi3B+ load 4.0 (peak 5.5) Temp: 65degC (no throttling, soft temp limit 0x8 flag set)  
   (displayed on remote desktop via VNC)  
   12.4 Watts (1.2A at 10.4V)  
   
 - Returning YoloSpatialDetection label with x,y,z data  
   24-27 FPS Ave RPi3B+ load 1.0 (peak 1.75) Temp: 49degC (no throttling, no flags)  
   10.5 Watts (0.96A at 10.9V) ~ 4.5 Watts for Oak-D-Lite operation  
   
   

