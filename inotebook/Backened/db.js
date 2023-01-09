const mongoose=require('mongoose');
const mongoURI="mongodb+srv://inotebook:myhosting@cluster0.xtg8iqn.mongodb.net/?retryWrites=true&w=majority";
const connectToMongo=()=>{
    mongoose.connect(mongoURI,()=>{
        console.log("connected to mongodb");
    })
}
module.exports=connectToMongo;

