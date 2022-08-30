import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    let reachStages = Set(stages).sorted()
    let noReachStage = Set(1...N).subtracting(reachStages)
    var totalPlayer = 0
    var failureRateAndStages = [Double:[Int]]()
    
    var clearPlayer = 0
    var notClearPlayer = 0
    
    // 실패율 계산
    for stage in reachStages {
        if stage == N + 1 { break }
        
        clearPlayer = stages.count - totalPlayer
        notClearPlayer = stages.filter{ $0 == stage }.count
        totalPlayer += notClearPlayer
        
        let failureRate = Double(notClearPlayer) / Double(clearPlayer)
        var stageList = [stage]
        if failureRateAndStages[failureRate] == nil {
            failureRateAndStages[failureRate] = stageList
        } else {
            stageList.append(contentsOf: failureRateAndStages[failureRate]!)
            failureRateAndStages[failureRate] = stageList
        }
    }
    if noReachStage.isEmpty == false {
        failureRateAndStages[0] = noReachStage.sorted()
    }
    
    let sortedDic = failureRateAndStages.sorted { $0.0 > $1.0 }
    return sortedDic.map{$0.1.sorted()}.flatMap { $0 }
}
