#!/usr/bin/python
#coding:utf-8
import os
import stat
import shutil 
#filePath:文件夹路径
def delete_file(filePath):
    if os.path.exists(filePath):
        for fileList in os.walk(filePath):
            for name in fileList[2]:
                if name.count(".meta")>=1:
                    os.chmod(os.path.join(fileList[0],name), stat.S_IWRITE)
                    print("path:"+name)
                    os.remove(os.path.join(fileList[0],name))
                    #shutil.rmtree(filePath)
        return "delete ok"
    else:
        return "no filepath"
  
# 当前脚本路径
curPath = os.path.split(os.path.realpath(__file__))[0]; 
print delete_file(curPath)




raw_input("输入任意键退出")


