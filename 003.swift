// 整数Nを標準入力から読み取る
print("整数Nを入力してください (1以上50以下): ", terminator: "")
if let nInput = readLine(), let N = Int(nInput), N >= 1, N <= 50 {
    // N個の整数を標準入力から読み取る
    print("\(N)個の整数をスペースで区切って入力してください (各整数は1以上100以下): ", terminator: "")
    if let arrayInput = readLine() {
        let numbers = arrayInput.split(separator: " ").map { Int($0) }
        if numbers.count == N, numbers.allSatisfy({ $0 != nil && $0! >= 1 && $0! <= 100 }) {
            // 合計を計算
            let sum = numbers.compactMap { $0 }.reduce(0, +)
            // 結果を出力
            print("合計: \(sum)")
        } else {
            print("無効な入力です。\(N)個の整数をスペースで区切って入力してください。各整数は1以上100以下です。")
        }
    } else {
        print("入力が読み取れませんでした。")
    }
} else {
    print("無効な入力です。1以上50以下の整数を入力してください。")
}
