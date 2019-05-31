class Transfer

  attr_reader :sender, :receiver
  attr_accessor :status

  def initialize(sender, receiver)
    @sender = sender
    @receiver = receiver
    @status = 'pending'
  end

end
