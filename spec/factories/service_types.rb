FactoryBot.define do
  factory :service_type do
    name { 'MyString' }
    category { 'MyString' }
    default_rate { 1 }
    frequency { 'MyString' }
    target { 'MyString' }
    integer { 'MyString' }
    user { nil }
    commissioned { nil }
  end
end
