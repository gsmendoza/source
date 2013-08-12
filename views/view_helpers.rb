module ViewHelpers
  class Presentation < Struct.new(:id, :category, :title, :filename)
    DATA = [
      new(:index, 'index', 'Presentations', nil),
      new(:gsmendoza, 'speaker', 'George Mendoza', '0-gsmendoza-introduction.html'),
      new(:installation, 'lesson', 'Installing and Running Rails', '10-installing-and-running-rails.html'),
      new(:database_crud, 'lesson', 'Database CRUD', '20-database-crud.html'),
      new(:show_itinerary, 'lesson', 'Show Itinerary Page', '30-show.html')
    ]

    def self.find(id)
      DATA.detect{|p| p.id == id}
    end

    def path
      "/presentations/#{filename}".chomp('/')
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
