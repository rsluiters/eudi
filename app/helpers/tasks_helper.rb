module TasksHelper
  class ImageList
    def self.get_filename
      @@list ||=  filllist
      return @@list[rand @@list.length]
    end
    private
    def self.filllist
      list = Dir[Rails.root.join("public/randomimages/**/*.jpg")]
      return list.map{|s| s.gsub(Rails.root.to_s + "/public","")}
    end
  end#class

  def random_image
    return ImageList.get_filename
  end
end
