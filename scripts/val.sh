# path__dir__run=outputs/train


# LS__DATA_VAL=(
#     bag-detection
# )

# data=bag-detection


# imgsz=640

# ver__model=yolov8s--640
# ver__train=train
# # conf=0.1

# for data_val in ${LS__DATA_VAL[@]}; do
#     echo
#     echo "========= Evaluating data $data_val ========="

#     yolo val \
#         data=src/configs/$data_val.yaml \
#         imgsz=$imgsz \
#         device=0 \
#         batch=8 \
#         project=$path__dir__run/$data/${ver__model}/val--$ver__train--imgsz-$imgsz \
#         model=yolov8s.pt \
#         # model=$path__dir__run/$data/${ver__model}/$ver__train/weights/best.pt \
        
#         # project=/home/lap_awlv/laptq-nedo-fed/outputs/trivials \
#         # project=/home/laptq/laptq-nedo-fed/outputs/trivials \
#         # project=$path__dir__run/$data/${ver__model}/val--$ver__train--imgsz-$imgsz--conf-$conf \
#         # project=$path__dir__run/coco/yolov8s/val--imgsz-$imgsz \


#         # conf=$conf \
#         # iou=0.6 \

# done

yolo val \
    data=/home/laptq/laptq_utils/outputs/fs26/helper--convert--detection--json--to--rf-detr/data.yaml \
    imgsz=640 \
    device=0 \
    batch=32 \
    project=/home/laptq/ultralytics/outputs/trivials \
    model=yolov8m.pt \
    classes=0 \