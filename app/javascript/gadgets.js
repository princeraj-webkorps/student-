document.addEventListener("turbolinks:load", function() {
    var gadgetImage = document.querySelector('.gadget-image');

    function handleFileSelector(evt) {

        var files = evt.target.files; // FileList object

        // Loop through the filelist and render image files as thumbnails.
        for(var i=0, f; f=files[i]; i++) {

            // only process image files.
            if(!f.type.match('image.*')) {
                continue;
            }

            var reader=new FileReader();

            //closure to capture the file information.
            reader.onload = (function(theFile) {
                return function(e) {

                    //render thumbnail.
                    var span = document.createElement('span');
                    span.innerHTML = ['<img class="gadget-preview-thumb" src="', e.target.result,
                    '"title="', escape(theFile.name), '"/>'
                     ].join('');
                     document.getElementById('list').insertBefore(span, null);

                };
            })(f);

            //read image in the file as a data URL.
            reader.readAsDataURL(f);
        }
            
        }

        if(gadgetImage) {

            this.addEventListener('change', handleFileSelect, false);
        }
            
            
        
    
});
    





