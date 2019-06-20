<template>
  <nav>
    <ul class="menu-list">
      <li v-for="(item, index) in items" :key="index">
        <nuxt-link :to="item.to" exact-active-class="is-active">
          {{ item.title }}
        </nuxt-link>
      </li>
    </ul>
  </nav>
</template>

<script>
export default {
  data() {
    return {
      items: [
        {
          title: 'Sobre',
          icon: 'home',
          to: { name : 'index' }
        },
        {
          title: 'Experiência',
          icon: 'about',
          to: { name : 'experience' }
        },
        {
          title: 'Contato',
          icon: 'about',
          to: { name : 'contact' }
        }
      ]
    }
  }
}
</script>

<style>

</style>
