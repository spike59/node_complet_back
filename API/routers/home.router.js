const BaseRouter = require('./base.router');
const services = require('../services');

class HomeRouter extends BaseRouter{
    constructor(){
        super();
        this.add_routes();
    }
    add_routes = () => {
        this.router.post('/',async (req,res)=>{
            const response = await this.ct.index(req,res);
            res.status(response.status||200).json(response.data);
        } );

 
    }
}
module.exports = AuthRouter;