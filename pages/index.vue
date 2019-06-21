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
    <h1 class="title is-4">Quem é o João Leite?</h1>
    <div class="content">
      <p>Bom, Eu sou um desenvolvedor Full-Stack com quase 1 década de experiência. Sempre antenado nas últimas tecnologias estabelecidas pelo mercado, aprendendo com as empresas na qual presto serviço e compartilhando boas práticas com o mundo baseado na minha jornada no mundo da tecnologia.</p>
      <p>Em uma época em que cada dia o Front e o Back-End estão cada vez mais próximos, minha larga experiência como Full-Stack, ganha cada vez mais notóriedade.</p>
      <p>Um pouco de DevOps aqui, um pouco de Design ali, vou me desafiando a cada dia, sem perder meu foco principal que é a maestria na arquitetura de sistemas Web.</p>
    </div>
  </section>
</template>
<script>
export default {
  mounted(){
    this.$store.commit('CLOSE_MENU');
  }
};
</script>
