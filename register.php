<?php
    include("includes/classes/Account.php");
    include("includes/classes/Constant.php");
    include("includes/config.php");

      $account = new Account($con);

    include("includes/handlers/register-handler.php");
    include("includes/handlers/login-handler.php");

    function getInputValue($name){
      if (isset($_POST[$name])){
          echo $_POST[$name];
      }
    }
 ?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Stereo Welcomes you</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="pepsi/css/register.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="pepsi/Script/register.js"> </script>

  </head>
  <body>
  <?php
    if (isset($_POST['registerButton'])) {
      echo ' <script>
            $(document).ready(function(){
                $("#loginForm").hide();
                $("#registerForm").show();
          });
      </script>';
    }
    else {
      echo '  <script>
              $(document).ready(function(){
                  $("#loginForm").show();
                  $("#registerForm").hide();
                });
              </script>';
    }

   ?>


    <div id="background">

      <div id="loginContainer">


    <div id="inputContainer">
      <form id="loginForm" action="register.php" method="post">
        <h2>Login to your Account </h2>
        <p>
          <?php echo $account->getError(Constant::$loginFailed); ?>
          <label for="loginUsername">Username</label>
          <input type="text" id="loginUsername" name="loginUsername" placeholder="Username" value="<?php getInputValue('loginUsername') ?>" required >
        </input>
        </p>
        <p>
          <label for="loginPassword">Password</label>
          <input id="loginPassword" type="password" name="loginPassword" placeholder="Password" required>


        </p>
        <button type="submit" name="loginButton">LOG IN</button>

        <div class="hasAccountText">
          <a id="hiddenLogin">Don,t have an account yet? Signup here.</a>
        </div>

      </form>


      <form id="registerForm" action="register.php" method="post">
        <h2>Create your account</h2>
        <p>
          <?php echo $account->getError(Constant::$usernameCharacters); ?>
          <?php echo $account->getError(Constant::$Takenusername); ?>
          <label for="username">Username</label>
          <input type="text" id="username" name="username" placeholder="UserName" value="<?php getInputValue('username') ?>" required >

        </p>

        <p>
          <?php echo $account->getError(Constant::$firstNameCharacters); ?>
          <label for="firstName">First name</label>
          <input type="text" id="firstName" name="firstName" placeholder="FirstName" value="<?php getInputValue('firstName') ?>" required >

        </p>

        <p>
          <?php echo $account->getError(Constant::$lastNameCharacters); ?>
          <label for="lastName">Last name</label>
          <input type="text" id="lastName" name="lastName" placeholder="LastName" value="<?php getInputValue('lastName') ?>" required >

        </p>

        <p>
          <?php echo $account->getError(Constant::$emailDoNotMtach); ?>
          <?php echo $account->getError(Constant::$emailInvalid); ?>
          <?php echo $account->getError(Constant::$Takenemail); ?>
          <label for="email">Email</label>
          <input type="email" id="email" name="email" placeholder="Email@123.com" value="<?php getInputValue('email') ?>" required >

        </p>

        <p>
          <label for="email2">Confirm email</label>
          <input type="email" id="email2" name="email2" placeholder="ComfirmEmail" value="<?php getInputValue('email2') ?>" required >

        </p>

        <p>
          <?php echo $account->getError(Constant::$passwordDoNotMatch); ?>
          <?php echo $account->getError(Constant::$passwordNotAlfanumeric); ?>
          <?php echo $account->getError(Constant::$passwordCharacters); ?>
          <label for="password">Password</label>
          <input id="password" type="password" name="password" placeholder="Must be 8 characters" required>
        </p>

        <p>
          <label for="password2">Confirm password</label>
          <input id="password2" type="password" name="password2" placeholder="Re-ConfirmPasswrd" required>
        </p>

        <button type="submit" name="registerButton">SIGN UP</button>

        <div class="hasAccountText">
          <a id="hiddenRegister">Already have an account? Log in here.</a>
        </div>

      </form>

      </div>

        <div id="loginText">
          <h1 id="textShinePink">Get great music, right now</h1>
          <h2>Listen latest songs for free</h2>
          <ul id="wiper">
              <li>Discover music you'll fall in love with</li>
              <li>Create your own playlists</li>
              <li>Easy acces to all our features</li>
          </ul>
        </div>

    </div>

  </div>

  <footer role="contentinfo" class="footer footer-highlight-aquamarine">
    <div class="container">
      <nav class="row">

        <div class="col-xs-12 col-md-2">
          <div class="footer-logo">
            <a href="#">Sterio</a>
          </div>
        </div>

        <div class="col-xs-6 col-sm-4 col-md-2">
          <h3 class="nav-title">Company</h3>
          <ul class="nav">

            <li>
              <a href="Aboutus.html" id="nav-link-about">
                About
              </a>
            </li>

            <li>
              <a href="#" id="nav-link-jobs">
                Jobs
              </a>
            </li>

          </ul>
        </div>

        <div class="col-xs-6 col-sm-4 col-md-2">
          <h3 class="nav-title">Communities</h3>
          <ul class="nav">

            <li>
              <a href="#" id="nav-link-artists">
                For Artists
              </a>
            </li>

            <li>
              <a href="#" id="nav-link-developers">
                Developers
              </a>
            </li>

            <li>
              <a href="#" id="nav-link-brands">
                Brands
              </a>
            </li>

          </ul>
        </div>

        <div class="col-xs-6 col-sm-4 col-md-2">
          <h3 class="nav-title">Useful links</h3>
          <ul class="nav">
            <li>
              <a href="#" id="nav-link-help">
                Help
              </a>
            </li>

            <li>
              <a href="#" id="nav-link-gift">
                Gift
              </a>
            </li>

            <li class="hidden-xs ">
              <a href="#" id="nav-link-play">
                Web Player
              </a>
            </li>

          </ul>
        </div>

        <div class="col-xs-12 col-md-4 col-social">
          <ul class="nav">
            <li>
              <a href="#">
                <img alt="instagram" src="pepsi/images/icons/Instagram.svg"/>
              </a>
            </li>
            <li>
              <a href="#">
                <img alt="twitter" src="pepsi/images/icons/Twitter.svg"/>
              </a>
            </li>
            <li>
              <a href="#">
                <img alt="facebook" src="pepsi/images/icons/Facebook.svg"/>
              </a>
            </li>
          </ul>
        </div>
      </nav>

      <nav class="row row-small">
        <div class="col-xs-8 col-md-6">

          <ul class="nav nav-small">
            <li>
              <a href="#">Legal</a>
            </li>
            <li>
              <a href="#">Privacy</a>
            </li>
            <li>
              <a href="#">Cookies</a>
            </li>
            <li>
              <a href="#">About Ads</a>
            </li>
          </ul>
        </div>

        <div class="col-xs-4 col-md-6 text-right">
          <a class="market" href="#" title="Click to change">
            <div class="media">
              <div class="media-body media-middle">
                India
              </div>
              <div class="media-right media-middle">
                <span class="media-object flag-icon flag-icon-us"></span>
              </div>
            </div>
          </a>

          <small class="copyright">&copy; 2021 Sterio AB</small>
        </div>
      </nav>
    </div>
  </footer>

  </body>
</html>
