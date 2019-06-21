<template>
  <section>
    <h2 class="title is-4">Lorem, ipsum dolor.</h2>

    <p class="subtitle is-6">To: joaocrleite@gmail.com</p>

    <b-field label="Name" :message="errors.name" :type="errors.name ? 'is-danger' : ''">
      <b-input maxlength="50" v-model="form.name"></b-input>
    </b-field>

    <b-field label="Email" :message="errors.email" :type="errors.email ? 'is-danger' : ''">
      <b-input maxlength="50" v-model="form.email"></b-input>
    </b-field>

    <b-field label="Company" :message="errors.company" :type="errors.company ? 'is-danger' : ''">
      <b-input maxlength="50" v-model="form.company"></b-input>
    </b-field>

    <b-field label="Subject" :message="errors.subject" :type="errors.subject ? 'is-danger' : ''">
      <b-input maxlength="100" v-model="form.subject"></b-input>
    </b-field>

    <b-field label="Message" :message="errors.message" :type="errors.message ? 'is-danger' : ''">
      <b-input maxlength="200" type="textarea" v-model="form.message"></b-input>
    </b-field>

    <button class="button is-primary" @click="submit">
      <span>Send</span>
      <span class="icon">
        <i class="fas fa-paper-plane"></i>
      </span>
    </button>
  </section>
</template>
<script>
export default {
  data() {
    return {
      errors: {
        name: null,
        email: null,
        company: null,
        subject: null,
        message: null
      },
      form: {
        name: null,
        email: null,
        company: null,
        subject: null,
        message: null
      }
    };
  },
  methods: {
    submit() {
      this.$store.commit("START_LOADING");

      this.$axios
        .post("contact", this.form)
        .then(res => {
          this.$store.commit("STOP_LOADING");

          this.$toast.open({
              message: 'Success!',
              type: 'is-success'
          });

          for (var [key, value] of Object.entries(this.errors)) {
            this.errors[key] = null;
            this.form[key] = null;
          }

        })
        .catch(error => {
          this.$store.commit("STOP_LOADING");

          var errorBag = error.response.data.errors;

          for (var [key, value] of Object.entries(this.errors)) {
            if (errorBag.hasOwnProperty(key)) {
              var errorList = errorBag[key];

              if (errorList.length > 0) {
                this.errors[key] = errorList[0];
              }
            } else {
              this.errors[key] = null;
            }
          }

        });
    }
  },
  mounted(){
    this.$store.commit('CLOSE_MENU');
  }
};
</script>
