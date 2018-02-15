
function turnover_card(){
  card = $( event.target );

  show_card( card );
  check_for_match();
}

function check_for_match(){
  cards = $( '.visible' );
  
  if (( cards.length == 2 ) && ( $( cards[ 0 ]).data( 'value' ) == $( cards[ 1 ]).data( 'value' ))){
    setTimeout( function(){ alert( 'Match!' ); }, 100 );
    setTimeout( function(){ remove_matched_cards(); }, 700 );
    return;
  }

  if ( cards.length == 2 ){
    setTimeout( function(){ hide_cards(); }, 1000 );
  }
}

function hide_cards(){
  cards = $( '.visible' );

  $.each( cards, function( index, card ){
    hide_card( card );
  });
}

function remove_matched_cards(){
  cards = $( '.visible' );

  $.each( cards, function( index, card ) {
    $( card ).attr( 'id', 'removed' );
    $( card ).data( 'suit', '' );
    $( card ).data( 'value', '' );
    $( card ).removeClass( 'visible' );
    $( card ).addClass( 'removed' );
    $( card ).html( '' );
  });
}

function show_card(){
  if ( $( '.visible' ).length == 2 )
    return;

  card.html( card.data( 'value' ) + card.data( 'suit' ));
  card.addClass( 'visible' );
}

function hide_card( card ){
  $( card ).html( '' );
  $( card ).removeClass( 'visible' );
}

function init(){
  $( 'div.card' ).click( turnover_card )
}

$(function() {
    init();
});