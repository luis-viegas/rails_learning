# app/controllers/schedules_controller.rb

class SchedulesController < ApplicationController
    before_action :set_schedule, only: %i[show edit update destroy]
  
    # GET /schedules
    def index
      @schedules = Schedule.all
    end
  
    # GET /schedules/1
    def show
    end
  
    # GET /schedules/new
    def new
      @schedule = Schedule.new
      7.times do |i|
        @schedule.schedule_blocks.build(
          starting_hour: Time.new(2000, 1, 1, 9, 0, 0), # Default start hour is 9:00 AM
          end_hour: Time.new(2000, 1, 1, 17, 0, 0),     # Default end hour is 5:00 PM
          week_day: i               # Assign each day to a day of the week (1-7)
        )
      end
      print(">>>>", @schedule.schedule_blocks.inspect)
    end
  
    # GET /schedules/1/edit
    def edit
    end
  
    # POST /schedules
    def create
        print ">>>> i run here <<<<"
      @schedule = Schedule.new(schedule_params)
      @schedule.user = current_user
  
      if @schedule.save
        redirect_to @schedule, notice: 'Schedule was successfully created.'
      else
        render :new
      end
    end
  
    # PATCH/PUT /schedules/1
    def update
      if @schedule.update(schedule_params)
        redirect_to @schedule, notice: 'Schedule was successfully updated.'
      else
        render :edit
      end
    end
  
    # DELETE /schedules/1
    def destroy
      @schedule.destroy
      redirect_to schedules_url, notice: 'Schedule was successfully destroyed.'
    end
  
    private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end
  
    # Only allow a list of trusted parameters through.
    def schedule_params
      params.require(:schedule).permit(:name, schedule_blocks_attributes: [:id, :starting_hour, :end_hour, :week_day, :_destroy])
    end
  end
  