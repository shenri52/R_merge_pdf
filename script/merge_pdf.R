#################### Assemblage des pdf

# Chargement de la liste des mots
liste_nom <- read.csv("data/Group_By_Liste.csv",
                      sep = ";",
                      header = TRUE)

# Afficher une boîte de dialogue pour personnaliser le nom du fichier
nom_personnalise <- dlgInput("Personnalisé le nom des fichiers en sortie (par déaut : ASSEMBLAGE_MOT_D_ASSEMBLAGE)", default = "ASSEMBLAGE")$res

# Boucle permettant de lire les mots de la liste les 1 après les autres
# et d'assembler les fichiers correspondant

for (i in 1:nrow(liste_nom))
    {
      # Création d'une liste des fichiers contenant le mot à assembler
      mes_pdf <- list.files("data/",
                            pattern=(liste_nom$NOM[i]),
                            full.names = TRUE)
      
      # Définition du nom de sortie
      nv_nom <- paste(toupper(nom_personnalise), 
                      paste(liste_nom$NOM[i], sep ="", ".pdf"),
                      sep = "_")
      
      # Assemblage des pdf
      pdf_combine(
                  # Liste des pdf à assembler
                  input = mes_pdf,
                  # pdf assemblé
                  output = paste("result/", sep="", nv_nom )
                  )
    }
