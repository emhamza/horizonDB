FactoryBot.define do
  factory :yearly_service do
    name { 'MyString' }
    year { 'MyString' }
    annual_total { 1 }
    user { nil }
  end
end
