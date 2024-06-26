const handler = {
    init() {
        const fileInput = document.querySelector('#file-input');
        const preview = document.querySelector('#preview');
        fileInput.addEventListener('change', () => {  
            console.dir(fileInput)                  
            const files = Array.from(fileInput.files)
            files.forEach(file => {
                preview.innerHTML += `
                <p id="${file.lastModified}">
                    ${file.name}
                    <button data-index='${file.lastModified}' class='file-remove'>X</button>
                </p>`;
            });
        });
    },

    removeFile: () => {
        document.addEventListener('click', (e) => {
        if(e.target.className !== 'file-remove') return;
        const removeTargetId = e.target.dataset.index;
        const removeTarget = document.getElementById(removeTargetId);
        const files = document.querySelector('#file-input').files;
        const dataTranster = new DataTransfer();

        // document.querySelector('#file-input').files =
        //             Array.from(files).filter(file => file.lastModified !== removeTarget);

    
        Array.from(files)
            .filter(file => file.lastModified != removeTargetId)
            .forEach(file => {
            dataTranster.items.add(file);
         });

        document.querySelector('#file-input').files = dataTranster.files;

        removeTarget.remove();
    })
    }
}

handler.init()
handler.removeFile()