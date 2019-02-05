#install.packages('spatialEco')
#must be at least v3.4 or greater in r
#link to the docs:
#https://www.rdocumentation.org/packages/spatialEco/versions/1.1-1/topics/download.prism

library(spatialEco)

#doesn't work on 2015-2018
dates <- c('1981/1/1', '1982/1/1', '1983/1/1', '1984/1/1', 
           '1985/1/1', '1986/1/1', '1987/1/1', '1988/1/1',
           '1989/1/1', '1990/1/1', '1991/1/1', '1992/1/1',
           '1993/1/1', '1994/1/1', '1995/1/1', '1996/1/1',
           '1997/1/1', '1998/1/1', '1999/1/1', '2000/1/1',
           '2001/1/1', '2002/1/1', '2003/1/1', '2004/1/1', 
           '2005/1/1', '2006/1/1', '2007/1/1', '2008/1/1',
           '2009/1/1', '2010/1/1', '2011/1/1', '2012/1/1',
           '2013/1/1', '2014/1/1', '2015/1/1', '2016/1/1',
           '2017/1/1', '2018/1/1')

for(i in dates){
  print(i)
  download.prism('ppt', date.range=(replicate(2, i)), time.step='monthly',
                 download.folder = '/Users/davidleifer/Desktop/Geog531/Assignment2/data',
                 by.year=TRUE)
}
