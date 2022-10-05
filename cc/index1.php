<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600,700,900&display=swap" rel="stylesheet">
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="assets/styles/materialize.min.css">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <!-- <script src="https://kit.fontawesome.com/367a3609fa.js"></script> -->
    <link rel="stylesheet" href="assets/styles/customcss.css">
    <title>Calories</title>
</head>
<!--class="blue-grey lighten-5" -->
<?php include('../includes/config.php'); ?>

<body  >
<style> .teal.darken-1 {background-color: purple !important; color: white;}
	.teal{background-color: purple !important; color: white;}
	.btn, .btn-large, .btn-small {background-color: purple !important; color: white;}
	add-btn btn teal lighten-1{background-color: purple !important; color: white;}

</style><!-- new here -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/
css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/
jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/
js/bootstrap.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/9.8.0/css/
bootstrap-slider.min.css" rel="stylesheet"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/9.8.0/
bootstrap-slider.min.js"></script>
<script src="js/search.js"></script>
<link rel="stylesheet" href="css/style.css"><!--end of fne here -->
    <!-- Navbar  -->

    <nav >
        <div class="nav-wrapper teal darken-1">
            <div class="container">
                <a href="#" class="brand-logo left">
                    <i class="fas fa-dumbbell"></i> Calories Measure
                </a>
                <ul class="right">
                    <li><a href="#" class="clear-btn btn">Clear All</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <br>
    <div class="container">
        <!-- Form Card -->
        <div class="card">
            <div class="card-content">
                <span class="card-title center">Get Your Cal</span>
                <form class="col">
                    <div class="row">
                        <div class="input-field col s6">
                            <label for="item-name" class="main-input">Search</label>
                            <input type="text" placeholder="Dish" id="item-name">
                        </div>
                        <div class="input-field col s6">
                            <input type="number" placeholder="kCal" id="item-calories">
                            <label for="item-calories" class="main-input">Calorie</label>
                        </div>
                        <button class="add-btn btn" style="background-color: purple !important;">
                            <i class=" fa fa-plus"></i> Add Meal
                        </button>
                        <!--
                        <div class="input-field col s6">
                            <input type="number" placeholder="kCal" id="item-calories">
                            <label for="item-calories" class="main-input">Calorie</label>
                        </div>
                        -->
                        <!-- for modal -->
                        <!-- <button class="add-btn btn teal lighten-1 waves-effect waves-light modal-trigger"
                            href="#demo-modal"> -->
                        <!--
                        <button class="add-btn btn teal lighten-1" style="background-color: purple !important;">
                            <i class=" fa fa-plus"></i> Add Meal
                        </button>
                        
                        <button class="update-btn btn orange">
                            <i class="fa fa-pencil-square-o"></i> Update Meal
                        </button>
                        <button class="delete-btn btn red">
                            <i class="fa fa-remove"></i> Delete Meal
                        </button>
                        <button class="back-btn btn blue-grey pull-right">
                            <i class="fa fa-chevron-circle-left"></i>Back
                        </button>
                        -->
                    </div> <!-- end of row -->
                </form> <!-- end of col -->
            </div>
        </div>
        <!-- Calorie Count -->
        <h3 class="center-align">
            Total Calories: <span class="total-calories">0</span>
        </h3>

        <!-- Item List -->
        <ul id="item-list" class="collection">
            <!-- <li class="collection-item" id="item-0">
                <strong>Steak Dinner: </strong> <em>1200 Calories</em>
                <a href="#" class="secondary-content">
                    <i class="edit-item fa fa-pencil"></i>
                </a>
            </li>
            <li class="collection-item" id="item-0">
                <strong>Cookie: </strong> <em>400 Calories</em>
                <a href="#" class="secondary-content">
                    <i class="edit-item fa fa-pencil"></i>
                </a>
            </li>
            <li class="collection-item" id="item-0">
                <strong>Eggs: </strong> <em>300 Calories</em>
                <a href="#" class="secondary-content">
                    <i class="edit-item fa fa-pencil"></i>
                </a>
            </li> -->
        </ul>
    </div>


    <!-- Modal Pop-up -->
    <!-- <div id="demo-modal" class="modal"></div> -->


    <script src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script src="assets/scripts/materialize.min.js"></script>
    <script src="assets/scripts/app.js"></script>

    <!-- for material modal pop-up scripts -->
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var Modalelem = document.querySelector('.modal');
            var instance = M.Modal.init(Modalelem);
            instance.open();
        });
        
    </script>
</body>
</html>