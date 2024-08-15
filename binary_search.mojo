import time
from collections import List

def main():
    var start_time = time.now()

    # var list1  = List[String]('1', '2', '3', 'A', 'B', 'C')
    # var list2 = List[String]('11', '2', '3', '9', 'C', 'G', 'M', 'N', 'R', 'X')
    var list1 = List[Int32]()
    var list2 = List[Int32]()
    for i in range(10_000_000):
        list1.append(i)
        list2.append(i)
    var result = List[Int32]()

    for i in range(list1.size):
        var low: Int = 0
        var high: Int = len(list2) - 1
        while low <= high:
            var new_middle: Int = (low+high)//2
            if list1[i] < list2[new_middle]:
                high = new_middle - 1
            elif list1[i] > list2[new_middle]:
                low = new_middle + 1
            else:
                result.append(list1[i])
                break

    # for i in range(result.size):
    #     print(result[i], end=' ')
    # print()

    var end_time = time.now()
    var time_elapse = end_time - start_time
    var sec = time_elapse/1e9
    print("result:", len(result))
    print(sec,"seconds")
    # var msec = time_elapse/1e6
    # print(msec,"ms")
