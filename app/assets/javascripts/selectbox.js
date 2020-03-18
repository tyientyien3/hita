$(function() {
  // 文字列
var region_names = $('.region_names').val();
// 文字列 => 配列
var b_options = JSON.parse(region_names);
// console.log(b_options);
  
  // select要素を予め取得しておく
  var $select_a = $('#user_country_id');
  var $select_b = $('#user_region_id');

  // country決定時にregionに選択肢を設定
  $select_a.change(function(e) {
    var selected_a = $select_a.val();
    $('#user_region_id option').remove();
    // value = 文字列
    b_options[selected_a - 1].forEach(function(value) {
      //　文字列 => 配列
      console.log(JSON.parse(value));
      reg = JSON.parse(value);

      var $option_tag = $('<option>').val(reg["id"]).text(reg["name"]);
      $select_b.append($option_tag);
    });
  });
});
