# CLAUDE.md

このファイルは、このリポジトリでコードを作業する際にClaude Code (claude.ai/code) に対してガイダンスを提供します。

## プロジェクト概要

このプロジェクトは「little-haskeller」というHaskellプロジェクトで、Haskellでの関数型プログラミング演習を実装しています。再帰的な実装とfoldなどの高階関数を通じて関数型プログラミングの概念を示しています。

元となったRubyプロジェクト「little_rubyist」の問題をHaskellで実装することで、Haskellの学習を目的としています。

## 主要アーキテクチャ

### 関数型プログラミング演習 (src/LittleHaskeller.hs)
メインファイルには関数型プログラミング問題（Q001から順次追加）が含まれており、以下を実装しています：
- リスト操作（sum、product、zip、ソートアルゴリズム、フィルタリング）
- 再帰アルゴリズム（フィボナッチ、クイックソート、マージソート）
- 高階関数（map、filter、foldr、foldl）
- パターンマッチングとガード

## 共通開発コマンド

### ビルド
- 初回ビルド: `stack build`
- 再ビルド: `stack build`

### テスト実行
- 全テスト実行: `stack test`
- テストのwatch実行: `stack test --file-watch`

### 実行
- アプリケーション実行: `stack run`
- REPL起動: `stack ghci`

### コード品質チェック
- Haskell Language Server (HLS) を使用して、エディタで自動的にコードチェック
- GHC warnings は package.yaml で有効化済み

### 依存関係
使用している主要ライブラリ：
- `base` 基本ライブラリ
- `hspec` テストフレームワーク
- `hspec-discover` テスト自動検出

## テストパターン

- テストは `test/` ディレクトリに配置
- 各モジュールには対応する `*Spec.hs` ファイルが存在
- テストは HSpec フレームワークを使用
- `test/Spec.hs` が hspec-discover を使って自動的にテストを検出

## コーディング規約

- 各関数にHaddockコメントを追加
- 型シグネチャは必ず明示的に記述
- 関数型プログラミング演習では再帰実装とfoldを使った実装の両方を提供
- 各関数型プログラミング問題には問題番号を含む（Q001、Q002など）
- パターンマッチングを積極的に活用
- GHC warnings を有効化しているため、警告が出ないようにコードを書く
