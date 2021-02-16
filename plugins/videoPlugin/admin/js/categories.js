$(document).ready(function(){
  $("#video").click(function(){
    if(this.checked){
      $("#videoSettings").removeClass("d-none");  // checked
      $("#videoSettings input*").attr("required","required");
    }else{
      $("#videoSettings").addClass("d-none");  // unchecked
      $("#videoSettings input*").removeAttr("required");
    }
  });
});