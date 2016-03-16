FactoryGirl.define do
  factory :user do
    username 'test_user'
    email 'test@example.com'
    password 'f4k3p455w0rd'
  end

  factory :story do
    title 'Test Title'
    user_id 1

    factory :story_with_sentence do
      after(:create) do |story|
        create(:sentence, story: story)
      end
    end
  end

  factory :sentence do
    user_id 1
    content 'Test Sentence'
    image_url Dir.new(Rails.root.to_s + "/app/assets/images").to_a.select{|f| f.downcase.match(/\.jpg|\.jpeg|\.png/) }.sample
  end
end
