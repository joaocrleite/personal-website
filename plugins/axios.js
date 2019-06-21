
export default function ({store, app: { $axios }}) {
  $axios.onRequest(config => {

    console.log('Making request to ' + config.url)

    console.log(store);

  })




}
