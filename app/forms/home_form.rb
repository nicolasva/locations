class HomeForm < Reform::Form
  property :title
  validates :title, presence: true
end