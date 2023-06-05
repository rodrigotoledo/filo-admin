module ProductsHelper
  def variations_options
    sizes = %w[PP P M G GG XG XXG 12 14 16]
    duplicated_sizes = []

    sizes.each do |size|
      duplicated_sizes << [size, size]
    end
    duplicated_sizes
  end
end
