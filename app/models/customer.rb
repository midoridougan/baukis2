class Customer < ApplicationRecord
  # include EmailHolder
  # include PersonalNameHolder
  # include PasswordHolder

  has_one :home_address, dependent: :destroy
  # , autosave: true
  has_one :work_address, dependent: :destroy
  # , autosave: true
  # has_many :phones, dependent: :destroy
  # has_many :personal_phones, -> { where(address_id: nil).order(:id) },
  #   class_name: "Phone", autosave: true

  def password=(raw_password)
    if raw_password.kind_of?(String)
      self.hashed_password = BCrypt::Password.create(raw_password)
    elsif
      self.hashed_password = nil
    end
  end
end

  # validates :gender, inclusion: { in: %w(male female), allow_blank: true }
  # validates :birthday, date: {
  #   after: Date.new(1900, 1, 1),
  #   before: ->(obj) { Date.today },
  #   allow_blank: true
  # }
end
