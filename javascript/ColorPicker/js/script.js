const text = document.querySelector('#colorText');
const color = document.querySelector('#colorPicker');



// 関数の指定方法は2パターンある
// const 関数名 = () => {}のアロー関数
// function 関数名(){}のfunction構文 function構文の方が古い書き方。

// const colorBg = () => {
//   text.textContent = `カラーコード：${color.value}`;
// }

// 'input'はタグを記述するのではなく、イベントを選択する（どうなったらの部分）
// colorBgは「colorBgという処理を実行してね」という意味
// color.addEventListener('input', colorBg);

// 無名関数
// あらかじめ関数を定義する必要が無いのがメリット。
color.addEventListener('input', ()=>{
  if (color.value === '#ffffff'){
    text.textContent = `カラーコード：${color.value}(white)`
  }else{
    text.textContent = `カラーコードは白ではありません`;
  };
  // cssのスタイルを当てる：要素.style.cssのプロパティ名=値;
  document.body.style.backgroundColor = color.value;
})
