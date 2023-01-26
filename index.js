let current_slide = 0;

const picture_name = ["wallpaper1.jpg","wallpaper2.jpg","wallpaper3.jpg","wallpaper4.jpg","wallpaper5.jpg"]
const N = picture_name.length

// Like orange
const primaryColor = "#f37a01"

const boxNav = document.getElementById("boxNav")
const slide = document.getElementById("slide")

//initialize
for(let n=0;n<N;n++){
    const img = document.createElement("img")
    img.src = './images/' + picture_name[n]
    img.style.display = "none"
    slide.appendChild(img)

    const dot = document.createElement("div")
    dot.className = "dot"
    dot.onclick = function() { changeSlide(n) }
    boxNav.appendChild(dot)
}
slide.childNodes[0].style.display = 'inline'
boxNav.childNodes[current_slide].style.backgroundColor = primaryColor



function changeSlide(to_slide_number) {
    boxNav.childNodes[current_slide].style.backgroundColor = 'gray'
    boxNav.childNodes[to_slide_number].style.backgroundColor = primaryColor
    
    slide.childNodes[current_slide].style.display = 'none'
    slide.childNodes[to_slide_number].style.display = 'inline'
    
    current_slide = to_slide_number
}

function prevSlide(){
    changeSlide(current_slide == 0 ? N-1 : current_slide - 1)
}
function nextSlide(){
    changeSlide(current_slide == N-1 ? 0 : current_slide + 1)
}