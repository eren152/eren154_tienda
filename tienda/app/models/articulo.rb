class Articulo < ActiveRecord::Base
  # Paperclip
  has_attached_file :photo,
    :styles => {
      :thumb=> "100x100#",
      :small  => "150x150>" }
# Paperclip
  has_attached_file :photo1,
    :styles => {
      :thumb=> "100x100#",
      :small  => "150x150>" }
    # Paperclip
  has_attached_file :photo2,
    :styles => {
      :thumb=> "100x100#",
      :small  => "150x150>" }
    # Paperclip
  has_attached_file :photo3,
    :styles => {
      :thumb=> "100x100#",
      :small  => "150x150>" }
    # Paperclip
  has_attached_file :photo4,
    :styles => {
      :thumb=> "100x100#",
      :small  => "150x150>" }
end
