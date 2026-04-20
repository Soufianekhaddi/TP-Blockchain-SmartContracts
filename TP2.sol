// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TP2 {
    
    // Variable pour stocker le nombre valide
    int public nombreValide;

    // Fonction qui prend un nombre en paramètre et effectue la vérification
    function setNombrePositif(int _nombre) public {
        
        // 1. Vérification avec require
        // Si _nombre n'est pas strictement supérieur à 0, la transaction s'arrête ici
        require(_nombre > 0, "Erreur : Le nombre doit etre strictement superieur a zero !");
        
        // 2. Si on arrive ici, c'est que la condition est validée. On sauvegarde le nombre.
        nombreValide = _nombre;
    }
}
