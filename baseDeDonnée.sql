create DATABASE "baseDeDonnéeProjetProg2";

\c baseDeDonnéeProjetProg2;


create TABLE "Produits"(
    id_produit int primary key ,
    nom_produit varchar (100) not null ,
    description_produit varchar (250) not null,
    prix_produit float not null,
    quatité_produit int 
)


create TABLE "MouvementDeStocksEntrée" (
    id_MouvementDeStockEntrée int primary key,
    quatité_concerné int ,
    date_mouvement timestamp 
);


create TABLE "MouvementDeStocksSortie" (
    id_MouvementDeStockSortie int primary key,
    quatité_concerné int ,
    date_mouvement timestamp 
);


create TABLE "Entrée"(
     id_produit int,
    id_MouvementDeStockEntrée int,
    CONSTRAINT fk_produits_entrée FOREIGN KEY (id_produit) REFERENCES "Produits" (id_produit),
    CONSTRAINT fk_mouvementDeStocksEntrée_entrée FOREIGN KEY (id_MouvementDeStockEntrée) REFERENCES "MouvementDeStocksEntrée" (id_MouvementDeStockEntrée)
);

create TABLE "Sortie"(
     id_produit int ,
       id_MouvementDeStockSortie int,
    CONSTRAINT fk_produits_sortie FOREIGN KEY (id_produit) REFERENCES "Produits" (id_produit),
    CONSTRAINT fk_mouvementDeStocksSortie_sortie FOREIGN KEY (id_MouvementDeStockSortie) REFERENCES "MouvementDeStocksSortie" (id_MouvementDeStockSortie)
);