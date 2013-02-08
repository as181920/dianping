# encoding: utf-8

require "dianping/api/utils"

module DianPing
  module API
    module Business
      include DianPing::API::Utils

      def find_businesses(options={})
        res = send :get, "/v1/business/find_businesses", options
        res["businesses"]
      end
    end
  end
end

