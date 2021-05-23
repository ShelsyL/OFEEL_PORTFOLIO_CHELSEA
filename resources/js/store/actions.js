// ./resources/js/store/actions.js

let actions = {


  setWorks ({commit}) {
    // TRANSACTION AJAX pour lancer le SETTER
    axios.get('api/works')
         .then(reponsePHP => (commit ('SET_WORKS', reponsePHP.data)));
  },


  setCategories ({commit}) {
    axios.get('api/categories')
         .then(reponsePHP => (commit ('SET_CATEGORIES', reponsePHP.data)));
  },


  setWorkcomments ({commit}) {
    // Transaction AJAX
    axios.get('api/workcomments')
         .then(reponsePHP => (commit('SET_WORKCOMMENTS', reponsePHP.data)));
  },


  createWorkcomment({commit}, comment) {
    // https://laravel.com/docs/8.x/controllers#basic-controllers
    // Creation du commentaire
    axios.post('api/workcomments', comment)
         .then(reponsePHP => (commit('CREATE_WORKCOMMENT', reponsePHP.data)))
         .catch(err => {
      console.log(err)
    })
    // Envois le commentaire dans la liste des commentaires
    axios.get('api/workcomments')
         .then(reponsePHP => (commit('SET_WORKCOMMENTS', reponsePHP.data)));
  }


};

export default actions;
