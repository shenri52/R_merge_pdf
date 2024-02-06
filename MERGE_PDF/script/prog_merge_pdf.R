##################################################################################
# Ce script permet d'assembler plusieurs fichiers pdf en fonction d'un ou        #
# plusieurs mot contenus dans une liste de mot                                   #
#                                                                                #
# Exemple :                                                                      #
#     Dans le dossier "data", vous copiez :                                      #
#       * 10 fichiers pdf avec le mot BLEU dans le nom des fichiers              #
#       * 5 fichiers pdf avec le mot VERT dans le nom des fichiers               #
#     Dans la liste de mots, vous indiquez BLEU et VERT.                         #
#     Dans le dossier "result", vous aurez :                                     #
#       *  1 pdf avec les pages des 10 fichiers pdf qui avait le mot BLEU dans   #
#       le nom des fichiers                                                      #
#       *  1 pdf avec les pages des 5 fichiers pdf qui avait le mot VERT dans le #
#       nom des fichiers                                                         #
##################################################################################
# Fonctionnement                                                                 #   
#     1. Placer les fichiers pdf à assembler dans le dossier "data"              #
#     2. Modifier ou remplacer le fichier "Group_By_List", dans le dossier       #
#     "data", contenant la liste des mots servant à l'assemblage des pdf.        #
#        Le fichier :                                                            #
#           * ne doit avoir qu'une colonne nommée NOM                            #
#           * être au format CSV avec comme séparateur le ";"                    #
#     3. Lancer le script intitulé "prog_merge_pdf.R" qui se trouve dans         #
#     le dossier "script"                                                        #
#                                                                                #
# Résultat :                                                                     #
# Le ou les fichiers pdf assemblés se trouve dans le dossier 'result'.           #
##################################################################################


#################### Chargement des librairies

source("script/librairie.R")

#################### Suppression des fichiers gitkeep

source("script/suppression_gitkeep.R")

#################### Assemblage des pdf

source("script/merge_pdf.R")
