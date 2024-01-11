<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Art Web</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/global.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz@9..144&display=swap" rel="stylesheet">
    <script src="js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%@ include file="cusnavbar.jsp" %>

<section id="center" class="center_o bg_gray pt-2 pb-2">
    <div class="container-xl">
        <div class="row center_o1">
            <div class="col-md-5">
                <div class="center_o1l">
                    <h2 class="mb-0">Contact</h2>
                </div>
            </div>
            <div class="col-md-7">
                <div class="center_o1r text-end">
                    <h6 class="mb-0"><a href="#">Home</a> <span class="me-2 ms-2"><i class="fa fa-caret-right"></i></span> Contact</h6>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="contact" class="p_4">     
    <div class="container-xl">
        <div class="row contact_1">
            <div class="col-md-6">
                <div class="contact_1l">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1303098.5284776278!2d80.06601027669937!3d15.906357430751058!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a35f0a2a7d81943%3A0x8ba5d78f65df94b8!2sK%20L%20Deemed%20To%20Be%20University!5e0!3m2!1sen!2sin!4v1692362887474!5m2!1sen!2sin"
                            height="380" style="border:0; width:100%; allowfullscreen=""></iframe>
                </div>
            </div>
            <div class="col-md-6">
                <div class="contact_1r">
                    <h3 class="mb-4">ARTIST INFO</h3>
                    <p class="mb-4"><i class="fa fa-map-marker me-2 col_pink"></i> <span class="text-white fw-bold me-2">Address:</span>Kluniversity, Green Fields, Vaddeswaram, Andhra Pradesh 522302</p>
                    <p class="mb-4"><i class="fa fa-phone me-2 col_pink"></i> <span class="text-white fw-bold me-2">Phone:</span> +91 7894561234</p>
                    <p class="mb-4"><i class="fa fa-envelope me-2 col_pink"></i> <span class="text-white fw-bold me-2">Email:</span> <a href="#">Kluniversity@gmail.com</a></p>
                    <ul>
                        <li><a href="#" class="icoRss" title="Rss"><i class="fa fa-skype"></i></a></li>
                        <li><a href="#" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="https://www.instagram.com/vindhya_sree3/" class="icoGoogle" title="Google +"><i class="fa fa-instagram"></i></a></li>
                        <li><a href="https://www.linkedin.com/in/mandalapu-vindhya-sree-034b93225/" class="icoLinkedin" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row contact_2 mt-4">
            <div class="col-md-9">
                <div class="contact_2l row">
                    <div class="col-md-12">
                        <h4>GET IN TOUCH</h4>
                    </div>
                </div>
                <div class="contact_2l1 mt-2 row">
                    <div class="col-md-4">
                        <div class="contact_2l1i">
                            <input class="form-control" placeholder="Name*" type="text">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="contact_2l1i">
                            <input class="form-control" placeholder="Email*" type="text">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="contact_2l1i">
                            <input class="form-control" placeholder="Website" type="text">
                        </div>
                    </div>
                </div>
                <div class="contact_2l1 mt-3 row">
                    <div class="col-md-12">
                        <div class="contact_2l1i">
                            <textarea placeholder="Comment" class="form-control form_text"></textarea>
                            <h6 class="mt-3 mb-0 text-uppercase"><a class="button ps-4 pe-4 pt-3 pb-3" href="#"> COMMENT</a></h6>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="contact_2r">
                    <h5 class="mb-3"> OFFICE</h5>
                    <p class="font_14"><i class="fa fa-car col_pink me-1"></i> Vijayawada, India</p>
                    <p class="font_14"><i class="fa fa-phone col_pink me-1"></i> +123 123 456</p>
                    <p class="font_14"><i class="fa fa-globe col_pink me-1"></i> <a href="#">Kluniversity@gmail.com</a></p>
                    <h5 class="mb-3 mt-4">BUSINESS HOURS</h5>
                    <p class="font_14">Hotline is available for 24 hours a day!..</p>
                    <p class="font_14">Monday – Friday : <span class="fw-bold text-white">9am to 7pm</span></p>
                    <p class="font_14">Saturday : <span class="fw-bold text-white">11am to 3pm</span></p>
                    <p class="font_14 mb-0">Sunday : <span class="fw-bold text-white">Closed</span></p>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
