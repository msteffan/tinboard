class Article < ActiveRecord::Base
  has_many :likes

  def length
      self.fulltext.split(" ").length
  end

  def title_length
      self.title.to_s.split(" ").length
  end

  def length_class
      if self.length <= 400
          html_class = "twoMinutes"
      elsif self.length <= 800
          html_class = "fourMinutes"
      elsif self.length <= 1200
          html_class = "sixMinutes"
      elsif self.length > 1201
         html_class = "tenMinutes"
      end

      return html_class
  end

end
