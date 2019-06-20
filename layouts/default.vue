<template>
  <div class="grid-container">
    <aside>
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
          <a href="https://www.linkedin.com/in/joaocrleite" target="_blank" class="button is-light">
            <span class="icon has-text-black">
              <i class="fab fa-github"></i>
            </span>
          </a>
        </p>
      </div>

      <nav-bar></nav-bar>
    </aside>

    <main>
      <nuxt/>
    </main>
  </div>
</template>

<script>
import NavBar from "~/components/NavBar";
export default {
  data() {
    return {};
  },
  components: {
    NavBar
  }
};
</script>
