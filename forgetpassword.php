<?php
include("includes/includedFiles.php");
?>

<div class="userDetails">

  <div class="container">
    <h2 class="passchange-1">Change your password</h2>

    <input type="password" name="oldPassword" class="oldPassword" placeholder="Current password">

    <input type="password" name="newPassword1" class="newPassword1" placeholder="New password">

    <input type="password" name="newPassword2" class="newPassword2" placeholder="Confirm password">

    <span class="message"></span>

    <button class="button" onclick="updatePassword('oldPassword', 'newPassword1', 'newPassword2')">Save</button>

  </div>

</div>
