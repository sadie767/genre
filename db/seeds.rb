photo_list = [
  [ http://images.fineartamerica.com/images-medium-large-5/the-preaching-of-the-antichrist-luca-signorelli.jpg ],
  [ https://ferrebeekeeper.files.wordpress.com/2010/09/lucas.jpg ],
  [ http://www.dehlvi.com/dynamic-images/diseases/melancholia164.jpg ]
]

photo_list.each do |url|
  Photo.create( url: url )
end
