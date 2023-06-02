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
end
