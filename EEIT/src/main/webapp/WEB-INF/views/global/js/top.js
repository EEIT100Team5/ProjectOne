$(document).ready(function(){

    $('#regAcc').blur(function(){

            var inputAccount = $('#regAcc').val();
            
            $.ajax({
                url:"/EEIT/checkAccountDuplicate",
                type:"POST",
                data:{account : inputAccount},
                success:function(result){

                    if(result.result == true){
                        $('#accountCheck').text("帳號重複").addClass("alert alert-danger");
                    }else{
                        $('#accountCheck').text("帳號可用").addClass("alert alert-success");
                    }

                },
                error: function (e) {
                    console.log("ERROR : ", e);
                    alert(e);
                }



            })



    })




})

