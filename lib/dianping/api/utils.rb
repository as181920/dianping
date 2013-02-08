# encoding: utf-8

require "httparty"
require "dianping/api/auth"

module DianPing
  module API
    module Utils
      include DianPing::API::Auth

      def send(request_method, path, options={})
        key,secret = "30867601", "8a714afa86dc4cbd898a4a19a587583d"
        sign = generate_signature(options,key,secret)
        uri_params = URI.encode_www_form options
        response = ::HTTParty.get "http://api.dianping.com/v1/business/find_businesses?appkey=#{key}&sign=#{sign}&#{uri_params}"
        response.parsed_response["businesses"]
      end

=begin
      def objects_from_response(klass, request_method, path, options={})
        response = send(request_method.to_sym, path, options)[:body]
        objects_from_array(klass, response)
      end
=end
    end
  end
end


