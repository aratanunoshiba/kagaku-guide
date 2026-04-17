# 科学の学校ガイド — プロジェクトルール

## ページ作成後の必須手順

HTMLページを新規作成・編集したら、**必ず以下を実行すること**：

```bash
git add <ファイル名>
git commit -m "ページ名：内容の説明"
git push https://aratanunoshiba:$(gh auth token)@github.com/aratanunoshiba/kagaku-guide.git main
```

GitHub Actionsが自動的にindex.htmlのリンクを更新し、数十秒でサイトに反映される。

## PDFの管理

PDFファイルは `pdf/` フォルダに入れること。

```
pdf/
  calendar-elementary-2026.pdf   # 小学部カレンダー
  calendar-junior-2026.pdf       # 中学部カレンダー
  newsletter-2026-spring.pdf     # ニュースレター春号
  ...
```

HTMLからの参照方法：
```html
<a href="pdf/calendar-elementary-2026.pdf">小学部カレンダーを開く</a>
```

## ファイル命名規則（自動リンク対応）

新ページのHTMLファイル名 → index.htmlの対応するカードに自動リンク：

| ファイル名 | カード |
|---|---|
| `newcomer.html` | ① 新入会の方向け |
| `transfer.html` | ④ 振替について |
| `curriculum.html` | ⑤ カリキュラム |
| `email.html` | ⑥ 入退室システム |
| `labcoat.html` | ⑦ 白衣の注文 |
| `tuition.html` | ⑧ 授業料 |
| `parking.html` | ⑨ 駐輪場 |
| `journal.html` | ⑩ ニュースレター |

## GitHub Pages URL

https://aratanunoshiba.github.io/kagaku-guide/
