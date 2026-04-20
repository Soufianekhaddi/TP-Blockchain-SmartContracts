// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TP1 {
    
    uint private maVariable;

    // 1. Ajout du mot-clé "payable" ici
    // Désormais, cette fonction accepte de recevoir de la cryptomonnaie
    function setValeur(uint _nouvelleValeur) public payable {
        maVariable = _nouvelleValeur;
    }

    function getValeur() public view returns (uint) {
        return maVariable;
    }

    // 2. Fonction bonus pour vérifier l'argent stocké sur le contrat
    function getSoldeContrat() public view returns (uint) {
        // address(this).balance renvoie le solde actuel du contrat
        return address(this).balance; 
    }
}
