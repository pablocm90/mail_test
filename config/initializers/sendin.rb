require 'sib-api-v3-sdk'

# Setup authorization
SibApiV3Sdk.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = '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'
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
