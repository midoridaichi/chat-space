# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation


###### DB設計
---------------------------------------
## users table
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|
### Association
- has_many :groups, through: :users_groups
- has_many :messages
- has_many :users_groups


## users_groups table
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|group|references|null: false, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user


## groups table
|Column|Type|Options|
|------|----|-------|
|name|string||
### Association
- has_many :users, through: :users_groups
- has_many :users_groups
- has_many :messages

## messages table
|id|text|image|user_id|
|------|----|-------|
|image|text|
|text|text|
|user|references|null: false, foreign_key: true|
|group|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group
---------------------------
* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
