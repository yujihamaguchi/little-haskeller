# little-haskeller

Haskellでの関数型プログラミング演習プロジェクト

## 概要

このプロジェクトは、Haskellの関数型プログラミングの概念を学習するための演習問題集です。
元となった Ruby プロジェクト [little_rubyist](https://github.com/...) の問題を Haskell で実装しています。

## 実装済みの問題

- **Q001**: `mySum` - リストの総和を計算（再帰版とfold版）

## セットアップ

### 前提条件

- [Stack](https://docs.haskellstack.org/) がインストールされていること

### ビルド

```bash
stack build
```

### テスト実行

```bash
stack test
```

### アプリケーション実行

```bash
stack run
```

### REPL起動

```bash
stack ghci
```

## ディレクトリ構造

```
.
├── app/              # 実行可能アプリケーション
├── src/              # ライブラリソースコード
│   └── LittleHaskeller.hs  # 関数型プログラミング演習
├── test/             # テストコード
│   ├── Spec.hs       # テストエントリポイント
│   └── LittleHaskellerSpec.hs  # 演習問題のテスト
├── package.yaml      # パッケージ設定
└── stack.yaml        # Stack設定
```

## ライセンス

BSD-3-Clause
