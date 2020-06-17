<template>
  <div id="app">
    <div class="container"></div>
    <canvas
      v-for="i in 12"
      ref="tree"
      :key="i"
      data-processing-sources="pde/tree.pde"
    ></canvas>
    <canvas data-processing-sources="pde/giraffe.pde"></canvas>
  </div>
</template>
<script>
// import Logo from '~/components/Logo.vue'

export default {
  components: {},
  mounted() {},
  head() {
    return {
      script: [{ src: 'script/processing.min.js' }]
    }
  }
}
</script>

<style>
body {
  background: linear-gradient(
    to top,
    rgb(50, 30, 15),
    #f89174 30%,
    #ffc778 60%,
    #cca166 85%,
    #644e2f
  );
}
canvas {
  position: absolute;
  background-color: transparent;
}
.container {
  position: absolute;
  margin: 0 auto;
  min-height: 100vh;
  justify-content: center;
  align-items: center;
  text-align: center;
}

.title {
  font-family: 'Quicksand', 'Source Sans Pro', -apple-system, BlinkMacSystemFont,
    'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
  display: block;
  font-weight: 300;
  font-size: 100px;
  color: #35495e;
  letter-spacing: 1px;
}

.subtitle {
  font-weight: 300;
  font-size: 42px;
  color: #526488;
  word-spacing: 5px;
  padding-bottom: 15px;
}

.links {
  padding-top: 15px;
}
.tabs {
  position: absolute;
  width: 100vw;
  height: 10vh;
  background-color: beige;
}
</style>
