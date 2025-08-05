function fetchMovies(genreId) {
    let url = 'get_movies.php';
    if (genreId !== 0) {
        url += '?genre_id=' + genreId;
    }
    fetch(url)
        .then(response => response.json())
        .then(movies => {
            const moviesCard = document.getElementById('movies-card');
            moviesCard.innerHTML = ''; 
            if (movies.length > 0) {
                movies.forEach(movie => {
                    const card = document.createElement('div');
                    card.className = 'cards';
                    card.innerHTML = `
                        <div class="card-img">
                            <img src="${movie.img_url}" alt="${movie.title}">
                        </div>
                        <div class="card-title">
                            <h3>${movie.title}</h3>
                            <p>${movie.genre_names}</p>
                        </div>
                    `;
                    moviesCard.appendChild(card);
                });
            } else {
                moviesCard.innerHTML = "<p>No movies found</p>";
            }
        })
        .catch(error => {
            console.error('Error fetching movies:', error);
        });
}
