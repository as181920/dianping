# encoding: utf-8

require "yaml"
require "httparty"
require "dianping/api/auth"

module DianPing
  module API
    module Utils
      include DianPing::API::Auth

      def send(request_method, path, options={})
        sign = generate_signature(options,app_key,app_secret)
        query = URI.encode_www_form options
        response = ::HTTParty.send request_method, "http://api.dianping.com#{path}?appkey=#{app_key}&sign=#{sign}&#{query}"
        response.parsed_response
      end

=begin
      def objects_from_response(klass, request_method, path, options={})
        response = send(request_method.to_sym, path, options)[:body]
        objects_from_array(klass, response)
      end
=end

      private

      def app_key
        @app_key ||= config["app_key"]
      end

      def app_secret
        @app_secret ||= config["app_secret"]
      end

      def config
        YAML.load_file(File.join(File.dirname(__FILE__),"../../../config/dianping.yml"))
      end

    end
  end
end


