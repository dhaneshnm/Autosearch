require 'OmniAuth'
require 'OmniAuth-yelp'
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer
  provider :yelp,:consumer_key => 'Jt56pIp3H4tNwo5POEDS8Q',:consumer_secret => 'tmCKmFN5cX1uk7h2DhyWpmTocF0',:token => '68Av3Lno6ifcGzmhARLdyjs9MEakbRdT',:token_secret => 'tbATN9VgXWBYAHB0KcJvnUGpwIY'
end
# o.consumer_key = 'Jt56pIp3H4tNwo5POEDS8Q';
# o.consumer_secret = 'tmCKmFN5cX1uk7h2DhyWpmTocF0';
# o.token = '68Av3Lno6ifcGzmhARLdyjs9MEakbRdT';
# o.token_secret = 'tbATN9VgXWBYAHB0KcJvnUGpwIY';