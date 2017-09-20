FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "user#{n}"}
    email {"#{name}@test.com"}
    password 'password'
    end
end


# let(:sender) { User.create(email: 'sender@test.com', password: 'password', name: 'sender') }
# let(:receiver) { User.create(email: 'receiver@test.com', password: 'password', name: 'receiver') }