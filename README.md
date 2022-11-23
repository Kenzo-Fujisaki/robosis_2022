# robosys_2022
ロボットシステム学の練習リポジトリ

  * このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
  * このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
      * [ryuichiueda/my_slides robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
  * © 2022 Kenzo Fujisaki

## 本リポジトリに必要なソフトウェア
* Python
  * テスト済み: 3.7~3.10

## 本リポジトリのテスト環境
* Ubuntu 20.04

##　テスト結果
|  plus  |  calc  |
| ---- | ---- |
| ![test](https://github.com/Kenzo-Fujisaki/robosys_2022/actions/workflows/test_calc.yml/badge.svg) | ![test](https://github.com/Kenzo-Fujisaki/robosys_2022/actions/workflows/test.yml/badge.svg) |

# インストール手順

  * sshの場合
  ```
  git clone git@github.com:Kenzo-Fujisaki/robosys_2022.git
  ```
  * httpsの場合
  ```
  git clone https://github.com/Kenzo-Fujisaki/robosys_2022.git
  ```

# plusコマンド

標準入力から読み込んだ数字を足す。
```
seq 5 | ./plus
```

実行結果
```
15
```

# calcコマンド

標準入力で読み込んだ数を四則演算していくプログラム
```
echo -e '1\n+\n3\n=' | ./calc
```
実行結果
```
4.0
```

