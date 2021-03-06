require 'gabba'
require 'rspec'

require 'webmock/rspec'
WebMock.disable_net_connect!

def stub_analytics(expected_params)
  stub_request(
    :get,
    /www.google-analytics.com\/__utm.gif\?utmac=#{expected_params[:utmac]}&.*/
  ).to_return(:status => 200, :body => '', :headers => {})
end
