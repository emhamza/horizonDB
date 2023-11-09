FactoryBot.define do
  factory :quarterly_service do
    name { 'MyString' }
    quarterly { 'MyString' }
    annual_total { 1 }
    user { nil }
  end
end
