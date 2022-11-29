<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Raseta Based Store</title>
    <meta name="description" content="Dapetin outfit kece buat harimu! It's all started here.">
    <meta name="keyword"
        content="raseta based store, raseta surabaya, distro surabaya, raseta shopee, raseta tokopedia, pakaian ala jepang, distro jejepangan, peluang bisnis kaos, peluang bisnis reseller">
    <meta property="og:image" content="https://rasetabased.com/image/thumb-rasetabased-com.jpeg">
    <meta property="og:image:type" content="image/jpeg">
    <meta property="og:image:width" content="1024">
    <meta property="og:image:height" content="1024">
    <link rel="shortcut icon" href="../../image/logo-favicon-rasetabased-com.png">
    <link rel="stylesheet" href="../../css/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/style.css">


    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-14N65M59X0"></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());

        gtag('config', 'G-14N65M59X0');

    </script>
    <style>

        /* The "show" class is added to the filtered elements */
        .show {
            display: block;
        }

        /* Style the buttons */
        .btn {
            border: none;
            outline: none;
            margin: 2px;
            background-color: white;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #ddd;
        }

        .btn.active {
            background-color: #666;
            color: white;
        }

    </style>

</head>

<body>
    <div id="black-screen" onclick="closePreview()" class="black-screen"></div>
    <img class="particle" style="position:fixed; height:60vh; right:0; bottom:0;"
        src="image/japan-letter-right-rasetabased-com.png" alt="">
    <div class="content">
        <div class="left" id="left">
            <div class="padding-cur-top padding-cur-bottom sidebar">
                <!-- <div class="grouping-content"> -->
                <div class="group-head-nav">
                    <img id="burger-icon" onclick="menu()" src="../../image/burger-icon.svg" alt="">
                    <img class="logo" src="../../image/logo-dark-rasetabased-com.svg" alt="">
                </div>
                <img id="beforeDropdown" src="../../image/banggabuatanidonesia.png" alt="">
                <div id="dropdown" class="dropdown">
                    <ul class="navlink">
                        <li><a href="#">Home</a></li>
                        <li><a href="https://www.instagram.com/rasetabased.catalogue/">Catalogue</a></li>
                        <li><a href="https://wa.me/6285731118669">Contact</a></li>
                    </ul>
                    <hr class="w-100">
                    <div class="grouping-visitor">
                        <span class="visitor">1.830.343</span>
                        <span class="visitorText">Visitor</span>
                    </div>
                </div>
                <div class="bottom-sidebar">
                    <p><b>#BanggaBuatanIndonesia</b></p>
                </div>
                <!-- </div> -->
            </div>
        </div>

        <div class="mid" id="mid">

            <video id="myvideo" style="padding-bottom:27px;" width="98%" height="95%" autoplay loop muted>
                @foreach ($video as $v)
                <source src="../../contents/{{$v->content}}">
                </source>
                @endforeach
            </video>

            <!-- <img onclick="closePreview()" class="close" src="image/close-icon.svg" alt="">
            <img id="preview" class="preview" src="image/product/preview-produk-1-rasetabased-com.png" alt=""> -->
        </div>
        <div class="right padding-cur-top">
            <div class="grouping-visitor">
                <span class="visitor">1.830.343</span>
                <span class="visitorText">Visitor</span>
            </div>

            <div class="clear"></div>
            <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">

                    <button type="button" data-bs-target="#carouselExampleControls" data-bs-slide-to="0" class="active"
                        aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleControls" data-bs-slide-to="1"
                        aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleControls" data-bs-slide-to="2"
                        aria-label="Slide 3"></button>
                    <button type="button" data-bs-target="#carouselExampleControls" data-bs-slide-to="3"
                        aria-label="Slide 4"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <a href="https://shopee.co.id/shop/308864651/search/?shopCollection=109994410"
                            target="_blank"><img src="image/slider-1-rasetabased-com.png" class="d-block w-100"
                                alt="..."></a>
                    </div>
                    @foreach ($image as $i)
                    <div class="carousel-item">
                        <a href="{{$i->shopee}}" target="_blank"><img src="../../contents/{{$i->content}}"
                                class="d-block w-100" alt="..."></a>
                    </div>
                    @endforeach
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
                    data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
                    data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>

            <div class="product">
                <div id="myBtnContainer">
                    <button class="btn" onclick="filterSelection('all')"> Show all</button>
                    @foreach ($category as $c)
                    <button class="btn" onclick="filterSelection('{{$c->category_name}}')">
                        {{$c->category_name}}</button>
                    @endforeach
                </div>
                <span class="label">Featured Product</span>
                <div class="wrap-card d-flex flex-wrap justify-content-around">
                    @foreach ($product as $p)
                    <div class="card-product {{$p->category_name}}">
                        <img src="../../images/{{$p->image}}" class="card-img-top" alt="{{$p->category_name}}">
                        <div class="card-body">
                            <h5 class="card-title">{{$p->name}}</h5>
                            <h5 class="card-title">Series: {{$p->category_name}}</h5>
                            <p class="card-text">
                                <span class="diskon d-block">{{$p->price}}</span>
                                <span class="price d-block">{{$p->discount}}</span>
                            </p>
                            <i target="_blank" class="addToCart"> Add to Cart</i>
                            <div class="button-group">
                                <!-- <a data-src="image/product/2 - SUKAJAN - FENIKKUSU BLACK GOLD PARAGON - RASETABASEDCOM.png" onclick="setPreview(this)" class="look"><img src="image/icon-preview-rasetabased-com.svg" alt=""></a> -->
                                <a href="{{$p->shopee}}" target="_blank" class="addToShopee">Shopee</a>
                                <a href="{{$p->lazada}}" target="_blank" class="addToLazada">Lazada</a>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
            <div class="clear"></div>
            <div class="footerNew">
                <a href="https://www.facebook.com/rasetabasedstore/">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor"
                        class="bi bi-facebook" viewBox="0 0 16 16">
                        <path
                            d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                    </svg>
                </a>
                <a href="https://www.instagram.com/rasetabasedstore/">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor"
                        class="bi bi-instagram" viewBox="0 0 16 16">
                        <path
                            d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z" />
                    </svg>
                </a>
                <a href="https://wa.me/6285731118669">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor"
                        class="bi bi-whatsapp" viewBox="0 0 16 16">
                        <path
                            d="M13.601 2.326A7.854 7.854 0 0 0 7.994 0C3.627 0 .068 3.558.064 7.926c0 1.399.366 2.76 1.057 3.965L0 16l4.204-1.102a7.933 7.933 0 0 0 3.79.965h.004c4.368 0 7.926-3.558 7.93-7.93A7.898 7.898 0 0 0 13.6 2.326zM7.994 14.521a6.573 6.573 0 0 1-3.356-.92l-.24-.144-2.494.654.666-2.433-.156-.251a6.56 6.56 0 0 1-1.007-3.505c0-3.626 2.957-6.584 6.591-6.584a6.56 6.56 0 0 1 4.66 1.931 6.557 6.557 0 0 1 1.928 4.66c-.004 3.639-2.961 6.592-6.592 6.592zm3.615-4.934c-.197-.099-1.17-.578-1.353-.646-.182-.065-.315-.099-.445.099-.133.197-.513.646-.627.775-.114.133-.232.148-.43.05-.197-.1-.836-.308-1.592-.985-.59-.525-.985-1.175-1.103-1.372-.114-.198-.011-.304.088-.403.087-.088.197-.232.296-.346.1-.114.133-.198.198-.33.065-.134.034-.248-.015-.347-.05-.099-.445-1.076-.612-1.47-.16-.389-.323-.335-.445-.34-.114-.007-.247-.007-.38-.007a.729.729 0 0 0-.529.247c-.182.198-.691.677-.691 1.654 0 .977.71 1.916.81 2.049.098.133 1.394 2.132 3.383 2.992.47.205.84.326 1.129.418.475.152.904.129 1.246.08.38-.058 1.171-.48 1.338-.943.164-.464.164-.86.114-.943-.049-.084-.182-.133-.38-.232z" />
                    </svg>
                </a>
                <p style="margin-top:20px;"><b>Copyright &copy; 2022 - Raseta Based Store</b><br>Developed by <a
                        href="https://astrotunggal.productions" target="_blank">Astrõ</a></p>
                <a href=""><span class="mx-auto collab">Collaborate</span></a>
            </div>


        </div>
    </div>

    <script src="../../js/bootstrap/bootstrap.min.js"></script>
    <script src="../../js/main.js"></script>

    <script>
        filterSelection("all")
        function filterSelection(c) {
            var x, i;
            x = document.getElementsByClassName("card-product");
            if (c == "all") c = "";
            for (i = 0; i < x.length; i++) {
                RemoveClass(x[i], "show");
                if (x[i].className.indexOf(c) > -1) AddClass(x[i], "show");
            }
        }
        function AddClass(element, name) {
            var i, arr1, arr2;
            arr1 = element.className.split(" ");
            arr2 = name.split(" ");
            for (i = 0; i < arr2.length; i++) {
                if (arr1.indexOf(arr2[i]) == -1) {
                    element.className += " " + arr2[i];
                }
            }
        }
        function RemoveClass(element, name) {
            var i, arr1, arr2;
            arr1 = element.className.split(" ");
            arr2 = name.split(" ");
            for (i = 0; i < arr2.length; i++) {
                while (arr1.indexOf(arr2[i]) > -1) {
                    arr1.splice(arr1.indexOf(arr2[i]), 1);
                }
            }
            element.className = arr1.join(" ");
        }
    
    </script>

    <!-- <script>
    var myvid = document.getElementById('myvideo');    
    var myvids = 
    [ 
        @foreach ($video as $v)
            <tr> 
                <td>{{ $v->content}}</td> 
            </tr> 
        @endforeach
    ];
    var activeVideo = 0;
    myvid.addEventListener('ended', function(e) {
        // update the new active video index
        activeVideo = (++activeVideo) % myvids.length;
        // update the video source and play
        myvid.src = myvids[activeVideo];
        myvid.play();
    });
</script> -->
</body>

</html>
