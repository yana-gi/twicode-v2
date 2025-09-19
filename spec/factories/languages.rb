# frozen_string_literal: true

FactoryBot.define do
  factory :language do
    sequence(:name) { |n| "Language#{n}" }

    trait :ruby do
      name { 'Ruby' }
    end

    trait :javascript do
      name { 'JavaScript' }
    end

    trait :python do
      name { 'Python' }
    end
  end
end
