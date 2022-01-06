# RGB Tiny YOLO v4 with Spatial Data

CODE: https://raw.githubusercontent.com/luxonis/depthai-python/main/examples/SpatialDetection/spatial_tiny_yolo.py
BLOB: https://artifacts.luxonis.com/artifactory/luxonis-depthai-data-local/network/yolo-v4-tiny-tf_openvino_2021.4_6shave.blob

REF: https://docs.luxonis.com/projects/api/en/latest/samples/SpatialDetection/spatial_tiny_yolo/


```
mkdir ../models
wget https://artifacts.luxonis.com/artifactory/luxonis-depthai-data-local/network/yolo-v4-tiny-tf_openvino_2021.4_6shave.blob
cp *.blob ../models
wget https://raw.githubusercontent.com/luxonis/depthai-python/main/examples/SpatialDetection/spatial_tiny_yolo.py
python3 spatial_tiny_yolo.py
```

Spatial Tiny-yolo example  
  Performs inference on RGB camera and retrieves spatial location coordinates: x,y,z relative to the center of depth map.  
  Using  tiny-yolo-v4 network

ANALYSIS:  
 - Returning rgb preview annotated with object boundary and spacial x,y,z data, and full depthmap  
   20 FPS Ave RPi3B+ load 4.0 Temp: 65degC (no throttling, soft temp limit flag set)

