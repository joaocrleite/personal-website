export const state = () => ({
  loading: false,
  menu: false,
})

export const mutations = {
  START_LOADING (state) {
    state.loading = true;
  },
  STOP_LOADING (state) {
    state.loading = false;
  },
  OPEN_MENU (state) {
    state.menu = true;
  },
  CLOSE_MENU (state) {
    state.menu = false;
  },
  TOOGLE_MENU(state){
    state.menu = !state.menu;
  }
}
