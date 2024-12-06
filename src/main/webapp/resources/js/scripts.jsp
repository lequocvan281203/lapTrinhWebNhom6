// src/main/webapp/resources/js/scripts.js

// JavaScript code for client-side logic (if needed)

// Example: Add to cart functionality
const addToCartButtons = document.querySelectorAll('.add-to-cart');
addToCartButtons.forEach(button => {
  button.addEventListener('click', () => {
    // Get product ID from button data attribute
    const productId = button.dataset.productId;
    // Send AJAX request to add product to cart
    // ...
  });
});