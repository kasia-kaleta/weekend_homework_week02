require("minitest/autorun")
require('minitest/rg')
require_relative("../guests.rb")
require_relative("../rooms.rb")

class BarTabTest < MiniTest::Test

  def setup
    @bartab1 = BarTab.new("wine", 6)
    @bartab2 = BarTab.new("beer", 4)
    @bartab3 = BarTab.new("cider", 5)

  end

end
