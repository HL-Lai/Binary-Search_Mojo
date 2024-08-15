import time
from tqdm.auto import tqdm
start_time = time.time()

def main():
    # list1 = ['1', '2', '3', 'A', 'B', 'C']
    # list2 = ['11', '2', '3', '9', 'C', 'G', 'M', 'N', 'R', 'X']
    list1 = [i for i in range(10_000_000)]
    list2 = [i for i in range(10_000_000)]
    # for i in range(100000):
    #     list1.append(i)
    #     list2.append(i)
    result = []

    for i in tqdm(list1):
        low, high = 0, len(list2) - 1
        while low <= high:
            new_middle = (low+high)//2
            if i < list2[new_middle]:
                high = new_middle - 1
            elif i > list2[new_middle]:
                low = new_middle + 1
            else:
                result.append(i)
                break
        # if i in list2:
        #     result.append(list1[i])
    # print(result)
    end_time = time.time()
    time_elapse = end_time - start_time
    sec = time_elapse
    print("result:", len(result))
    print(sec, "seconds")
    # msec = time_elapse*1000
    # print(msec, "ms")

if __name__=='__main__':
    main()