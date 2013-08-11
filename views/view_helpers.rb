module ViewHelpers
  class Presentation < Struct.new(:id, :category, :title, :basename)
    DATA = [
      new(:gsmendoza, 'speaker', 'George Mendoza', '0-gsmendoza-introduction'),
      new(:installation, 'lesson', 'Installing and Running Rails', '10-installing-and-running-rails')
    ]

    def self.find(id)
      DATA.detect{|p| p.id == id}
    end

    def path
      "/presentations/#{basename}.html"
    end
  end
  
  # Calculate the years for a copyright
  def copyright_years(start_year)
    end_year = Date.today.year
    if start_year == end_year
      "#{start_year}"
    else
      "#{start_year}&#8211;#{end_year}"
    end
  end
  
  # Handy for hiding a block of unfinished code
  def hidden(&block)
    #no-op
  end
  
  # Add your own helpers below...
  
end