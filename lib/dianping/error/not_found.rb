require "dianping/error/client_error"

module DianPing
  class Error
    # Raise when DianPing returns the HTTP status code 404
    class NotFound < DianPing::Error::ClientError
      HTTP_STATUS_CODE = 404
    end
  end
end
