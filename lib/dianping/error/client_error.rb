require "dianping/error"

module DianPing
  class Error
    # Raise when DianPing returns a 4xx HTTP status code or there's an error in Httparty
    class ClientError < DianPing::Error
      # Create a new error from an HTTP environment
      #
      # @param response [Hash]
      # @return [DianPing::Error]
      def self.from_response(response={})
        new(parse_error(response[:body]), response[:response_headers])
      end

      private

      def self.parse_error(body)
        if body.nil?
          ''
        elsif body[:error]
          body[:error]
        elsif body[errors]
          first = Array(body[errors]).first
          if first.kind_of?(Hash)
            first[:message].chomp
          else
            first.chomp
          end
        end
      end

    end
  end
end

