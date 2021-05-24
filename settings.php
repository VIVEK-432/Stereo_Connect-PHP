<?php
include("includes/includedFiles.php");
?>

<div class="entityInfo settings">

  <div class="centerSection">
    <h1 class="accountName big">Account overview</h1>
        <div class="userInfo" style="
        /* display: -webkit-box; */">
          <a class="user-1">
            <h3>Username: </h3>
            <span class="user-01"><?php echo $userLoggedIn->getFirstAndLastName(); ?></span>
          </a>
          <a class="email-1">
            <h3>Email: </h3>
            <span class="email-01"><?php echo $userLoggedIn->getEmail(); ?></span>
          </a>
      </div>

  </div>

</div>
<div class="bottomSection">
	<div class="buttonItems">
	    <button class="button" onclick="openPage('updateDetails.php')">Edit Profile</button>
	    <button class="button" onclick="logout()">LogOut</button>
  	</div>
</div>
