// ./resources/js/store/mutations.js

let mutations = {

  SET_WORKS (state, data) {
    state.works = data;
  },

  SET_CATEGORIES (state, data) {
    state.categories = data;
  },

  SET_WORK (state, data) {
    state.work = data;
  }

};

export default mutations;
