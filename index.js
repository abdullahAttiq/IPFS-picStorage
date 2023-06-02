 const Moralis =require("moralis").default;
 const fs = require("fs");
 require("dotenv").config();

 const fileUploads =[{
    path: "myPic.jpg",
    content: fs.readFileSync("./myPic.jpg",{encoding: "base64"}
    )
 }]

 async function uploadToIpfs(){
    await Moralis.start({
        apiKey:process.env.MORALIS_KEY
    })

    const response =await Moralis.EvmApi.ipfs.uploadFolder({
        abi: fileUploads
    })
    console.log(response.result)
 }
 uploadToIpfs();