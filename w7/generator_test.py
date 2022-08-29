
# the example notes that 
# for i in while_generator() is like 
# 
# calling while_generator() by calling over and over again when needed 
# instead of struct a whole list in one go

# generator is a type of iterator

# generator is a iter instead of  a s in iter(s)

def while_generator():
    i=0
    while i<10:
        print(i)
        yield i
        i+=1

for i in while_generator():
    print("AAAA")
    
# new example
def string_generator(s):
    if s:
    	yield s
    	print("new call")
    	yield from string_generator(s[:-1])

# pure recursive version
# generate the whole list in one go
def string_recursive(s):
    if s:
    	return [s]+string(s[:-1])
    else:
    	return []
for i in string_generator('dogs'):
    print(i)

def a_generator_like_rosbag(inputs,f):
    def generator():
        for i in inputs:
            if f(i):                
                yield i
    return generator

inputs = range(1,10)
range_generator = a_generator_like_rosbag(inputs,lambda x: x%2==0)
# generator function calling generate a generator
# next() is the real operation to get value
g = range_generator()
print(next(g))
print(next(g))
print(next(g))

# here call range_generator() again and then create a new generator
for i in range_generator():
    print(i)


