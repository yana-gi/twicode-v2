# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    uid { '123456' }
    google_id { 'mockuser@example.com' }
    google_name { 'Mock User Name' }
    google_icon { 'http://mock_image_url.com' }
  end
end
