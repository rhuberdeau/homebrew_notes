/* eslint no-console: 0 */
// Run this example by adding <%= javascript_pack_tag 'hello_vue' %> (and
// <%= stylesheet_pack_tag 'hello_vue' %> if you have styles in your component)
// to the head of your layout file,
// like app/views/layouts/application.html.erb.
// All it does is render <div>Hello Vue</div> at the bottom of the page.

import Vue from 'vue/dist/vue.esm'

// document.addEventListener('DOMContentLoaded', () => {
//   var app = new Vue({
//     el: '#app',
//     data: {
//       message: 'Hello Vue!'
//     }
//   })
//
//   var app2 = new Vue({
//     el: '#app-2',
//     data: {
//       message: 'You loaded this page on ' + new Date().toLocaleString()
//     }
//   })
// })

document.addEventListener('turbolinks:load', () => {
  const app = new Vue({
    el: '#app',
    data: {
      message: "Can you say hello?"
    },
    components: { App }
  })

  const app2 = new Vue({
    el: '#app-2',
    data: {
      message: 'You loaded this page on ' + new Date().toLocaleString()
    }
  })

  Vue.component('todo-item', {
    // The todo-item component now accepts a
    // "prop", which is like a custom attribute.
    // This prop is called todo.
    props: ['todo'],
    template: '<li>{{ todo.text }}</li>'
  })

  Vue.component('schedule', {
    // The todo-item component now accepts a
    // "prop", which is like a custom attribute.
    // This prop is called todo.
    props: ['schedule'],
    template: `
    <div class="controls">
      <form action="/hop_schedules/2" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="✓">
        <input type="hidden" name="_method" value="patch"><input type="hidden" name="authenticity_token" value="ukoGZUiP8g4reggi0JXXML3YKPS4aIjezfv9HFktQV8ATWLhOETHqRO7OBTslV5GvmvwJ80f8ELVp099kT6cBA==">

          <div class="form-group">
            <div class="entry input-group">
              <input class="form-control" type="text" v-model="schedule.amount" name="hop_schedule[amount]">
              <select class="form-control" v-model="schedule.hop_id"><option value="1">Cascade</option></select>
              <input class="form-control" type="text" v-model="schedule.at" name="hop_schedule[at]">
              <span class="input-group-btn">
                <button class="btn btn-success btn-add" type="button">
                  <i class="fa fa-check"></i>
                </button>
                <button class="btn btn-danger btn-remove" type="button">
                  <i class="fa fa-minus-circle"></i>
                </button>
              </span>
            </div>
          </div>
      </form>
    </div>`

  })

  var app7 = new Vue({
    el: '#app-7',
    data: {
      schedules: [],
    },
    mounted() {
      var vm = this;

      $.getJSON('http://localhost:3000/hop_schedules.json', function (json) {
          vm.schedules = json;
      });
    }
  })
})


// The above code uses Vue without the compiler, which means you cannot
// use Vue to target elements in your existing html templates. You would
// need to always use single file components.
// To be able to target elements in your existing html/erb templates,
// comment out the above code and uncomment the below
// Add <%= javascript_pack_tag 'hello_vue' %> to your layout
// Then add this markup to your html template:
//
// <div id='hello'>
//   {{message}}
//   <app></app>
// </div>


// import Vue from 'vue/dist/vue.esm'
// import App from '../app.vue'
//
// document.addEventListener('DOMContentLoaded', () => {
//   const app = new Vue({
//     el: '#hello',
//     data: {
//       message: "Can you say hello?"
//     },
//     components: { App }
//   })
// })
//
//
//
// If the using turbolinks, install 'vue-turbolinks':
//
// yarn add 'vue-turbolinks'
//
// Then uncomment the code block below:
//
// import TurbolinksAdapter from 'vue-turbolinks';
// import Vue from 'vue/dist/vue.esm'
// import App from '../app.vue'
//
// Vue.use(TurbolinksAdapter)
//
// document.addEventListener('turbolinks:load', () => {
//   const app = new Vue({
//     el: '#hello',
//     data: {
//       message: "Can you say hello?"
//     },
//     components: { App }
//   })
// })
