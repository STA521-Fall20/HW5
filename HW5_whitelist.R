allowed_files = c("HW5.Rmd",
                  "HW5-Theory.Rmd",
                  "HW5-Theory.pdf",
                  "HW5.pdf",
                  "HW5.html",
                  "HW5_car.Rmd",
                  "HW5_car.pdf",
                  "HW5_car.html",
                  "README.md",
                  "HW5_cache",
                  "HW5_files",
                  "HW5_car_files",
                  "HW5_car_cache",
                  "HW5_whitelist.R",
                  "wercker.yml")

files = dir()
disallowed_files = files[!(files %in% allowed_files)]

if (length(disallowed_files != 0))
{
  cat("Disallowed files found:\n")
  cat("  (remove the following files from your repo)\n\n")

  for(file in disallowed_files)
    cat("*",file,"\n")

  quit("no",1,FALSE)
}
