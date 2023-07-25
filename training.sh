python train.py --workers 0 --device 0 --batch-size 4 --data data\wheat_pest.yaml --img 640 640 --cfg cfg\training\yolov7_wheat_pest.yaml --weights 'yolov7_training.pt' --name yolov7-pest

python train.py --workers 0 --device 0 --batch-size 4 --data data\wheat_aphids.yaml --img 640 640 --cfg cfg\training\yolov7_wheat_aphids.yaml --weights 'yolov7_training.pt' --name yolov7-aphids-2classes

python train.py --workers 0 --device 0 --batch-size 3 --data data\wheat_ip102.yaml --img 640 640 --cfg cfg\training\yolov7_wheat_ip102.yaml --weights 'yolov7_training.pt' --name yolov7-ip102 --epochs 90

python train.py --workers 0 --device 0 --batch-size 6 --data data\wheat_pest_new.yaml --img 640 640 --cfg cfg\training\yolov7_wheat_pest.yaml --weights 'yolov7_training.pt' --name yolov7-pest-new

python train.py --workers 0 --device 0 --batch-size 6 --data data\our_dataset_all.yaml --img 640 640 --cfg cfg\training\yolov7_wheat_pest_all_classes.yaml --weights 'yolov7_training.pt' --name yolov7-our-dataset-all-classes

python train.py --epochs 500 --workers 6 --device 0 --batch-size 6 --data data\disease_dataset.yaml --img-size 512 --cfg cfg\training\yolov7_disease_detection.yaml --weights 'yolov7.pt' --name yolov7-disease-detection


python train.py --epochs 400 --workers 6 --device 0 --batch-size 6 --data data\AgriNema.yaml --img-size 512 --cfg cfg\training\yolov7_AgriNema.yaml --weights 'yolov7.pt' --name agrinema

python train.py --epochs 400 --workers 6 --device 0 --batch-size 6 --data data\BBBC010.yaml --img-size 512 --cfg cfg\training\yolov7_BBBC010.yaml --weights 'yolov7.pt' --name bbbc010

python train.py --epochs 400 --workers 6 --device 0 --batch-size 6 --data data\Celegans.yaml --img-size 512 --cfg cfg\training\yolov7_Celegans.yaml --weights 'yolov7.pt' --name celegans

python train.py --epochs 400 --workers 6 --device 0 --batch-size 6 --data data\microorganism.yaml --img-size 512 --cfg cfg\training\yolov7_Microorganism.yaml --weights 'yolov7.pt' --name microorganism