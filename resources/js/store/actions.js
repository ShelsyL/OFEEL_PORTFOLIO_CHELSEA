// ./resources/js/store/actions.js

let actions = {


  setWorks ({commit}) {
    // TRANSACTION AJAX pour lancer le SETTER
    axios.get('api/works')
         .then(reponsePHP => (commit ('SET_WORKS', reponsePHP.data)));

  //   axios.get('api/categories')
  //       .then(reponsePHP => (commit ('SET_CATEGORIES', reponsePHP.data)));
  },


  setCategories ({commit}) {
    axios.get('api/categories')
         .then(reponsePHP => (commit ('SET_CATEGORIES', reponsePHP.data)));
  },


};

export default actions;
