def K_means(data, c1, c2, c3):
    #data is a m x 3 matrix m = 6 and n = 3, (No., x, y)
    #find distance
    distList = []
    for i in data:
        dist = []
        dist.append (   (i[1]-c1[0])**2 + (i[2]-c1[1])**2   )
        dist.append (   (i[1]-c2[0])**2 + (i[2]-c2[1])**2   )
        dist.append (   (i[1]-c3[0])**2 + (i[2]-c3[1])**2   )
        distList.append(dist)
    #find min distance
    belongList = []
    for i in distList:
        i:list
        print(i.index(min(i)), end = " ")
        belongList.append(i.index(min(i)))
    # print(belongList)
    print()
    # get new center
    c1, c2, c3 = [0,0], [0,0], [0,0]
    c1_num, c2_num, c3_num = 0, 0, 0
    for i in range(len(belongList)):
        if belongList[i] == 0:
            c1_num+= 1
            c1[0] += data[i][1] 
            c1[1] += data[i][2]
        if belongList[i] == 1:
            c2_num+= 1
            c2[0] += data[i][1] 
            c2[1] += data[i][2]
        if belongList[i] == 2:
            c3_num+= 1
            c3[0] += data[i][1] 
            c3[1] += data[i][2]
    c1[0] = c1[0]/c1_num; c1[1] = c1[1]/c1_num
    c2[0] = c2[0]/c2_num; c2[1] = c2[1]/c2_num
    c3[0] = c3[0]/c3_num; c3[1] = c3[1]/c3_num
    print(c1, c2, c3)
    return c1, c2, c3


def main():
    data = [
        [1, 8, 4],
        [2, 5, 4],
        [3, 2, 4],
        [4, 2, 6],
        [5, 2, 8],
        [6, 8, 6]
    ]
    c11, c12, c13 = K_means(data, [8, 4], [2, 4], [2, 8])
    # print(c11, c12, c13)
    c21, c22, c23 = K_means(data, c11, c12, c13)
    # print
    c31, c32, c33 = K_means(data, c21, c22, c23)
main()