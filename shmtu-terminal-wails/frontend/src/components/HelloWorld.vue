<script lang="ts" setup>
import {reactive} from 'vue'
import {GetMap1, GetMap2, Greet1} from '../../wailsjs/go/main/App'

const data = reactive({
  name: "",
  resultText: "Please enter your name below 👇",
  myMap1: {},
  myMapArray: [],
})

function greet() {
  Greet1(data.name).then(result => {
    data.resultText = result
  })
}

function map1() {
  GetMap1().then(result => {
    data.myMap1 = result
  })
}

function map2() {
  GetMap2().then(result => {
    data.myMapArray = result
  })
}


</script>

<template>
  <main>
    <div id="result" class="result">{{ data.resultText }}</div>

    <button class="btn" @click="map1">map1</button>

    <div id="app">
      <div v-for="(value, key) in data.myMap1" :key="key">
        {{ key }}: {{ value }}
      </div>
    </div>

    <button class="btn" @click="map2">map2</button>

    <div id="app">
      <div v-for="(map, index) in data.myMapArray" :key="index">
        <div v-for="(value, key) in map">{{ key }}: {{ value }}</div>
      </div>
    </div>

    <div id="input" class="input-box">
      <input id="name" v-model="data.name" autocomplete="off" class="input" type="text"/>
      <button class="btn" @click="greet">Greet</button>
    </div>
  </main>
</template>

<style scoped>
.result {
  height: 20px;
  line-height: 20px;
  margin: 1.5rem auto;
}

.input-box .btn {
  width: 60px;
  height: 30px;
  line-height: 30px;
  border-radius: 3px;
  border: none;
  margin: 0 0 0 20px;
  padding: 0 8px;
  cursor: pointer;
}

.input-box .btn:hover {
  background-image: linear-gradient(to top, #cfd9df 0%, #e2ebf0 100%);
  color: #333333;
}

.input-box .input {
  border: none;
  border-radius: 3px;
  outline: none;
  height: 30px;
  line-height: 30px;
  padding: 0 10px;
  background-color: rgba(240, 240, 240, 1);
  -webkit-font-smoothing: antialiased;
}

.input-box .input:hover {
  border: none;
  background-color: rgba(255, 255, 255, 1);
}

.input-box .input:focus {
  border: none;
  background-color: rgba(255, 255, 255, 1);
}
</style>
