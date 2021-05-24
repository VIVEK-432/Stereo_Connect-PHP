<?php
  function edenFormUsername($inputText)
  {
    $inputText = strip_tags($inputText);
    $inputText = str_replace(" ", "", $inputText);
    return $inputText;
  }

  function edenFormString($inputText)
  {
    $inputText = strip_tags($inputText);
    $inputText = str_replace(" ", "", $inputText);
    $inputText = ucfirst(strtolower($inputText));
    return $inputText;
  }

  function edenFormPassword($inputText)
  {
    $inputText = strip_tags($inputText);
    return $inputText;
  }



if (isset($_POST['registerButton'])){
  //register Button was clicked
  $username = edenFormUsername($_POST['username']);
  $firstName =edenFormString($_POST['firstName']);
  $lastName =edenFormString($_POST['lastName']);
  $email =edenFormString($_POST['email']);
  $email2 =edenFormString($_POST['email2']);
  $password =edenFormPassword($_POST['password']);
  $password2 =edenFormPassword($_POST['password2']);

  $wasSuccesful = $account->register($username,$firstName,$lastName,$email,$email2,$password,$password2);

  if ($wasSuccesful == true) {
    $_SESSION['userLoggedIn'] = $username;
    header("Location: index.php");
  }
}



 ?>
