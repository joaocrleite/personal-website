<template>
  <section class="resume">
    <h1 class="title">João Carlos Rodrigues Leite Junior</h1>
    <p>
      <b>Phone:</b> +55 11 96846 5962 <br>
      <b>Location:</b> São Paulo, SP - Brazil <br>
      <b>E-mail:</b> joaocrleite@gmail.com <br>
    </p>
    <hr>
    <h2 class="subtitle">Education</h2>
    <p>
      2018 - <b> Morumbi University - Information Technology Management</b>
    </p>
    <hr>
    <h2 class="subtitle">Experience</h2>
    <p>
      <b>Software Engineer at AmiGo App</b><br>
      Nov 2022 - Present <br>
      São Paulo, SP - Brazil /  Miami, FL - USA
    </p>
    <p>
      <b>Staff Software Engineer at DASA</b><br>
      Mar 2021 - Nov 2022 <br>
      São Paulo, SP - Brazil
    </p>
    <p>
      <b>Tech Lead at TradeUp Group</b><br>
      Jun 2020 - Mar 2021 <br>
      Barueri, SP - Brazil
    </p>
    <p>
      <b>Development Consultancy at FlyFox</b><br>
      Jun 2017 - May 2020 <br>
      Sorocaba, SP - Brazil
    </p>
    <p>
      <b>CEERT as Lead Full-Stack Developer</b><br>
      May 2015 - May 2018 <br>
      São Paulo, SP - Brazil
    </p>
    <p>
      <b>CEERT as Junior Full-Stack Developer</b><br>
      Oct 2013 - May 2015 <br>
      São Paulo, SP - Brazil
    </p>
    <p>
      <b>Samper VCJ as Full-Stack Developer</b><br>
      Jan 2013 - Aug 2013 <br>
      São Paulo, SP - Brazil
    </p>
    <p>
      <b>StudioArt as Graphic Design</b><br>
      Jan 2011 - May 2012 <br>
      São Paulo, SP - Brazil
    </p>
    <hr>
    <h2 class="subtitle">Languages</h2>
    <ul>
      <li>Portuguese - Native</li>
      <li>Tecnical English - C1</li>
      <li>German - A1</li>
    </ul>
    <hr>
    <p class="buttons">
      <a href="/uploads/joaocrleite.pdf" target="_blank">
        <b-button type="is-danger"
          icon-left="cloud-download">
          Fully CV
        </b-button>
      </a>
    </p>

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
