console.log("The JS is activated");

$(document).ready(function(){
  $("#p_3").click(function(){
    $(this).hide();
  });
  $("#text_button").click(function(){
    $("p").fadeToggle("slow", function(){
      // alert("If you click on the button the first line will come back. But so will this alert.");
    });
  });

  $("#img_button").click(function(){
    $("#img").fadeToggle("slow", function(){
    });
  });
});

$(document).ready(function(){
  $("#demo").click(function(){
    $("ul").append("<li>New li element added!</li>");
  });
  $("#demo_2").click(function(){
    $("#test-div").append("<p>Test new paragraph</p><br>");
  });

//   var newElement = $("#test-div");
//   function addContent() {
//     newElement.append("<p>New content</p>");
// }
//   $("demo_2").on("click", addContent);

$(startup);
  function startup(){
  	var $pie = $("li:contains('pie')");
  	$('li').not($pie).hide();
  	$pie.each(doit);
  }
  function doit() {
  	$(this).css("color", "red");
  	$(this).append(' PIE!!');
  }
 
});






