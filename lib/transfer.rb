class Transfer

  attr_reader :sender, :receiver
  attr_accessor :status

  def initialize(sender, receiver, status = 'pending')
    @sender = sender
    @receiver = receiver
    @status = status
  end

end
