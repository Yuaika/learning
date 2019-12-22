reference：
https://blog.csdn.net/kellyroslyn/article/details/92730328
https://blog.csdn.net/kellyroslyn/article/details/93294790
https://blog.csdn.net/char_QwQ/article/details/80980505
https://github.com/dBeker/Faster-RCNN-TensorFlow-Python3

环境配置：
python3.5 tensorflow1.3 cuda=8 cudnn=6
安装opencv-python cython easydict pillow matplotlib  scipy
配置coco PythonAPI
下载voc2007数据集（或直接用自己的数据）与预训练模型

使用说明：
主目录下
训练： 在Faster-RCNN-TensorFlow-Python3.5-master\lib\datasets\pascal_voc.py修改类别
       python train.py      
测试： 在Faster-RCNN-TensorFlow-Python3.5/default/voc_2007_trainval/default目录下寻找训练好的模型，
       复制到Faster-RCNN-TensorFlow-Python3.5/output/vgg16/voc_2007_trainval/default/文件下，
       测试图像在data/demo里面修改
       python demo.py 

可调整部分：
1.使用不同的预训练模型在，.\data\imagenet_weights下修改
2.超参数调整：在Faster-RCNN-TensorFlow-Python3.5-master\lib\config文件夹里的config.py修改
3.自己的数据集制作：使用labelimg工具和划分训练集，测试集，验证集的Creat_FRCNN_DataSet工具（https://github.com/ruyiweicas/Creat_FRCNN_DataSet）                   

当前可优化的：
1.使用其他预训练模型进行测试
2.当前的数据不足，泛化能力存疑
3.数据集图像大小为1920*1280，将图像缩小到voc2007相同尺寸效果可能更好
4.写一个提供检测结果的接口

