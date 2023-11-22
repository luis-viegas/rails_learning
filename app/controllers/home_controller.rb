class HomeController < ApplicationController

  before_action :load_appointments, only: :index
  def index
  end

  private
  def load_appointments
    @appointments = Appointment.all
  end
end
