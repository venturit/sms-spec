module SmsSpec
  class Message
    attr_accessor :number
    attr_accessor :body

    include SmsSpec::Util

    def initialize(opts={})
      @to = sanitize opts[:to]
      @from = sanitize opts[:from]
      @body = opts[:body]
    end
  end
end
