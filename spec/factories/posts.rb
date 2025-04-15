FactoryBot.define do
  factory :post do
    title { "MyString" }
    body { "MyText" }
    comments_count { 1 }
  end
end
