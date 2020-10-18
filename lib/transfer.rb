class Transfer
  # your code here
  attr_accessor :transfer, :status, :sender, :receiver, :amount

  def initialize(sender, receiver, amount)
    @transfer = transfer
    @sender = sender
    @receiver = receiver
    @status = "pending"
<<<<<<< HEAD
    @amount = amount
=======
    @amount = 50
>>>>>>> 89cca73a4b50f3139b366186c63bbc249f70ce51
  end
  
  def sender
    @sender
  end

  def receiver
    @receiver
  end

  def amount
    @amount
  end

  def valid?
<<<<<<< HEAD
    true  if self.receiver.valid? && self.sender.valid?

  end
  
  def execute_transaction
    if @sender.balance >@amount &&@status == "pending" && valid?
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
    if @status == "complete"
      @sender.balance += @amount
      @receiver.balance -= @amount
      @status = "reversed"
    end
  end
=======
    true if self.receiver.valid? && self.sender.valid?
  end
  
  def execute_transaction
    if @sender.balance < @amount
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."

    # elsif @status == "complete"
    #   puts "Transaction was already excuted"
    else
      @sender.deposit( @amount * -1 ) 
      @receiver.deposit( @amount )
      @status = "complete"
    end
  end

  # def reverse_transfer
  #   if @status == "complete"
  #     @sender.balance += @amount
  #     @receiver.balance -= @amount
  #     @status = "reversed"
  #   end
  # end
>>>>>>> 89cca73a4b50f3139b366186c63bbc249f70ce51
end
