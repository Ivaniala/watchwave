
function addToFavorites(movieId) {
    // Simpan semua elemen dengan kelas 'title'
    const titles = document.querySelectorAll('.title');
    
    // Ambil judul film dari elemen dengan kelas 'title'
    let movieTitle = "";
    titles.forEach(title => {
        movieTitle = title.textContent.trim(); // Ambil teks judul film dan hapus spasi di awal dan akhir
    });
    
    // Ambil daftar film favorit dari localStorage atau buat baru jika tidak ada
    let favorites = JSON.parse(localStorage.getItem('favorites')) || [];
    
    if (!favorites.includes(movieTitle)) {
        // Tambahkan ke favorit
        favorites.push(movieTitle);
        localStorage.setItem('favorites', JSON.stringify(favorites));
        alert('Movie added to favorites!');
    } else {
        // Hapus dari favorit
        favorites = favorites.filter(title => title !== movieTitle);
        localStorage.setItem('favorites', JSON.stringify(favorites));
        alert('Movie removed from favorites!');
    }
    
    // Redirect ke favorite.html setelah memodifikasi daftar favorit
    window.location.href = 'favorite.html';
}
