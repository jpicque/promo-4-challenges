$(function() {

 $(document).on('keyup', function(event) {
  // console.log(event.which);
 switch (event.which){
   case 65:
     $('#player1_race td.active').removeClass('active').next().addClass('active');
 }
 switch (event.which){
   case 80:
     $('#player2_race td.active').removeClass('active').next().addClass('active');
 }
 if ($('#player1_race td.finish').hasClass('active')) {
      alert('Player 1 win !!!')};

 if ($('#player2_race td.finish').hasClass('active')) {
      alert('Player 2 win !!!')};

 });
});


