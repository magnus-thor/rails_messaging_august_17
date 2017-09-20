FactoryGirl.define do
  factory :user do
    name 'user'
    email 'user@test.com'
    password 'password'
    end
end


# let(:sender) { User.create(email: 'sender@test.com', password: 'password', name: 'sender') }
# let(:receiver) { User.create(email: 'receiver@test.com', password: 'password', name: 'receiver') }