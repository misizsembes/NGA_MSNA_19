


library(dplyr)



analysisplan<-read.csv("input/analysisplan.csv",
                       stringsAsFactors = F)


kobostandards::check_input(data = response,
                           analysisplan = analysisplan) 



myweights <- map_to_weighting( ... )

analysisplan_output <- from_analysisplan_map_to_output(data = response,analysisplan = 
                                                   analysisplan,
                                                   weighting = strata_weight_fun,
                                                   cluster_variable_name = "cluster_id",
                                                   questionnaire = questionnaire)



hypegrammaR:::map_to_generic_hierarchical_html(resultlist = analysisplan_output,
                                                 render_result_with = hypegrammaR:::from_result_map_to_md_table,
                                                 by_analysisplan_columns = c("hypothesis","dependent.var"),
                                                 by_prefix = c("Hypothesis:", "variable:"),
                                                 level = 2,
                                                 questionnaire = questionnaire,
                                                 label_varnames = TRUE,
                                                 dir = "./output",
                                                 filename = "education_answers.html"
                                                  
                                                  )





  
  
  
      
  
      






  















