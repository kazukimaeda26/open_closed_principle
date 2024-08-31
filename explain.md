# FizzBuzzで学ぶ OCP
OCP: Open Closed Principle（開放/閉鎖原則）
  SOLID原則の1つ
  拡張に対しては開いており、修正に対しては閉じていること

例えば、FizzBuzzのコードがあります.
- 3の倍数で'Fizz'
- 5の倍数で'Buzz'
- (15の倍数では'FizzBuzz')

これに、「2の倍数で'Nizz'」を追加したい。
下記のようになる. <= convertメソッドを変更する必要がある.(OCPに違反)

- 2の倍数で'Nizz'
- 3の倍数で'Fizz'
- 5の倍数で'Buzz'

- (30の倍数では'NizzFizzBuzz)
- (15の倍数では'FizzBuzz')
- (10の倍数では'NizzBuzz')
- (6の倍数では'NizzFizz')


# 実装のイメージ
1. NewFizzBuzzクラス作成
    - initializeでrules渡す
    - convertメソッド
2. Ruleクラス作成
    - initializeでdivisor, wordを渡す
    - matchメソッド
    - applyメソッド