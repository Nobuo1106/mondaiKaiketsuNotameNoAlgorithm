// 3つの整数を標準入力から読み取る
print("整数A1、A2、A3を入力してください (各整数は1以上100以下): ", terminator: "")
if let input = readLine() {
    let numbers = input.split(separator: " ").map { Int($0) }
    if numbers.count == 3,
       let A1 = numbers[0], A1 >= 1, A1 <= 100,
       let A2 = numbers[1], A2 >= 1, A2 <= 100,
       let A3 = numbers[2], A3 >= 1, A3 <= 100 {
        // 3つの整数の合計を計算
        let sum = A1 + A2 + A3
        // 結果を出力
        print("合計: \(sum)")
    } else {
        print("無効な入力です。3つの整数をスペースで区切って入力してください。各整数は1以上100以下です。")
    }
} else {
    print("入力が読み取れませんでした。")
}
