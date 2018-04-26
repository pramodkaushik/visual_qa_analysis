wget -c http://visualqa.org/data/mscoco/vqa/Annotations_Train_mscoco.zip 
wget -c http://visualqa.org/data/mscoco/vqa/Annotations_Val_mscoco.zip
wget -c http://visualqa.org/data/mscoco/vqa/Questions_Train_mscoco.zip
wget -c http://visualqa.org/data/mscoco/vqa/Questions_Val_mscoco.zip
wget -c http://visualqa.org/data/mscoco/vqa/Questions_Test_mscoco.zip
#wget -c http://msvocds.blob.core.windows.net/coco2014/train2014.zip
wget -c http://msvocds.blob.core.windows.net/coco2014/val2014.zip
#wget -c http://msvocds.blob.core.windows.net/coco2015/test2015.zip

for i in `ls -1 *.zip`; do
	unzip $i
done
