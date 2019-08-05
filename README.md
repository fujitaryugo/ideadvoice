#Advoice について
ソフト名】    Advoice 
【著作権者】　　藤田竜伍
【制作日】　　　2019 ７/1
【種　別】        投稿サイト
【転載の可否】　可
【動作環境】　　Windows Mac
【開発環境】　　Ruby on rails5

―――――――――――――――――――――――――――――――――――――

・はじめに
Advoiceは意見,考え,アイデアを求める団体が募集をして、それに対してユーザーが投稿できるアプリです。

主な特長：
1) 依頼者が依頼を投稿できる
2) 依頼者は各依頼に投稿されたアイデアにMVPを選択できる(いいねのような機能、非同期)
3) 依頼者はMVPを選択したアイデアの投稿者(ユーザー)にお知らせメールを送信することができる
4) ユーザーは各依頼にアイデアを投稿できる
5) ユーザーは各アイデアにコメントができる
6) ユーザーは各アイデアにいいねをすることができる(非同期)
7) ユーザーのマイページでは自分のいいね一覧が見れる
8) ユーザーのマイページではMVPされた投稿を確認できる
9) 管理者は依頼、アイデア、コメントを削除することができる

主なテーブル:
  　Admins　テーブル
          管理者の情報が入っている
    Clients　テーブル
          依頼者の情報が入っている
    Awards　 テーブル
          各アイデアに対してのMVP
    Presents テーブル
          MVPしたアイデアの投稿者(ユーザー)へのお知らせメール
    Orders テーブル
          依頼の情報が入っている
    Users テーブル
          ユーザーの情報が入っている
    Ideas テーブル
          アイデアの情報が入っている
    Favorites テーブル
          各アイデアのいいね
    Comments テーブル
         　各アイデアのコメント

使用したgem:
 'devise'
    ログイン、サインアップ機能
 'bootstrap'
    cssのため
 'jquery-rails'
    動的なページを作るため
 'kaminari'
    ページネーション
 'refile,require:"refile/rails",github:"manfe/refile"
    画像投稿
 'refile-mini_magick'
    画像のリサイズ
 'bootstrap4-datetime-picker-rails'
    日付けフォームにカレンダーを表示するため 
 'momentjs-rails'
    日付けフォームにカレンダーを表示するため
 'font-awesome-rails'
    アイコンをカレンダーで使用するため

