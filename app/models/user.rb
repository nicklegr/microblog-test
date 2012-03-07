# coding: utf-8

class User < ActiveRecord::Base
  validates_presence_of :name, :message => 'ユーザ名が空です'
  validates_uniqueness_of :name, :message => '既に同名のユーザが存在します'
end
