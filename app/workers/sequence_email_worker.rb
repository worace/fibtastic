class SequenceEmailWorker
  include Sidekiq::Worker

  def perform(email, sequence_length)
    SequenceMailer.sequence_email(email, sequence_length).deliver_now
  end
end
