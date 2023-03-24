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