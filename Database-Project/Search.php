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
    <a href="NewRelease.php"><button class="btn">New Release</button></a>
    <a href="comingSoon.php"><button class="btn">Coming Soon</button></a>
    </div>

    <h4>These Are the movies that matched your Search...</h4>

    <?php 
     if (isset($_POST['submit'])) {
        $search = $_POST['search'];
      }
                                
          $DB = new Database();
                      
          $query = "SELECT Mts_id FROM movies_tvshow where Title like " . '\''. "$search" . '%\'';
         
       $info = $DB -> read($query);

    ?>
    

<div class="card-grid">
        <?php 
            $i = 0;
            foreach ($info as $key => $value) {
                foreach($value as $num => $mov) { 
            ?> 
            
                <div class="card"> 
                        <div class="card-header">
                            <img src="<?php echo $mov?>.jpg" alt="">
                        </div>
                </div>
           
            <?php $i++;}
            }?>
    </div>
</body>
</html>