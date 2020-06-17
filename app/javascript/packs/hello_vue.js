import Vue from 'vue/dist/vue.esm'
import TurbolinksAdapter from 'vue-turbolinks'
import VueResource from 'vue-resource'

Vue.use(VueResource)

document.addEventListener('turbolinks:load', () => {
    Vue.http.headers.common['X-CSRF-Token'] = document.querySelector('meta[name="csrf-token"]').getAttribute('content')

    var element = document.getElementById("recipe-form")
    if (element != null) {
      var vm = this
      var id = element.dataset.id
      var recipe = JSON.parse(element.dataset.recipe)
      var recipe_id = recipe.id
      var recipe_errors = JSON.parse(element.dataset.recipeErrors)
      var hop_schedules_attributes = JSON.parse(element.dataset.hopSchedulesAttributes)
      var recipe_malts_attributes = JSON.parse(element.dataset.recipeMaltsAttributes)
      hop_schedules_attributes.forEach(function(schedule) { schedule._destroy = null });
      recipe_malts_attributes.forEach(function(schedule) { schedule._destroy = null });
      recipe.hop_schedules_attributes = hop_schedules_attributes
      recipe.recipe_malts_attributes = recipe_malts_attributes

        const app = new Vue({
            el: element,
            data: function() {
              return { id: id, recipe: recipe, recipe_errors: recipe_errors }
            },
            methods: {
              hasError: function() {
                 'is-invalid'
              },
              addHop: function(){
                this.recipe.hop_schedules_attributes.push({
                  id: null,
                  hop_id: "",
                  amount: "",
                  at: "",
                  unit: "",
                  _destroy: null
                })
              },

              addMalt: function(){
                this.recipe.recipe_malts_attributes.push({
                  id: null,
                  malt_id: "",
                  amount: "",
                  unit: "",
                  _destroy: null
                })
              },

              removeHop: function (index) {
                var hop = this.recipe.hop_schedules_attributes[index]

                if (hop.id == null) {
                  this.recipe.hop_schedules_attributes.splice(index, 1)
                } else {
                  this.recipe.hop_schedules_attributes[index]._destroy = "1"
                }
              },

              saveMalt: function (index) {
                var malt = this.recipe.recipe_malts_attributes[index]
                if (malt.id == null) {
                  this.$http.post(`/recipes/${this.id}/recipe_malts`, {recipe_malt: malt}).then(response => {
                    console.log(response)
                  }, error => {
                    console.log(error)
                  })
                } else {
                  this.$http.put(`/recipes/${this.id}/recipe_malts/${malt.id}`, {recipe_malt: malt}).then(response => {
                    console.log(response)
                  }, error => {
                    console.log(error)
                  })
                }
              },

              saveHopSchedule: function (index) {
                var hop = this.recipe.hop_schedules_attributes[index]
                if (hop.id == null) {
                  this.$http.post(`/recipes/${this.id}/hop_schedules`, {hop_schedule: hop}).then(response => {
                    console.log(response)
                  }, error => {
                    console.log(error)
                  })
                } else {
                  this.$http.put(`/recipes/${this.id}/hop_schedules/${hop.id}`, {hop_schedule: hop}).then(response => {
                    console.log(response)
                  }, error => {
                    console.log(error)
                  })
                }
              },

              saveRecipe: function() {
                if (this.id == null) {
                  this.$http.post('/recipes', { recipe: this.recipe }).then(response => {
                      Turbolinks.visit(`/recipes/${response.body.id}`)
                  }, error => {
                      this.recipe_errors = JSON.parse(error.bodyText);
                  })
                } else {
                  this.$http.put(`/recipes/${this.id}`, { recipe: this.recipe }).then(response => {
                      Turbolinks.visit(`/recipes/${response.body.id}`)
                  }, error => {
                      this.recipe_errors = JSON.parse(error.bodyText);
                  })
                }
              }
            }
        })
    }
})
