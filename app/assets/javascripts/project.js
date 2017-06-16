$(function() {
  $('.slider').slick({
    infinite: true,
    slidesToShow: 1,
    slidesToScroll: 1,
    fade: true,
    autoplay: true,
    autoplaySpeed: 2000,
    pauseOnHover: false
  });

  $('.contents__pickup__sub li').mouseover(function(){
    $(this).css('opacity', '0.6').animate({'opacity': '1'}, 'slow');
  });

  $('.contents__main__sort__recommend').on("click", function() {
    $("#select-1").slideToggle("slow");
    });

  $('.contents__main__sort__project-status').on("click", function() {
    $("#select-2").slideToggle("slow");
    });

  $('#user-info').mouseover(function(){
    $(this).hide();
    $("#user-tab").show();
  });

  $('#user-tab').mouseout(function(){
    $("#user-tab").hide();
    $("#user-info").show();
  });
});
