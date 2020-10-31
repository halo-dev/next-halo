<#if settings.local_search_enable!false>
  <script type="text/javascript">

      var onPopupClose = function (e) {
          $('.popup').hide();
          $('#local-search-input').val('');
          $('.search-result-list').remove();
          $('#no-result').remove();
          $(".local-search-pop-overlay").remove();
          $('body').css('overflow', '');
      };

      function proceedsearch() {
          $("body").append('<div class="search-popup-overlay local-search-pop-overlay"></div>').css('overflow', 'hidden');
          $('.search-popup-overlay').click(onPopupClose);
          $('.popup').toggle();
          var $localSearchInput = $('#local-search-input');
          $localSearchInput.attr("autocapitalize", "none");
          $localSearchInput.attr("autocorrect", "off");
          $localSearchInput.focus();
      }
      // handle and trigger popup window;
      $('.popup-trigger').click(function (e) {
          proceedsearch();
      });

      $('.popup-btn-close').click(onPopupClose);
      $(document).keydown(function (event) {
          var keyword = $("#local-search-input").val();
          if (event.keyCode === 13 && document.getElementsByClassName("popup search-popup local-search-popup")[0].style.display === "block") {
              window.location.href="${blog_url!}/search?keyword="+keyword;
          }
      });
  </script>
</#if>
