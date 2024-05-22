// りんごの数を定義
let numberOfApples = 5

// 標準入力から整数Nを読み取る
print("整数Nを入力してください (1以上100以下): ", terminator: "")
if let input = readLine(), let numberOfOranges = Int(input), numberOfOranges >= 1, numberOfOranges <= 100 {
    // りんごとみかんの合計数を計算
    let totalFruits = numberOfApples + numberOfOranges
    // 結果を出力
    print("りんごとみかんを合わせて \(totalFruits) 個あります。")
} else {
    print("無効な入力です。1以上100以下の整数を入力してください。")
}
