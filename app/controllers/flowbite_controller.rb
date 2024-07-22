class FlowbiteController < ApplicationController

  def index
  end

  def update
    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace(
          'main', partial: "flowbite/tooltip"
        )
      end
    end
  end

end
