require 'sib-api-v3-sdk'

# Setup authorization
SibApiV3Sdk.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = ''
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SibApiV3Sdk::AccountApi.new

begin
  #Get your account informations, plans and credits details
  result = api_instance.get_account
  p result
rescue SibApiV3Sdk::ApiError => e
  puts "Exception when calling AccountApi->get_account: #{e}"
end
