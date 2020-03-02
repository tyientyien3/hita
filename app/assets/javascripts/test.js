// 大区分
var a_options = ['タイ', 'カンボジア', 'フィリピン', 'ベトナム', 'ラオス', 'インドネシア', 'マレーシア', 'シンガポール'];

// 中区分
var b_options = [
  ['バンコク', 'チェンマイ', 'プーケット'],
  ['シェムリアップ', 'プノンペン'],
  ['マニラ', 'セブ', 'バギオ'],
  ['区分4-1', '区分4-2'],
  ['区分5-1', '区分5-2'],
  ['区分6-1', '区分6-2'],
  ['区分7-1', '区分7-2'],
];

  // 小区分
var c_options = [
  [
    ['北', '東', '南', '西'],
    ['区分1-2-1', '区分1-2-2'],
  ],
  [
    ['区分2-1-1', '区分2-1-2'],
    ['区分2-2-1', '区分2-2-2'],
  ],
]
$(function() {
 
  //
  // select要素を予め取得しておく
  //
  var $select_a = $('#select_a');
  var $select_b = $('#select_b');
  var $select_c = $('#select_c');
 
  //
  // 大区分決定時に中区分に選択肢を設定
  //
  $select_a.change(function(e) {
    var selected_a = $select_a.val();
    $('#select_b option').remove();
    b_options[selected_a].forEach(function(option_b, idx) {
      var $option_tag = $('<option>').val(idx).text(option_b);
      $select_b.append($option_tag);
    });
    $select_b.change();
  });
 
  //
  // 中区分決定時に小区分の選択肢を設定
  //
  $select_b.change(function(e) {
    var selected_a = $select_a.val();
    var selected_b = $select_b.val();
    $('#select_c option').remove();
    c_options[selected_a][selected_b].forEach(function(option_c, idx) {
      var $option_tag = $('<option>').val(idx).text(option_c);
      $select_c.append($option_tag);
    });
  });
 
  //
  // 大区分は固定なので最初に選択肢に追加する
  //
  a_options.forEach(function(option_a, idx) {
    var $option_tag = $('<option>').val(idx).text(option_a);
    $select_a.append($option_tag);
    $select_a.change();
  });
 
});