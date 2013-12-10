Pod::Spec.new do |s|
  s.name         = 'NZCircularImageView'
  s.version      = '0.0.1'
  s.summary    = 'UIImageView extension class. Performs async download image and leaves with rounded edge, used for presenting pictures of user profiles.'
  s.author = {
	'Bruno Tortato Furtado' => 'bruno.furtado@gruponzn.com'
  }
  s.source = {
	:git => 'https://github.com/NZN/NZCircularImageView.git',
	:tag => '0.0.1'
  }
  s.source_files = 'NZCircularImageView/*.{h,m}'
end