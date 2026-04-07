import Foundation



/*
 * Complete the 'countResponseTimeRegressions' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY responseTimes as parameter.
 */

func countResponseTimeRegressions(responseTimes: [Int]) -> Int {
    
    var total = 0
    var average = 0
    var counter = 0

    for i in 1..<responseTimes.count  {

        total += responseTimes[i-1]
        average = total / i

        if (responseTimes[i] > average) {
            counter += 1

        }
    }
    
    return counter
}

guard let responseTimesCount = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

var responseTimes = [Int]()

for _ in 1...responseTimesCount {
    guard let responseTimesItem = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
    else { fatalError("Bad input") }

    responseTimes.append(responseTimesItem)
}

guard responseTimes.count == responseTimesCount else { fatalError("Bad input") }

let result = countResponseTimeRegressions(responseTimes: responseTimes)

print(result)
