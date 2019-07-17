<template>
  <section>
    <h2 class="title is-4">My Apps</h2>

    <div class="columns is-multiline">
      <div class="column is-6" v-for="app in apps" :key="app.id">
        <div class="card">
          <div class="card-image">
            <figure class="image is-16by9">
              <img :src="require(`~/assets/img/apps/${app.img}`)" alt="app.title">
            </figure>
          </div>
          <div class="card-content">
            <div class="content">
              <p class="title is-4">{{app.title}}</p>
              <p class="subtitle is-6">
                <span class="tag is-primary">{{app.category}}</span>
                <span class="tag is-success" v-if="app.dev">On progress...</span>
              </p>
              <p>{{app.description}}</p>
              <p class="buttons">
                <a :href="app.github" target="_blank" class="button is-dark">
                  <span class="icon has-text-white">
                    <i class="fab fa-github"></i>
                  </span>
                  <span>Repository</span>
                </a>
                <a :href="app.url" target="_blank" class="button is-light" :disabled="app.dev">
                  <span class="icon has-text-dark">
                    <i class="fas fa-eye"></i>
                  </span>
                  <span>Preview <span v-if="app.dev">Soon</span></span>
                </a>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>

  </section>
</template>
<script>
export default {
  computed: {

  },
  data() {
    return {
      apps:[
        {
          id: 4,
          title: 'Gas Life',
          description: 'How many money I expend with gas station and how many amount of gas my car consume.',
          category: 'Finances',
          img: 'gas.jpg',
          dev: false,
          github: 'https://github.com/joaocrleite/gas.joaocrleite.com',
          url: 'http://gas.joaocrleite.com'
        },
        {
          id: 1,
          title: 'Track Bill',
          description: 'Tracking my money for me, I personal finances manager',
          category: 'Finances',
          img: 'fin.jpg',
          dev: true,
          github: 'https://github.com/joaocrleite/fin.joaocrleite.com',
          url: 'http://fin.joaocrleite.com'
        },
        {
          id: 2,
          title: 'What\'s next',
          description: 'A simple to do list managers',
          category: 'Plan',
          img: 'todo.jpg',
          dev: true,
          github: 'https://github.com/joaocrleite/todo.joaocrleite.com',
          url: 'http://todo.joaocrleite.com'
        },
        {
          id: 3,
          title: 'Employeasy',
          description: 'Human resources department system',
          category: 'Plan',
          img: 'rh.jpg',
          dev: true,
          github: 'https://github.com/joaocrleite/rh.joaocrleite.com',
          url: 'http://rh.joaocrleite.com'
        },
      ]
    };
  },
  mounted() {
    this.$store.commit("CLOSE_MENU");
  }
};
</script>
