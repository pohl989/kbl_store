# frozen_string_literal: true

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User

  has_many :customer_orders, class_name: "Order", foreign_key: :customer_id
  has_many :preparer_orders, class_name: "Order", foreign_key: :preparer_id


end
