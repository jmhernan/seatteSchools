# Look at the data and explore
data_dir <- '/Users/josehernandez/Google Drive/My Drive/ocr_data/EDFacts/CSV/'
data_files <- list.files(data_dir)

race_sch <- fread(paste0(data_dir, data_files[3]))

seattle <- race_sch %>%
  filter(NCESLEAID == 5307710)
