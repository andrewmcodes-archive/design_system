require_dependency "design_system/application_controller"

module DesignSystem
  class ComponentsController < ApplicationController
    before_action :set_component_file_path, only: :show

    private

    def set_component_file_path
      @file_path = "app/views/design_system/components/_#{params[:id]}.html.erb"
    end
  end
end
