## usersテーブル

| Column  |     Type     |   Options   |
|---------|--------------|-------------|
|  email  | string | null:false unique:true|
|  name   | string | null:false|
|encrypted_password| string | null:false|
| profile | text | null:false |
|occupation| text | null:false |
|position | text | null:false |

### Association

- has_many prototypes
- has_many users_prototypes
- has_many comments , through:users_prototypes

## prototypesテーブル
| Column  |     Type     |   Options   |
|---------|--------------|-------------|
|  title  |  string | null:false |
| catch_copy | text | null:false |
| cocept  | text | null:false |
|  user   | references | null:false foreign_key: true |

### Association

- belong_to users
- has_many users_prototypes
- has_many comments , through:users_prototypes

## commentsテーブル

| Column  |     Type     |   Options   |
|---------|--------------|-------------|
| content | text | null:false |
| prototype | references | null:false foreign_key: true |
| user | references | null:false foreign_key: true |

### Association

belong_to user
belong_to prototype