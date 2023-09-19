<template>
  <section class="experience">
    <section class="techs">
      <h2 class="title is-4">Techs</h2>

      <b-tabs position="is-centered" class="block" v-model="activeTech">
        <b-tab-item label="All">
          <p class="buttons">
            <a
              v-for="(item, index) in techFullList"
              :key="index"
              :href="item.url"
              target="_blank"
              class="button is-light"
            >
              <span
                class="icon"
                :class="{ 'has-text-danger': item.level == 4 }"
              >
                <i v-if="item.level == 4" class="fas fa-heart"></i>
                <i
                  v-else-if="item.level == 3"
                  class="fas fa-battery-three-quarters"
                ></i>
                <i v-else-if="item.level == 2" class="fas fa-battery-half"></i>
                <i
                  v-else-if="item.level == 1"
                  class="fas fa-battery-quarter"
                ></i>
                <i v-else class="fas fa-battery-empty"></i>
              </span>

              <span>{{ item.title }}</span>
            </a>
          </p>
        </b-tab-item>

        <b-tab-item
          v-for="(tech, index) in techListSorted"
          :key="index"
          :label="tech.title"
        >
          <p class="buttons">
            <a
              v-for="(item, index) in tech.items"
              :key="index"
              :href="item.url"
              target="_blank"
              class="button is-light"
            >
              <span
                class="icon"
                :class="{ 'has-text-danger': item.level == 4 }"
              >
                <i v-if="item.level == 4" class="fas fa-heart"></i>
                <i
                  v-else-if="item.level == 3"
                  class="fas fa-battery-three-quarters"
                ></i>
                <i v-else-if="item.level == 2" class="fas fa-battery-half"></i>
                <i
                  v-else-if="item.level == 1"
                  class="fas fa-battery-quarter"
                ></i>
                <i v-else class="fas fa-battery-empty"></i>
              </span>
              <span>{{ item.title }}</span>
            </a>
          </p>
        </b-tab-item>
      </b-tabs>
    </section>
  </section>
</template>
<script>
function sortDescByLevel(a, b){
  return b.level - a .level;
}
export default {
  computed: {
    techFullList() {
      let list = [];
      this.techList.forEach((tech) => {
        tech.items.forEach((item) => {
          list.push(item);
        });
      });
      list.sort(sortDescByLevel);
      // list.sort((a, b)=> {
      //   return b.level - a .level;
      // })
      return list;
    },
    techListSorted(){
      let techs = []
      this.techList.forEach((tech) => {
        let items = tech.items;
        items.sort(sortDescByLevel);
        techs.push({
          id: tech.id,
          title: tech.title,
          items,
        })
      });
      return techs;
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
              level: 4,
            },
            {
              title: "React.js",
              url: "https://pt-br.reactjs.org",
              level: 4,
            },
            {
              title: "Nuxt.js",
              url: "https://nuxtjs.org",
              level: 4,
            },
            {
              title: "Next.js",
              url: "https://nextjs.org",
              level: 4,
            },
            {
              title: "Axios",
              url: "https://github.com/axios/axios",
              level: 4,
            },
            {
              title: "Web Sockets",
              url: "https://socket.io/",
              level: 4,
            },
            {
              title: "Bulma",
              url: "https://bulma.io",
              level: 3,
            },
            {
              title: "Tailwind CSS",
              url: "https://tailwindcss.com/",
              level: 3,
            },
            {
              title: "Buefy",
              url: "https://buefy.org",
              level: 3,
            },
            {
              title: "MUI",
              url: "https://mui.com/",
              level: 3,
            },
            {
              title: "Angular",
              url: "https://angular.io/",
              level: 2,
            },
            {
              title: "React Native",
              url: "https://facebook.github.io/react-native",
              level: 2,
            },
          ],
        },
        {
          id: 2,
          title: "Back-End",
          items: [
            {
              title: "Node.js",
              url: "https://nodejs.org/en",
              level: 4,
            },
            {
              title: "NestJS",
              url: "https://nestjs.com/",
              level: 4,
            },
            {
              title: "Express",
              url: "https://expressjs.com/pt-br",
              level: 4,
            },
            {
              title: "TypeScript",
              url: "https://www.typescriptlang.org",
              level: 4,
            },
            {
              title: "GraphQL",
              url: "https://graphql.org/",
              level: 4,
            },
            {
              title: "Zig",
              url: "https://ziglang.org/",
              level: 2,
            },
            {
              title: "Bun",
              url: "https://bun.sh/",
              level: 2,
            },
            {
              title: "C++",
              url: "https://cplusplus.com/",
              level: 2,
            },
            {
              title: "Python",
              url: "https://www.python.org/",
              level: 2,
            },
            {
              title: "FastAPI",
              url: "https://fastapi.tiangolo.com/",
              level: 2,
            },
            {
              title: ".NET",
              url: "https://learn.microsoft.com/en-us/dotnet/csharp/",
              level: 1,
            },
            {
              title: "PHP",
              url: "https://php.net",
              level: 3,
            },
            {
              title: "Laravel",
              url: "https://laravel.com",
              level: 3,
            },
          ],
        },
        {
          id: 3,
          title: "DevOps",
          items: [
            {
              title: "AWS",
              url: "https://aws.amazon.com/",
              level: 4,
            },
            {
              title: "Docker",
              url: "https://www.docker.com",
              level: 4,
            },
            {
              title: "Linux - Debian / Ubuntu",
              url: "https://www.debian.org/index.html",
              level: 4,
            },
            {
              title: "Apache",
              url: "https://www.apache.org/",
              level: 2,
            },
            {
              title: "Nginx",
              url: "https://www.nginx.com/",
              level: 4,
            },
            {
              title: "Kubernetes",
              url: "https://kubernetes.io/",
              level: 4,
            },
            {
              title: "Jenkins",
              url: "https://www.jenkins.io/",
              level: 3,
            },
            {
              title: "Terraform",
              url: "https://www.terraform.io/",
              level: 2,
            },
            {
              title: "Github Actions",
              url: "https://github.com/features/actions",
              level: 2,
            },
          ],
        },
        {
          id: 4,
          title: "Database",
          items: [
            {
              title: "MongoDB",
              url: "https://www.mongodb.com/",
              level: 4,
            },
            {
              title: "DynamoDB",
              url: "https://aws.amazon.com/pm/dynamodb/",
              level: 2,
            },
            {
              title: "Elastic Search",
              url: "https://www.elastic.co/",
              level: 3,
            },
            {
              title: "Redis",
              url: "https://redis.io/",
              level: 4,
            },
            {
              title: "MySQL",
              url: "https://www.mysql.com",
              level: 4,
            },
            {
              title: "MSSQL",
              url: "https://www.microsoft.com/en/sql-server",
              level: 2,
            },
            {
              title: "Oracle",
              url: "https://www.oracle.com/database",
              level: 3,
            },
          ],
        },
      ],
    };
  },
  mounted() {
    this.$store.commit("CLOSE_MENU");
  },
};
</script>
