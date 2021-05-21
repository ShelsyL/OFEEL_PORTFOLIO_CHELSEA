// ./resources/js/store/getters.js

let getters = {

  /**
  * ALL WORKS
  * @param  {[type]} state [description]
  * @return {[type]}       [description]
  */
  getWorks (state) {
    return state.works;
  },


  /**
  * WORK BY ID
  * @param  {[type]} state [description]
  * @return {[type]}       [description]
  */
  getWorkById (state) {
    return function (id) {
        return state.works.find(work => work.id == id);
        console.log(state);
      }
  },


  /**
  * ALL CATEGORIES
  * @param  {[type]} state [description]
  * @return {[type]}       [description]
  */
  getCategories (state) {
    return state.categories;
  },


  // WORK BY CAT
getWorksByCategorieId(state){
  return function (id) {
    return state.works.filter(works => works.categorie_id == id);
  }
},


};

export default getters;
