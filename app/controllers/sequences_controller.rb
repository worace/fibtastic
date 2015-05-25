class SequencesController < ApplicationController
  before_action :validate_params, only: [:create]

  def create
    SequenceMailer.sequence_email(params["email"], params["sequence_length"].to_i).deliver_now
  end

  def validate_params
    unless params["sequence_length"].to_i > 0
      flash[:error] = "please provide a valid sequence length"
      redirect_to new_sequence_path
    end
    unless params["sequence_length"].to_i < 28
      flash[:error] = "Sorry, for technical reasons fib sequences longer than 27 are only available to our paid customers. Please request a premium account request such a sequence :)"
      redirect_to new_sequence_path
    end
  end
end
