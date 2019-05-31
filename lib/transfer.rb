class Transfer

  attr_reader :sender, :receiver, :amount
  attr_accessor :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending'
  end

  def valid?
    self.sender.valid? && self.receiver.valid?
  end

  def execute_transaction
    if self.status == 'pending'
      self.sender.balance -= amount
      if self.sender.valid?
        self.receiver.balance += amount
        self.status = 'complete'
      else
        self.sender.balance += amount
        self.status = 'rejected'
        "Transaction rejected. Please check your account balance."
      end
    end
  end

  def reverse_transfer
    if status = 'complete'
      self.sender.balance += amount
      self.receiver.balance += amount
      self.status = 'reveresed'
    end
  end

end
