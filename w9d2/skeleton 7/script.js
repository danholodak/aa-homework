document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });
  const listForm = document.getElementById('listform');

  listForm.addEventListener('submit', event => {

    event.preventDefault();

    // Get the name input element, get the value, and clear it.
    const newPlaceInput = document.getElementsByClassName('favorite-input')
    const placeName = newPlaceInput[0].value;
    newPlaceInput[0].value = '';

    // Add a new li with the sheep's name to the sheep ul.
    const ul = document.getElementById('sf-places');
    const li = document.createElement('li');
    li.textContent = placeName;
    ul.appendChild(li);
  });

const dogFormButton  = document.getElementsByClassName('photo-show-button')
dogFormButton[0].addEventListener('click', event =>{
  const dogformcontainer = document.getElementsByClassName('photo-form-container');
  dogformcontainer[0].classList.toggle('hidden');
})

  // adding new photos

  // --- your code here!
  const photoForm = document.getElementById('photo-form');

  photoForm.addEventListener('submit', event => {

    event.preventDefault();

    // Get the name input element, get the value, and clear it.
    const urlInput = document.getElementsByClassName('photo-url-input')
    const dogurl = urlInput[0].value;
    urlInput[0].value = '';
    const dogformcontainer = document.getElementsByClassName('photo-form-container');
    dogformcontainer[0].classList.toggle('hidden');
    // Add a new li with the sheep's name to the sheep ul.
    const ul = document.getElementsByClassName('dog-photos');
    const img = document.createElement('img');
    img.src = dogurl;
    const li = document.createElement('li');
    li.appendChild(img);
    ul[0].appendChild(li);
  });



});
