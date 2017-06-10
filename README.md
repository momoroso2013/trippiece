# DB設計

## users table

| Column       | Type   | Options                                  |
|:------------:|:------:|:----------------------------------------:|
| name         | string | null: false, unique: true, index: true   |
| image        | string |                                          |
| introduction | text   |                                          |

### Association
 * has_many :projects
 * has_many :participants
 * has_many :likes


## projects table

| Column      | Type       | Options     |
|:-----------:|:----------:|:-----------:|
| title       | text       | null: false |
| description | text       | null: false |
| image       | string     | null: false |
| price       | integer    |             |
| place       | string     |             |
| start_at    | integer    |             |
| end_at      | integer    |             |
| detail      | text       |             |
| user_id     | references | foreign_key: true |
| status      | integer    | null: false, draft: 0, published: 1, accepting: 2, deleted: 3 |


### Association
 * has_many :participants
 * belongs_to :user
 * has_many :likes

## participants table

| Column       | Type       | Options           |
|:------------:|:----------:|:-----------------:|
| message      | text       |                   |
| user_id      | references | foreign_key: true |
| project_id   | references | foreign_key: true |

### Association
 * has_many :projects
 * belongs_to :user

## likes table

| Column     | Type       | Options           |
|:----------:|:----------:|:-----------------:|
| project_id | references | foreign_key: true |
| user_id    | references | foreign_key: true |

### Association
 * belongs_to :user
 * belongs_to :project
