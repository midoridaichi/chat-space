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

<<<<<<< HEAD
###### DB設計
---------------------------------------
## users table
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|username|string|null: false|
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

## group table
|Column|Type|Options|
|------|----|-------|
|id|groupe_name|
|user_id|
### Association
- has many :groupes 
-belongs_to :user

## comments table
|id|text|image|user_id||
|------|----|-------|
|image|text||
|text|text||
### Association
- belongs_to :user
- has many :comments
---------------------------
=======
test
>>>>>>> parent of eb67644... Merge pull request #1 from midoridaichi/README
