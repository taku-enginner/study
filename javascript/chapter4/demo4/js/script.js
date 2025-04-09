const btn = document.querySelector('#btn');

// id=btnの要素を変数に入れて、それがクリックされるイベントが起こるたびに、classListをトグルさせる。
// toggle：渡された引数が無かったら追加し、あったら削除する
btn.addEventListener('click', ()=>{
  document.body.classList.toggle('dark-theme');

  if(btn.textContent=='ダークモードにする'){
    btn.textContent="ライトモードにする";
  } else {
    btn.textContent = "ダークモードにする";
  }
});

