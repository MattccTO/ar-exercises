class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true }
  validates :annual_revenue,   numericality: { greater_than_or_equal_to: 0 }
  validate :carries_some_apparel

  before_destroy :check_has_employees, prepend: true

  private

  def carries_some_apparel
    if (!mens_apparel && !womens_apparel)
      errors.add(name, "- Must carry some apparel!")
    end
  end

  def check_has_employees
    if (self.employees.size > 0)
      errors[:store] <<  "Can't delete store with employees"
      throw :abort
    end
  end
end
