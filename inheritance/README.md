# inheritance
source を使った疑似的なクラス継承の実装。

source をリレーすることでクラス継承を模倣している。
後から定義した変数・関数が source 元ファイルにある変数・関数を上書きすることをオーバーライドとして使用している。
source した bash ファイルの実行コンテクスト上にクラス定義と実行時情報が混在した状態となる。
そのため複数のインスタンスを作ることはできない。

一般的なオブジェクト指向言語では単一継承であることが多いが、source コマンドを使っているた多重継承を実装することもできてしまう。

あくまでシェルスクリプトでオブジェクト指向言語の一部の機能を模倣しているにすぎない。
複雑すぎる対象をこの手法で実装することは避けたほうが良い。

図形、長方形、正方形、三角形を例に実装している。
実行例は以下の通り。

## 長方形
```bash
$ ./sample.sh rectangle name
INFO: クラス名は 長方形 です。

$ ./sample.sh rectangle draw
INFO: 長方形 を描いた！

$ ./sample.sh rectangle area 3 3
INFO: 面積は 9 です。
```

## 正方形
```bash
$ ./sample.sh square name
INFO: クラス名は 正方形 です。

$ ./sample.sh square draw
INFO: 正方形 を描いた！

$ ./sample.sh square area 3 3
INFO: 面積は 9 です。
```

## 三角形
```bash
$ ./sample.sh triangle name
INFO: クラス名は 三角形 です。

$ ./sample.sh triangle draw
INFO: 三角形 を描いた！

$ ./sample.sh triangle area 4 4
INFO: 面積は 8 です。
```
