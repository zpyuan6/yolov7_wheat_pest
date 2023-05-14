from os import walk
import os
import xml.etree.ElementTree as ET
from shutil import copyfile

f = []
direct_path = "C:/Users/zhipeng/Desktop/Dataset"
class_names=[]
class_nums=[]

for (dirpath, dirnames, filenames) in walk("C:/Users/zhipeng/Desktop/Pest_Dataset"):
    f.extend(filenames)
    for filename in filenames:
        print(os.path.join(dirpath, filename))
        if filename.split(".")[1]=="xml":
            img_name = filename.split(".")[0]
            in_file = open(os.path.join(dirpath, filename), encoding='utf-8')
            tree = ET.parse(in_file)
            root = tree.getroot()
            for obj in root.iter('object'):
                cls = obj.find('name').text
                index = 0 
                
                # if cls == 'snails':
                #     obj.find('name').text = "snail"
                #     cls = "snail"
                
                # if cls == 'unknown':
                #     obj.find('name').text = "pest"
                #     cls = "pest"
                
                # tree.write(os.path.join(dirpath, filename))

                if cls in class_names:
                    index = class_names.index(cls)
                    class_nums[index]+=1
                else:
                    class_names.append(cls)
                    index = class_names.index(cls)
                    class_nums.append(0)
                
                if (img_name+".jpg" in filenames):
                    copyfile(os.path.join(dirpath, filename),os.path.join(direct_path, "{cindex}-{cnum}.xml".format(cindex=index,cnum=class_nums[index])))
                    copyfile(os.path.join(dirpath, img_name+".jpg"),os.path.join(direct_path, "{cindex}-{cnum}.jpg".format(cindex=index,cnum=class_nums[index])))
                
                if (img_name+".JPG" in filenames):
                    copyfile(os.path.join(dirpath, filename),os.path.join(direct_path, "{cindex}-{cnum}.xml".format(cindex=index,cnum=class_nums[index])))
                    copyfile(os.path.join(dirpath, img_name+".JPG"),os.path.join(direct_path, "{cindex}-{cnum}.jpg".format(cindex=index,cnum=class_nums[index])))

                break
    break

print(class_names)
print(len(f))