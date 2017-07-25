Class('Services.WimDragDrop', {

    Extends: Service,

    initialize: function() {
        Services.WimDragDrop.Super.call(this, '/api');
    },

    subscribe: function() {
     // Bus.subscribe('register', this.register.bind(this))
    }
})
