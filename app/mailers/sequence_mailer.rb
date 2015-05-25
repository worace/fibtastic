class SequenceMailer < ApplicationMailer
  def sequence_email(address, quantity)
    @seq = FibSequence.new(quantity)
    mail(to: address, subject: 'Your Fib Sequence!')
  end
end
