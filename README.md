# sango.shについて

Wordpress Theme "Sango" のショートコードをコマンドから生成してクリップボードにコピーすることができます。  
現在対応しているショートコードは下記のものです。  
    
- 3. 他サイトへのリンクを出力

# 動作確認環境

Mac OS v11 (Big Sur)以上

# セットアップ方法

```bash
# リポジトリのクローン
git clone https://github.com/cha1ra/shell-sango-shortcode.git

# パスのコピー
current_dir=`pwd` && echo "$current_dir/shell-sango-shortcode/sango.sh"| pbcopy
```
  
`~/.zshrc` (または `~/.bashrc` ) にエイリアスを追加
  
```bash
alias sango="sh /Users/cha1ra/dev/shell-sango-shortcode/sango.sh"
alias sg="sh /Users/cha1ra/dev/shell-sango-shortcode/sango.sh"
```
  
```bash
source ~/.zshrc
```
  
※ リンクタイトル取得の際に `curl` コマンドを利用します。  
macでは `-P` オプションが使えないため、 `brew install grep` する必要があります。  
cf.) https://teratail.com/questions/107898


# 利用方法

## 他サイトへのリンクを出力 

```bash
sango link URL名
# または
sg link URL名
sango l URL名
sg l URL名
```
  
![](https://i.gyazo.com/e680629fea9d17a9f3e69cca05503db7.gif)
