
  let views = localStorage.getItem("views") || 0;
  views++;
  localStorage.setItem("views", views);

  let likes = localStorage.getItem("likes") || 0;

  document.getElementById("views").innerText = views;
  document.getElementById("likes").innerText = likes;

  document.getElementById("likeBtn").addEventListener("click", () => {
    likes++;
    localStorage.setItem("likes", likes);
    document.getElementById("likes").innerText = likes;
  });

