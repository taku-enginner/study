const loading = document.querySelector('#loading')

// ロードのイベントが起こったら（スタイルシートや画像など、すべてのリソースの読み込みが完了したとき）、
// クラスにloadedを加える。
window.addEventListener('load', ()=>{
  loading.classList.add('loaded');
})