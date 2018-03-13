class FieldError
  attr_reader :field, :message

  def initialize(field, message)
    @field = field
    @message = message
  end

  def self.error(base = 'base', msg)
    { message: [FieldError.new(base, msg)] }
  end
end
