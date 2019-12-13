<template>
  <section class="apps">
    <h2 class="title is-4">My Apps</h2>

    <article>
      <h3 class="subtitle">
        ERP
      </h3>
      <p>A simple ERP system, what I'm building cross my free time.</p>
      <p>Just for learning and study purposes.</p>
      <a href="http://localhost:3005" target="_blank" class="button is-link">Try demo</a>
    </article>


  </section>
</template>
<script>
export default {
  computed: {

  },
  data() {
    return {
    };
  },
  mounted() {
    this.$store.commit("CLOSE_MENU");
  }
};
</script>
