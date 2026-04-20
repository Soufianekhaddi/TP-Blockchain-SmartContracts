# 🔗 TP1 : Introduction aux Smart Contracts (Solidity)

## 📌 Description du projet
Ce dépôt contient mon premier travail pratique sur le développement de Smart Contracts Ethereum utilisant le langage **Solidity**. L'objectif de ce TP est de comprendre les mécanismes de base du stockage d'état sur la blockchain et la gestion des transactions.

## 🛠️ Fonctionnalités du contrat (`TP1.sol`)
Le contrat implémente un système de stockage simple (*Simple Storage*) avec les fonctionnalités suivantes :
- **Variable d'état privée** pour sécuriser la donnée.
- **`setValeur`** : Une fonction transactionnelle (qui modifie l'état de la blockchain) pour mettre à jour la valeur. Elle intègre le modificateur `payable` pour accepter les transactions en Ether/Wei.
- **`getValeur`** : Une fonction de lecture (`view`) pour consulter la donnée sans frais de gaz.
- **`getSoldeContrat`** : Une fonction permettant d'auditer le solde actuel du contrat en cryptomonnaie.

## 🚀 Environnement de test
Ce code a été écrit, compilé (version `^0.8.0`) et déployé avec succès sur la machine virtuelle de **Remix IDE**.
