// ./resources/js/store/mutations.js

let mutations = {

  SET_WORKS (state, data) {
    state.works = data;
  },

  SET_CATEGORIES (state, data) {
    state.categories = data;
  },

  SET_WORKCOMMENTS (state, data) {
    state.workcomments = data;
  },

  CREATE_WORKCOMMENT (state, data) {
    state.workcomments.unshift(comment);
  }


};

export default mutations;
