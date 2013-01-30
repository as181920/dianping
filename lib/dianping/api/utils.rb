# encoding: utf-8

require "httparty"

module DianPing
  module API
    module Utils

      def objects_from_response(klass, request_method, path, options={})
        response = send(request_method.to_sym, path, options)[:body]
        objects_from_array(klass, response)
      end

      def generate_signature(params,app_key,app_secret)
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
