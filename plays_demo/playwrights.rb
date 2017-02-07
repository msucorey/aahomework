# Playwright::all
# Playwright::find_by_name(name)
# Playwright#new (this is the initialize method)
# Playwright#create
# Playwright#update
# Playwright#get_plays

class Playwright

  attr_accessor :name

  def self.all
    data = PlayDBConnection.instance.execute("SELECT * FROM playwrights")
    data.map { |datum| Playwright.new(datum) }
  end

  def self.find_by_name(name)
    PlayDBConnection.instance.execute(<<-SQL, name)
      SELECT
        *
      FROM
        playwrights
      WHERE
        name = ?
    SQL
    Playwright.new("name" => name)
  end

  def initialize(options)
    @id = options['id']
    @name = options['name']
  end

  def create
    raise "#{self} already in database" if @id
    PlayDBConnection.instance.execute(<<-SQL, @name)
      INSERT INTO
        playwrights (name)
      VALUES
        (?)
    SQL
    @id = PlayDBConnection.instance.last_insert_row_id
  end

  def update
    raise "#{self} not in database" unless @id
    PlayDBConnection.instance.execute(<<-SQL, @name, @id)
      UPDATE
        playwrights
      SET
        name = ?
      WHERE
        id = ?
    SQL
  end

  def get_plays
    PlayDBConnection.instance.execute(<<-SQL, @name)
      SELECT
        title
      FROM
        plays
      JOIN
        playwrights ON plays.playwright_id = playwrights.id
      WHERE
        playwrights.name = ?
    SQL
  end
end
