// 10進法の整数を標準入力から読み取る
print("10進法の整数を入力してください: ", terminator: "")
if let input = readLine(), let decimalNumber = Int(input) {
    // 2進法に変換
    let binaryNumber = String(decimalNumber, radix: 2)
    // 結果を出力
    print("2進法: \(binaryNumber)")
} else {
    print("無効な入力です。整数を入力してください。")
}
