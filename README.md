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

# chta-space DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|styring|null: false|
|password|strin|null: false|
|username|string|null: false|
### Association
- has_many :messages
- has_many  :groups,  through:  :users_groups

## messagesテーブル
|Column|Type|Options| 
|------|----|-------|
|message|text|null: false|
|img|text||
|user_id|integer|null: false, foreign_key: true|
### Association
- has_many :groups
- belongs_to :user

## groupsテーブル
|Column|Type|Options| 
|------|----|-------|
|groupname|string|null: false|
|addmember|||
### Association
- belongs_to :message
- has_many :user_group

## users_groupsテーブル
|Column|Type|Options| 
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user
