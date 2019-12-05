<template>
  <section>
    <div class="profile">
      <figure>
        <img src="~/assets/img/avatar.jpg" alt="João C R Leite Jr">
        <figcaption>João C R Leite</figcaption>
      </figure>
      <p class="has-text-centered links">
        <a href="https://www.linkedin.com/in/joaocrleite" target="_blank" class="button is-light">
          <span class="icon has-text-info">
            <i class="fab fa-linkedin"></i>
          </span>
        </a>
        <a href="http://flyfox.com.br" target="_blank" class="button is-light">
          <span class="icon has-text-danger">
            <img src="~/assets/img/flyfox-icon.png" alt width="20">
          </span>
        </a>
        <a href="mailto:joaocrleite@gmail.com" class="button is-light">
          <span class="icon has-text-danger">
            <i class="fas fa-envelope"></i>
          </span>
        </a>
        <a href="https://github.com/joaocrleite" target="_blank" class="button is-light">
          <span class="icon has-text-black">
            <i class="fab fa-github"></i>
          </span>
        </a>
      </p>
    </div>
    <h1 class="title is-4">Hi there</h1>
    <div class="content">
      <p>I'm a full-stack developer with 8+ years of expirience.</p>
      <p>I've accumulated experience in several technologies.</p>
      <p>I met a lot of teams around, working in so many projects, learning and boosting my concepts of the web/mobile architecture.</p>
    </div>
  </section>
</template>
<script>
export default {
  mounted() {
    this.$store.commit("CLOSE_MENU");
  }
};
</script>
