import cv2
import os
import matplotlib.pyplot as plt 

if __name__ == "__main__":
    img = cv2.imread('C:\\Users\\zhipeng\\Desktop\\test.jpg')
    img = cv2.cvtColor(img, cv2.COLOR_BGR2RGBA)

    maskes = []
    for root, folders, files in os.walk("C:\\Users\\zhipeng\\Desktop\\test"):
        for file in files:  
            if file.split(".")[-1] == "png":
                mask = cv2.imread(os.path.join(root, file))
                mask = cv2.cvtColor(mask,cv2.COLOR_BGR2GRAY)

                contours, _ = cv2.findContours(mask, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)#寻找轮廓
                cv2.drawContours(img, contours, -1, (255, 0, 0), 2)

    #             maskes.append(mask)

    plt.imshow(img)
    plt.show()