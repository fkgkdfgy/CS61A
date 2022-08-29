



# 类的基本处理还是浅拷贝

class A:
   def __init__(self,content):
       self.content = content

a = A(30)
b = a 
a.content=40
print('b.content',b.content)

def change_content(a,value):
    a.content = value

change_content(a,50)
print('b.content',b.content)

print('a.content',a.content)
