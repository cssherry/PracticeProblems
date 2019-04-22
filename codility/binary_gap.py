"""
Write solution that will give largest length of 0's for binary representation of number
https://app.codility.com/programmers/lessons/1-iterations/binary_gap/
"""
def solution(N):
    # write your code in Python 3.6
    binary = format(N, 'b')
    longest_gap = 0

    curr_gap = 0
    for number in binary:
        if number == '0':
            curr_gap += 1
        elif curr_gap:
            longest_gap = curr_gap if curr_gap > longest_gap else longest_gap
            curr_gap = 0

    return longest_gap
