function menu(){
    var left = document.getElementById('left')
    var menu = document.getElementById('dropdown')
    var image = document.getElementById('beforeDropdown')
    if(menu.style.height == "0px" || menu.style.height == ""){
        menu.style.height = "100%"
        if(window.innerWidth>767){
            image.style.height = "0px"
            image.style.marginTop = "0px"
        }else{
            left.style.height = "430px"
        }
    }else{
        menu.style.height = "0px"
        if(window.innerWidth>767){
            image.style.height = ""
            image.style.marginTop = "80px"
        }else{
            left.style.height = "83px"
        }
    }
}

function setPreview(value){
    var image = value.getAttribute('data-src')
    var el = document.getElementById('preview')
    var black = document.getElementById("black-screen")
    var mid = document.getElementById('mid')
    mid.style.display = "flex"
    black.style.display = "block"
    el.src = image
    
}

function closePreview(){
    var black = document.getElementById("black-screen")
    var mid = document.getElementById('mid')
    mid.style.display = "none"
    black.style.display = "none"
}
var lokasi = window.innerWidth<767 ? 'mobile' : 'taborhigher'
window.addEventListener('resize', function() {
    var left = document.getElementById('left')
    var mid = document.getElementById('mid')
    var image = document.getElementById('beforeDropdown')
    var menu = document.getElementById('dropdown')
    if(window.innerWidth<767){
        if(lokasi=="taborhigher"){
            var black = document.getElementById("black-screen")
            mid.style.display = "none"
            black.style.display = "none"
            left.style.height = "83px"
            image.style.height = "25%"
            lokasi = "mobile"
        }
    }else{
        if(lokasi=="mobile"){
            mid.style.display = "flex"
            left.style.height = "100vh"
            menu.style.height = "0px"
            lokasi = "taborhigher"
        }
    }
}, true);