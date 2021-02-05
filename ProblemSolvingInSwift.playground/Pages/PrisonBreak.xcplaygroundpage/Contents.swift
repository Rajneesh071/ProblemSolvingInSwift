//
//  PrisonBreak.swift
//
//  Created by Rajneesh on 23/10/20.
//  Copyright © 2020 :]. All rights reserved.
/*
Prison Break
A prisonar is planning to escape from prison! The prison's gate consists of horizontal and vertical bars that are spaced one unit apart, so the area of each hole between the bars is 1 × 1. The prisonar manages to remove certain bars and make some of these holes bigger. Determine the area of the largest hole in the gate after the bars are removed.
For example, consider the diagram below. The left image depicts the initial prison gate with n = 6 horizontal and m = 6 vertical bars, where the area of the biggest hole in the bars is 1 × 1. The right image depicts that same gate after Sam removes horizontal bar 4 and vertical bar 2, at which point the area of the biggest hole in the bars becomes 2 × 2 = 4:
n = 6,
m = 6,
h = [4]
v = [2]
 
Function Description Complete the function prison in the editor below. The function must return a long integer denoting the area of the biggest hole in the prison gate's bars.
prison has the following parameter(s):
 n: integer, the number of horizontal bars initially
 m: integer, the number of vertical bars initially
 h[h[0],...h[x-1]]: an array of integers, the horizontal bars to remove
 v[v[0],...v[y-1]]: an array of integers, the vertical bars to remove
.
Input Format for Custom Testing Input from stdin will be processed as follows and passed to the function.
The first line contains an integer n. The second line contains an integer m. The third line contains an integer x, the size of the array h. Each of the next x lines contains an integer h[i] where 0 ≤ i < n. The next line contains an integer y, the size of the array v. Each of the next v lines contains an integer v[j] where 0 ≤ j < m.
Sample Case 0 :
Sample Input 0 : 3 3 1 2 1 2
Sample Output 0 : 4
*/

import Foundation

class PrisonBreak {
    init() {
        print(prison(n: 6, m: 6, h: [4,5], v: [1,2,6]))
        print(prison(n: 3, m: 3, h: [1,2], v: [1,2]))
    }
    
    func prison(n: Int, m: Int, h: [Int], v: [Int]) -> Int {
        
        var hAry = Array(repeating: 1, count: n+1)
        var vAry = Array(repeating: 1, count: m+1)
        
        for value in h {
            hAry[value-1] = 0
        }
        for value in v {
            vAry[value-1] = 0
        }
        var maxH = 1
        var temp = 0
        for i in 0...n-1 {
            if hAry[i] == 1 {
                temp = 0
            } else {
                temp=temp+1
                maxH = max(temp,maxH)
            }
        }
        
        var maxV = 1
        temp = 0
        for i in 0..<m {
            if vAry[i] == 1 {
                temp = 0
            } else {
                temp=temp+1
                maxV = max(temp,maxV)
            }
        }
        return (maxH+1) * (maxV+1)
    }
}

let prison = PrisonBreak()
