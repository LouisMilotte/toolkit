/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*NOTES:
 * <p id="hidden">
  click me
</p>
<p>
  something
</p>
<p>
  something
</p>
<p>
  something
</p>
<p>
  something
</p>
<p style="display:none;" class="popup">
new content
</p>
.disabled {
  opacity: 0.1;
}



.popup{
  z-index: 999;
  position: absolute;
  top: 33%;
  left: 33%;
  border: 33% solid rgba(255, 255, 255, .5)
}

 */

$('#hidden').on('click', function() {
  $('p').not('.popup').each(function() {
    $(this).toggleClass('disabled');
  });
  $('.popup').attr("style","");
});
