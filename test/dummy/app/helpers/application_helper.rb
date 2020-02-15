module ApplicationHelper
  def component_filepaths
    @component_filepaths ||= Dir.glob(Rails.root.join("app/views/design_system/components/**/*").to_s).select { |e| File.file? e }
  end

  def component_names
    @component_names ||= component_filepaths.map { |f| File.basename(f, ".html.erb")[1..] }
  end
end
