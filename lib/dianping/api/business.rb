# encoding: utf-8

require "dianping/api/auth"

module DianPing
  module API
    module Business
      include DianPing::API::Auth

      def find_businesses
        #HTTParty.get 
        []
      end
    end
  end
end


#response = HTTParty.get "http://api.dianping.com/v1/business/find_businesses?city=%E4%B8%8A%E6%B5%B7&appkey=#{key}&sign=#{sign}"
