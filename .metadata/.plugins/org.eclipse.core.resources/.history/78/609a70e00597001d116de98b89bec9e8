


function charge(){
    let mem_sum = document.getElementById('mem_sum').value;
    console.log("js mem_sum 테스트 : "+mem_sum);
    $.ajax({
        url:'/mem/charge2', //Controller에서 요청 받을 주소
        type:'post', //POST 방식으로 전달
        data:{mem_sum:mem_sum},
        success:function(sum){ //컨트롤러에서 넘어온 isOK값을 받는다 
            console.log("컨트롤러에서 건너온 sum : "+sum);
            //document.getElementById('sum').value = isOk;
        },
        error:function(request,status,error){
        console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
        }	

    });
    };