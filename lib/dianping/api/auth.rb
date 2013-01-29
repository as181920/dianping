# encoding: utf-8

require "digest/md5"
require "httparty"


module DianPing
  module API
    module Business

      def generate_signature(params,app_key,app_secret)
        params_str = params.keys.sort.map{|key| [key,params[key]] }.flatten.join
        sign = app_key+params_str+app_secret
        Digest::SHA1.hexdigest(sign).upcase
      end

    end
  end
end


=begin

key,secret = "30867601", "8a714afa86dc4cbd898a4a19a587583d"
params = {city: "上海"}
sign = generate_signature(params,key,secret)

puts sign

response = HTTParty.get "http://api.dianping.com/v1/business/find_businesses?city=%E4%B8%8A%E6%B5%B7&appkey=#{key}&sign=#{sign}"
p response
=end
