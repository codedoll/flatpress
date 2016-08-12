$(document).ready(function() {

	var now = moment();


	$( ".hr12" ).each(function( index ) {
	  console.log( $( this ).text() );
	  var dt = $(this).text()
	  console.log(moment(dt).format('DD-MM-YY'));
	});

	// console.log($( ".hr12" ).html());

});