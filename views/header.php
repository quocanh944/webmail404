<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
  <title>Webmail</title>
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <!----css3---->
  <link rel="stylesheet" href="./css/custom.css">


  <!--google fonts -->

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" rel="stylesheet">




  <!--google material icon-->
  <link href="https://fonts.googleapis.com/css2?family=Material+Icons" rel="stylesheet">

  <style>
  body,
  html {
    line-height: 1.8;
    font-family: 'Roboto', sans-serif;
    color: #555e58;
    text-transform: capitalize;
    font-weight: 400;
    margin: 0px;
    padding: 0px;
  }


  h1,
  h2,
  h3,
  h4,
  h5,
  h6,
  .h1,
  .h2,
  .h3,
  .h4 {
    font-weight: 400;
    line-height: 1.5em;
  }

  p {
    font-size: 15px;
    margin: 12px 0 0;
    line-height: 24px;
  }


  a {
    color: #333;
    font-weight: 400;
  }

  button:focus {
    box-shadow: none;
    outline: none;
    border: none;
  }

  button {
    cursor: pointer;
  }

  ul,
  ol {
    padding: 0px;
    margin: 0px;
    list-style: none;
  }

  a,
  a:hover,
  a:focus {
    color: #333;
    text-decoration: none;
    transition: all 0.3s;
  }


  /*==========================================================
  material-icon font-style
  ================================*/


  @font-face {
    font-family: 'Material Icons';
    font-style: normal;
    font-weight: 400;
    src: url(https://example.com/MaterialIcons-Regular.eot);
    /* For IE6-8 */
    src: local('Material Icons'),
      local('MaterialIcons-Regular'),
      url(https://example.com/MaterialIcons-Regular.woff2) format('woff2'),
      url(https://example.com/MaterialIcons-Regular.woff) format('woff'),
      url(https://example.com/MaterialIcons-Regular.ttf) format('truetype');
  }



  .material-icons {
    font-family: 'Material Icons';
    font-weight: normal;
    font-style: normal;
    font-size: 24px;
    /* Preferred icon size */
    display: inline-block;
    line-height: 1;
    text-transform: none;
    letter-spacing: normal;
    word-wrap: normal;
    white-space: nowrap;
    direction: ltr;

    /* Support for all WebKit browsers. */
    -webkit-font-smoothing: antialiased;
    /* Support for Safari and Chrome. */
    text-rendering: optimizeLegibility;

    /* Support for Firefox. */
    -moz-osx-font-smoothing: grayscale;

    /* Support for IE. */
    font-feature-settings: 'liga';
  }


  /*==========================================================
  material-icon font-style end
  ================================*/



  .wrapper {
    position: relative;
    width: 100%;
    overflow: auto;
  }




  /*==========================================================
 sidebar style start
  ================================*/

  #sidebar {
    position: fixed;
    height: 100vh !important;
    top: 0;
    left: 0;
    bottom: 0;
    z-index: 11;
    width: 260px;
    overflow: auto;
    transition: all 0.3s;
    background-color: #fff;
    box-shadow: 0 10px 30px -12px rgba(0 0 0 / 42%),
      0 4px 25px 0px rgba(0 0 0 / 12%),
      0 8px 10px -5px rgba(0 0 0 / 20%);
  }


  #sidebar::-webkit-scrollbar {
    width: 5px;
    border-radius: 10px;
    background-color: #eee;
    display: none;
  }

  #sidebar::-webkit-scrollbar-thumbs {
    width: 5px;
    border-radius: 10px;
    background-color: #333;
    display: none;
  }


  #sidebar:hover::-webkit-scrollbar {
    display: block;
  }

  #sidebar:hover::-webkit-scrollbar-thumbs {
    display: block;
  }


  #sidebar .sidebar-header {
    padding: 20px;
    background-color: #fff;
    border-bottom: 1px solid #eee;
  }

  .sidebar-header h3 {
    color: #333;
    font-size: 17px;
    margin: 0px;
    text-transform: uppercase;
    transition: all 0.5s ease;
    font-weight: 600;
  }

  .sidebar-header h3 img {
    width: 45px;
    margin-right: 10px;
  }


  #sidebar ul li {
    padding: 2px 7px;
  }


  #sidebar ul li.active>a {
    color: #333;
    background-color: rgba(200, 200, 200, 0.2);
  }

  #sidebar ul li a:hover {
    color: #333;
    background-color: rgba(200, 200, 200, 0.2);
  }


  .dropdown-toggle::after {
    position: absolute;
    right: 10px;
    top: 23px;
  }


  #sidebar ul li.drodown {
    position: sticky;
  }


  #sidebar ul.components {
    padding: 20px 0;
  }

  #sidebar ul li a {
    padding: 10px;
    line-height: 30px;
    border-radius: 5px;
    font-size: 15px;
    position: relative;
    '
font-weight: 400;
    display: block;
  }

  #sidebar ul li a span {
    text-transform: capitalize;
    display: inline-block;
  }

  #sidebar ul li a i {
    position: relative;
    margin-right: 10px;
    top: 5px;
    color: #555555;
    margin-left: 10px;
  }




  /*==========================================================
 sidebar style end
  ================================*/




  /*==========================================================
   main-content navbar-design start
  ================================*/

  #content {
    position: relative;
    transition: all 0.3s;
    background-color: #EEEEEE;
  }

  .top-navbar {
    width: 100%;
    z-index: 9;
    position: relative;
  }



  .main-content {
    padding: 10px 20px 0px 20px;
    position: relative;
    width: 100%;
  }

  .navbar {
    background-color: #2196f3;
    color: #fff;
  }

  .navbar-brand {
    color: #fff;
    margin-left: 20px;
  }

  .navbar button {
    background-color: transparent;
    border: none;
  }

  .navbar button span {
    color: #fff;
  }

  #sidebar-collapse {
    border-radius: 50%;
    width: 45px;
    height: 45px;
    text-align: center;
    line-height: 45px;
    margin-right: 20px;
    margin-left: 20px;
    border: none;
    color: #fff;
    background-color: rgba(0, 0, 0, 0.09);
  }

  #sidebar-collapse span {
    margin: 9px;
    padding: 0px;
  }

  .navbar-nav>li.active {
    color: #fff;
    border-radius: 4px;
    background-color: rgba(0, 0, 0, 0.08);
  }

  .navbar-nav>li>a {
    color: #fff;
  }


  .navbar .notification {
    position: absolute;
    top: 5px;
    right: 10px;
    display: block;
    font-size: 9px;
    border: 0px;
    font-size: 10px;
    background-color: #d9634f;
    min-width: 15px;
    text-align: center;
    padding: 1px 5px;
    height: 15px;
    border-radius: 2px;
    line-height: 14px;
  }

  .navbar-nav>li.show .dropdown-menu {
    transform: translate3d(0, 0, 0);
    opacity: 1;
    visibility: visible;
  }



  .dropdown-menu li>a {
    font-size: 13px;
    padding: 10px 20px;
    margin: 0 5px;
    border-radius: 2px;
    font-weight: 400;
    transition: all 150ms linear;
  }


  .navbar-nav>.active>a:focus {
    color: #fff;
    background-color: rgba(0, 0, 0, 0.08);
  }


  .navbar-nav li a {
    position: relative;
    display: block;
    padding: 10px 15px !important;
  }




  /*==========================================================
   main-content navbar-design end
  ================================*/



  /*==========================================================
   main-content inner card design  start
  ================================*/

  .card {
    margin: 10px 0px;
  }


  .card {
    border-radius: 0px !important;
  }

  .card {
    display: inline-block;
    position: relative;
    border: none;
    width: 100%;
    margin: 15px 0;
    box-shadow: 0 1px 2px rgb(0 0 0 / 8%);
    border-radius: 6px;
    color: rgba(0, 0, 0, 0.87);
    background-color: #fff;
  }

  .card-stats .card-header {
    float: left;
    text-align: center;
  }

  .card .card-header {
    padding: 15px 20px 0;
    z-index: 3;
    border-bottom: 0px !important;
    background-color: #fff;
    border-radius: none;
  }


  .card .card-footer .stats .material-icons {
    position: relative;
    top: 4px;
    font-size: 16px;

  }


  .card-stats .card-header span {
    font-size: 36px;
    line-height: 56px;
    width: 56px;
    height: 56px;
  }

  .icon.icon-warning {
    color: #ff9800;
  }

  .icon.icon-rose {
    color: #e91e63;
  }

  .icon.icon-success {
    color: #4caf50;
  }

  .icon.icon-info {
    color: #00bcd4;
  }


  .card .card-footer {
    margin: 0 7px 0px;
    padding-top: 10px;
    background-color: #fff;
    border-top: 1px solid #eeeeee;
  }

  .text-info {
    color: #03A9F4 !important;
  }

  .card-stats .card-content {
    text-align: right;
    padding-top: 10px;
  }


  .card .card-content {
    padding: 15px 20px;
    position: relative;
  }

  .card .card-content .category {
    margin-bottom: 0;
  }

  .card .category:not([class"=text-"]) {
    color: #555555;
    font-size: 14px;
    font-weight: 400;
  }


  .card .card-title:not(.card-calender .card-title) {
    margin-top: 0;
    margin-bottom: 5px;
  }

  .card-stats .card-title {
    margin: 0;
  }

  .card .card-footer .stats {
    line-height: 22px;
    color: #555555;
    font-size: 15px;
  }

  .card .card-footer div {
    display: inline-block;
  }

  .card .card-header-text h4 {
    margin-top: 0;
    margin-bottom: 3px;
    font-size: 19px;
    font-weight: 400;
    color: #222222;
    text-decoration: none;
  }



  .table>thead>tr>th {
    border-bottom: 1px;
    font-size: 16px;
    font-weight: 400;
  }


  .card .card-content {
    padding: 15px 20px;
    position: relative;
  }


  .steamline .sl-primary {
    border-left-color: #188ae2;
  }

  .steamline .sl-item {
    position: relative;
    padding-bottom: 12px;
    border-left: 1px solid #ccc;
  }

  .steamline .sl-item:before {
    content: "";
    position: absolute;
    left: -6px;
    top: 0;
    background-color: #ccc;
    width: 12px;
    height: 12px;
    border-radius: 100%;
  }

  .steamline .sl-primary:before,
  .steamline .sl-primary:last-child:after {
    background-color: #188ae2;
  }


  .steamline .sl-danger:before,
  .steamline .sl-danger:last-child:after {
    background-color: #ff5b5b;
  }

  .steamline .sl-success {
    border-left-color: #10c469;
  }

  .steamline .sl-success:before,
  .steamline .sl-success:last-child:after {
    background-color: #10c469;
  }

  .steamline .sl-warning {
    border-left-color: #f9c851;
  }

  .steamline .sl-warning:before,
  .steamline .sl-warning:last-child:after {
    background-color: #f9c851;
  }


  .steamline .sl-danger {
    border-left-color: #ff5b5b;
  }

  .steamline .sl-item .sl-content {
    margin-left: 24px;
  }

  .steamline .sl-item .text-muted {
    color: inherit;
    opacity: 0.6;
    font-size: 12px;
  }

  .steamline .sl-item p {
    font-size: 14px;
    color: #333;
  }




  /*==========================================================
   main-content inner card design  end
  ================================*/




  /*==========================================================
   foote design start
  ================================*/

  .footer {
    border-top: 1px solid #e7e7e7;
  }

  footer {
    padding: 10px 0;
    position: relative;
    width: 100%;
  }

  footer ul li {
    display: inline-block;
  }

  footer ul li a {
    color: inherit;
    padding: 15px;
    font-weight: 500;
    font-size: 12px;
    text-transform: uppercase;
    display: block;
    position: relative;
  }

  footer .copyright {
    padding: 15px;
    font-size: 14px;
    margin: 0;
  }

  /*==========================================================
   foote design end
  ================================*/



  #sidebar.show-nav,
  .body-overlay.show-nav {
    transform: translatex(0%);
    opacity: 1;
    display: block;
    visibility: visible;
    z-index: 15;
  }


  /*==========================================================
    media querys start
  ================================*/


  @media only screen and (min-width:992px) {

    #sidebar.active {
      width: 80px;
      height: 100% !important;
      position: absolute !important;
      overflow: visible !important;
      top: 0;
      z-index: 666;
      float: left !important;
      bottom: 0 !important;
    }

    #sidebar.active .sidebar-header h3 span {
      display: none;
      transition: all 0.5s ease;
    }

    #sidebar.active ul li a span {
      display: none;
      transition: all 0.5s ease;
    }

    #sidebar.active .dropdown-toggle::after {
      display: none;
      transition: all 0.5s ease;
    }

    #content {
      width: calc(100% - 260px);
      position: relative;
      float: right;
      transition: all 0.3s;
      background-color: #EEEEEE;
    }

    #content.active {
      width: calc(100% - 80px);
    }

    #sidebar.active .menu {
      position: absolute;
      left: 81px;
      background-color: white;
      width: 180px;
      height: auto;
      margin: 5px 0;
      top: 0;
      border: 1px solid #dcd9d9;
      z-index: 4;
    }

    .dropdown-menu {
      border: 0;
      box-shadow: 0 2px 5px 0 rgb(0 0 0 / 26%);
      transform: translate3d(0, -20px, 0);
      visibility: hidden;
      transition: all 150ms linear;
      display: block;
      min-width: 15rem;
      right: 0;
      left: auto;
      opacity: 0;
    }

  }





  @media only screen and (max-width:992px) {
    #sidebar {
      position: fixed;
      top: 0;
      bottom: 0;
      z-index: 10;
      width: 260px;
      transform: translatex(-100%);
      transition: all 150ms linear;
      box-shadow: none !important;
    }

    .body-overlay {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      display: none;
      visibility: hidden;
      opacity: 0;
      z-index: 3;
      transition: all 150ms linear;
      background-color: rgba(0, 0, 0, 0.5);
    }
  }

  #main {
    position: fixed;
    top: 0;
    left: 300px;
    bottom: 0;
    right: 0;
    z-index: 4;
    transition-duration: 0.3s;
    padding-left: 4px;
    box-shadow: inset 4px 0 0 #efefef, inset 5px 0 0 #e2e2e2;
  }

  #main .overlay {
    position: absolute;
    top: 0;
    left: -10px;
    right: 0;
    bottom: 100%;
    background: rgba(0, 0, 0, .4);
    z-index: 5;
    opacity: 0;
    transition-duration: 0s;
    transition-property: opacity;
  }

  .show-main-overlay #main .overlay {
    opacity: 1;
    bottom: 0;
    transition-duration: 0.5s;
  }

  #main .header {
    padding: 50px 60px;
    border-bottom: 1px solid #efefef;
    overflow: hidden;
  }

  #main .header .page-title {
    display: block;
  }

  #main .header .page-title .sidebar-toggle-btn {
    width: 0;
    margin-top: 1px;
    padding: 11px 0 0 0;
    float: left;
    position: relative;
    display: block;
    cursor: pointer;
    transition-duration: 0.3s;
    transition-delay: 0.5s;
    opacity: 0;
    margin-right: 0;
  }

  .show-sidebar #main .header .page-title .sidebar-toggle-btn {
    transition-delay: 0s;
  }

  #main .header .page-title .sidebar-toggle-btn .line {
    height: 3px;
    display: block;
    background: #888;
    margin-bottom: 4px;
    transition-duration: 0.5s;
    transition-delay: 0.5s;
  }

  .show-sidebar #main .header .page-title .sidebar-toggle-btn .line-angle1 {
    transform: rotate(-120deg);
  }

  .show-sidebar #main .header .page-title .sidebar-toggle-btn .line-angle2 {
    transform: rotate(120deg);
  }

  #main .header .page-title .sidebar-toggle-btn .line-angle1 {
    width: 8px;
    margin: 0;
    position: absolute;
    top: 15px;
    left: -11px;
    transform: rotate(-60deg);
  }

  #main .header .page-title .sidebar-toggle-btn .line-angle2 {
    width: 8px;
    margin: 0;
    position: absolute;
    top: 21px;
    left: -11px;
    transform: rotate(60deg);
  }

  #main .header .page-title .icon {
    font-size: 15px;
    margin-left: 20px;
    position: relative;
    top: -5px;
    cursor: pointer;
  }

  #main .header .search-box {
    float: right;
    width: 150px;
    height: 40px;
    position: relative;
  }

  #main .header .search-box input,
  #main .header .search-box .icon {
    transition-duration: 0.3s;
  }

  #main .header .search-box input {
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    width: 100%;
    border: 0;
    padding: 0;
    margin: 0;
    text-indent: 15px;
    height: 40px;
    z-index: 2;
    outline: none;
    color: #999;
    background: transparent;
    border: 2px solid #efefef;
    border-radius: 5px;
    transition-timing-function: cubic-bezier(0.3, 1.5, 0.6, 1);
  }

  #main .header .search-box input:focus {
    color: #333;
    border-color: #d6d6d6;
    width: 150%;
  }

  #main .header .search-box input:focus~.icon {
    opacity: 1;
    z-index: 3;
    color: #61c7b3;
  }

  #main .header .search-box .icon {
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    width: 40px;
    text-align: center;
    line-height: 40px;
    z-index: 1;
    cursor: pointer;
    opacity: 0.5;
  }

  #main .action-bar {
    padding: 20px 60px;
    border-bottom: 1px solid #efefef;
    overflow: hidden;
  }

  #main .action-bar li {
    float: left;
    margin-right: 10px;
  }

  #main #main-nano-wrapper {
    position: absolute;
    top: 214px;
    bottom: 0;
    height: auto;
  }

  #main .message-list {
    display: block;
  }

  #main .message-list li {
    position: relative;
    display: block;
    height: 50px;
    line-height: 50px;
    cursor: default;
    transition-duration: 0.3s;
    /* .col-1 {
		 width: 140px;
		 text-align: right;
		 padding-right: 37px;
		 padding-top: 15px;
		 .checkbox-wrapper, .icon, .dot {
			 float: right;
			 display: block;
		}
		 .icon {
			 margin-left: 10px;
			 font-size: 20px;
		}
		 .dot {
			 border: 5px solid transparent;
			 border-radius: 100px;
			 margin-right: 24px;
			 margin-top: 5px;
		}
	}
	 .col-2 {
		 width: 270px;
	}
	 .col-3 {
		 position: absolute;
		 top: 0;
		 left: 390px;
		 // Covers previous cols right: 120px;
		 .grey {
			 opacity: .7;
		}
	}
	 .col-4 {
		 width: 120px;
		 padding-left: 20px;
		 float: right;
	}
	 */
  }

  #main .message-list li:hover,
  #main .message-list li.active,
  #main .message-list li.selected {
    background: #efefef;
    transition-duration: 0.05s;
  }

  #main .message-list li.active,
  #main .message-list li.active:hover {
    box-shadow: inset 5px 0 0 #61c7b3;
  }

  #main .message-list li.unread {
    font-weight: 600;
    color: #555;
  }

  #main .message-list li .col {
    float: left;
    position: relative;
  }

  #main .message-list li.blue-dot .col-1 .dot {
    border-color: #1bc3e1;
  }

  #main .message-list li.orange-dot .col-1 .dot {
    border-color: #e2a917;
  }

  #main .message-list li.green-dot .col-1 .dot {
    border-color: #9ae14f;
  }

  #main .message-list li .col-1 {
    width: 400px;
  }

  #main .message-list li .col-1 .star-toggle,
  #main .message-list li .col-1 .checkbox-wrapper,
  #main .message-list li .col-1 .dot {
    display: block;
    float: left;
  }

  #main .message-list li .col-1 .dot {
    border: 4px solid transparent;
    border-radius: 100px;
    margin: 22px 26px 0;
    height: 0;
    width: 0;
    line-height: 0;
    font-size: 0;
  }

  #main .message-list li .col-1 .checkbox-wrapper {
    margin-top: 15px;
    margin-right: 10px;
  }

  #main .message-list li .col-1 .star-toggle {
    margin-top: 15px;
  }

  #main .message-list li .col-1 .title {
    position: absolute;
    top: 0;
    left: 140px;
    right: 0;
    text-overflow: ellipsis;
    overflow: hidden;
    white-space: nowrap;
  }

  #main .message-list li .col-2 {
    position: absolute;
    top: 0;
    left: 400px;
    right: 0;
    bottom: 0;
  }

  #main .message-list li .col-2 .subject,
  #main .message-list li .col-2 .date {
    position: absolute;
    top: 0;
  }

  #main .message-list li .col-2 .subject {
    left: 0;
    right: 200px;
    text-overflow: ellipsis;
    overflow: hidden;
    white-space: nowrap;
  }

  #main .message-list li .col-2 .date {
    right: 0;
    width: 200px;
    padding-left: 80px;
  }

  #main .load-more-link {
    display: block;
    text-align: center;
    margin: 30px 0 100px 0;
  }




  /*==========================================================
    media querys end
  ================================*/
  </style>

</head>

<body>


  <div class="wrapper">
    <div class="body-overlay"></div>
