// Please see documentation at https://learn.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

// Write your JavaScript code.
document.addEventListener("mousemove", function(e){
    const cursor = document.querySelector(".cursor");
    cursor.style.left = e.clientX + "px";
    cursor.style.top = e.clientY + "px";
});