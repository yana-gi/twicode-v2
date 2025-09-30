# frozen_string_literal: true

module OmniauthMocks
  def mock_google_oauth2!
    OmniAuth.config.mock_auth[:google_oauth2] =
      OmniAuth::AuthHash.new({
                               'provider' => 'google_oauth2',
                               'uid' => '123456',
                               'info' => {
                                 'email' => 'mockuser@example.com',
                                 'name' => 'Mock User Name',
                                 'image' => 'http://mock_image_url.com'
                               }
                             })
  end

  def mock_google_oauth2_failure!
    OmniAuth.config.mock_auth[:google_oauth2] = :invalid_credentials
  end
end
