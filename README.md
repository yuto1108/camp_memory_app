# テーブル設計

## campsテーブル

| Column         | Type        | Options                         |
| -------------- | ----------- | ------------------------------- |
| prefecture_id  | integer     | null: false                     |
| name           | string      | null: false                     |
| text           | text        | null: false                     |
| user           | references  | null: false, foreign_key: true  |

### Association

- belongs_to :user
- has_one :purchase
- has_many :comments


## usersテーブル

| Column              | Type     | Options                     |
|---------------------|----------|-----------------------------|
| nickname            | string   | null: false                 |
| email               | string   | null: false,  unique: true  |
| encrypted_password  | string   | null: false                 |


### Association

- has_many :camps
- has_many :comments


## commentsテーブル
| Column   | Type        | Options                         |
|----------|-------------|---------------------------------|
| content  | string      | null: false                     |
| user     | references  | null: false, foreign_key: true  |
| camp     | references  | null: false, foreign_key: true  |

### Association

- belongs_to :user
- belongs_to :camp