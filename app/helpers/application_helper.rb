module ApplicationHelper
  def resized_image_tag(attachment, width, height)
    if attachment.attached?
      variant = attachment.variant(resize_to_limit: [width,height])
      image_tag(variant)
    else
      # Se a imagem não estiver anexada, exiba uma imagem padrão ou uma mensagem de imagem ausente
      'Nenhuma imagem anexada'
    end
  end

  def status_select(form, enum_column)
    enum_options = form.object.class.send(enum_column.to_s.pluralize).keys
    options = enum_options.map { |status| [status.titleize, status] }

    current_status = form.object.send(enum_column)

    select_options = options_for_select(options, current_status)

    form.select :status, select_options, {}, { class: 'block shadow rounded-md border border-gray-200 outline-none px-3 py-2 mt-2 w-full' }
  end

end
