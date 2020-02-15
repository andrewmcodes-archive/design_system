module DesignSystem
  class ApplicationController < ::ApplicationController
    protect_from_forgery with: :exception
    helper DesignSystem::ApplicationHelper
  end
end
