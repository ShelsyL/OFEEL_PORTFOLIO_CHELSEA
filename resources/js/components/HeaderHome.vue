<template>
      <!-- Header Home-->
      <header id="headerwrap" class="backstretched special-max-height no-overlay">
        <div class="container vertical-center">
          <div class="intro-text vertical-center text-center smoothie">
            <div class="intro-heading wow fadeIn heading-font" data-wow-delay="0.2s">Welcome to my portfolio</div>
            <div class="intro-sub-heading wow fadeIn secondary-font" data-wow-delay="0.4s">Bienvenue dans  <span class="rotate">mes créations, mon monde, mon univers</span></div>
            <a href="#welcome" class="btn btn-primary btn-white mt30 page-scroll" data-wow-delay="0.6s">Find Out More</a>
          </div>
        </div>
      </header>
  </template>

  <script>
  export default {
    mounted() {
      // IMAGES DU HEADER QUI TOURNENT
      $(document).ready(function() {
        'use strict';
        jQuery('#headerwrap').backstretch([
          "assets/img/bg/bg1ofeel.jpg",
          // "assets/img/bg/bg1.jpg",
          // "assets/img/bg/bg2.jpg",
          "assets/img/bg/bg2ofeel.jpg",
          // "assets/img/bg/bg3.jpg",
        ], {
          duration: 8000,
          fade: 500
        });
      });

      // CHARGEMENT DES MOTS DANS LE HEADERHOME
      $(document).ready(function() {
        jQuery(".rotate").textrotator({
          animation: "dissolve",
          separator: ",",
          speed: 2500 // How many milliseconds until the next word show.
        });
      });
    },
  }
  </script>
