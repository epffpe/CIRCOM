.MODEL MODN NMOS LEVEL=6 
* ----------------------------------------------------------------------
************************* SIMULATION PARAMETERS ************************
* ----------------------------------------------------------------------
* format    : PSPICE
* model     : MOS BSIM3v2
* process   : CY[BE]
* revision  : ; 
* extracted : CYE I310SE00; 1997-03; ese(487)
* doc#      : 9933006 REV_B
* ----------------------------------------------------------------------
*                        TYPICAL MEAN CONDITION
* ----------------------------------------------------------------------
*
*        *** Flags ***
+SUBTHMOD=3.000e+00 SATMOD =2.000e+00 BULKMOD=1.000e+00 
*        *** Threshold voltage related model parameters ***
+
+K3     =6.483e+00 K3B    =4.676e-01 
+NPEAK  =1.477e+17 VTH0   =8.306e-01 
+VOFF   =-4.67e-02 DVT0   =2.288e+00 DVT1   =6.563e-01 
+DVT2   =-1.56e-01 KETA   =-2.64e-02 
+VBM    =-5.00e+00 PSCBE1 =4.700e+08 PSCBE2 =1.000e-05 
*        *** Mobility related model parameters ***
+UA     =1.000e-12 UB     =7.721e-19 UC     =2.029e-03 
+U0     =4.326e+02 
*        *** Subthreshold related parameters ***
+DSUB   =5.000e-01 ETA0   =6.627e-02 ETAB   =-2.12e-02 
+NFACTOR=6.544e-01 VGHIGH =1.500e-01 VGLOW  =-1.10e-01 
*        *** Saturation related parameters ***
+ETA    =3.000e-01 PCLM   =1.504e+00 
+PDIBL1 =2.165e-01 PDIBL2 =9.918e-04 DROUT  =5.000e-01 
+A0     =5.238e-01 A1     =0.000e+00 A2     =1.000e+00 
+PVAG   =2.544e-01 VSAT   =9.574e+06 
*        *** Geometry modulation related parameters ***
+LDD    =2.000e-07 W0     =1.410e-07 
*        *** Temperature effect parameters ***
+AT     =3.300e+04 UTE    =-1.80e+00 
+KT1    =-4.11e-01 KT2    =2.200e-02 KT1L   =0.000e+00 
+UA1    =0.000e+00 UB1    =0.000e+00 UC1    =0.000e+00 
*        *** Overlap capacitance related and dynamic model parameters   ***
+CGDO   =3.500e-10 CGSO   =3.500e-10 CGBO   =1.500e-10 
+XPART  =1.000e+00 
*        *** Parasitic resistance and capacitance related model parameters ***
+RDS0   =1.000e+00 RDSW   =1.871e+03 
+CDSC   =1.000e-05 CDSCB  =1.000e-08 CIT    =0.000e+00 
*        *** Process and parameters extraction related model parameters ***
+TOX    =1.585e-08 NSUB   =4.411e+16 
+XT     =1.200e-07 NLX    =1.000e-10 
*        *** Noise effect related model parameters ***
+AF     =1.451e+00 KF     =2.330e-26 
*        *** Common extrinsic model parameters ***
+LINT   =1.982e-07 WINT   =3.877e-07 XJ     =4.000e-07 
+RSH    =2.500e+01 JS     =1.000e-05 
+CJ     =2.900e-04 CJSW   =2.300e-10 
+MJ     =4.600e-01 MJSW   =3.300e-01 
+PB     =8.600e-01 TT     =0.0e+00 
+PBSW   =8.600e-01 
* ----------------------------------------------------------------------
.SUBCKT ND A C PARAMS: AREA=1e-12 PERI=4e-6
* ----------------------------------------------------------------------
************************* SIMULATION PARAMETERS ************************
* ----------------------------------------------------------------------
* format    : PSPICE
* model     : DIODE
* process   : CY[BE]
* revision  : ; 
* extracted : CYE I310SE00; 1997-03; ese(487)
* doc#      : 9933006 REV_B
* ----------------------------------------------------------------------
*                        TYPICAL MEAN CONDITION
* ----------------------------------------------------------------------
* TERMINALS: A=anode=P-region C=cathode=N-region
* VARIABLES: M (mulitiplier), AREA [m^2], PERI [m].
* NOTE: The role of a protection DIODE is to conduct ESD current to VDD 
* (or from VSS). This forward bias is NOT modelled, only leakage current 
* and capacitance during normal operation. Any inductive load etc that 
* will give forward bias, must be limited by other components to within 
* Operating Conditions, otherwise parasitic bipolar action can occur.
*
D1 A C NDINSUBA {AREA}
D2 A C NDINSUBS {PERI}
.ENDS ND
*
.MODEL NDINSUBA D 
+IS     =1.000e-05 N      =1.000e+00 
+CJO    =2.900e-04 M      =4.600e-01 VJ     =8.600e-01 
+TT     =0.000e+00 FC     =0.500e+00 
+EG     =1.110e+00 XTI    =3.000e+00 
+AF     =1.000e+00 KF     =0.000e+00
.MODEL NDINSUBS D
+IS     =1.000e-20 N      =1.000e+00 
+CJO    =2.300e-10 M      =3.300e-01 VJ     =8.600e-01 
+TT     =0.000e+00 FC     =0.500e+00  
+EG     =1.110e+00 XTI    =3.000e+00 
+AF     =1.000e+00 KF     =0.000e+00
* ----------------------------------------------------------------------
.MODEL MODP PMOS LEVEL=6 
* ----------------------------------------------------------------------
************************* SIMULATION PARAMETERS ************************
* ----------------------------------------------------------------------
* format    : PSPICE
* model     : MOS BSIM3v2
* process   : CY[BE]
* revision  : ; 
* extracted : CYE I310SE00; 1997-03; ese(487)
* doc#      : 9933006 REV_B
* ----------------------------------------------------------------------
*                        TYPICAL MEAN CONDITION
* ----------------------------------------------------------------------
*
*        *** Flags ***
+SUBTHMOD=3.000e+00 SATMOD =2.000e+00 BULKMOD=1.000e+00 
*        *** Threshold voltage related model parameters ***
+
+K3     =4.332e+00 K3B    =-3.15e-01 
+NPEAK  =3.000e+16 VTH0   =-7.34e-01 
+VOFF   =-5.80e-02 DVT0   =5.049e-01 DVT1   =9.483e-01 
+DVT2   =-3.82e-01 KETA   =-9.56e-03 
+VBM    =-5.00e+00 PSCBE1 =4.700e+08 PSCBE2 =1.000e-05 
*        *** Mobility related model parameters ***
+UA     =0.000e+00 UB     =2.001e-18 UC     =-2.36e-02 
+U0     =1.547e+02 
*        *** Subthreshold related parameters ***
+DSUB   =5.000e-01 ETA0   =8.573e-02 ETAB   =-1.01e-03 
+NFACTOR=3.174e-01 VGHIGH =1.500e-01 VGLOW  =-1.10e-01 
*        *** Saturation related parameters ***
+ETA    =3.000e-01 PCLM   =3.342e+00 
+PDIBL1 =5.069e-01 PDIBL2 =4.243e-04 DROUT  =5.000e-01 
+A0     =5.114e-01 A1     =0.000e+00 A2     =1.000e+00 
+PVAG   =1.537e+00 VSAT   =8.784e+06 
*        *** Geometry modulation related parameters ***
+LDD    =2.000e-07 W0     =0.000e+00 
*        *** Temperature effect parameters ***
+AT     =3.300e+04 UTE    =-1.49e+00 
+KT1    =-5.34e-01 KT2    =2.200e-02 KT1L   =0.000e+00 
+UA1    =0.000e+00 UB1    =0.000e+00 UC1    =0.000e+00 
*        *** Overlap capacitance related and dynamic model parameters   ***
+CGDO   =3.500e-10 CGSO   =3.500e-10 CGBO   =1.500e-10 
+XPART  =1.000e+00 
*        *** Parasitic resistance and capacitance related model parameters ***
+RDS0   =1.000e+00 RDSW   =4.100e+03 
+CDSC   =8.221e-04 CDSCB  =0.000e+00 CIT    =0.000e+00 
*        *** Process and parameters extraction related model parameters ***
+TOX    =1.585e-08 NSUB   =2.901e+16 
+XT     =3.000e-07 NLX    =3.109e-08 
*        *** Noise effect related model parameters ***
+AF     =1.279e+00 KF     =6.314e-29 
*        *** Common extrinsic model parameters ***
+LINT   =8.606e-08 WINT   =4.132e-07 XJ     =4.000e-07 
+RSH    =4.000e+01 JS     =4.000e-05 
+CJ     =4.900e-04 CJSW   =2.100e-10 
+MJ     =4.700e-01 MJSW   =2.900e-01 
+PB     =8.000e-01 TT     =0.0e+00 
+PBSW   =8.000e-01 
* ----------------------------------------------------------------------
.SUBCKT PD A C PARAMS: AREA=1e-12 PERI=4e-6
* ----------------------------------------------------------------------
************************* SIMULATION PARAMETERS ************************
* ----------------------------------------------------------------------
* format    : PSPICE
* model     : DIODE
* process   : CY[BE]
* revision  : ; 
* extracted : CYE I310SE00; 1997-03; ese(487)
* doc#      : 9933006 REV_B
* ----------------------------------------------------------------------
*                        TYPICAL MEAN CONDITION
* ----------------------------------------------------------------------
* TERMINALS: A=anode=P-region C=cathode=N-region
* VARIABLES: M (mulitiplier), AREA [m^2], PERI [m].
* NOTE: The role of a protection DIODE is to conduct ESD current to VDD 
* (or from VSS). This forward bias is NOT modelled, only leakage current 
* and capacitance during normal operation. Any inductive load etc that 
* will give forward bias, must be limited by other components to within 
* Operating Conditions, otherwise parasitic bipolar action can occur.
*
D1 A C PDINSUBA {AREA}
D2 A C PDINSUBS {PERI}
.ENDS PD
*
.MODEL PDINSUBA D 
+IS     =4.000e-05 N      =1.000e+00 
+CJO    =4.900e-04 M      =4.700e-01 VJ     =8.000e-01 
+TT     =0.000e+00 FC     =0.500e+00 
+EG     =1.110e+00 XTI    =3.000e+00 
+AF     =1.000e+00 KF     =0.000e+00
.MODEL PDINSUBS D
+IS     =1.000e-20 N      =1.000e+00 
+CJO    =2.100e-10 M      =2.900e-01 VJ     =8.000e-01 
+TT     =0.000e+00 FC     =0.500e+00  
+EG     =1.110e+00 XTI    =3.000e+00 
+AF     =1.000e+00 KF     =0.000e+00
* ----------------------------------------------------------------------
.SUBCKT MODNH D G S B PARAMS: W=1e-6 L=1e-6 AD=0 AS=0 PD=0 PS=0 NRD=0 NRS=0
* VARIABLES: W,L,AD,AS,PD,PS,NRD,NRS = standard MOSFET parameters
*
M1 D1 G S B MODNHINSUB W={W} L={L} AD={AD} AS={AS} PD={PD} PS={PS} NRD={NRD} NRS={NRS}
RD D1 D {4.097e+03*2.800e-06/W} TC=6.500e-03 
.ENDS MODNH
.MODEL MODNHINSUB NMOS LEVEL=6 
* ----------------------------------------------------------------------
************************* SIMULATION PARAMETERS ************************
* ----------------------------------------------------------------------
* format    : PSPICE
* model     : MOS BSIM3v2
* process   : CY[BEQ]
* revision  : ; 
* extracted : CYE I129IR00; 1997-03; ese(487)
* doc#      : 9933006 REV_B
* ----------------------------------------------------------------------
*                        TYPICAL MEAN CONDITION
* ----------------------------------------------------------------------
*
*        *** Flags ***
+SUBTHMOD=3.000e+00 SATMOD =2.000e+00 BULKMOD=1.000e+00 
*        *** Threshold voltage related model parameters ***
+
+K3     =6.483e+00 K3B    =4.676e-01 
+NPEAK  =1.681e+17 VTH0   =7.798e-01 
+VOFF   =-5.07e-02 DVT0   =2.288e+00 DVT1   =6.563e-01 
+DVT2   =-1.56e-01 KETA   =-2.64e-02 
+VBM    =-5.00e+00 PSCBE1 =8.857e+08 PSCBE2 =3.855e-07 
*        *** Mobility related model parameters ***
+UA     =1.000e-12 UB     =7.721e-19 UC     =2.029e-03 
+U0     =4.946e+02 
*        *** Subthreshold related parameters ***
+DSUB   =5.000e-01 ETA0   =6.627e-02 ETAB   =-2.12e-02 
+NFACTOR=6.544e-01 VGHIGH =1.500e-01 VGLOW  =-1.10e-01 
*        *** Saturation related parameters ***
+ETA    =3.000e-01 PCLM   =4.277e+00 
+PDIBL1 =2.165e-01 PDIBL2 =1.053e-02 DROUT  =5.000e-01 
+A0     =7.091e-01 A1     =0.000e+00 A2     =1.000e+00 
+PVAG   =2.544e-01 VSAT   =1.541e+07 
*        *** Geometry modulation related parameters ***
+LDD    =2.000e-07 W0     =1.410e-07 
*        *** Temperature effect parameters ***
+AT     =3.300e+04 UTE    =-1.80e+00 
+KT1    =-4.11e-01 KT2    =2.200e-02 KT1L   =0.000e+00 
+UA1    =0.000e+00 UB1    =0.000e+00 UC1    =0.000e+00 
*        *** Overlap capacitance related and dynamic model parameters   ***
+CGDO   =3.500e-10 CGSO   =3.500e-10 CGBO   =1.500e-10 
+XPART  =1.000e+00 
*        *** Parasitic resistance and capacitance related model parameters ***
+RDS0   =1.000e+00 RDSW   =1.810e+03 
+CDSC   =1.000e-05 CDSCB  =1.000e-08 CIT    =0.000e+00 
*        *** Process and parameters extraction related model parameters ***
+TOX    =1.585e-08 NSUB   =7.273e+15 
+XT     =1.200e-07 NLX    =1.000e-10 
*        *** Noise effect related model parameters ***
+AF     =1.451e+00 KF     =2.330e-26 
*        *** Common extrinsic model parameters ***
+LINT   =1.982e-07 WINT   =3.877e-07 XJ     =4.000e-07 
+RSH    =2.500e+01 JS     =1.000e-05 
+CJ     =2.900e-04 CJSW   =2.300e-10 
+MJ     =4.600e-01 MJSW   =3.300e-01 
+PB     =8.600e-01 TT     =0.0e+00 
+PBSW   =8.600e-01 
* ----------------------------------------------------------------------
