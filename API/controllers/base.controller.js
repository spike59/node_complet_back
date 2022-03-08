const services = require('../services');

class BaseController{
    
    constructor(){
        this.name = this.constructor.name.replace(`Controller`,``);
        this.table = this.name.toLowerCase();        
        this.service = new services[this.table];
    }

}
module.exports  = BaseController;