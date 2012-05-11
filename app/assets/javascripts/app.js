var App = window.App = {
  // Put other existing namespaces here
  Common: {
    init: function(){
    },

    finish: function(){
    },
  },
  Static: {
    Index: function(){
      $(document).ready(function(){
        $('.follow .button').click(function(event){
          event.preventDefault()
          $('.social').slideDown(240)
        })
      })
    }
  }
};
