//
//  ViewController.swift
//  StockAppSwiftUI
//
//  Created by KwanghoonKim on 2021/07/05.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //     print(solution(0, 1, 11))
        //        print(sol(3, computers: [[1, 1, 0], [1, 1, 0], [0, 0, 1]]))
        //        print(solution("hit", "cog", ["hot", "dot", "dog", "lot", "log", "cog"]))
        //        print(solution2([["ICN", "SFO"], ["ICN", "ATL"], ["SFO", "ATL"], ["ATL", "ICN"], ["ATL","SFO"]]))
        //        print(solution3( ["classic", "pop", "classic", "classic", "pop"],  [500, 600, 150, 800, 2500]))
        //        print(solution4([4,3,4,4,4,2]))
        //        print(solution5([2, 1, 1, 2, 3, 1]))
        
        //        print(solution6([[0, 0, 0, 1, 1],[0, 0, 0, 1, 0],[0, 1, 0, 1, 1],[1, 1, 0, 0, 1],[0, 0, 0, 0, 0]]))
        //        print(solution7([[0,3],[1,6],[2,9],[3,3]]))
        print(solution9([1]))
        
    }
    //    Write a function:
    //
    //    class Solution { public int solution(int A, int B, int K); }
    //
    //    that, given three integers A, B and K, returns the number of integers within the range [A..B] that are divisible by K, i.e.:
    //
    //    { i : A ≤ i ≤ B, i mod K = 0 }
    //
    //    For example, for A = 6, B = 11 and K = 2, your function should return 3, because there are three numbers divisible by 2 within the range [6..11], namely 6, 8 and 10.
    //
    //    Write an efficient algorithm for the following assumptions:
    //
    //    A and B are integers within the range [0..2,000,000,000];
    //    K is an integer within the range [1..2,000,000,000];
    //    A ≤ B.
    //    func palindrome()
    
    /*
     네트워크란 컴퓨터 상호 간에 정보를 교환할 수 있도록 연결된 형태를 의미합니다. 예를 들어, 컴퓨터 A와 컴퓨터 B가 직접적으로 연결되어있고, 컴퓨터 B와 컴퓨터 C가 직접적으로 연결되어 있을 때 컴퓨터 A와 컴퓨터 C도 간접적으로 연결되어 정보를 교환할 수 있습니다. 따라서 컴퓨터 A, B, C는 모두 같은 네트워크 상에 있다고 할 수 있습니다.
     
     컴퓨터의 개수 n, 연결에 대한 정보가 담긴 2차원 배열 computers가 매개변수로 주어질 때, 네트워크의 개수를 return 하도록 solution 함수를 작성하시오.
     
     제한사항
     컴퓨터의 개수 n은 1 이상 200 이하인 자연수입니다.
     각 컴퓨터는 0부터 n-1인 정수로 표현합니다.
     i번 컴퓨터와 j번 컴퓨터가 연결되어 있으면 computers[i][j]를 1로 표현합니다.
     computer[i][i]는 항상 1입니다.
     입출력 예
     3    [[1, 1, 0], [1, 1, 0], [0, 0, 1]]    2
     3    [[1, 1, 0], [1, 1, 1], [0, 1, 1]]    1
     */
    
    /*
     두 개의 단어 begin, target과 단어의 집합 words가 있습니다. 아래와 같은 규칙을 이용하여 begin에서 target으로 변환하는 가장 짧은 변환 과정을 찾으려고 합니다.
     
     1. 한 번에 한 개의 알파벳만 바꿀 수 있습니다.
     2. words에 있는 단어로만 변환할 수 있습니다.
     예를 들어 begin이 "hit", target가 "cog", words가 ["hot","dot","dog","lot","log","cog"]라면 "hit" -> "hot" -> "dot" -> "dog" -> "cog"와 같이 4단계를 거쳐 변환할 수 있습니다.
     
     두 개의 단어 begin, target과 단어의 집합 words가 매개변수로 주어질 때, 최소 몇 단계의 과정을 거쳐 begin을 target으로 변환할 수 있는지 return 하도록 solution 함수를 작성해주세요.
     
     제한사항
     각 단어는 알파벳 소문자로만 이루어져 있습니다.
     각 단어의 길이는 3 이상 10 이하이며 모든 단어의 길이는 같습니다.
     words에는 3개 이상 50개 이하의 단어가 있으며 중복되는 단어는 없습니다.
     begin과 target은 같지 않습니다.
     변환할 수 없는 경우에는 0를 return 합니다.
     
     */
    /*
     주어진 항공권을 모두 이용하여 여행경로를 짜려고 합니다. 항상 "ICN" 공항에서 출발합니다.
     
     항공권 정보가 담긴 2차원 배열 tickets가 매개변수로 주어질 때, 방문하는 공항 경로를 배열에 담아 return 하도록 solution 함수를 작성해주세요.
     
     제한사항
     모든 공항은 알파벳 대문자 3글자로 이루어집니다.
     주어진 공항 수는 3개 이상 10,000개 이하입니다.
     tickets의 각 행 [a, b]는 a 공항에서 b 공항으로 가는 항공권이 있다는 의미입니다.
     주어진 항공권은 모두 사용해야 합니다.
     만일 가능한 경로가 2개 이상일 경우 알파벳 순서가 앞서는 경로를 return 합니다.
     모든 도시를 방문할 수 없는 경우는 주어지지 않습니다.
     
     tickets    return
     [["ICN", "JFK"], ["HND", "IAD"], ["JFK", "HND"]]    ["ICN", "JFK", "HND", "IAD"]
     [["ICN", "SFO"], ["ICN", "ATL"], ["SFO", "ATL"], ["ATL", "ICN"], ["ATL","SFO"]]    ["ICN", "ATL", "ICN", "SFO", "ATL", "SFO"]
     
     */
    /*
     스트리밍 사이트에서 장르 별로 가장 많이 재생된 노래를 두 개씩 모아 베스트 앨범을 출시하려 합니다. 노래는 고유 번호로 구분하며, 노래를 수록하는 기준은 다음과 같습니다.
     
     속한 노래가 많이 재생된 장르를 먼저 수록합니다.
     장르 내에서 많이 재생된 노래를 먼저 수록합니다.
     장르 내에서 재생 횟수가 같은 노래 중에서는 고유 번호가 낮은 노래를 먼저 수록합니다.
     노래의 장르를 나타내는 문자열 배열 genres와 노래별 재생 횟수를 나타내는 정수 배열 plays가 주어질 때, 베스트 앨범에 들어갈 노래의 고유 번호를 순서대로 return 하도록 solution 함수를 완성하세요.
     
     제한사항
     genres[i]는 고유번호가 i인 노래의 장르입니다.
     plays[i]는 고유번호가 i인 노래가 재생된 횟수입니다.
     genres와 plays의 길이는 같으며, 이는 1 이상 10,000 이하입니다.
     장르 종류는 100개 미만입니다.
     장르에 속한 곡이 하나라면, 하나의 곡만 선택합니다.
     모든 장르는 재생된 횟수가 다릅니다.
     genres    plays    return
     ["classic", "pop", "classic", "classic", "pop"]    [500, 600, 150, 800, 2500]    [4, 1, 3, 0]
     입출력 예 설명
     classic 장르는 1,450회 재생되었으며, classic 노래는 다음과 같습니다.
     
     고유 번호 3: 800회 재생
     고유 번호 0: 500회 재생
     고유 번호 2: 150회 재생
     pop 장르는 3,100회 재생되었으며, pop 노래는 다음과 같습니다.
     
     고유 번호 4: 2,500회 재생
     고유 번호 1: 600회 재생
     따라서 pop 장르의 [4, 1]번 노래를 먼저, classic 장르의 [3, 0]번 노래를 그다음에 수록합니다.
     */
    
    public func solution8(_ A: [Int]) -> Int {
        let sorted = A.sorted(by: {$0<$1})
        var leaderStack = [Int]()
        var leader : Int?
        
        for s in sorted{
            if leaderStack.isEmpty{
                leaderStack.append(s)
                if sorted.count == 1 {
                    leader = s
                }
            }else{
                if leaderStack.last == s{
                    leaderStack.append(s)
                    if leaderStack.count > sorted.count/2{
                        //he is leader
                        leader = leaderStack.last
                        break
                    }
                }else{
                    leaderStack.removeAll()
                    leaderStack.append(s)
                }
            }
        }
        
        return leader == nil ? -1 : A.firstIndex(of: leader!)!
        
    }
    
    func solution9(_ A:[Int]) -> Int{
        
        func findLeader(_ A:[Int]) -> Int?{
            let sorted = A.sorted(by: {$0<$1})
            var leaderStack = [Int]()
            var leader : Int?
            
            for s in sorted{
                if leaderStack.isEmpty{
                    leaderStack.append(s)
                    if sorted.count == 1 {
                        leader = s
                    }
                }else{
                    if leaderStack.last == s{
                        leaderStack.append(s)
                        if leaderStack.count > sorted.count/2{
                            //he is leader
                            leader = leaderStack.last
                            break
                        }
                    }else{
                        leaderStack.removeAll()
                        leaderStack.append(s)
                    }
                }
            }
            
            return leader
        }
        func checkLeader(_ A:[Int],_ checker:Int) -> Bool{
            let check = A.filter{$0 == checker}
            return check.count > A.count/2 ? true : false
//            return false
        }
        func compareLeader(_ A:[Int],_ B:[Int]) -> Bool{
            guard let aLeader = findLeader(A) else {
                return false
            }
            return checkLeader(B, aLeader)
        }
        var count = 0
        for i in 0..<A.count{
            count += compareLeader(Array(A[0...i]), Array(A[(i+1)..<A.count])) ? 1 : 0
        }
        return count
    }
    
    
    func solution7(_ record:[[Int]])->Int{
        
        var sorted = record.sorted { $0[0] == $1[0] ? $0[1] < $1[1] : $0[0] < $1[0]  }
        //                    sorted.sort{ $0[1] == $1[1] ? $0[1] < $1[1] : $0[0] < $1[0]  }
        var totalTime = 0
        var queue = [sorted.removeFirst()]
        
        var play = [Int]()
        while !queue.isEmpty{
            let play = queue.removeFirst()
            print(play)
            if queue.isEmpty{
                
                let next = sorted.filter{$0[0]<=play[1]}.sorted(by: {$0[1]<$1[1]})
                //                sorted.first[1] <= play[1]
                
                //                if let firstIndex = sorted.firstIndex(where: {$0[0]>play[1]}){
                ////                    sorted.removeSubrange(0..<firstIndex)
                //                    for _ in 0..<firstIndex{
                //                        queue.append(sorted.removeFirst())
                //                    }
                //                }else{
                //                    queue.append(sorted.removeFirst())
                //                }
                //                print(firstIndex)
                //                sorted.removeSubrange(Range.init(0...firstIndex))
                
            }
        }
        
        //        for r in sorted{
        
        //
        //        }
        print(sorted)
        return 1
    }
    
    func solution6(_ board:[[Int]]) -> Int{
        
        let start = [[0,0],[1,0]]
        
        var result : Int?
        
        func isVertical(_ current:[[Int]]) ->Bool{
            return current[0][0] == current[1][0] ? true : false
        }
        func sortPoint(_ point:[[Int]]) -> [[Int]]{
            var copy = point
            if isVertical(point){
                copy = copy.sorted(by: { $0[1] < $1[1]  })
            }else{
                copy = copy.sorted(by: { $0[0] < $1[0]})
            }
            return copy
        }
        func didVisitBefore(_ next:[[Int]],_ history:[[[Int]]]) -> Bool{
            let next = sortPoint(next)
            return history.contains(next) ? true : false
        }
        
        
        func getMoveRight(_ current:[[Int]]) -> (Int,Int,Int,Int){
            let x1 = current[0][0] + 1
            let y1 = current[0][1]
            let x2 = current[1][0] + 1
            let y2 = current[1][1]
            return (x1,y1,x2,y2)
        }
        func canMoveRight(_ current:[[Int]]) -> Bool{
            let (x1,y1,x2,y2) = getMoveRight(current)
            if isVertical(current){
                return  x1 < board.count && x2 < board.count && board[y1][x1] == 0 && board[y2][x2] == 0 ? true : false
            }else{
                return x1 < board.count && x2 < board.count && board[y2][x2] == 0 ? true : false
            }
        }
        
        func getMoveLeft(_ current:[[Int]]) -> (Int,Int,Int,Int){
            let x1 = current[0][0] - 1
            let y1 = current[0][1]
            let x2 = current[1][0] - 1
            let y2 = current[1][1]
            return (x1,y1,x2,y2)
        }
        func canMoveLeft(_ current:[[Int]]) -> Bool{
            let (x1,y1,x2,y2) = getMoveLeft(current)
            
            if isVertical(current){
                return  x1 >= 0 && x2 >= 0 && board[y1][x1] == 0 && board[y2][x2] == 0 ? true : false
            }else{
                return x1 >= 0 && x2 >= 0  && board[y1][x1] == 0 ? true : false
            }
        }
        
        func getMoveUp(_ current:[[Int]]) -> (Int,Int,Int,Int){
            let x1 = current[0][0]
            let y1 = current[0][1] - 1
            let x2 = current[1][0]
            let y2 = current[1][1] - 1
            return (x1,y1,x2,y2)
        }
        func canMoveUp(_ current:[[Int]]) -> Bool{
            let (x1,y1,x2,y2) = getMoveUp(current)
            if isVertical(current){
                return y1 >= 0 && y2 >= 0 && board[y1][x1] == 0 ? true : false
            }else{
                return  y1 >= 0 && y2 >= 0  && board[y1][x1] == 0 && board[y2][x2] == 0 ? true : false
            }
        }
        
        func getMoveDown(_ current:[[Int]]) -> (Int,Int,Int,Int){
            let x1 = current[0][0]
            let y1 = current[0][1] + 1
            let x2 = current[1][0]
            let y2 = current[1][1] + 1
            return (x1,y1,x2,y2)
        }
        
        func canMoveDown(_ current:[[Int]]) -> Bool{
            let (x1,y1,x2,y2) = getMoveDown(current)
            if isVertical(current){
                return y1 < board.count && y2 < board.count  && board[y2][x2] == 0 ? true : false
            }else{
                return  y1 < board.count &&  y2 < board.count && board[y1][x1] == 0 && board[y2][x2] == 0 ? true : false
            }
            
        }
        func canRotateClockWise(_ current:[[Int]],_ axis:Int) -> Bool{
            if isVertical(current){
                if axis == 0 {
                    return canMoveLeft(current)
                }else{
                    return canMoveRight(current)
                }
            }else{
                if axis == 0{
                    return canMoveDown(current)
                }else{
                    return canMoveUp(current)
                }
            }
        }
        func canRotateCounterClockWise(_ current:[[Int]],_ axis:Int) -> Bool{
            if isVertical(current){
                if axis == 0 {
                    return canMoveRight(current)
                }else{
                    return canMoveLeft(current)
                }
            }else{
                if axis == 0{
                    return canMoveUp(current)
                }else{
                    return canMoveDown(current)
                    
                }
            }
        }
        
        func getRotateClockWise(_ current:[[Int]], axis:Int) ->(Int,Int,Int,Int){
            if isVertical(current){
                if axis == 0 {
                    let x1 = current[0][0]
                    let y1 = current[0][1]
                    let x2 = x1 - 1
                    let y2 = y1
                    return (x1,y1,x2,y2)
                }else{
                    
                    let x2 = current[1][0]
                    let y2 = current[1][1]
                    let x1 = x2 + 1
                    let y1 = y2
                    return (x1,y1,x2,y2)
                }
            }else{
                if axis == 0 {
                    let x1 = current[0][0]
                    let y1 = current[0][1]
                    let x2 = x1
                    let y2 = y1 + 1
                    return (x1,y1,x2,y2)
                }else{
                    let x2 = current[1][0]
                    let y2 = current[1][1]
                    let x1 = x2
                    let y1 = y2 - 1
                    return (x1,y1,x2,y2)
                }
            }
        }
        func getRotateCounterClockWise(_ current:[[Int]], axis:Int) ->(Int,Int,Int,Int){
            if isVertical(current){
                if axis == 0 {
                    let x1 = current[0][0]
                    let y1 = current[0][1]
                    let x2 = x1 + 1
                    let y2 = y1
                    return (x1,y1,x2,y2)
                }else{
                    
                    let x2 = current[1][0]
                    let y2 = current[1][1]
                    let x1 = x2 - 1
                    let y1 = y2
                    return (x1,y1,x2,y2)
                }
            }else{
                if axis == 0 {
                    let x1 = current[0][0]
                    let y1 = current[0][1]
                    let x2 = x1
                    let y2 = y1 - 1
                    return (x1,y1,x2,y2)
                }else{
                    let x2 = current[1][0]
                    let y2 = current[1][1]
                    let x1 = x2
                    let y1 = y2 + 1
                    return (x1,y1,x2,y2)
                }
            }
        }
        
        func moveRobot(_ current:[[Int]],_ history:[[[Int]]],_ time:Int){
            var historyLog = history
            //            print(current)
            //            print([board.count-1,board.count-1])
            //
            if current.contains([board.count-1,board.count-1]) {
                if result == nil {
                    result = time
                }else{
                    result = min(result!, time)
                }
                
                return }
            if didVisitBefore(current, history){
                return
            }
            historyLog.append(sortPoint(current))
            
            if canMoveUp(current){
                let (x1,y1,x2,y2) = getMoveUp(current)
                let next = [[x1,y1],[x2,y2]]
                moveRobot(next, historyLog, time+1)
            }
            if canMoveDown(current){
                let (x1,y1,x2,y2) = getMoveDown(current)
                let next = [[x1,y1],[x2,y2]]
                moveRobot(next, historyLog, time+1)
            }
            if canMoveLeft(current){
                let (x1,y1,x2,y2) = getMoveLeft(current)
                let next = [[x1,y1],[x2,y2]]
                moveRobot(next, historyLog, time+1)
            }
            if canMoveRight(current){
                let (x1,y1,x2,y2) = getMoveRight(current)
                let next = [[x1,y1],[x2,y2]]
                moveRobot(next, historyLog, time+1)
            }
            if canRotateClockWise(current, 0){
                let (x1,y1,x2,y2) = getRotateClockWise(current, axis: 0)
                let next = [[x1,y1],[x2,y2]]
                moveRobot(next, historyLog, time+1)
            }
            if canRotateClockWise(current, 1){
                let (x1,y1,x2,y2) = getRotateClockWise(current, axis: 1)
                let next = [[x1,y1],[x2,y2]]
                moveRobot(next, historyLog, time+1)
            }
            if canRotateCounterClockWise(current, 0){
                let (x1,y1,x2,y2) = getRotateCounterClockWise(current, axis: 0)
                let next = [[x1,y1],[x2,y2]]
                moveRobot(next, historyLog, time+1)
            }
            if canRotateCounterClockWise(current, 1){
                let (x1,y1,x2,y2) = getRotateCounterClockWise(current, axis: 1)
                let next = [[x1,y1],[x2,y2]]
                moveRobot(next, historyLog, time+1)
            }
            
        }
        moveRobot(start, [], 0)
        //
        //        print(canMoveUp(start))
        //        print(canMoveDown(start))
        //        print(canMoveLeft(start))
        //        print(canMoveRight(start))
        
        return result!
    }
    
    func solution5(_ A:[Int]) -> Int {
        var visited = [Int]()
        var distinct = [Int]()
        for a in A{
            if visited.isEmpty{
                visited.append(a)
            }else if !visited.contains(a){
                visited.append(a)
                distinct.append(a)
            }else{
                if let removeIndex = distinct.firstIndex(of: a) {
                    distinct.remove(at: removeIndex)
                }
                
            }
        }
        return distinct.first!
    }
    
    func solution4(_ A:[Int]) -> Int{
        func findLeader(_ arr:[Int]) ->Int?{
            //            var counter = [Int:Int]()
            var counts: [Int: Int] = [:]
            var isLeader : Int?
            let unique = Array(Set(arr))
            
            for u in unique{
                if arr.reduce(0, { $1 == u ? $0 + 1 : $0 }) > arr.count/2{
                    isLeader = u
                }
            }
            return isLeader
            
            
            //            arr.forEach { counts[$0, default: 0] += 1 }
            ////            print( )
            //            return counts.filter { e -> Bool in
            //                return e.value > arr.count/2
            //            }.keys.first
        }
        //        findLeader(Array<Int>(leaders[0...3]))
        var count = 0
        for i in 0..<(A.count-1){
            let pre = findLeader(Array<Int>(A[0...i]))
            let end = findLeader(Array<Int>(A[(i+1)..<A.count]))
            if A[0...i].filter({$0 == A[i]}).count > (i+1)/2, A[(i+1)..<A.count].filter({$0 == A[i]}).count >  (A.count - (i+1)) / 2{
                
            }
            
            if pre != nil , end != nil, pre == end{
                count += 1
            }
        }
        //        print(count)
        return count
    }
    func solution3(_ genres:[String], _ plays:[Int]) -> [Int] {
        var playList = [String:[[Int]]]()
        for (index,genre) in genres.enumerated(){
            let play = plays[index]
            if playList[genre] != nil {
                if let insertIndex = playList[genre]![0].firstIndex{ $0 < play}{
                    playList[genre]![0].insert(play, at: insertIndex)
                    playList[genre]![1].insert(index, at: insertIndex)
                }else{
                    playList[genre]![0].append(play)
                    playList[genre]![1].append(index)
                }
            }else{
                playList[genre] = [[play],[index]]
            }
            
        }
        
        let sorted =   playList
            .sorted{ $0.value[0].reduce(0){ $0 + $1 } > $1.value[0].reduce(0){ $0 + $1 }}
            .map{ $0.1[1]}
        var result = [Int]()
        for sort in sorted{
            if sort.count > 2 {
                result.append(contentsOf:sort[0...1])
            }else{
                result.append(contentsOf: sort)
            }
        }
        
        
        return result
    }
    
    func solution2(_ tickets:[[String]]) -> [String] {
        let start = "ICN"
        var visited = [start]
        
        func travel(_ to:String,_ leftTickets:[[String]]){
            if leftTickets.isEmpty {return}
            //            print(leftTickets.filter { return $0[0] == to}.sorted(by: { $0[1] < $1[1] }).first)
            let next = leftTickets.filter { return $0[0] == to}.sorted(by: { $0[1] < $1[1] }).first
            visited.append(next![1])
            var copy = leftTickets
            copy.removeAll { $0 == next }
            travel(next![1], copy)
        }
        travel(start,tickets)
        
        return visited
    }
    
    func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
        
        var minimum : Int?
        
        func isChangable(_ comp1:String, _ comp2:String) -> Bool{
            let length = comp1.count
            var count = 0
            for i in 0..<length{
                if comp1[comp1.index(comp1.startIndex, offsetBy: i)] == comp2[comp2.index(comp2.startIndex, offsetBy: i)]{ count += 1 }
            }
            return length - 1 == count ? true : false
        }
        
        func dfs(_ find:String,_ wordsList:[String], _ count :Int){
            if wordsList.isEmpty {return}
            if find == target {
                if minimum != nil{
                    minimum  = min (count,minimum!)}
                else{
                    minimum = count
                }
                
                return}
            for word in wordsList{
                if isChangable(find, word){
                    var copy = wordsList
                    if let index = wordsList.firstIndex(of: find){
                        copy.remove(at: index)
                    }
                    dfs(word, copy, count + 1)
                }
            }
        }
        
        dfs(begin, words, 0)
        
        return minimum == nil ? 0 : minimum!
    }
    
    
    func sol(_ n:Int, computers:[[Int]]) -> Int{
        var visited = [Bool](repeating: false, count: n)
        var ans = 0
        func dfs(_ visit:Int,_ computer:[Int]){
            visited[visit] = true
            for (index,network) in computer.enumerated(){
                if !visited[index], visit != index, network == 1 {
                    dfs(index, computers[index])
                }
            }
        }
        for current in 0..<n{
            if visited[current] == false{
                ans += 1
                dfs(current, computers[current])
            }
            
        }
        return ans
    }
    
    
    
}

