<template>
  <section>
    <h2 class="title is-4">Tech</h2>

    <b-tabs position="is-centered" class="block" v-model="activeTech">
      <b-tab-item label="Todas">
        <p class="buttons">
          <a
            v-for="(item, index) in techFullList"
            :key="index"
            :href="item.url"
            target="_blank"
            class="button is-light"
          >
            <span class="icon" :class="{ 'has-text-danger' : item.level == 4}">
              <i v-if="item.level == 4" class="fas fa-heart"></i>
              <i v-else-if="item.level == 3" class="fas fa-battery-three-quarters"></i>
              <i v-else-if="item.level == 2" class="fas fa-battery-half"></i>
              <i v-else-if="item.level == 1" class="fas fa-battery-quarter"></i>
              <i v-else class="fas fa-battery-empty"></i>
            </span>

            <span>{{ item.title }}</span>
          </a>
        </p>
      </b-tab-item>

      <b-tab-item v-for="(tech, index) in techList" :key="index" :label="tech.title">
        <p class="buttons">
          <a
            v-for="(item, index) in tech.items"
            :key="index"
            :href="item.url"
            target="_blank"
            class="button is-light"
          >
            <span class="icon" :class="{ 'has-text-danger' : item.level == 4}">
              <i v-if="item.level == 4" class="fas fa-heart"></i>
              <i v-else-if="item.level == 3" class="fas fa-battery-three-quarters"></i>
              <i v-else-if="item.level == 2" class="fas fa-battery-half"></i>
              <i v-else-if="item.level == 1" class="fas fa-battery-quarter"></i>
              <i v-else class="fas fa-battery-empty"></i>
            </span>
            <span>{{ item.title }}</span>
          </a>
        </p>
      </b-tab-item>
    </b-tabs>

    <h2 class="title is-4">Projects</h2>

    <div class="content">
      <h3 class="subtitle is-size-6">Lorem, ipsum dolor.</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore quis cum dolore repudiandae reprehenderit culpa explicabo sint aperiam illo nobis voluptatibus qui, ipsam eligendi ea doloribus, laboriosam iste voluptatem, tempore nesciunt exercitationem! Alias ipsum debitis nisi et inventore minus laudantium corporis natus, sunt iste. Repudiandae enim eaque tempora eos asperiores.</p>

      <h3 class="subtitle is-size-6">Lorem, ipsum dolor.</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore quis cum dolore repudiandae reprehenderit culpa explicabo sint aperiam illo nobis voluptatibus qui, ipsam eligendi ea doloribus, laboriosam iste voluptatem, tempore nesciunt exercitationem! Alias ipsum debitis nisi et inventore minus laudantium corporis natus, sunt iste. Repudiandae enim eaque tempora eos asperiores.</p>

      <h3 class="subtitle is-size-6">Lorem, ipsum dolor.</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore quis cum dolore repudiandae reprehenderit culpa explicabo sint aperiam illo nobis voluptatibus qui, ipsam eligendi ea doloribus, laboriosam iste voluptatem, tempore nesciunt exercitationem! Alias ipsum debitis nisi et inventore minus laudantium corporis natus, sunt iste. Repudiandae enim eaque tempora eos asperiores.</p>

      <h3 class="subtitle is-size-6">Lorem, ipsum dolor.</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore quis cum dolore repudiandae reprehenderit culpa explicabo sint aperiam illo nobis voluptatibus qui, ipsam eligendi ea doloribus, laboriosam iste voluptatem, tempore nesciunt exercitationem! Alias ipsum debitis nisi et inventore minus laudantium corporis natus, sunt iste. Repudiandae enim eaque tempora eos asperiores.</p>
    </div>
  </section>
</template>
<script>
export default {
  computed: {
    techFullList() {
      let list = [];
      this.techList.forEach(tech => {
        tech.items.forEach(item => {
          list.push(item);
        });
      });
      return list;
    }
  },
  data() {
    return {
      activeTech: 0,
      techList: [
        {
          id: 1,
          title: "Front-End",
          items: [
            {
              title: "Vue.js",
              url: "https://vuejs.org",
              level: 4
            },
            {
              title: "Bulma",
              url: "https://bulma.io",
              level: 4
            },
            {
              title: "Nuxt.js",
              url: "https://nuxtjs.org",
              level: 3
            },
            {
              title: "Buefy",
              url: "https://buefy.org",
              level: 3
            },
            {
              title: "Axios",
              url: "https://github.com/axios/axios",
              level: 4
            },
            {
              title: "React.js",
              url: "https://pt-br.reactjs.org",
              level: 1
            }
          ]
        },
        {
          id: 2,
          title: "Back-End",
          items: [
            {
              title: "PHP",
              url: "https://php.net",
              level: 4
            },
            {
              title: "Laravel",
              url: "https://laravel.com",
              level: 4
            },
            {
              title: "Node.js",
              url: "https://nodejs.org/en",
              level: 3
            },
            {
              title: "Express",
              url: "https://expressjs.com/pt-br",
              level: 2
            }
          ]
        },
        {
          id: 3,
          title: "DevOps",
          items: [
            {
              title: "AWS",
              url: "https://aws.amazon.com/pt",
              level: 4
            },
            {
              title: "Docker",
              url: "https://www.docker.com",
              level: 3
            },
            {
              title: "Debian",
              url: "https://www.debian.org/index.pt.html",
              level: 4
            },
            {
              title: "Apache",
              url: "https://www.debian.org/index.pt.html",
              level: 2
            },
            {
              title: "Nginx",
              url: "https://www.debian.org/index.pt.html",
              level: 2
            }
          ]
        },
        {
          id: 4,
          title: "Design",
          items: [
            {
              title: "Adobe XD",
              url: "https://www.adobe.com/br/products/xd.html",
              level: 4
            }
          ]
        }
      ]
    };
  },
  mounted() {
    this.$store.commit("CLOSE_MENU");
  }
};
</script>
