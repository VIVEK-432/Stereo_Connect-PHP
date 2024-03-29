<div id="navBarContainer" >
  <nav class="navBar">

    <span  role="link" tabindex="0" onclick="openPage('index.php')" class="logo" >
        <img src="pepsi/images/icons/sterio.png" alt=" Stereo">
    </span>

    <!-- <div class="group">
      <div class="navItem">
        <span  role="link" tabindex="0" onclick="openPage('search.php')" class="navItemLink">Search
          <img src="pepsi/images/icons/search.png" class="icon" alt="search">
        </span>
      </div>
    </div> -->

    <div class="group">

      <div class="navItem">
        <a class="nav-1" role="link" tabindex="0" onclick="openPage('index.php')">

          <svg viewBox="0 0 512 512" width="20" height="20" xmlns="http://www.w3.org/2000/svg" style="
            margin-right: 16px;">
            <path d="M 256.274 60.84 L 84.324 166.237 L 84.324 443.063 L 193.27 443.063 L 193.27 293.73 L 320.228 293.73 L 320.228 443.063 L 428.222 443.063 L 428.222 165.476 L 256.274 60.84 Z M 256.274 35.95 L 448.452 149.145 L 448.452 464.395 L 300 464.395 L 300 315.062 L 213.499 315.062 L 213.499 464.395 L 64.095 464.395 L 64.095 150.161 L 256.274 35.95 Z" fill="currentColor"></path>
          </svg>

          <span  class="navItemLink">Home </span>
        </a>


      </div>

      <div class="navItem">
        <a class="nav-1" role="link" tabindex="0" onclick="openPage('search.php')">

          <svg viewBox="0 0 512 512" width="20" height="20" xmlns="http://www.w3.org/2000/svg" style="
            margin-right: 16px;">
            <path d="M349.714 347.937l93.714 109.969-16.254 13.969-93.969-109.969q-48.508 36.825-109.207 36.825-36.826 0-70.476-14.349t-57.905-38.603-38.603-57.905-14.349-70.476 14.349-70.476 38.603-57.905 57.905-38.603 70.476-14.349 70.476 14.349 57.905 38.603 38.603 57.905 14.349 70.476q0 37.841-14.73 71.619t-40.889 58.921zM224 377.397q43.428 0 80.254-21.461t58.286-58.286 21.461-80.254-21.461-80.254-58.286-58.285-80.254-21.46-80.254 21.46-58.285 58.285-21.46 80.254 21.46 80.254 58.285 58.286 80.254 21.461z" fill="currentColor" fill-rule="evenodd"></path>
          </svg>

          <span  class="navItemLink">Search
          <!-- <img src="pepsi/images/icons/search.png" class="icon" alt="search"> -->
        </span>
        </a>

      </div>


      <div class="navItem">
        <a class="nav-1" role="link" tabindex="0" onclick="openPage('musiclibrary.php')">

          <svg viewBox="0 0 512 512" width="20" height="20" xmlns="http://www.w3.org/2000/svg" style="margin-right: 16px;">
            <path d="M291.301 81.778l166.349 373.587-19.301 8.635-166.349-373.587zM64 463.746v-384h21.334v384h-21.334zM192 463.746v-384h21.334v384h-21.334z" fill="currentColor"></path>
          </svg>

          <span  class="navItemLink">Library </span>
        </a>

      </div>

      <div class="navItem">
        <a class="nav-1" role="link" tabindex="0" onclick="openPage('settings.php')">
          <div class="user-circle">
            <svg width="20" height="20" fill="currentColor" viewBox="0 0 18 20" xmlns="http://www.w3.org/2000/svg" data-testid="user-icon">
            <path d="M15.216 13.717L12 11.869C11.823 11.768 11.772 11.607 11.757 11.521C11.742 11.435 11.737 11.267 11.869 11.111L13.18 9.57401C14.031 8.58001 14.5 7.31101 14.5 6.00001V5.50001C14.5 3.98501 13.866 2.52301 12.761 1.48601C11.64 0.435011 10.173 -0.0879888 8.636 0.0110112C5.756 0.198011 3.501 2.68401 3.501 5.67101V6.00001C3.501 7.31101 3.97 8.58001 4.82 9.57401L6.131 11.111C6.264 11.266 6.258 11.434 6.243 11.521C6.228 11.607 6.177 11.768 5.999 11.869L2.786 13.716C1.067 14.692 0 16.526 0 18.501V20H1V18.501C1 16.885 1.874 15.385 3.283 14.584L6.498 12.736C6.886 12.513 7.152 12.132 7.228 11.691C7.304 11.251 7.182 10.802 6.891 10.462L5.579 8.92501C4.883 8.11101 4.499 7.07201 4.499 6.00001V5.67101C4.499 3.21001 6.344 1.16201 8.699 1.00901C9.961 0.928011 11.159 1.35601 12.076 2.21501C12.994 3.07601 13.5 4.24301 13.5 5.50001V6.00001C13.5 7.07201 13.117 8.11101 12.42 8.92501L11.109 10.462C10.819 10.803 10.696 11.251 10.772 11.691C10.849 12.132 11.115 12.513 11.503 12.736L14.721 14.585C16.127 15.384 17.001 16.884 17.001 18.501V20H18.001V18.501C18 16.526 16.932 14.692 15.216 13.717Z">
            </path>
          </svg>
          </div>


          <span  class="navItemLink"><?php echo $userLoggedIn->getUsername(); ?></span>
        </a>

      </div>

    </div>



  </nav>
</div>
