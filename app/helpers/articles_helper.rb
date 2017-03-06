module ArticlesHelper
  
  def image_exist(path)
    if File.file?("#{Rails.public_path}" + path)
      true
    else
      false
    end
  end


end
