func countValidPairs(N: Int, S: Int) -> Int {
    var count = 0
    // 赤と青のカードの値の組み合わせをすべてチェック
    for redCard in 1...N {
        for blueCard in 1...N {
            if redCard + blueCard <= S {
                count += 1
            }
        }
    }
    return count
}

// 標準入力から値を読み取る
print("Nを入力してください: ", terminator: "")
if let inputN = readLine(), let N = Int(inputN), N >= 1 && N <= 1000 {
    print("Sを入力してください: ", terminator: "")
    if let inputS = readLine(), let S = Int(inputS), S >= 1 && S <= 2000 {
        // 有効なペアの数を計算
        let result = countValidPairs(N: N, S: S)
        // 結果を出力
        print("合計が\(S)以下となる組み合わせの数: \(result)")
    } else {
        print("無効な入力です。Sは1以上2000以下の整数を入力してください。")
    }
} else {
    print("無効な入力です。Nは1以上1000以下の整数を入力してください。")
}
