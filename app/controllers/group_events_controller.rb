class GroupEventsController < ApplicationController
  before_action :set_group_event, only: [:show, :update, :destroy]

  # GET /group_events
  def index
    @group_events = GroupEvent.all

    render json: @group_events
  end

  # GET /group_events/1
  def show
    render json: @group_event
  end

  # POST /group_events
  def create
    @group_event = GroupEvent.new(group_event_params)

    if @group_event.save
      render json: @group_event, status: :created, location: @group_events
    else
      render json: @group_event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /group_events/1
  def update
    if @group_event.update(group_event_params)
      render json: @group_event
    else
      render json: @group_event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /group_events/1
  def destroy
    @group_event.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_event
      @group_event = GroupEvent.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def group_event_params
      params.fetch(:group_event, {}).permit(
        :name,
        :description,
        :starts,
        :ends,
        :duration,
        :location,
        :status
      )
    end
end
