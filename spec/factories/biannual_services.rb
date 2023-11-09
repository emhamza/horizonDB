FactoryBot.define do
  factory :biannual_service do
    name { 'MyString' }
    biannual_span { 'MyString' }
    annual_total { 1 }
    user { nil }
  end
end
