function imgDelete(imageId){
            let url = "/image/" + imageId;
            fetch(url,{
                    method:"DELETE"
                }).then(function(res){
                    return res.text();
                }).then(function(res){
                    if(res === "ok"){
                        location.reload();
                    }
	    })
}