module ViewHelpers
  class Presentation < Struct.new(:id, :category, :title, :basename)
    DATA = [
      new(:index, 'index', 'Presentations', 'presentations'),
      new(:gsmendoza, 'speaker', 'George Mendoza', '0-gsmendoza-introduction'),
      new(:installation, 'lesson', 'Installing and Running Rails', '10-installing-and-running-rails'),
      new(:database_crud, 'lesson', 'Database CRUD', '20-database-crud'),
      new(:show_itinerary, 'lesson', 'Show Itinerary Page', '30-show'),
      new(:list_itineraries, 'lesson', 'List Itineraries Page', '40-index'),
      new(:create_itinerary, 'lesson', 'Create Itinerary Page', '50-create')
    ]

    def self.find(id)
      DATA.detect{|p| p.id == id}
    end

    def matches_request_uri?(request_uri)
      basename == request_uri.split('/').last
    end

    def path
      id == :index ? "/presentations" : "/presentations/#{basename}"
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
