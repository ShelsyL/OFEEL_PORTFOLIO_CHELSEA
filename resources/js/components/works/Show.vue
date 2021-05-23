<template>

  <div class="">
    <header-page></header-page>

    <section>
      <div class="section-inner">
        <div class="container">
          <div class="row project-item">

            <div class="col-sm-3">
              <h3>{{ work.title }}</h3>
              <p><strong>DATE:</strong> 21/01/2015</p>
              <p><strong>CLIENT:</strong> Jeeves Design</p>
              <p><strong>TAGS:</strong> Brand Design, Graphics</p>
              <p>{{ work.description }}
              </p>
            </div>

            <div class="col-sm-9 mb60 wow">
              <div class="row">
                <div class="col-xs-12 single-post-content">
                  <div class="gap">
                    <img :src="'assets/img/portfolio/' + work.image" class="img-responsive " alt="title">
                  </div>
                  <!-- <div class="hover-item gap">
                  <img :src="'assets/img/portfolio/portfolio4.jpg'" class="img-responsive " alt="title">
                </div>
                <div class="hover-item gap">
                <img :src="'assets/img/portfolio/portfolio9.jpg'" class="img-responsive " alt="title">
              </div> -->
                </div>
              </div>
            </div>

          </div>
        </div>

          <comments-work></comments-work>

      </div>
    </section>
  </div>
</template>





<script>
export default {
  data () {
    return {};
  },

  computed: {
    // Affichage du work
    work () {
      let id = this.$route.params.id;
      return this.$store.getters.getWorkById(id);
    },

  }

}
</script>
