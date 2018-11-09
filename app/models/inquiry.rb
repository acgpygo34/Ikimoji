class Inquiry < ApplicationRecord
  include ActiveModel::Model

  attr_accessor :name, :email, :subject, :text_message
  validates :name, :presence => {:message => '名前を入力してください'}
  validates :email, :presence => {:message => 'メールアドレスを入力してください'}
  validates :subject, :presence => {:message => '件名を入力してください'}
  validates :text_message, :presence => {:message => '本文を入力してください'}
end
