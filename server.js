const polka=require('polka');
const { PORT=8080 }=process.env;
polka().get('/',(req,res)=>{res.end('🪰 Fly.io + Iris');}).listen(PORT, err=>{
  if(err) throw err; console.log('Listening on', PORT);
});
