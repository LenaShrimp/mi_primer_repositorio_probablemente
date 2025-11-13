#file objects
with open('bee_movie.lna', 'r') as f:
    f_contents=f.read(1000)
    print(f_contents, end='')

    #for line in f:
        #print(line,end='')

'''
        f_contents = f.readline()
    print(f_contents, end='')
f.readlines()

f=open('test.txt', 'r')

f.close()
'''