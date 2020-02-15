module DesignSystem
  module CardHelper
    def card(id: nil, add_class: "", &block)
      content_tag(:div, nil, id: id, class: "card #{add_class}", &block)
    end

    def standalone_card_header(id: nil, add_class: "", text: "")
      tag.h6(text, id: id, class: "card-header #{add_class}")
    end

    def card_header(id: nil, add_class: "", &block)
      content_tag(:div, nil, id: id, class: "card-header #{add_class}", &block)
    end

    def card_body(id: nil, add_class: "", padding: "p-4", &block)
      content_tag(:div, nil, id: id, class: "#{padding} card-body #{add_class}", &block)
    end

    def card_title(title, id: nil, add_class: nil)
      content_tag(:h4, title, id: id, class: "card-title #{add_class}")
    end

    def card_title_link(path: nil, id: nil, add_class: "", &block)
      link_to(path, id: id, class: "card-title h4 text-decoration-none mb-4 d-block #{add_class}", &block)
    end

    def button(path: nil, text: "", size: :base, variant: :primary)
      link_to(text, path, class: "btn btn-lg btn-block btn-primary")
    end

    def card_subtitle(id: nil, add_class: "", &block)
      content_tag(:h6, nil, id: id, class: "card-subtitle text-muted #{add_class}", &block)
    end

    def card_text(id: nil, add_class: "", &block)
      content_tag(:p, nil, id: id, class: "card-text #{add_class}", &block)
    end

    def card_footer(id: nil, add_class: "", &block)
      content_tag(:div, nil, id: id, class: "card-footer #{add_class}", &block)
    end

    def card_footer_item(id: nil, add_class: "", &block)
      content_tag(:div, nil, id: id, class: "card-footer-item #{add_class}", &block)
    end

    def card_footer_content(id: nil, add_class: "", &block)
      content_tag(:div, nil, id: id, class: "card-footer-content text-muted #{add_class}", &block)
    end

    def card_image(src, alt: nil, id: nil, add_class: "")
      image_tag(src, class: "card-img-top #{add_class}", alt: alt)
    end
  end
end
