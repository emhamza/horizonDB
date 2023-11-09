FactoryBot.define do
  factory :monthly_service do
    name { 'MyString' }
    month { 'MyString' }
    annual_total { 1 }
    user { nil }
  end
end
