class SitesController < ApplicationController
  def main
    session = Facebooker::Session::Desktop.create("04e225bf6be5ded47cc805f930adfb1e", "ea099f735260781e1830f0ddbcbbfa1d")
  end
end
