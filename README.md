# Unity Care Clinic – Base de données SQL

Ce projet consiste à concevoir et implémenter une base de données robuste pour la plateforme web Unity Care Clinic, incluant un schéma SQL, un ERD, et une série d’exercices SQL couvrant CRUD, agrégations, jointures et vues. [web:2]

## 🎯 Objectifs

- Concevoir un modèle de données normalisé pour un système de gestion hospitalière (départements, personnel, patients, admissions, chambres, rendez-vous, médicaments, prescriptions). [web:2]  
- Produire le schéma SQL complet avec contraintes, index et vues, et réaliser 20 exercices + 5 bonus de jointures avancées. [web:2]  
- Assurer performance (index), qualité de données (contraintes), maintenance (tests) et sécurité (rôles, chiffrement). [web:2]  

## 🧭 Périmètre fonctionnel

- Gestion des départements et du personnel (médecins, staff administratif). [web:2]  
- Gestion des patients, admissions et affectation aux chambres. [web:2]  
- Planification et suivi des rendez-vous. [web:2]  
- Gestion des médicaments et des prescriptions. [web:2]  

## 📁 Structure du dépôt

- `sql/schema.sql` : Création des tables, clés primaires/étrangères, contraintes, index. [web:2]  
- `sql/seed.sql` : Jeu de données minimal pour les tests. [web:2]  
- `sql/queries_solutions.sql` : Solutions des 20 exercices + 5 requêtes bonus. [web:2]  
- `docs/ERD.png` : Diagramme Entité-Relation du système. [web:2]  
- `README.md` : Documentation du projet (ce fichier). [web:2]  

## 🗃 Modèle de données (aperçu)

- Tables attendues (indicatif) : `departments`, `doctors`, `staff`, `patients`, `rooms`, `admissions`, `appointments`, `medications`, `prescriptions`, éventuellement `users` / `roles`. [web:2]  
- Exigences de normalisation : relations claires, attributs précis, modèle extensible pour de futurs besoins. [web:2]  

## 🔐 Contraintes, index et sécurité

- Contraintes : `PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, `UNIQUE` (ex : email), `CHECK` (domaines, dates cohérentes). [web:2]  
- Index : colonnes fréquemment utilisées dans les requêtes (`doctor_id`, `patient_id`, `department_id`, `admission_id`, datetime de rendez-vous, etc.). [web:2]  
- Sécurité : chiffrement des données sensibles, gestion des rôles et des permissions d’accès. [web:2]  

## 🧪 Exercices SQL à couvrir (20)

1. Insert d’un patient “Alex Johnson”, né le 1990-07-15, sexe M, téléphone “1234567890”. [web:2]  
2. Sélection de tous les départements avec leurs emplacements. [web:2]  
3. Liste des patients triés par date de naissance croissante. [web:2]  
4. Genres uniques des patients avec `DISTINCT`. [web:2]  
5. Top 3 des médecins (exemple : par date de création ou ID). [web:2]  
6. Patients nés après 2000. [web:2]  
7. Médecins travaillant en “Cardiology” ou “Neurology”. [web:2]  
8. Admissions entre `2024-12-01` et `2024-12-07`. [web:2]  
9. Utilisation de `CASE` pour catégoriser l’âge : “Enfant/Adulte/Senior”. [web:2]  
10. Nombre total de rendez-vous (`COUNT`). [web:2]  
11. Nombre de médecins par département (`COUNT` + `GROUP BY`). [web:2]  
12. Âge moyen des patients (`AVG`). [web:2]  
13. Dernière date/heure de rendez-vous (`MAX`). [web:2]  
14. Total des admissions par chambre (`SUM` + `GROUP BY`). [web:2]  
15. Requête sur patients sans email (test de contraintes / qualité de données). [web:2]  
16. `JOIN` entre rendez-vous, médecins et patients pour afficher les noms. [web:2]  
17. Suppression des rendez-vous avant 2024. [web:2]  
18. Mise à jour du nom de département : “Oncology” → “Cancer Treatment”. [web:2]  
19. Genres ayant au moins 2 patients (`HAVING`). [web:2]  
20. Création d’une vue listant les admissions en cours. [web:2]  

## ⭐ Bonus – jointures avancées (5)

- Requête liant patients et médecins via `patients`, `admissions`, `doctors`. [web:2]  
- Rendez-vous avec le département du médecin. [web:2]  
- Médicaments prescrits par chaque médecin. [web:2]  
- Admissions et chambres associées avec détails. [web:2]  
- Statistiques patients par département via les admissions. [web:2]  

## 📌 Critères d’évaluation

| Aspect          | Attendu                                                                 |
|----------------|-------------------------------------------------------------------------|
| ERD            | Schéma clair, normalisé, relations bien définies, extensible. [web:2]  |
| SQL            | Requêtes correctes et optimisées, contraintes et index pertinents. [web:2] |
| Cohérence      | Alignement entre ERD et scripts SQL. [web:2]                           |
| Données        | Bon contrôle des transactions et intégrité des données. [web:2]        |
| Présentation   | Projet propre, structuré, documentation claire. [web:2]                |
| Évaluation     | > 70 % au QCM + réussite de la mise en situation pratique. [web:2]     |

## 📅 Modalités et livraison

- Travail individuel, durée : 3 jours. [web:2]  
- Lancement : 01/12/2025 à 10:00. [web:2]  
- Deadline : 03/12/2025 avant 17:00. [web:2]  
- Livrables : dépôt GitHub avec `README.md`, scripts SQL complets et ERD. [web:2]  

## 🔗 Ressources suggérées

- Articles / roadmaps SQL pour révision de la syntaxe et des bonnes pratiques. [web:2]  
- Exemples de schémas de gestion hospitalière comme inspiration (sans copier). [web:2]  

## ✅ Conseils de réalisation

- Commencer par l’ERD, puis générer le schéma SQL à partir du modèle. [web:2]  
- Ajouter un petit `seed.sql` pour tester toutes les requêtes demandées. [web:2]  
- Versionner régulièrement le travail avec Git et rédiger des messages de commit clairs. [web:2]  
