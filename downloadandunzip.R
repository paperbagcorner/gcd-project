# This script downloads and unzips the file at
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# to the current working directory.

downloadAndUnzip <- function(file_url) {
    destination <- basename(URLdecode(file_url))
    download.file(file_url, destfile = destination, method = "curl")
    date.downloaded <- date()
    writeLines(date.downloaded, 'date_downloaded.txt')

    unzip(destination)
}

downloadAndUnzip("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
