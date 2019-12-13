<template>
  <nav>
    <ul class="menu-list" :class="{'is-active' : menuActive }">
      <li v-for="(item, index) in items" :key="index">
        <nuxt-link :to="item.to" exact-active-class="is-active">
          {{ item.title }}
        </nuxt-link>
      </li>
    </ul>
    <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" @click="toogleMenu">
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
    </a>
  </nav>
</template>

<script>
export default {
  data() {
    return {
      items: [
        {
          title: 'About',
          icon: 'home',
          to: { name : 'index' }
        },
        {
          title: 'Skills',
          icon: 'about',
          to: { name : 'skills' }
        },
        {
          title: 'Resume',
          icon: 'about',
          to: { name : 'resume' }
        },
        {
          title: 'Personal Projects',
          icon: 'about',
          to: { name : 'apps' }
        },
        {
          title: 'Contact',
          icon: 'about',
          to: { name : 'contact' }
        }
      ]
    }
  },
  methods:{
    toogleMenu(){
      this.$store.commit('TOOGLE_MENU');
    }
  },
  computed:{
    menuActive(){
      return this.$store.state.menu;
    }
  },

}
</script>

<style>

</style>
