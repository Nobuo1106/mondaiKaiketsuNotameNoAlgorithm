// 整数とシフトするビット数を標準入力から読み取る
print("整数Aを入力してください: ", terminator: "")
if let inputA = readLine(), let numberA = Int(inputA) {
    print("シフトするビット数を入力してください: ", terminator: "")
    if let inputShift = readLine(), let shiftAmount = Int(inputShift), shiftAmount >= 0 {
        // 左シフト演算を行う
        let result = numberA << shiftAmount
        // 結果を出力
        print("左シフト演算の結果: \(result)")
    } else {
        print("無効な入力です。シフトするビット数は0以上の整数を入力してください。")
    }
} else {
    print("無効な入力です。整数を入力してください。")
}
