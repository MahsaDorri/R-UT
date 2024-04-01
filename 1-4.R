########################################Loading Data######################################
n<- 20
w<-1:10
sf1<- data.frame(n,w)
save(n,w,sf1, file = '/Users/mahsadorri/Documents/UT-Data/R-UT/J1 data/newdataframe/df1.rdata')
rm(sf1,n,w)
load('/Users/mahsadorri/Documents/UT-Data/R-UT/J1 data/newdataframe/df1.rdata')

#####Excel --------------openxlsx library

library(openxlsx) #harbar bekhay estefade koni bayad in karo koni 
# bazi vaghta bayad libraries ro dar rtool install koni
data1<- read.xlsx('/Users/mahsadorri/Documents/UT-Data/R-UT/J1 data/DoctorData.xlsx')

########csv 
data2<- read.csv('/Users/mahsadorri/Documents/UT-Data/R-UT/J1 data/Heart data.csv')
head(data2)
tail(data2)
#hala miri data ro mibini miini. ke eeeee NA dari ye baresie alaki kardi ntaze
data2<- read.csv(file.choose())
# hala ye data set dg endakhti inam ye rahe digeie hala agar data2 ro baz koni mibini ke ina ? hast kheyli jaha
#####################################URL loading
url<- ''
data3<- read.csv()
#####################################
data()
########## in iris ro bekhoub va co2 ke moheman va baghiaram search on github
####################SQL
# Load the RODBC library
library(RODBC)

# Database connection parameters
server <- 'localhost'
database <- 'rdatabase'
user <- 'root'
# It's better to not hard-code your password in the script
# Consider using environment variables or a secure vault/keyring
# For demonstration, I'll keep it here but look into secure practices
password <- 'MahsaD@93' # This is just an example, replace it with a secure handling method

# Create the connection string
# Depending on your database, you might need a specific driver here
connection_string <- sprintf("Driver={MySQL ODBC 8.0 Driver};Server=%s;Database=%s;User=%s;Password=%s;", server, database, user, password)

# Establish the connection
db_connection <- odbcDriverConnect(connectionString=connection_string)

# Always check if the connection is successful
if(is.null(db_connection)) {
  stop("Failed to connect to the database.")
} else {
  print("Successfully connected to the database.")
}

# Use the connection (db_connection) for your operations...
# For example, to read a table named 'your_table', you could use:
# data <- sqlQuery(db_connection, "SELECT * FROM your_table")

# Don't forget to close the connection when you're done
close(db_connection)

