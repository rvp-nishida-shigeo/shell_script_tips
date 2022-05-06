# finally
## cleanup.sh
    一時ファイルのクリーンナップをするための最もシンプルな実装例。
    /tmp/${PID} を一時ディレクトリとして使用するルールを前提としている。

	$ ./cleanup.sh ls -al

## finally.sh
    テンプレートメソッドを用いて finally を実装している。
    finally_block() に処理を書いておく。
    finally() に渡したコマンドが終了したときに finally_block() が呼び出される。
    fy() 関数では wait を使ってコマンドの終了を待ってるため、どのような形で終了
    しても必ず finally_block() が実行される。

## sample.sh
    コマンドラインオプションで渡したコマンドを実行した後に finally_block() が
    呼び出されることを確認する。
    finalluy_block() には、呼び出されたことを示すメッセージを表示している。

	$ ./sample.sh ls -al
    
## sample2.sh, foo.sh
    sample2.sh で一時ディレクトリを用意し、ディレクトリ名を環境変数 TMPDIR に設定する。
    環境変数 TMPDIR を export し、foo.sh を実行する。
    foo.sh では、TMPDIR 配下に一時ファイルを作成する。
    foo.sh 実行後に sample2.sh で finally_block() を呼び出し TMPDIR の削除を行う。

	$ ./sample2.sh doit
