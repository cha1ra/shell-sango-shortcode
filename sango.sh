#!/bin/bash
# https://saruwakakun.design/shortcode-examples/
set -Ceu

if [ $# -gt 0 ]; then
    case "$1" in
        "link"|"l")
            # [sanko href="リンク先のURL" title="記事のタイトル" site="サイト名"] 
            url=$2
            title=`curl -s "$url" | ggrep -oP "(?<=<title>)(.+)(?=</title>)"` 
            shortcode="[sanko href=\"$url\" title=\"$title\" site=\"\"]"
            echo $shortcode | pbcopy
            echo $shortcode
            echo "Copied!"
            ;;
    esac
else
    echo -e "Warning!"
fi


