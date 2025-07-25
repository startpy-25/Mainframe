//*This jcl creates Usercatalogs and their Alias
//UCAT001 JOB (1),ICKDSF,CLASS=A,MSGCLASS=H,MSGLEVEL=(1,1)             
//IDCAMS EXEC PGM=IDCAMS,REGION=4196K                                  
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
  /*QUALIFIER AAA100 ARE CATALOGED IN THE USER CATALOG UCAAA100      */
                                                                       
   DEFINE ALIAS ( -                                                    
     NAME (AAA100) -                                                   
     RELATE(UCAAA100))                                                 
                                                                         
  /*THIS USER CATALOG CONTAINS NON-VSAM AND VSAM OBJECTS THAT        */  
  /*RESIDE ON AAA200 VOLSER                                          */  
                                                                         
    DEFINE USERCATALOG ( -                                               
    NAME(UCAAA200) -                                                     
    CYLINDERS(8) -                                                       0002700
    FOR(9999) -                                                          0002800
    BUFFERSPACE(8192) )  -                                               0002900
      DATA(CYLINDERS(4)) -                                               0003000
      INDEX(CYLINDERS(4))                                                0003100

  /*AN ALIAS IS DEFINED SO THAT ALL NON-VSAM DS WITH HIGH LEVEL      */  0003200
  /*QUALIFIER AAA200 ARE CATALOGED IN THE USER CATALOG UCAAA200      */  0003300
                                                                         0003400
   DEFINE ALIAS ( -                                                      0003500
     NAME (AAA200) -                                                     0003600
     RELATE(UCAAA200))                                                   0003700
*/                                                                       0003800
//                                                                       0003900
