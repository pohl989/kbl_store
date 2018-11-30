class Package < ApplicationRecord
  before_create :set_code

  private
  def set_code
    self.code = loop do
     random_token = SecureRandom.hex(2)
     break random_token unless Package.exists?(code: random_token)
   end
  end

end
