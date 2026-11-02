#!/bin/sh
# Genera index.html (GitHub Pages) a partir de app.html (fuente del artifact)
{
cat <<HEAD
<!doctype html>
<html lang="es">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
<meta name="theme-color" content="#1b1240">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-title" content="Dayla's Brain">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="description" content="Aprende a leer, escribir y contar jugando. Para niños desde los 4 años.">
<link rel="manifest" href="${PREFIX}manifest.webmanifest">
<link rel="icon" type="image/png" href="${PREFIX}icons/icon-192.png">
<link rel="apple-touch-icon" href="${PREFIX}icons/apple-touch-icon.png">
<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}img{max-width:100%}[hidden]{display:none!important}</style>
HEAD
cat app.html
printf '\n</html>\n'
} > "${OUT:-index.html}"
