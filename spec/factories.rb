FactoryGirl.define do
  factory :user do
    username 'test_user'
    email 'test@example.com'
    password 'f4k3p455w0rd'
  end

  factory :story do
    title 'Test Title'
    user_id 1
  end
end
