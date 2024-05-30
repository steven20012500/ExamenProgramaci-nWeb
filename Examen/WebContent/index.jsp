<%@ include file="encabezado.jsp" %>
<title>Home</title>
<section class="container2">
   <h2>Bienvenido a EcoVida</h2>
        <p>Descubre nuestros productos y servicios que promueven un futuro más verde.</p>
        <button onclick="leerContenido()">Reproducir contenido</button>
        <iframe width="560" height="315" src="https://www.youtube.com/embed/S6Zxmc1sQnA?si=m24JSD25gTyqzEyP" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
</section>
<section class="container">
        <div class="left2">        
        
        <h2> Productos Sostenibles</h2>
            <img src="imagenes/Productos.jpg" alt="Productos" height="500" width= "auto">
             <a href="productos.jsp" class="cta">Explora Nuestros Productos</a>
             </div>
           <div class="right"> 
           <h2>Servicios sostenibles</h2>
             <img src="imagenes/servicios.jpg" alt="Servicios" height="500" width= "auto">
        
        <a href="servicios.jsp" class="cta"> Explora Nuestros Servicios</a>
        </div>
       
</section>
<section class="container3">
                   <button onclick="leerContenido2()">Reproducir contenido</button>
</section>
    <script>
        function leerContenido() {
            // Obtener el texto del contenido principal
            var contenido = document.querySelector('.container2').innerText;
            // Crear un objeto SpeechSynthesisUtterance con el texto
            var utterance = new SpeechSynthesisUtterance(contenido);
            // Reproducir el texto en voz
            window.speechSynthesis.speak(utterance);
        }

    </script>
    
    <script>
     function leerContenido2() {
            // Obtener el texto del contenido principal
            var contenido = document.querySelector('.container').innerText;
            // Crear un objeto SpeechSynthesisUtterance con el texto
            var utterance = new SpeechSynthesisUtterance(contenido);
            // Reproducir el texto en voz
            window.speechSynthesis.speak(utterance);
        }
    </script>

<%@ include file="piePag.jsp" %>
