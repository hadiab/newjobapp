class SendcvController < ApplicationController

  before_action :set_job
  before_action :authenticate_user!

  def new
  end

  def create
    @user = current_user
    CvMailer.send_cv(@user).deliver
    redirect_to jobs_path
  end

  private

  def set_job
    @job = Job.find(params[:id])
  end

end
