class AjaxSelect2Input < SimpleForm::Inputs::StringInput
  extend ActiveSupport::Autoload

  def input_html_options
    url_params = {}
    url_params[:class_name] = options[:search_class] if options[:search_class].present?
    url_params[:search_method] = options[:search_method] if options[:search_method].present?
    url_params[:default_class_name] = options[:default_class_name] if options[:default_class_name].present?
    url_params[:default_text_column] = options[:default_text_column] if options[:default_text_column].present?
    url_params[:default_id_column] = options[:default_id_column] if options[:default_id_column].present?
    url_params[:select2_options] = options[:select2_options] if options[:select2_options].present?
    href = template.select2_autocompletes_path(url_params)
    input_options = super
    input_options[:data] = input_options[:data].to_h.merge({
        s2_href: href,
        s2_options: url_params[:select2_options].to_h.merge(multiple: multiple?)
    })
    css_classes = [input_options[:class], 'auto-ajax-select2', 'input-hol']
    if multiple?
      css_classes << 'multiple'
    end
    input_options[:class] = css_classes.compact
    input_options
  end

  def multiple?
    multiple_by_options? || multiple_by_association?
  end

  # def value
  #   val = object.send(association_primary_key)
  #   val.is_a?(Array) ? val.join(',') : val
  # end

  def multiple_by_association?
    reflection && [ :has_many, :has_and_belongs_to_many ].include?(reflection.macro)
  end

  def multiple_by_options?
    options[:multiple] || (options[:input_html] && options[:input_html][:multiple])
  end
end