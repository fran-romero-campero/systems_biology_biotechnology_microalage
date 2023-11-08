###########################################################################
## Web page for the Research group on Systems Biology and Biotechnology  ##
## in Microalgae                                                         ##
## Authors: Fran Romero-Campero - fran@us.es                             ##
###########################################################################

# Necessary packages:
library(shiny) # app
library(shinythemes) # app

# Define UI
ui <- shinyUI(fluidPage(theme = shinytheme("flatly"),

  fluidRow(
    column(
      width = 2,
      img(src='logo_us.png', align = "center", width=150),
      tags$br(),
      radioButtons(inputId = "navigation_bar", width="100%",selected="home",
                   label="",
                   choices=c(
                     "Home" = "home",
                     "Members" = "members",
                     "Papers" = "papers",
                     "Projects" = "projects",
                     "Software tools" = "tools"
                     #"Data" = "data"
                     ))),
    column(
      width = 8,
      tags$div(align = "center", 
               # tags$h1(tags$b("Zzz... BONA Nitens!"), tags$br()),
               # tags$h2("Best multiOmic exploratioN of trAnscriptomic
               #         and metabolomic data in klebsormidium Nitens")),
      tags$h1(tags$b("Research Group on Systems Biology and Biotechnology in Microalgae")), 
      
      # Home:
      conditionalPanel(condition = "input.navigation_bar == 'home'",
                       tags$div(align = "justify",
                       tags$br(),tags$br(),
                       "Human world population is increasing drastically generating 
                       unprecedented needs for energy and food. The massive exploitation 
                       of fossil fuels to satisfy this energy demand is producing a high 
                       accumulation of CO2 in the atmosphere and the subsequent", tags$b("climate change."), 
                       "This is affecting crop yield and reducing land area suitable for agriculture, 
                       ultimately, increasing malnutrition and its associated human diseases. 
                       In the", tags$b("current climate emergency scenario"), "with energy and food shortage,",  
                       tags$b("microalgae"), "cultivation represents an opportunity as promising sources of sustainable biofuels, 
                       agricultural biostimulants, animal feed and human nutrients contributing to the
                       removal of the accumulating CO2. Nonetheless, the molecular mechanisms 
                       controlling the biosynthesis of compounds of biotechnological interest remain 
                       mostly uncharacterized in microalgae, hindering development of their full 
                       potential as cell-factories that could contribute substantially to solve these 
                       challenges. In our group we follow", tags$b("molecular systems biology"), "multidisciplinary 
                       approaches combining", tags$b("omics technologies with High Performance Computing and 
                       mathematical methods"), "to develop predictive models characterizing the molecular 
                       mechanisms controlling the functioning and physiology of microalgae to promote their",
                       tags$b("biotechnological applications."), "We follow 
                       an", tags$b("evolutionary methodology"), "in the characterization of these mechanisms extending
                       our studies to the", tags$b("green lineage or viridiplantae"), "focusing specifically in the terrestralization 
                       event during plant evolution. Our favourite model organisms are", tags$b(tags$i("Ostreococcus 
                       tauri, Chlamydomonas reinhardtii, Klebsormidium nitens, Marchantia polymorpha")), "and", 
                       tags$b(tags$i("Arabidopsis thaliana.")), "We also study the microalgae of industrial interest",
                       tags$b(tags$i("Haematococcus lacustris")), "and", tags$b(tags$i("Chromocloris zofingiensis")), 
                       "and crops such as", tags$b(tags$i("wheat or Triticum aestivium")), 
                       "and", tags$b(tags$i("tomato or Solanum lycopersicum.")),
                       tags$br(),
                       "Our group in part of the", tags$a(target="_blank", href="https://www.ibvf.us-csic.es/", 
                                                          tags$b("Institute for Plant Biochemistry and Photosynthesis (IBVF)")),
                       "in Seville (Spain) a join center between the", tags$b("University of Seville"), "and",
                       tags$b("Consejo Superior de Investigaciones Científicas (CSIC).")),
                       tags$br(),
                       tags$div(align="center",
                                img(src='quimiostatos.jpg', align = "center", width=400),tags$br(),
                                tags$b("Our photochemostat installations"), tags$br(),
                       ), tags$br(), tags$br(),
                       tags$div(align="center",
                                splitLayout(
                                 cellWidths = c("33%", "33%", "33%"),
                                 tags$div(
                                  img(src='ostreococcus_tauri.png', align = "center", width=200), tags$br(),
                                  tags$b("Ostreococcus tauri"), tags$br(),
                                 ),
                                 tags$div(
                                  img(src='klebsormidium_nitens.png', align = "center", width=200), tags$br(),
                                  tags$b("Klebsormidium nitens"), tags$br(),
                                 ),
                                 tags$div(
                                  img(src='chromocloris_zofingiensis.png', align = "center", width=200), tags$br(),
                                  tags$b("Chromochloris zofingiensis"), tags$br(),
                                  )
                                )), tags$br(), tags$br(),
                       tags$div(align="center",
                                splitLayout(
                                 cellWidths = c("33%", "33%", "33%"),
                                 tags$div(
                                  img(src='marchantia_polymorpha.png', align = "center", width=200), tags$br(),
                                  tags$b("Marchantia polymorpha"), tags$br(),
                                 ),
                                 tags$div(
                                  img(src='arabidopsis_thaliana.png', align = "center", width=200), tags$br(),
                                  tags$b("Arabidopsis thaliana"), tags$br(),
                                 ),
                                 tags$div(
                                  img(src='slycopersicum.png', align = "center", width=200), tags$br(),
                                  tags$b("Solanum lycopersicum"), tags$br(),
                                 )
                                )), tags$br(), tags$br(),
               # 
      ),
      
      # Members
      conditionalPanel(condition = "input.navigation_bar == 'members'",
                       tags$br(), tags$br(),
                       tags$div(align = "justify", "Our research group is multidisciplinary
                                constituted by molecular biologists, biochemists, computer and
                                data scientists. We are NOT organised into a pyramidal or hierarchical 
                                structure. We are just at different stages in our research careers and lifes
                                with different responsabilities, duties and roles within our group. Our goal 
                                is to produce a nurturing and stimulating environment in our group in which we 
                                all have fun, learn, discover and grow as scientists and people. We all are 
                                strongly committed to open, fair and ethical science. 
                                "),
                       tags$br(),
                       tags$h3(tags$b("Principal Investigators:")),
                       tags$br(),
                       tags$div(align="center",
                                splitLayout(
                                 cellWidths = c("33%", "33%", "33%"),
                                 tags$div(
                                  img(src='mercedes.jpg', align = "center", width=160), tags$br(),
                                  tags$b("Mercedes García-González"), tags$br(),
                                  tags$b("Biologist"), tags$br(), tags$b("Associate Professor")
                                 ),
                                 tags$div(
                                  img(src='fran.png', align = "center", width=160), tags$br(),
                                  tags$b("Francisco J. Romero-Campero"), tags$br(),
                                  tags$b("Computer and Data Scientist"), tags$br(), tags$b("Associate Professor")
                                 ),
                                 tags$div(
                                  img(src='inma_couso.png', align = "center", width=160), tags$br(),
                                  tags$b("Inmaculada Couso"), tags$br(),
                                  tags$b("Molecular Biologist"), tags$br(),tags$b("Tenure Track Researcher")
                                 )
                                )),
                       
                       tags$br(),tags$br(),
                       tags$h3(tags$b("Lab Technicians and Managers:")),
                       tags$br(),
                       
                       tags$div(align="center",
                                splitLayout(
                                 cellWidths = c("33%", "33%", "33%"),
                                 tags$div(
                                  img(src='elena.png', align = "center", width=140), tags$br(),
                                  tags$b("M. Elena García-Gómez"), tags$br(),
                                  tags$b("Biologist"), tags$br(),tags$b("Lab Technician/Manager")
                                 ),
                                )),
                       tags$br(),tags$br(),
                       tags$h3(tags$b("PhD Students:")),
                       tags$br(),
                       
                       tags$div(align="center",
                                splitLayout(
                                 cellWidths = c("50%", "50%"),
                                 tags$div(
                                  img(src='ana_belen.png', align = "center", width=230), tags$br(),
                                  tags$b("Ana B. Romero-Losada"), tags$br(),
                                  tags$b("Biochemist / Computer and Data Scientist"), tags$br(),tags$b("Substitute Teaching Tutor")
                                 ),
                                 tags$div(
                                  img(src='cristina.png', align = "center", width=150), tags$br(),
                                  tags$b("Christina Arvanitidou"), tags$br(),
                                  tags$b("Biologist / Computer and Data Scientist"), tags$br(),
                                  tags$b("PhD Student Funded by"), tags$br(), tags$b("the Andalusian Goverment")
                                 )
                                )),
                       
                       tags$div(align="center",
                                splitLayout(
                                 cellWidths = c("50%", "50%"),
                                 tags$div(
                                  img(src='emma.png', align = "center", width=150), tags$br(),
                                  tags$b("Emma Serrano-Pérez"), tags$br(),
                                  tags$b("Biochemist / Computer and Data Scientist"), tags$br(),
                                  tags$b("Master in Omics Data Analysis and Systems Biology"),tags$br(),
                                  tags$b("PhD Student Funded by the Ministry of Science and Innovation")
                                 ),
                                 tags$div(
                                  img(src='marcos.png', align = "center", width=150), tags$br(),
                                  tags$b("Marcos Ramos-González"), tags$br(),
                                  tags$b("Biochemist / Computer and Data Scientist"), tags$br(),
                                  tags$b("Master in Omics Data Analysis and Systems Biology"),tags$br(),
                                  tags$b("PhD Student FPU Funded by the Ministry of Science and Innovation")
                                 ),
                                )),
                       tags$div(align="center",
                                splitLayout(
                                 cellWidths = c("50%"),
                                 tags$div(
                                  img(src='roda.png', align = "center", width=180), tags$br(),
                                  tags$b("Rodrigo Bedera"), tags$br(),
                                  tags$b("Biochemist / Computer and Data Scientist"), tags$br(),
                                  tags$b("Master in Omics Data Analysis and Systems Biology"),tags$br(),
                                  tags$b("PhD Student FPU Funded by the Ministry of Science and Innovation")
                                 ),
                                )),
                       
                       
                       
                       
                       
                       
                       
                       
                       
                       
                       
                       tags$br(),tags$br(),
                       tags$h3(tags$b("Master Students:")),
                       #tags$br(),
                       
                       tags$div(align="center",
                                splitLayout(
                                 cellWidths = c("50%", "50%"),
                                 
                                 tags$div(
                                  img(src='andrea_garcia.jpg', align = "center", width=150), tags$br(),
                                  tags$b("Andrea García-Alcaide"), tags$br(),
                                  tags$b("Biotechnologist"), tags$br(),tags$b("Master in Omics Data Analysis and Systems Biology")
                                 ),
                                )),
                       
                       tags$h3(tags$b("Undergraduate Students:")),
                       tags$br(),tags$br(),
                       
                       tags$div(align="center",
                                splitLayout(
                                 cellWidths = c("50%"),
                                 tags$div(
                                  img(src='alberto_barrero.jpg', align = "center", width=180), tags$br(),
                                  tags$b("Alberto Barrero"), tags$br(),
                                  tags$b("Biochemist")
                                 ),
                                )),
                       
                       tags$h3(tags$b("Honorary Professor:")),
                       tags$br(),
                       
                       tags$div(align="center",
                                splitLayout(
                                 cellWidths = c("100%"),
                                 tags$div(
                                  img(src='mgg.jpg', align = "center", width=300), tags$br(),
                                  tags$b("Miguel García Guerrero"), tags$br(),
                                  tags$b("Biologist")
                                 )
                                )),
                       
                       tags$h3(tags$b("Some pictures of our team building days out:")),
                       tags$br(),tags$br(),
                       img(src='rbmp2022.jpeg', align = "center", width=500), tags$br(),
                       tags$b("September 2022 - XVI Meeting of Plant Molecular Biology (Seville)"), tags$br(),tags$br(),
                       img(src='chiclana.jpeg', align = "center", width=500), tags$br(),
                       tags$b("July 2022 - Beach in Chiclana (Cádiz)"), tags$br(),tags$br(),
                       img(src='entrerramas.jpeg', align = "center", width=500), tags$br(),
                       tags$b("July 2022 - Adventure Park Hanging in the Woods in Roche (Cádiz)"), tags$br(),tags$br(),
                       img(src='almuerzo_navidad.png', align = "center", width=500), tags$br(),
                       tags$b("December 2021 - Christmas Lunch in Seville"), tags$br(), tags$br(),tags$br(),
                       # 
     
                       tags$h3(tags$b("Former Members:")),
                       tags$br(),
                       
                       tags$div(
                        img(src='maria.png', align = "center", width=160), tags$br(),
                        tags$b("María Morales-Pineda"), tags$br(),
                        tags$b("Biochemist"), tags$br(),tags$b("Lab Technician")
                       ),
                       tags$div(
                        img(src='nuria.jpeg', align = "center", width=180), tags$br(),
                        tags$b("Nuria Membrives"), tags$br(),
                        tags$b("Biochemist"), tags$br(),tags$b("Lab Technician")
                       ),
                       tags$div(
                        img(src='jacob.png', align = "center", width=150), tags$br(),
                        tags$b("Jacob González-Isa"), tags$br(),
                        tags$b("Biochemist")
                       )
                       
                       
                       
                       
       ),
      
      
      
      # Papers
      conditionalPanel(condition = "input.navigation_bar == 'papers'",
                       tags$br(),tags$br(),
                       tags$div(align = "justify", "Below you can find a list of
                                the papers published by members of our group in
                                the last years:"),
                       tags$br(),
                       
                       tags$h2(tags$b("2023")),
                       
                       tags$div(align="justify",
                                tags$ul(
                                 
                                 tags$li(tags$a(target="_blank", href=" https://doi.org/10.1093/plcell/koad112", 
                                                "Yin X, Romero-Campero FJ, Yang M, Baile F, Cao Y, Shu J, Luo L, 
                                                Wang D, Sun S, Yan P, Gong Z, Mo X, Qin G, Calonje M, Zhou Y.(2023)", 
                                                tags$b("Binding by the Polycomb complex component BMI1 and H2A 
                                                       monoubiquitination shape local and long-range interactions in the Arabidopsis genome."), 
                                                "Plant Cell 35:2484-2503.
                                doi: 10.1093/plcell/koad112")),
                                 
                                 tags$br(),
                                 
                                 
                                 tags$li(tags$a(target="_blank", href="https://doi.org/10.3390/plants12010129", 
                                                "Morales-Pineda M, García-Gómez ME, Bedera-García R, García-González M,  
                                Couso I. (2023)", tags$b("CO2 Levels Modulate Carbon Utilization, 
                                Energy Levels and Inositol Polyphosphate Profile in Chlorella."), 
                                                "Plants 12:129.
                                doi: 10.3390/plants12010129")),
                                )),
                       
                       tags$br(),
                       
                       tags$h2(tags$b("2022")),
                       
                       tags$div(align="justify",
                       tags$ul(
                        
                        tags$li(tags$a(target="_blank", href="https://www.frontiersin.org/articles/10.3389/fpls.2022.855243/full", 
                               "Serrano-Pérez E, Romero-Losada AB, Morales-Pineda M, 
                                García-Gómez ME, Couso I, García-González M, 
                                Romero-Campero FJ. (2022)", tags$b("Transcriptomic and Metabolomic 
                                Response to High Light in the Charophyte Alga 
                                Klebsormidium nitens."), "Frontiers in Plant Science 13:855243.
                                doi: 10.3389/fpls.2022.855243")),
                        
                        tags$br(),
                        
                        tags$li(tags$a(target="_blank", href="https://bmcbioinformatics.biomedcentral.com/articles/10.1186/s12859-022-04639-5", 
                                       "Romero-Losada AB, Arvanitidou C, de Los Reyes P, García-González M, 
                                       Romero-Campero FJ. (2022)", tags$b("ALGAEFUN with MARACAS, microALGAE 
                                       FUNctional enrichment tool for MicroAlgae RnA-seq and Chip-seq AnalysiS ."), 
                                       "BMC Bioinformatics 23(1):113. doi: 10.1186/s12859-022-04639-5")),
                        tags$br(),
                        
                        tags$li(tags$a(target="_blank", href="https://pubs.acs.org/doi/10.1021/acs.jafc.1c08100", 
                                       "Fernández-Rodríguez MJ, de la Lama-Calvente D, García-González M, 
                                       Moreno-Fernández J, Jiménez-Rodríguez A, Borja R, Rincón-Llorente B. (2022)", 
                                       tags$b("Integral Valorization of Two-Phase 
                                       Olive Mill Solid Waste (OMSW) and Related Washing Waters by Anaerobic 
                                       Co-digestion of OMSW and the Microalga Raphidocelis subcapitata Cultivated 
                                       in These Effluents ."), 
                                       "J Agric Food Chem.70(10):3219-3227. doi: 10.1021/acs.jafc.1c08100"))
                        
                       )),
                       
                       tags$div(align="center", tags$h2(tags$b("2021"))),
                       
                       tags$div(align="justify",
                                tags$ul(
                                 tags$li(tags$a(target="_blank", href="https://nph.onlinelibrary.wiley.com/doi/10.1111/nph.17741", 
                                                "Couso I, Smythers AL, Ford MM, Umen JG, Crespo JL, Hicks LM. (2021)", 
                                                tags$b("Inositol polyphosphates and target of rapamycin kinase signalling 
                                                       govern photosystem II protein phosphorylation and photosynthetic 
                                                       function under light stress in Chlamydomonas ."), 
                                                "New Phytol. 232(5):2011-2025. doi: 10.1111/nph.17741.")),
                                 
                                 tags$br(),
                                 
                                 tags$li(tags$a(target="_blank", href="https://www.sciencedirect.com/science/article/abs/pii/S0960852421004892?via%3Dihub", 
                                                "Hoys C, Romero-Losada AB, Del Río E, Guerrero MG, Romero-Campero FJ, 
                                                García-González M. (2021)", tags$b("Unveiling the underlying molecular basis of astaxanthin 
                                                accumulation in Haematococcus through integrative metabolomic-transcriptomic analysis."), 
                                                "Bioresour Technol. 332:125150. doi: 10.1016/j.biortech.2021.125150.")),
                                 tags$br(),
                                 
                                 tags$li(tags$a(target="_blank", href="https://www.nature.com/articles/s41467-020-20614-1", 
                                                "Yin X, Romero-Campero FJ, de Los Reyes P, Yan P, Yang J, Tian G, Yang X, Mo X, Zhao S, 
                                                Calonje M, Zhou Y. (2021)", 
                                                tags$b("H2AK121ub in Arabidopsis associates with a less accessible chromatin state at 
                                                       transcriptional regulation hotspots."), 
                                                "Nat Commun. 12(1):315. doi: 10.1038/s41467-020-20614-1.")),
                                 
                                 tags$br(),
                                 
                                 tags$li(tags$a(target="_blank", href="https://academic.oup.com/plphys/article/187/1/88/6284975?login=false", 
                                                "Ojeda V, Jiménez-López J, Romero-Campero FJ, Cejudo FJ, Pérez-Ruiz JM. (2021)", 
                                                tags$b("A chloroplast redox relay adapts plastid metabolism to light and affects 
                                                       cytosolic protein quality control."), 
                                                "Plant Physiol. 187(1):88-102. doi: 10.1093/plphys/kiab246.")),
                                 
                                 tags$br(),
                                 
                                 tags$li(tags$a(target="_blank", href="https://academic.oup.com/nar/article/49/15/8757/6348197?login=false", 
                                                "Santamaría-Gómez J, Rubio MÁ, López-Igual R, Romero-Losada AB, Delgado-Chaves FM, 
                                                Bru-Martínez R, Romero-Campero FJ, Herrero A, Ibba M, Ochoa de Alda JAG, Luque I. (2021)", 
                                                tags$b("Role of a cryptic tRNA gene operon in survival under translational stress."), 
                                                "Nucleic Acids Res. 49(15):8757-8776. doi: 10.1093/nar/gkab661.")),
                                 
                                 tags$br(),
                                 
                                 tags$li(tags$a(target="_blank", href="https://www.frontiersin.org/articles/10.3389/fpls.2021.633979/full", 
                                                "Sánchez-Cabrera M, Jiménez-López FJ, Narbona E, Arista M, Ortiz PL, 
                                                Romero-Campero FJ, Ramanauskas K, Igić B, Fuller AA, Whittall JB. (2021)", 
                                                tags$b("Changes at a Critical Branchpoint in the Anthocyanin Biosynthetic 
                                                       Pathway Underlie the Blue to Orange Flower Color Transition in Lysimachia arvensis."), 
                                                "Front Plant Sci. 12:633979. doi: 10.3389/fpls.2021.633979.")),
                                 
                                 
                                 
                                )),
                       
                       
                       tags$div(align="center", tags$h2(tags$b("2020"))),
                       
                       tags$div(align="justify",
                                tags$ul(
                                 tags$li(tags$a(target="_blank", href="https://academic.oup.com/plcell/article/32/1/69/6099200?login=false", 
                                                "Couso I, Pérez-Pérez ME, Ford MM, Martínez-Force E, Hicks LM, Umen JG, Crespo JL. (2020)", 
                                                tags$b("Phosphorus Availability Regulates TORC1 Signaling via LST8 in Chlamydomonas."), 
                                                "Plant Cell. 32(1):69-80. doi: 10.1105/tpc.19.00179.")),

                                )),
                       
                       
                       tags$div(align="center", tags$h2(tags$b("2019"))),
                       
                       tags$div(align="justify",
                                tags$ul(
                                 tags$li(tags$a(target="_blank", href="https://bmcgenomics.biomedcentral.com/articles/10.1186/s12864-019-5430-x", 
                                                "Ruger-Herreros M, Parra-Rivero O, Pardo-Medina J, Romero-Campero FJ, Limón MC, Avalos J. (2019)", 
                                                tags$b("Comparative transcriptomic analysis unveils interactions between the regulatory CarS 
                                                       protein and light response in Fusarium."), 
                                                "BMC Genomics. 20(1):67. doi: 10.1186/s12864-019-5430-x.")),
                                 
                                )),
                       
                       tags$div(align="center", tags$h2(tags$b("2018"))),
                       
                       tags$div(align="justify",
                                tags$ul(
                                 tags$li(tags$a(target="_blank", href="https://academic.oup.com/jxb/article/69/6/1355/4557897?login=false", 
                                                "Couso I, Pérez-Pérez ME, Martínez-Force E, Kim HS, He Y, Umen JG, Crespo JL. (2018)", 
                                                tags$b("Autophagic flux is required for the synthesis of triacylglycerols and ribosomal
                                                       protein turnover in Chlamydomonas."), 
                                                "J Exp Bot. 69(6):1355-1367. doi: 10.1093/jxb/erx372.")),
                                 
                                )),
                       
                       
                       tags$div(align="center", tags$h2(tags$b("2017"))),
                       
                       tags$div(align="justify",
                                tags$ul(
                                 tags$li(tags$a(target="_blank", href="https://genomebiology.biomedcentral.com/articles/10.1186/s13059-017-1197-z", 
                                                "Zhou Y, Romero-Campero FJ, Gómez-Zambrano Á, Turck F, Calonje M. (2017)", 
                                                tags$b("H2A monoubiquitination in Arabidopsis thaliana is generally 
                                                       independent of LHP1 and PRC2 activity."), 
                                                "Genome Biol. 18(1):69. doi: 10.1186/s13059-017-1197-z.")),
                                 
                                 tags$br(),
                                 
                                 tags$li(tags$a(target="_blank", href="https://academic.oup.com/plphys/article/173/1/627/6116028?login=false", 
                                                "Merini W, Romero-Campero FJ, Gomez-Zambrano A, Zhou Y, Turck F, Calonje M. (2017)", 
                                                tags$b("The Arabidopsis Polycomb Repressive Complex 1 (PRC1) Components AtBMI1A, B, 
                                                       and C Impact Gene Networks throughout All Stages of Plant Development."), 
                                                "Plant Physiol. 173(1):627-641. doi: 10.1104/pp.16.01259.")),
                                 
                                 tags$br(),
                                 
                                 tags$li(tags$a(target="_blank", href="https://www.frontiersin.org/articles/10.3389/fpls.2017.01217/full", 
                                                "de Los Reyes P, Romero-Campero FJ, Ruiz MT, Romero JM, Valverde F. (2017)", 
                                                tags$b("Evolution of Daily Gene Co-expression Patterns from Algae to Plants."), 
                                                "Front Plant Sci. 8:1217. doi: 10.3389/fpls.2017.01217.")),
                                 
                                 tags$br(),
                                 
                                 tags$li(tags$a(target="_blank", href="https://www.sciencedirect.com/science/article/abs/pii/S1369526616301686?via%3Dihub", 
                                                "Serrano-Bueno G, Romero-Campero FJ, Lucas-Reina E, Romero JM, Valverde F. (2017)", 
                                                tags$b("Evolution of photoperiod sensing in plants and algae."), 
                                                "Curr Opin Plant Biol. 37:10-17. doi: 10.1016/j.pbi.2017.03.007.")),
                                 
                                 tags$br(), 
                                 
                                 tags$li(tags$a(target="_blank", href="https://www.frontiersin.org/articles/10.3389/fpls.2017.00626/full", 
                                                "Briones-Moreno A, Hernández-García J, Vargas-Chávez C, Romero-Campero FJ, 
                                                Romero JM, Valverde F, Blázquez MA. (2017)", 
                                                tags$b("Evolutionary Analysis of DELLA-Associated Transcriptional Networks."), 
                                                "Front Plant Sci. 8:626. doi: 10.3389/fpls.2017.00626.")),
                                 
                                 tags$br(), 
                                )),
      ),
      
      # Tools
      conditionalPanel(condition = "input.navigation_bar == 'tools'",
                       tags$br(),tags$br(),
                       tags$div(align = "justify", "One of the main goals of our group is
                                the development of software tools acting as enabling technologies
                                to promote systems biology studies in microalgae biotechnology in particular
                                and in the green lineage in general. Below
                                you can find a list of the software tools developed in our group:"),
                       tags$br(), tags$br(), tags$br(),
                       tags$div(align="left",
                        splitLayout(
                         cellWidths = c("20%", "80%"), 
                         img(src='logo_1.png', align = "center", width=100),
                         tags$a(target="_blank", href="https://greennetwork.us.es/AlgaeFUN/", 
                                tags$b("ALGAEFUN, microALGAE FUNctional enrichment tool"))
                         
                         )),
                       
                       tags$br(), tags$br(),
                       
                       tags$div(align="left",
                                splitLayout(
                                 cellWidths = c("20%", "80%"), 
                                 img(src='logo_1.gif', align = "center", width=100),
                                 tags$a(target="_blank", href="https://github.com/fran-romero-campero/MARACAS", 
                                        tags$b("MARACAS, MicroAlgae RnA-seq and Chip-seq AnalysiS"))
                                 
                                )),
                       
                       tags$br(), tags$br(),
                       
                       tags$div(align="left",
                                splitLayout(
                                 cellWidths = c("20%", "80%"), 
                                 img(src='logo_minotaur.png', align = "center", width=100),
                                 tags$a(target="_blank", href="https://greennetwork.us.es/MINOTAUR/", 
                                        tags$b("MINOTAUR, Multi-omics INtegration in Ostreococcus TAURi"))
                                 
                                )),
                       
                       tags$br(), tags$br(),
                       
                       tags$div(align="left",
                                splitLayout(
                                 cellWidths = c("20%", "80%"), 
                                 img(src='mole_knight.png', align = "center", width=100),
                                 tags$a(target="_blank", href="https://greennetwork.us.es/MOLE-KNIGHTS/", 
                                        tags$b("Mole Knights, MultiOmics anaLysis Exploration of Klebsormidium 
                                        NItens liGHT Stress"))
                                 
                                )),
                       
                       tags$br(), tags$br(),
                       
                       tags$div(align="left",
                                splitLayout(
                                 cellWidths = c("20%", "80%"), 
                                 img(src='attractor_logo_2.jpg', align = "center", width=100),
                                 tags$a(target="_blank", href="https://greennetwork.us.es/ATTRACTOR/", 
                                        tags$b("ATTRACTOR, Arabidopsis Thaliana TRanscriptionAl Circadian neTwORk"))
                                 
                                )),
                       
                       tags$br(), tags$br(),
                       
                       tags$div(align="left",
                                splitLayout(
                                 cellWidths = c("20%", "80%"), 
                                 img(src='bud.jpg', align = "center", width=100),
                                 tags$a(target="_blank", href="https://greennetwork.us.es/BRC1NET/", 
                                        tags$b("BRC1NET, BRC1 Downstream Transcriptional Network in Arabidopsis thaliana"))
                                 
                                )),
                       
                       tags$br(), tags$br(),
                       
                       # 
      ),
      
      # Projects
      conditionalPanel(condition = "input.navigation_bar == 'projects'",
                       tags$br(),tags$br(),
                       tags$div(align = "justify", "Below you can find a list of
                                the recent research projects developed or in progress 
                                in our group. Projects are sorted based on their final year:"),
                       
                       tags$h2(tags$b("2026")),
                       
                       tags$h4(align= "left",tags$b("Investigating INosITol polyphosphates 
                                                    InterAcTome in the context of CO2 capturing and carbon paRtitioning (INITIATOR)")),
                       
                       tags$div(align="justify",
                                tags$ul(
                                 tags$li(tags$b("Summary:"),
                                         "Mitigation of CO2 is one of the most important problems that governments are facing in the last decade. In fact, European Union is proposing a 40% reduction of its emissions by the end of 2030 in the latest Climate and Energy framework and it pretends to be climate-neutral by 2050 (https://ec.europa.eu/clima/policies/strategies). In this sense, biological CO2 capturing, photosynthesis and its molecular regulation is an ancient process that needs to be revisited in order to help in the reduction of this greenhouse gas.
In green microalgae, fixed CO2 is normally redirected to two different fates, cell growth (proteins) and carbon storage, mainly in the form of lipids and carbohydrates (starch) (Melis, 2013). In this sense, the use of these microorganisms for the production of biofuels is a good alternative to land crops because it lacks the main ethical implications on food/feed market and land use (Zhu et al., 2022). Thus, the understanding of the intracellular regulation of CO2 capturing and partitioning in green cells is fundamental in order to optimize their use. The green alga Chlamydomonas reinhardtii has been a perfect model for these kinds of studies. Actually, it has been used to describe the interaction between TOR kinase and the pyro-phosphorylated derivates of inositol polyphosphates (PP-InsPs) that controls carbon uptake and its final destination within these photosynthetic cells (Couso et al., 2016).  Until that time, the applicability of inositol polyphosphates (InsPs) in green organisms was limited to biofortification strategies in crop genetic engineering for enhanced mineral density in traits, as these molecules are potent chelating agents that impact de bioavailability of iron and zinc (Raboy, 2020; Wang et al., 2022). Based on our previous results, this project is designed under the prospective view of understanding and manipulating InsPs biosynthesis in microalgae in order to increase the applicability of these green cells in the biofuels and other high added value compounds production towards the global strategy of carbon reduction."),
                                 tags$li(tags$b("Funding Agency:"), "Ministry of Science and Innovation"),
                                 tags$li(tags$b("Principal Investigators:"), "Inmaculada Couso-Liañez"),
                                 tags$li(tags$b("Funding:"), "141.000,00€"),
                                 tags$li(tags$b("Dates:"), "12/2026")
                                )),
                       
                       
                       
                       tags$h2(tags$b("2025")),
                       
                       tags$h4(align= "left",tags$b("Evolution of Diurnal and Seasonal Rhythmic
Networks in Chlorophyta, Charophyta and Bryophyta (ELECTRA), PID2021-1239840B-I00")),
                       
                       tags$div(align="justify",
                                tags$ul(
                                 tags$li(tags$b("Summary:"),
                                         "The cultivation of photophrophic organisms represents an opportunity in the current climate emergency situation contributing to the
removal of part of the accumulating CO2 in the atmosphere and its transformation into plant biomass. Since the last century the use of
microalgae has been proposed for this purpose, due to the biotechnological characteristics of its cultivation. However, few initiatives have
reached industrial scale. Currently only few microalgae species are massively cultivated (Chlorella, Spirulina, Dunaliella and
Haematococcus) for products with very high added value (nutritional supplements, b-carotene, astaxanthin and more recently
biostimulants for plant growth). Among the limitations detected for the widespread implementation of these technologies is the low yield of
microalgae outdoors cultivation due to fluctuations in light and temperature and contamination by predators. Initiatives are being promoted
to cultivate microalgae indoors, with artificial light, to reduce the aforementioned inconveniences. This project aims to analyse the effects of
light regimes on microalgae cultures, studying in depth the transcription factors, identified in the previous project (MINOTAUR), which
control the expression of key genes in the biosynthetic pathways of compounds of biotechnological interest (carotenoids, starch,
phytohormones) in response to daily and seasonal light-dark cycles. For this study, the marine microalgae Ostrococcus tauri has been
selected for its genomic and proteomic simplicity and its interesting biochemical composition. Our research will be also extended to other
photosynthetic organisms considered the next links in the process of conquering dry land by plants, namely Klebsormidium nitens and
Marchantia polymorpha. The main goal of our project consist in determining the level of conservation of the diurnal and seasonal rhythmic
mechanisms controlling the biosynthesis of compounds of biotechnological interest. This will be achieved following a multidisciplinary
approach combining cultivation of these photosynthetic organisms under controlled conditions with omic technologies , integrative
multivariate analysis of massive data and network theory. Ultimately, our project seeks to construct the transcriptional network controlling
diurnal and seasonal rhythms and characterize its evolution in the green lineage history. The midterm application of our results will
represent an important progress in microalgae biotechnology, plant evolutionary biology and environmental sustainability."),
                                 tags$li(tags$b("Funding Agency:"), "Ministry of Science and Innovation"),
                                 tags$li(tags$b("Principal Investigators:"), "Francisco J. Romero-Campero, Mercedes García-González"),
                                 tags$li(tags$b("Funding:"), "96.800,00€"),
                                 tags$li(tags$b("Dates:"), "01/2023 - 12/2025")
                                )),
                       
                       tags$h2(tags$b("2024")),
                       
                       tags$h4(align= "left",tags$b("Identification of REgulatorS involved in the
accumulation of bIodiesel precursor fatty acids induced by Light and nItrogEN availability in
miCroalgaE (RESILIENCE), TED2021-129651B-I00")),
                       
                       
                       tags$div(align="justify",
                                tags$ul(
                                 tags$li(tags$b("Summary:"),
                                         "The cultivation of photophrophic organisms represents an opportunity in the current climate emergency, contributing to the removal of a
fraction of the CO2 that is accumulating in the atmosphere by transforming it into plant biomass. Since the last century, microalgae
cultivation, due to their biotechnological advantages, have been proposed as a sustainable solution to this problem. Nonetheless, few
initiatives have reached industrial scale. The potential of some microalgae for biofuel photoproduction is widely recognized, due to their
fast growth rate and ability to accumulate high levels of triacylglycerols with low requirements for land and high quality water. In spite of the
progress that have been achieved, microalgae application into biofuel production has not reached the expected development. The main
underlying limitations preventing microalgae full development as cell factories include those related to the selection and improvement of
suitable microalgae strains. Moreover, the complexity of the biological systems underlying microalgae physiology makes mandatory the
application of omics analysis based on mathematical/computational techniques such as those successfully applied in BigData projects.
The adequacy and preeminence of the microalgae Raphidocelis subcapitata for the generation of biodiesel precursor fatty acids over other
oleaginous microalgae has recently been demonstrated by our group. Under moderate nitrogen limitation R. subcapitata increases fatty
acid content and modifies their profile, altering the relationship between unsaturated and saturated fatty acids. This constitutes an ideal
lipid profile for the production of biodiesel. R. subcapitata potential in bioremediation has also been demonstrated in several applications. Specifically, our group has successfully used the nutrients contained
in olive processing waste residues as a growth media for this microalgae. In this way, contributing to the decontamination of these
discharges. The biomass thus obtained has been successfully tested as a raw material for biogas production. Multi-omics analysis based
on mathematical/computational techniques has also been recently applied by our research group for the identification of transcription
factors controlling the biosynthesis of the highly valuable carotenoid astaxanthin in the microalgae of industrial interest Haematococcus. All
this supports the use of R. subcapitata as an excellent natural biological resource and the application of multi-omics techniques in order to
contribute to a circular economy.
In order to contribute to the full development of R. subcapitata as a cell factory, in this project, we aim at the identification of the
transcriptional regulators controlling fatty acid metabolic pathways involved in the redistribution of carbon fixed by photosynthesis. The
identified transcription factors and their target DNA sequecnes would constitute candidates for genetic system engineering for the
optimazition of R. subcapitata as a biodiesel precursor fatty acids cell factory. This would contribute to improve the production of suitable
fatty acids for the generation of carbon-neutral biofuels progressing towards the stabilization of greenhouse gas concentrations in the
atmosphere, mainly CO2. This is a multidisciplinary project, where experiences in, molecular biology and microalgae biotechnology are
combined with those of bioinformatics, which guarantee an effective symbiosis to achieve the proposed objetives."),
                                 tags$li(tags$b("Funding Agency:"), "Ministry of Science and Innovation"),
                                 tags$li(tags$b("Principal Investigators:"), "Mercedes García-González, Francisco J. Romero-Campero"),
                                 tags$li(tags$b("Funding:"), "126.500,00€"),
                                 tags$li(tags$b("Dates:"), "01/2023 - 12/2024")
                                )),
                       
                       tags$br(),
                       tags$h4(align= "left",tags$b("Estudio del impacto de los Inositoles polifosfato en la regulación Redox y Estrategias para la Mitigación del Carbono en Algas Verdes - PARAGON.")),
                       
                       tags$div(align="justify",
                                tags$ul(
                                 tags$li(tags$b("Summary:"),""),
                                 tags$li(tags$b("Funding Agency:"), "Ministry of Science and Innovation"),
                                 tags$li(tags$b("Principal Investigators:"), "Inmaculada Couso"),
                                 tags$li(tags$b("Funding:"), ""),
                                 tags$li(tags$b("Dates:"), "01/2023 - 12/2024")
                                )),
                       
                       
                       tags$h2(tags$b("2023")),
                       
                       
                       tags$br(),
                       tags$h4(align= "left",tags$b("Estudio de la eficiencia de bioestimulantes innovadores derivados de microalgas para combatir los efectos adversos del cambio climático en tomate y trigo - Microclimatt. O00000226E2000044796")),
                       
                       tags$div(align="justify",
                                tags$ul(
                                 tags$li(tags$b("Summary:"),"The aim of this project is to highlight the essential role of agricultural biostimulants, in particular those made from microalgae biomass. It seeks to demonstrate the effectiveness of these innovative solutions derived from microalgae to efficiently fight the effects of climate change on crops such as tomatoe and wheat. MicroClimatt will evaluate the physiological and transcriptomic effects induced by treatment with novel microalgae biostimulants on these crops, including conditions that are directly or indirectly caused by climate change, such as water stress or poor fertilisation rates.

This project also aims to quantify the incorporation of carbon in the plant biomass of crops linked to increased productivity, to evaluate the increase of organic carbon incorporation in the soil sink and to study the improvement of soil fertility by treatment of crops with microalgae derivatives, as well as the improvement of soil quality, functionality and sustainability.
"),
                                 tags$li(tags$b("Funding Agency:"), "Ministry of Agriculture, Fisheries and Food."),
                                 tags$li(tags$b("Principal Investigators:"), "Francisco J. Romero-Campero, Mercedes García-González"),
                                 tags$li(tags$b("Funding:"), "96.497,71€"),
                                 tags$li(tags$b("Dates:"), "03/2021 - 03/2023")
                                )),
                       
                       img(src='microclimatt.png', align = "center", width=300),
                       
                       tags$br(),

                     
                       
                       
                       
                       

      ),
      
      
      
      # Data
      # conditionalPanel(condition = "input.navigation_bar == 'data'",
      #                  tags$div(align = "justify", "Data."),
      #                  tags$br()
      #                  # 
      # ),
      
      
      )),
    column(
     width = 2,
     img(src='logo_ibvf.jpg', align = "center", width=150),
     tags$br(),tags$br(),tags$br(),
     img(src='logo_csic.jpg', align = "center", width=150),
     tags$br(),tags$br(),
     tags$div(align = "center", width=60,
              HTML("<script type=\"text/javascript\" src=\"//rf.revolvermaps.com/0/0/8.js?i=5abx0bfgoj6&amp;m=7&amp;c=ff0000&amp;cr1=ffffff&amp;f=arial&amp;l=33\" async=\"async\"></script>"))
    )
  )
))  


server <- shinyServer(function(input, output, session) {
          
})

# Run the application 
shinyApp(ui = ui, server = server)