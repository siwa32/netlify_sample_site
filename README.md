# サンプルサイト

`HUGO`で作ったサンプルサイトを`Netlify`でホスティングするサンプルプロジェクト

- `Netlify`でビルドしてデプロイ
- `asciidoctor-diagram`対応
  - `PlantUML`
  - `Mermaid`
    - 日本語が文字化けしない
- 数式

## `Netlify`のビルド設定

### Basic build settings

- `Buld command` : `./netlify_build.sh` 
- `Publish directory` : `public`

## `Advanced build settings`

- `HUGO_VERSION` : `0.41`
  - ローカルの`HUGO`バージョンに合わせる
- `LANG` : `ja_JP.UTF-8`

## フォント

フォントファイルは以下を使用しました。

- IPAフォント : https://ipafont.ipa.go.jp/
- Noto Sans CJK JP : https://www.google.com/get/noto/

※`PlantUML`や`Mermaid`で日本語を使用しないのであれば不要
