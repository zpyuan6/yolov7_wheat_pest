python train.py --workers 0 --device 0 --batch-size 4 --data data\wheat_pest.yaml --img 640 640 --cfg cfg\training\yolov7_wheat_pest.yaml --weights 'yolov7_training.pt' --name yolov7-pest

python train.py --workers 0 --device 0 --batch-size 4 --data data\wheat_aphids.yaml --img 640 640 --cfg cfg\training\yolov7_wheat_aphids.yaml --weights 'yolov7_training.pt' --name yolov7-aphids-2classes

python train.py --workers 0 --device 0 --batch-size 3 --data data\wheat_ip102.yaml --img 640 640 --cfg cfg\training\yolov7_wheat_ip102.yaml --weights 'yolov7_training.pt' --name yolov7-ip102 --epochs 90