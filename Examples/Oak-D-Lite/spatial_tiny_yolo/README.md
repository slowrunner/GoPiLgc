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

ANALYSIS:  
 - Returning rgb preview annotated with object boundary and spacial x,y,z data, and full depthmap display  
   15-19 FPS Ave RPi3B+ load 4.0-5.5 Temp: 65degC (no throttling, soft temp limit flag set)  

 - Returning YoloSpatialDetection label with x,y,z data  
   24-27 FPS Ave RPi3B+ load 1.0 Temp: 49degC (no throttling, soft temp limit flag set)

```
NN fps: 19.0     
chair      X:124    Y:260    Z:2687  mm
 
NN fps: 19.0     
person     X:-830   Y:411    Z:2923  mm
 
NN fps: 13.6     
chair      X:117    Y:246    Z:2673  mm
 
NN fps: 17.6     
chair      X:125    Y:257    Z:2717  mm
```
