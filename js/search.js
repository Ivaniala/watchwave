$(document).ready(function() {
    // Daftar film
    const movies = [
        { title: "Spider-Man: Across the Spider-Verse", genre: "Animation, Action, Advanture", link : "spider.html"},
        { title: "My Demon", genre: "Drama, Romance, Fantasy", link: "mydemon.html"},
        { title: "Goblin", genre: "Drama, Romance, Fantasy", link:"goblin.html"},
        { title: "Descendants Of The Sun", genre: "Drama, Action, Romance", link:"dots.html"},
        { title: "The Batman", genre: "Crime, Action, Drama", link: "batman.html"},
        { title: "Air Mata di Ujung Sajadah", genre: "Drama, family", link : "airmata.html"},
        { title: "Welcome to Samdal-ri", genre: "Comedy, Drama, Romance", link: "welcometo.html"},
        { title: "Barbie", genre: "Comedy, Adventure, Fantasy", link: "barbie.html"},
        { title: "Gadis Kretek", genre: "Drama, History, Romance", link: "gadiskretek.html"},
        { title: "Petualangan Sherina 2", genre: "Drama, Adventure, Comedy", link: "sherina.html"},
        { title: "Laskar Pelangi", genre: "Adventure, Drama, Family"},
        { title: "Trolls Band Together", genre: "Comedy, Adventure, Animation"},
        { title: "Enola Holmes 2", genre: "Drama, Adventure, Action"},
        { title: "Train to Busan Peninsula", genre: "Action, Horror, Thriller"},
        { title: "The Devil Wears Prada", genre: "Drama, Comedy"},
        { title: "Ada Apa Dengan Cinta 2", genre: "Drama, Romance"},
        { title: "Dilan 1990", genre: "Drama, Romance"},
        { title: "Harry Potter", genre: "Family, Adventure, Fantasy"},
        { title: "The Family Plan", genre: "Action, Comedy"},
        { title: "Purple Hearts 2022", genre: "Drama, Romance"},
        { title: "Sewu Dino", genre:"Horror, Mystery, Thriller"}

        // Tambahkan daftar film lainnya
    ];

    // Toggle kotak pencarian saat ikon pencarian diklik
    $("#search-icon").click(function(event) {
        event.stopPropagation(); // Menghentikan event bubbling
        $(".search-box").toggle();
        $("#search-input").focus();
    });

    // Sembunyikan kotak pencarian saat mengklik di luar area pencarian
    $(document).click(function(event) {
        if (!$(event.target).closest('.search-box').length && !$(event.target).is('#search-icon')) {
            $(".search-box").hide();
        }
    });

    // Fungsi untuk menampilkan hasil pencarian
    function displayResults(results) {
        const resultsContainer = $("#search-results");
        resultsContainer.empty(); // Hapus hasil pencarian sebelumnya
    
        if (results.length > 0) {
            results.forEach(movie => {
                const movieItem = `
                    <div class="search-result-item">
                        <h3>${movie.title}</h3>
                        <p>${movie.genre}</p>
                    </div>
                `;
                const link = $("<a>")
                    .attr("href", movie.link)
                    .append(movieItem);
                resultsContainer.append(link);
            });
        } else {
            resultsContainer.append('<p>No results found</p>');
        }
    }
    

    // Aktifkan tombol pencarian
    $("#search-button").click(function() {
        var query = $("#search-input").val().toLowerCase();
        if (query) {
            // Lakukan pencarian film
            const results = movies.filter(movie => movie.title.toLowerCase().includes(query));
            displayResults(results);
        }
    });

    // Juga aktifkan pencarian saat menekan Enter di dalam input pencarian
    $("#search-input").keypress(function(event) {
        if (event.which == 13) { // 13 adalah kode untuk tombol Enter
            $("#search-button").click();
        }
    });
});
