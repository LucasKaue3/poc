# frozen_string_literal: true

Dir[File.join(File.dirname(__FILE__),
              '../pages/*.rb')].sort.each { |file| require file }

# modulos para chamar as classes instanciadas
module Pages
  def login_page
    LoginPage.new
  end
end
