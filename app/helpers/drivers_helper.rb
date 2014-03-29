module DriversHelper
 
 def image_for(driver)
   if driver.image_file_name.blank?
     image_tag('placeholder.png')
   else
     image_tag(driver.image_file_name)
   end
 end
 
 def delete_review_image
   image_tag('trash.png', style: 'border: 0', :title => 'Delete Review')
 end
 
 def format_average_stars(driver)   
   if driver.average_stars.nil?
     content_tag(:strong, 'No reviews')
   else
     pluralize(number_with_precision(driver.average_stars, :precision => 1) , 'star')
   end
 end

end
