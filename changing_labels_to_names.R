library(koboquest)
library(hypegrammaR)
library(xlsformfill)

questions <- read.csv("./input/questions.csv", stringsAsFactors = F)
choices <- read.csv("./input/choices.csv")

questionnaire <- load_questionnaire()


(choices$name == "cloth_uniform") %>% which
choices <- choices[-252,]
# generate data


response <- xlsform_fill(questions,choices,200)

analysisplan <- read.csv("./input/NGA_2019_MSNA_DAP.csv", stringsAsFactors = F)
dap_questions <- analysisplan$Questionnaire.Question
analysisplan <- analysisplan[-c(255:303),]


names(response)<-to_alphanumeric_lowercase(names(response))


questionnaire <- load_questionnaire(data = response,
                                    questions = questions,
                                    choices = choices)


questionnaire$question_get_question_label

rm(here)

lapply(dap_questions, function(i){
index <- (questions$label == i) %>% which
namez <- questions$name[index]
if(length(namez) == 0) namez <- 0
return(namez)}) 

b <- unlist(b)


analysisplan$names <- b
write.csv(analysisplan, "./input/analysisplan.csv")
