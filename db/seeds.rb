# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Country
Country.create(country_name: "日本")
Country.create(country_name: "タイ")
Country.create(country_name: "ベトナム")
Country.create(country_name: "カンボジア")
Country.create(country_name: "インドネシア")
Country.create(country_name: "フィリピン")
Country.create(country_name: "ブルネイ")
Country.create(country_name: "マレーシア")
Country.create(country_name: "ミャンマー")
Country.create(country_name: "シンガポール")

# region
# 日本
Region.create(region_name: "北海道", country_id: 1)
Region.create(region_name: "東北", country_id: 1)
Region.create(region_name: "関東", country_id: 1)
Region.create(region_name: "中部", country_id: 1)
Region.create(region_name: "近畿", country_id: 1)
Region.create(region_name: "中国・四国", country_id: 1)
Region.create(region_name: "九州", country_id: 1)

# タイ
Region.create(region_name: "バンコク", country_id: 2)
Region.create(region_name: "ノンタブリー", country_id: 2)
Region.create(region_name: "パックレット", country_id: 2)
Region.create(region_name: "ハートヤイ", country_id: 2)
Region.create(region_name: "ウドーンターニ", country_id: 2)
Region.create(region_name: "スラートターニ", country_id: 2)
Region.create(region_name: "チェンマイ", country_id: 2)
Region.create(region_name: "バンプー", country_id: 2)
Region.create(region_name: "プーケット", country_id: 2)
Region.create(region_name: "クラビ", country_id: 2)
Region.create(region_name: "その他", country_id: 2)

# ベトナム
Region.create(region_name: "ホーチミン", country_id: 3)
Region.create(region_name: "ハノイ", country_id: 3)
Region.create(region_name: "ダナン", country_id: 3)
Region.create(region_name: "フエ", country_id: 3)
Region.create(region_name: "ホイアン", country_id: 3)
Region.create(region_name: "ハイフォン", country_id: 3)
Region.create(region_name: "ビエンホア", country_id: 3)
Region.create(region_name: "カントー", country_id: 3)
Region.create(region_name: "その他", country_id: 3)

#カンボジア
Region.create(region_name: "プノンペン", country_id: 4)
Region.create(region_name: "タクマウ", country_id: 4)
Region.create(region_name: "バタンバン", country_id: 4)
Region.create(region_name: "シソポン", country_id: 4)
Region.create(region_name: "シェムリアップ", country_id: 4)
Region.create(region_name: "コンポンチャム", country_id: 4)
Region.create(region_name: "シアヌークビル", country_id: 4)
Region.create(region_name: "その他", country_id: 4)

#インドネシア
Region.create(region_name: "ジャカルタ", country_id: 5)
Region.create(region_name: "スラヤバ", country_id: 5)
Region.create(region_name: "メダン", country_id: 5)
Region.create(region_name: "デンパサール", country_id: 5)
Region.create(region_name: "ジョグジャカルタ", country_id: 5)
Region.create(region_name: "マラン", country_id: 5)
Region.create(region_name: "マカッサル", country_id: 5)
Region.create(region_name: "マラド", country_id: 5)
Region.create(region_name: "その他", country_id: 5)

#フィリピン
Region.create(region_name: "マニラ", country_id: 6)
Region.create(region_name: "セブ", country_id: 6)
Region.create(region_name: "ダバオ", country_id: 6)
Region.create(region_name: "バギオ", country_id: 6)
Region.create(region_name: "イロイロ", country_id: 6)
Region.create(region_name: "マカティ", country_id: 6)
Region.create(region_name: "バコロド", country_id: 6)
Region.create(region_name: "マカティ", country_id: 6)
Region.create(region_name: "その他", country_id: 6)

#ブルネイ
Region.create(region_name: "バンダルスリブガワン", country_id: 7)
Region.create(region_name: "セリア", country_id: 7)
Region.create(region_name: "スカン", country_id: 7)
Region.create(region_name: "その他", country_id: 7)

#マレーシア
Region.create(region_name: "クアラルンプール", country_id: 8)
Region.create(region_name: "ペナン", country_id: 8)
Region.create(region_name: "ジョホール", country_id: 8)
Region.create(region_name: "マラッカ", country_id: 8)
Region.create(region_name: "イポー", country_id: 8)
Region.create(region_name: "コタキナバル", country_id: 8)
Region.create(region_name: "ジョホールバル", country_id: 8)
Region.create(region_name: "シャーアラム", country_id: 8)
Region.create(region_name: "その他", country_id: 8)

#ミャンマー
Region.create(region_name: "ヤンゴン", country_id: 9)
Region.create(region_name: "マンダレー", country_id: 9)
Region.create(region_name: "ネピドー", country_id: 9)
Region.create(region_name: "モーラミャイン", country_id: 9)
Region.create(region_name: "タウンジー", country_id: 9)
Region.create(region_name: "その他", country_id: 9)

#シンガポール
Region.create(region_name: "CBD", country_id: 10)
Region.create(region_name: "セントラル", country_id: 10)
Region.create(region_name: "サウス", country_id: 10)
Region.create(region_name: "ウェスト", country_id: 10)
Region.create(region_name: "イースト", country_id: 10)
Region.create(region_name: "ノース", country_id: 10)
Region.create(region_name: "その他", country_id: 10)
