<h1 id="mensagem">Olá!</h1>

<script>
        // Obtém o idioma do navegador
        const idioma = navigator.language || navigator.userLanguage;

        // Seleciona o elemento de mensagem
        const mensagem = document.getElementById('mensagem');

        // Altera o texto com base no idioma
        if (idioma.startsWith('pt')) {
            mensagem.textContent = 'Olá! Bem-vindo ao nosso site!';
        } else if (idioma.startsWith('en')) {
            mensagem.textContent = 'Hello! Welcome to our website!';
        } else if (idioma.startsWith('es')) {
            mensagem.textContent = '¡Hola! ¡Bienvenido a nuestro sitio web!';
        } else {
            mensagem.textContent = 'Hello! Welcome to our website!';
        }
</script>
