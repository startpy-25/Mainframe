//*This jcl creates Usercatalogs and their Alias
//ICKDSF1 JOB (1),ICKDSF,CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1)             
//ICKDSF EXEC PGM=ICKDSF,REGION=4196K                                  
//SYSPRINT DD  SYSOUT=*                                                
//AAA100  DD UNIT=3350,VOL=SER=AA100,DISP=OLD                          
//AAA200  DD UNIT=3350,VOL=SER=AA200,DISP=OLD                          
//SYSIN   DD *                                                         
  /*THIS USER CATALOG CONTAINS NON-VSAM DS THAT RESIDE ON            */
  /*AAA100 VOLSER                                                    */
                                                                       
    DEFINE USERCATALOG ( -                                             
    NAME(UCAA100) -                                                    
    CYLINDERS(3) -                                                     
    FOR(9999) -                                                        
    BUFFERSPACE(8192) )                                                
  /*AN ALIAS IS DEFINED SO THAT ALL NON-VSAM DS WITH HIGH LEVEL      */
  /*QUALIFIER ARE CATALOGED IN THE USER CATALOG AAA100               */
                                                                       
   DEFINE ALIAS ( -                                                    
     NAME (AAA100) -                                                   
     RELATE(UCAAA100))                                                 
