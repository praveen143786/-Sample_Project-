# file handling is important part of web application

# python has several functions for creating, reading, updating and deleting files.

# the key function to work with files is open() function

# there are 4 kinds of modes to opan a file

# r = read a file, error if the file does not exist.
# a = append a file, creates the file if it does not exist.
# w = write a file(overwrite exesting content), create the file if it does not exist.
# x = creates the file, error if the file exists already

# f = open("E:\REDDY\DEVOPS\Python\python.txt")
# print (f.read()) # to read data in file
# print (f.read(5)) # to read 5 letters from a file
# print (f.readline()) # to read one line from a file

# you can loop through file to read line by line
#for x in f:
#    print(x)

#f = open("E:\REDDY\DEVOPS\Python\python.txt")
#print (f.read())
#f.write("add new line by using file handling")

#f = open("reddy.txt", "x") # create a file

f = open("/root/scripts/sys.py")
#print (f.read())
#print (f.read(6))
#print (f.readline())
#for lines in f:
#    print (lines)

f = open("/root/scripts/reddy", "r")
#f.write("this is python test2\n")
#f.close()
print (f.read())
