# DB設計

## users table

| Column       | Type   | Options                                  |
|:------------:|:------:|:----------------------------------------:|
| name         | string | null: false, unique: true, index: true   |
| image        | string |                                          |
| introduction | text   |                                          |

### Association
 * has_many :projects, through::project_users
 * has_many :project_users



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


### Association
 * has_many :users through::project_users
 * has_many :project_users


## project_users table

| Column     | Type       | Options           |
|:----------:|:----------:|:-----------------:|
| project_id | references | foreign_key: true |
| user_id    | references | foreign_key: true |

### Association
 * belongs_to :user
 * belongs_to :project
