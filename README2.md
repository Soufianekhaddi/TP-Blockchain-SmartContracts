# TP2 : Contrôle de Flux et Validation d'Entrées en Solidity

## Objectif Technique
L'objectif de ce module est d'implémenter une couche de validation stricte au niveau du Smart Contract avant toute modification de l'état (State Change).

## Architecture du Contrat (`TP2.sol`)
Le contrat utilise le mécanisme de gestion d'erreurs natif de l'EVM (Ethereum Virtual Machine).

### Mécanismes implémentés :
- **Type de donnée :** Utilisation du type `int` (Signed Integer) pour permettre le test de valeurs négatives.
- **Gestion des Exceptions :** Utilisation de l'instruction `require(condition, message)`.
- **Analyse du Revert :** En cas de condition non remplie (nombre ≤ 0), le contrat déclenche un *revert* immédiat :
  - L'exécution est stoppée.
  - Le gaz non utilisé est remboursé (selon les règles de l'EVM).
  - L'état `nombreValide` reste inchangé, garantissant l'intégrité des données.

## Déploiement et Test (Remix IDE)
1. **Compilation :** `solc` version 0.8.x.
2. **Tests de validation :**
   - Input `10` -> ✅ Success (Transaction validée).
   - Input `-5` -> ❌ Revert (Message d'erreur : "Le nombre doit être strictement supérieur à zéro !").
   - Input `0` -> ❌ Revert.

---
**Développé par :** Soufiane Khaddi  
**Institution :** EMSI (École Marocaine des Sciences de l'Ingénieur)  
**Parcours :** 4ème année IIR
