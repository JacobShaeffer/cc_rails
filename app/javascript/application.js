// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= import jquery
//= import jquery_ujs
import "@hotwired/turbo-rails"
import "controllers"

// TODO: move this to a more appropriate place
function validateContentFile(inputFile){
    console.log(inputFile.value)
    var errorMessage = "File extension not allowed."
    var allowedExtensions = ['pdf', 'mp3', 'pm4'];

    const fileExtension = inputFile.value.split('.').pop();
    if (!allowedExtensions.includes(fileExtension)) {
        alert(errorMessage);
        $(inputFile).val('');
    }
}
console.log(validateContentFile);