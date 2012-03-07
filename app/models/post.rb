# coding: utf-8

class Post < ActiveRecord::Base
  belongs_to :user
  validates_length_of :text, :maximum => 255, :too_long => 'メッセージが長すぎます'
end
