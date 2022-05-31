let navbar = document.querySelector('.header .navbar');

document.querySelector('#menu-btn').onclick = () => 

{
    navbar.classList.add('active');
}

document.querySelector('#nav-close').onclick = () =>
{
    navbar.classList.remove('active');
}



window.onscroll = () =>
{
    navbar.classList.remove('active');
     /*use Document method querySelector to find  the navigation bar with a CSS selector, 
    then use the classList property to add or remove a class from the element. */
    {

    if(window.scrollY > 0)
    
    {
        document.querySelector('.header').classList.add('active');
    }else
    {
        document.querySelector('.header').classList.remove('active');
    }
}
};

