<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie</title>
    <link rel="stylesheet" href="Style.css">
    <link rel="stylesheet" href="Style2.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com"> 
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> 
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;500;700&display=swap" rel="stylesheet">
</head>
<body>
    <?php 
        include ('database-conn.php');
    ?>
    <div class="nav">
        <a href="TopRated.php"><div class="brand-name a-begin">Marvel</div></a>


        <div id = "searchbox">
            <form action="Search.php" method = "post">
            <input type="text" placeholder = "Search" id="input" name = "search">
            <button id="btn" name = "submit">SEARCH</button>
            </form>
        </div>

       
        
    </div>

    <h1>Watch movies Online</h1>
    <hr>
    
    <div class="main-btn">
    <a href="TopRated.php"><button class="btn">Top Rated</button></a>
    <button class="btn left-btn">New Release</button>
    <a href="comingSoon.php"><button class="btn">Coming Soon</button></a>
    </div>



<div class="card-grid">
        <?php 
            $DB = new Database();
            $info = $DB -> read("SELECT Mts_id FROM movies_tvshow where Rel_date < 2023 Order by Rel_date desc");
            $card = $DB -> read("SELECT * FROM Movies_Tvshow where Rel_date < 2023 Order by Rel_date desc");
            $i = 0;
            foreach ($info as $key => $value) {
                foreach($value as $num => $mov) { 
            ?> 
            
                <div class="card"> 
                        <div class="card-header">
                            <img src="<?php echo $mov?>.jpg" alt="">
                        </div>
                        <div class="card-body">
                            <p><span class = "rating-c"><b>Rating</b>: <?php  echo $card[$i]['Rating'];?>
                            </span><br><?php echo $card[$i]['Title']?>
                            </p>
                        </div>
                </div>
           
            <?php $i++;}
            }?>
    </div>
</body>
</html>