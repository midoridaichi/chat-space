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
- has many :groupes, through: users_groups
- has many :messages
- has many :users_grops

## users_groups table
|Column|Type|Options|
|------|----|-------|
|groupe_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs to :group
- belongs to :user

## groups table
|Column|Type|Options|
|------|----|-------|
|id|text|
|user_id|text|
### Association
- has many :groups 
- belongs_to :user

## messages table
|id|text|image|user_id||
|------|----|-------|
|image|text||
|text|text||
### Association
- belongs_to :user
- has many :messages
---------------------------
* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
