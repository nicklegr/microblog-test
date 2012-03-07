# coding: utf-8

class User < ActiveRecord::Base
  validates_presence_of :name, :message => 'ユーザー名が空です'
end
