# encoding: utf-8

require "dianping/api/auth"

module DianPing
  module API
    module Business
      include DianPing::API::Auth

      def find_businesses
        []
      end
    end
  end
end


