FactoryGirl.define do
  factory :article do
    title { FFaker::HipsterIpsum.words(5).join(" ") }
    body { FFaker::HipsterIpsum.paragraph }
  end
end
