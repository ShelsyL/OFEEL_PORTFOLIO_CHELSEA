<template>
  <!-- TITRE ET NAVIGATION DE LA SECTION -->
  <div class="container">
    <div class="row">
      <div class="col-md-6 mb100 wow">
        <h2 class="section-heading">Recent Works</h2>
        <h3 class="section-subheading secondary-font">Mes travaux</h3>
      </div>

      <!-- CATEGORIES DES WORKS -->
      <div class="col-md-6 text-right">
        <ul class="portfolio-filter mb30 list-inline wow" >
          <li v-for="categorie in categories" :key="categorie.id">
            <router-link :to="{name: 'categories.show', params: { id: categorie.id }}">
              <a class="btn btn-primary" href="#" data-filter="*">{{ categorie.name }}</a>
            </router-link>
          </li>

          <!-- <li><a class="btn btn-primary active" href="#" data-filter=".apps">Apps</a></li>
          <li><a class="btn btn-primary" href="#" data-filter=".design">Design</a></li>
          <li><a class="btn btn-primary" href="#" data-filter=".photography">Photography</a></li>
          <li><a class="btn btn-primary" href="#" data-filter=".video">Test</a></li> -->
        </ul>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name : 'categories-menu',
  computed : {
    // Affichage des catégories
    categories() {
      return this.$store.getters.getCategories;
    }
  }
}
</script>
