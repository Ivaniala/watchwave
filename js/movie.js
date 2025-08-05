document.addEventListener("DOMContentLoaded", function() {
    const footerMoviesLink = document.querySelector(".movies-link");
    const moviesSection = document.querySelector(".movies");
    const footerTvSeriesLink = document.querySelector(".tv-series-link");
    const tvSeriesSection = document.querySelector(".tv-series");
    const footerCoomingSoonLink = document.querySelector(".cooming-soon-link");
    const coomingsoonSection = document.querySelector(".cooming-soon");


    if (footerMoviesLink && moviesSection) {
        footerMoviesLink.addEventListener("click", function(event) {
            event.preventDefault();
            moviesSection.classList.remove("hidden");
            moviesSection.scrollIntoView({ behavior: "smooth" });
        });
    } else {
        console.error("Movies link or section not found.");
    }

    if (footerTvSeriesLink && tvSeriesSection) {
        footerTvSeriesLink.addEventListener("click", function(event) {
            event.preventDefault();
            tvSeriesSection.scrollIntoView({ behavior: "smooth" });
        });
    } else {
        console.error("TV Series link or section not found.");
    }
    if (footerCoomingSoonLink && coomingsoonSection) {
        footerCoomingSoonLink.addEventListener("click", function(event) {
            event.preventDefault();
            coomingsoonSection.classList.remove("hidden");
            coomingsoonSection.scrollIntoView({ behavior: "smooth" });
        });
    } else {
        console.error("Movies link or section not found.");
    }
});