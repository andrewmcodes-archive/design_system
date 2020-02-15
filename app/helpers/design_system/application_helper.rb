module DesignSystem
  module ApplicationHelper
    FORMATTER = Rouge::Formatters::HTMLPygments.new(Rouge::Formatters::HTMLLinewise.new(Rouge::Formatters::HTML.new))

    LEXERS = {
      erb: Rouge::Lexers::ERB.new,
      html: Rouge::Lexers::HTML.new,
      javascript: Rouge::Lexers::Javascript.new,
      ruby: Rouge::Lexers::Ruby.new,
      scss: Rouge::Lexers::Scss.new,
    }

    def render_formatted_code(language, source)
      FORMATTER.format LEXERS[language.to_sym].lex(source)
    end

    def render_components(*filepaths)
      render "/design_system/components/component", filepaths: filepaths, grouped_filepaths: filepaths.group_by { |filepath| language filepath }
    end

    def file_timestamps(filepaths = [])
      filepaths.map { |p| File.mtime(p).iso8601 }
    end

    def front_matter_parser(frontmatter)
      @frontmatter = YAML.safe_load(frontmatter[0..-2].join)
    end

    def remove_frontmatter(lines)
      return [] if lines.empty?
      frontmatter = lines.first.strip == "---" ? lines.slice!(0, (lines[1..lines.size].index("---\n") + 3)) : []
      front_matter_parser(frontmatter) unless frontmatter.empty?
    end

    def file_lines(filepath)
      lines = File.open(Rails.root.join(filepath)).readlines
      lines.reject! { |line| line.to_s.strip =~ /\A(#|\/|\*|\<--)/ }
      lines.shift while lines.first.blank?
      lines.pop while lines.last.blank?
      remove_frontmatter(lines)
      lines
    end

    def language(filepath)
      case File.extname(filepath)
      when ".scss" then "scss"
      when ".html" then "html"
      when ".erb" then "erb"
      when ".js" then "javascript"
      when ".rb" then "ruby"
      end
    end

    def language_title(language)
      case language
      when "scss" then "CSS"
      when "html" then "HTML"
      when "erb" then "ERB"
      when "javascript" then "JavaScript"
      when "ruby" then "Ruby"
      end
    end
  end
end
