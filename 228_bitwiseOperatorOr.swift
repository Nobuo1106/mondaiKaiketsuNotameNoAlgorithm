// 2つの整数を標準入力から読み取る
print("整数Aを入力してください: ", terminator: "")
if let inputA = readLine(), let numberA = Int(inputA) {
    print("整数Bを入力してください: ", terminator: "")
    if let inputB = readLine(), let numberB = Int(inputB) {
        // OR演算を行う
        let result = numberA | numberB
        // 結果を出力
        print("OR演算の結果: \(result)")
    } else {
        print("無効な入力です。整数を入力してください。")
    }
} else {
    print("無効な入力です。整数を入力してください。")
}
