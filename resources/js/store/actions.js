// ./resources/js/store/actions.js

let actions = {

 /**
  * WORKS
  * @param {[type]} commit [description]
  */
  setWorks ({commit}) {
    // TRANSACTION AJAX pour lancer le SETTER
    axios.get('api/works')
         .then(reponsePHP => (commit ('SET_WORKS', reponsePHP.data)));
         // axios.get('api/works/categorie/' + idCat)
         //      .then(reponsePHP => (commit ('SET_WORKS', reponsePHP.data)));
  },


 /**
  * CATEGORIES
  * @param {[type]} commit [description]
  */
  setCategories ({commit}) {
    axios.get('api/categories')
         .then(reponsePHP => (commit ('SET_CATEGORIES', reponsePHP.data)));
  },


/**
 * WORKS BY CATEGORIE
 * @param {[type]} commit [description]
 */
  setWorksByCategorie ({commit}, id) {
    axios.get('api/works/categorie/' + idCat)
         .then(reponsePHP => (commit ('SET_WORK', reponsePHP.data)));
  },

};

export default actions;
