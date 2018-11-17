FactoryBot.define do
  factory :order do
    order_number { "MyString" }
    status { 1 }
    order_date { "2018-11-17" }
  end
end
