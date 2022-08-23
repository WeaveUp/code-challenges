# Return x,y coordinates that correspond to the upper-left corners of our tiles 
# and a note that indicates if the tile will need to be cropped.
class PrintLayout
  def build(tile_width, tile_height, width, aspect_ratio)
    raise 'bad argument' unless tile_width > 0 and tile_height > 0 and width > 0 and aspect_ratio > 0
    raise 'print too large' if width > 500 or width / aspect_ratio > 500

    result = []

    i = 0
    j = 0
    while i * tile_width < width + 1 do
      while j * tile_height < width / aspect_ratio + 1 do
        if i * tile_width + tile_width > width + 1 or j * tile_height + tile_height > width / aspect_ratio + 1
          result = result + [[[i * tile_width, j * tile_height], 'CROP']]
        else
          result = result + [[[i * tile_width, j * tile_height], 'FULL']]
        end
        j = j + 1
      end
      j = 0
      i = i + 1
    end

    result_hash = {}
    result.each do |coord, status|
      result_hash[coord] = status
    end
    return result_hash
  rescue Exception
    return {}
  end
end

pp PrintLayout.new.build(20, 30, 50, 0.5)
