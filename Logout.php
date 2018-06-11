<?php
session_start();
 ?>
 <!DOCTYPE html>
 <html>
  <body>
    <?php
      session_unset();
      session_destroy();
      unset($_COOKIE['LoginFlag']);
      header('Location:Login.php');
     ?>
  </body>
 </html>
