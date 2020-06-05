# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

###### DB設計
---------------------------------------
## users table
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|

### Association
- has many :groupes, through: members
- has many :messages
- has many :members

## users_groupes table
|Column|Type|Options|
|------|----|-------|
|groupes_id|integer|null: false, foreign_key: true|
|users_id|integer|null: false, foreign_key: true|
### Association
- belongs to :grope
- belongs to :user
- has many :groupes, through:users

## group table
|Column|Type|Options|
|------|----|-------|
|id|groupe_name|
|user_id|users_name|
### Association
- has many :groupes

## comments table
|id|text|image|user_id||
|------|----|-------|
|image|text||
|text|text||
### Association
- belongs_to :user
- has many :comments
--------------------------