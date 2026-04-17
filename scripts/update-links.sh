#!/bin/bash
# 新しいHTMLページを追加すると、index.html のプレースホルダーURLを自動で置き換えるスクリプト
#
# 命名規則:
#   newcomer.html   → NEWCOMER_PAGE_URL
#   transfer.html   → TRANSFER_PAGE_URL
#   curriculum.html → CURRICULUM_PAGE_URL
#   ...など、ファイル名（大文字）+ _PAGE_URL がプレースホルダー名になります

set -e

CHANGED=0

for file in *.html; do
  [ "$file" = "index.html" ] && continue

  base=$(basename "$file" .html | tr '[:lower:]' '[:upper:]' | tr '-' '_')
  placeholder="${base}_PAGE_URL"

  if grep -q "$placeholder" index.html; then
    sed -i.bak "s|$placeholder|$file|g" index.html
    rm -f index.html.bak
    echo "✅ $placeholder → $file"
    CHANGED=1
  fi
done

if [ "$CHANGED" -eq 0 ]; then
  echo "ℹ️  新しいリンクはありませんでした"
fi
