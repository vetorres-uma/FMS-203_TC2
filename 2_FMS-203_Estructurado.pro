CoDeSys+d   ?                  FMS-203 (Monol?tico) @       1.0 @   2.3.9.59   victortorreslopez @?   Implementaci?n de la l?gica de control de 
la estaci?n de prensado hidr?ulico 
(FMS_203) del Sistema Did?ctico Modular 
de Ensamblaje Flexible de SMC
International Training
 
 
 @                             4?b +    @            p?             ?n?^        ?G   @   o   C:\TWINCAT\PLC\LIB\Iecsfc.lib @                                                                                          SFCACTIONCONTROL     
      S_FF                 RS   ??              L_TMR                    TON   ??              D_TMR                    TON   ??              P_TRIG                 R_TRIG   ??              SD_TMR                    TON   ??              SD_FF                 RS   ??              DS_FF                 RS   ??              DS_TMR                    TON   ??              SL_FF                 RS   ??              SL_TMR                    TON   ??           
      N            ??              R0            ??              S0            ??              L            ??              D            ??              P            ??              SD            ??	              DS            ??
              SL            ??              T           ??                 Q            ??                       4?b  ?   ????    q   C:\TWINCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               ??              STR2               ??                 CONCAT                                         4?b  ?   ????           CTD           M             ??           Variable for CD Edge Detection      CD            ??           Count Down on rising edge    LOAD            ??           Load Start Value    PV           ??           Start Value       Q            ??           Counter reached 0    CV           ??           Current Counter Value             4?b  ?   ????           CTU           M             ??            Variable for CU Edge Detection       CU            ??       
    Count Up    RESET            ??           Reset Counter to 0    PV           ??           Counter Limit       Q            ??           Counter reached the Limit    CV           ??           Current Counter Value             4?b  ?   ????           CTUD           MU             ??            Variable for CU Edge Detection    MD             ??            Variable for CD Edge Detection       CU            ??	       
    Count Up    CD            ??
           Count Down    RESET            ??           Reset Counter to Null    LOAD            ??           Load Start Value    PV           ??           Start Value / Counter Limit       QU            ??           Counter reached Limit    QD            ??           Counter reached Null    CV           ??           Current Counter Value             4?b  ?   ????           DELETE               STR               ??              LEN           ??              POS           ??                 DELETE                                         4?b  ?   ????           F_TRIG           M             ??
                 CLK            ??           Signal to detect       Q            ??           Edge detected             4?b  ?   ????           FIND               STR1               ??              STR2               ??                 FIND                                     4?b  ?   ????           INSERT               STR1               ??              STR2               ??              POS           ??                 INSERT                                         4?b  ?   ????           LEFT               STR               ??              SIZE           ??                 LEFT                                         4?b  ?   ????           LEN               STR               ??                 LEN                                     4?b  ?   ????           MID               STR               ??              LEN           ??              POS           ??                 MID                                         4?b  ?   ????           R_TRIG           M             ??
                 CLK            ??           Signal to detect       Q            ??           Edge detected             4?b  ?   ????           REPLACE               STR1               ??              STR2               ??              L           ??              P           ??                 REPLACE                                         4?b  ?   ????           RIGHT               STR               ??              SIZE           ??                 RIGHT                                         4?b  ?   ????           RS               SET            ??              RESET1            ??                 Q1            ??
                       4?b  ?   ????           SEMA           X             ??                 CLAIM            ??	              RELEASE            ??
                 BUSY            ??                       4?b  ?   ????           SR               SET1            ??              RESET            ??                 Q1            ??	                       4?b  ?   ????           TOF           M             ??           internal variable 	   StartTime            ??           internal variable       IN            ??       ?    starts timer with falling edge, resets timer with rising edge    PT           ??           time to pass, before Q is set       Q            ??	       2    is FALSE, PT seconds after IN had a falling edge    ET           ??
           elapsed time             4?b  ?   ????           TON           M             ??           internal variable 	   StartTime            ??           internal variable       IN            ??       ?    starts timer with rising edge, resets timer with falling edge    PT           ??           time to pass, before Q is set       Q            ??	       0    is TRUE, PT seconds after IN had a rising edge    ET           ??
           elapsed time             4?b  ?   ????           TP        	   StartTime            ??           internal variable       IN            ??       !    Trigger for Start of the Signal    PT           ??       '    The length of the High-Signal in 10ms       Q            ??	           The pulse    ET           ??
       &    The current phase of the High-Signal             4?b  ?   ????    R    @                                                                                          FB_CINTA_SFC           RUN             D /            Motor de la cinta activa [KA1]    REV             D 0       "    Motor de la cinta invierte [KA2]    R_1             D 1           Retenedor de pale baja [R+]    S_1             D 2           Separador de pale sube [S+]    INITIAL          (x := TRUE, _x := TRUE)                  SFCStepType                   S1                  SFCStepType                   S2                  SFCStepType                   S3                  SFCStepType                   S4                  SFCStepType                   S5                  SFCStepType                   S6                  SFCStepType                   S1A                  SFCStepType                   S2A                  SFCStepType                   S3A                  SFCStepType                   END                  SFCStepType                   Done__action                   SFCActionType                   R_1__action                   SFCActionType                   Ready__action                   SFCActionType                   RUN__action                   SFCActionType                   S_1__action                   SFCActionType                   Situado__action                   SFCActionType                   Transferido__action                   SFCActionType                      SFCPause            D 	              SFCReset            D 
           Indicadores de sincronizacion    Ack           D               Execute            D            Funcionalidades    Situar            D            
   Transferir            D            Parametros    TE    ?     D            Tiempo de entrada del pale    TR    ?     D            Tiempo del retenedor    TS    ?     D            Tiempo del separador    TT    ?     D        "    Tiempo de transferencia del pale    TX    ?     D            Tiempo de salida del pale 	      Done            D               Ready            D            Funcionalidades    Situado            D !              Transferido            D "           Parametros    CP           D %           Codigo de pale    pp           D (           Presencia de pale    cp0           D )           Codigo de pale bit 0    cp1           D *           Codigo de pale bit 1    cp2           D +           Codigo de pale bit 2             4?b  @  ????           FB_CLOCK           Timer                    TON   '            Auto-pilot timer       EN           '        	    ENabled    PT    ?     '            Semicycle time       ET           '            Elapsed time    Q            '            Square wave             4?b  @   ????        	   FB_FMS203           PE            O        3    Pulsador de parada de emergencia [EMERGENCY STOP]    SM            O            Selector de modo (AUT/MAN)    PM            O            Pulsador de marcha    PS           O            Pulsador de parada [STOP]    AS             O            Avisador sonoro    LA             O            Lampara de alarma    LM             O            Lampara de marcha    POC            O            PO conectada [RESET]    DPO             O             Desconecta PO    CLK                   FB_Clock   O #              Coordinador        "                                        FB_FMS203_SFC   O %              Cinta        *                                                FB_Cinta_SFC   O &           	   PickPlace        &                                            FB_PickPlace_SFC   O '              Prensa        *                                                FB_Prensa_SFC   O (                 PV          O        9    Valor inicial (pre-seleccion) del contador de maniobras    Reinicia            O 	           Reinicia el estado    RB            O            Rodamiento bajo       CI            O            Condiciones iniciales    CN           O        &    Valor actual de maniobras realizadas    CV           O        &    Valor actual de maniobras pendientes    Ready            O                        4?b  @  ????           FB_FMS203_SFC           INITIAL          (x := TRUE, _x := TRUE)                  SFCStepType                   S1                  SFCStepType                   S2                  SFCStepType                   S3                  SFCStepType                   S4                  SFCStepType                   S5                  SFCStepType                   S6                  SFCStepType                   END                  SFCStepType                   Carga__action                   SFCActionType                   Descarga__action                   SFCActionType                   Done__action                   SFCActionType                   Prensa__action                   SFCActionType                   Ready__action                   SFCActionType                   Situa__action                   SFCActionType                   Transfiere__action                   SFCActionType                
      SFCPause            )               SFCReset            ) 	           Indicadores de sincronizacion    Ack           )               Execute            )            Funcionalidades    Situado            )               Cargada            )               Prensado            )            
   Descargada            )               Transferido            )            Parametros    PV           )        9    Valor inicial (pre-seleccion) del contador de maniobras       Done            )               Ready            )            Funcionalidades    Situa            )               Carga            )                Prensa            ) !              Descarga            ) "           
   Transfiere            ) #                 CN           ) &       &    Valor actual de maniobras realizadas    CV           ) '       &    Valor actual de maniobras pendientes         4?b  @   ????           FB_PICKPLACE_SFC           A_0             S '           Pick and place atras [A-]    A_1             S (           Pick and place adelante [A+]    V_1             S )           Pick and place succiona [V+]    INITIAL          (x := TRUE, _x := TRUE)                  SFCStepType                   S1                  SFCStepType                   S2                  SFCStepType                   S3                  SFCStepType                   S4                  SFCStepType                   S5                  SFCStepType                   S6                  SFCStepType                   S1A                  SFCStepType                   S2A                  SFCStepType                   S3A                  SFCStepType                   S4A                  SFCStepType                   S5A                  SFCStepType                   S6A                  SFCStepType                   END                  SFCStepType                   A_0__action                   SFCActionType                   A_1__action                   SFCActionType                   Cargada__action                   SFCActionType                   Descargada__action                   SFCActionType                   Done__action                   SFCActionType                   Ready__action                   SFCActionType                   V_1__action                   SFCActionType                      SFCPause            S               SFCReset            S            Indicadores de sincronizacion    Ack           S               Execute            S            Funcionalidades    Cargar            S            	   Descargar            S                  Done            S               Ready            S            Funcionalidades    Cargada            S            
   Descargada            S        
    Entradas    a0           S             Pick and place detras    a1          S !           Pick and place en medio    a2           S "           Pick and place delante    v1           S #           Pick and place vacio             4?b  @  ????           FB_PRENSA_SFC           B_1             ^ $       (    Cilindro de introduccion adelante [B+]    C_1             ^ %       &    Cilindro de extraccion adelante [C+]    D_1             ^ &           Protector baja [D+]    E_0             ^ '           Prensa sube [E-]    E_1             ^ (           Prensa baja [E+]    KC1             ^ )           Prensa activa motor    INITIAL          (x := TRUE, _x := TRUE)                  SFCStepType                   S1                  SFCStepType                   S2                  SFCStepType                   S3                  SFCStepType                   S4                  SFCStepType                   S5                  SFCStepType                   S6                  SFCStepType                   S7                  SFCStepType                   S8                  SFCStepType                   S9                  SFCStepType                   END                  SFCStepType                   B_1__action                   SFCActionType                   C_1__action                   SFCActionType                   D_1__action                   SFCActionType                   Done__action                   SFCActionType                   E_0__action                   SFCActionType                   E_1__action                   SFCActionType                   KC1__action                   SFCActionType                   Ready__action                   SFCActionType                      SFCPause            ^               SFCReset            ^            Indicadores de sincronizacion    Ack           ^               Execute            ^            Parametros    RB            ^            Rodamiento bajo    TG    ?     ^        +    Tiempo de activacion del grupo hidraulico    TP    ?     ^            Tiempo subida del protector 
      Done            ^               Ready            ^        
    Entradas    b0          ^        !    Cilindro de introduccion detras    b1           ^        "    Cilindro de introduccion delante    c0          ^            Cilindro de extraccion detras    c1           ^             Cilindro de extraccion delante    d1           ^            Protector abajo    e0          ^            Prensa arriba    e1           ^            Prensa abajo rodamiento alto    e2           ^             Prensa abajo rodamiento bajo             4?b  @  ????           MAIN           FMS203                                	   FB_FMS203     #                               4?b  @   ????           
 ?   	   &   O   ^   S   D   ( dI      K   rI     K   ?I     K   ?I     K   ?I                 ?I         +     ??localhost ?ژw   l?     ??- U?V?H^??X??? ?? x? ?? 5?.wS?	 ????w+2w*2wl?           l?       ?? D?? ?\?   X^?`? x(2w`^?F  x? x? uu? ????    ?66??             ?? l?          l?       ?? D?? ?? x? D?? ??d?????? ?-?     ,   ,                                                        K         @   4?b?K  /*BECKCONFI3*/
        !       @   @   ?   ?     3               
   Standard            	4?b                        VAR_GLOBAL
END_VAR
                                                                                  "       ??  ?             Standard
         MAIN????           ???? 4?b                 $????  ??                                      Standard ?n?^	?n?^                                    	4?b       lq               VAR_CONFIG
END_VAR
                                                                                   '           $   ,     J           Constantes_Globales 4?b	4?b$                        VAR_GLOBAL CONSTANT
END_VAR
                                                                                               '              , X           Global_Variables 4?b	4?b     @??              VAR_GLOBAL
END_VAR
                                                                                               '           	   , ? ? w?           Variable_Configuration 4?b	4?b	     @??              VAR_CONFIG
END_VAR
                                                                                                 ?   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss?????                               4     ?   ???  ?3 ???   ? ???     
    @??  ???     @      DEFAULT             System      ?   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss?????                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '     D   , ? ? ?s           FB_Cinta_SFC 4?b	4?b       +            ?  FUNCTION_BLOCK FB_Cinta_SFC
(*
Secuencias de funcionamiento de las funcionalidades de una cinta transportadora.
- Situa: trae y situa un pale contra el retenedor de pales.
- Transfiere: transfiere un pale al siguente tramo de cinta.
*)
VAR_INPUT
    (* SFC-Flags *)
    SFCPause: BOOL;
    SFCReset: BOOL;

    (* Indicadores de sincronizacion *)
    Ack: BOOL := TRUE;
    Execute: BOOL;

    (* Funcionalidades *)
    Situar: BOOL;
    Transferir: BOOL;

    (* Parametros *)
    TE: TIME := T#1s; (* Tiempo de entrada del pale *)
    TR: TIME := T#1s; (* Tiempo del retenedor *)
    TS: TIME := T#1s; (* Tiempo del separador *)
    TT: TIME := T#1s; (* Tiempo de transferencia del pale *)
    TX: TIME := T#1s; (* Tiempo de salida del pale *)
END_VAR
VAR_OUTPUT
    (* Indicadores de sincronizacion *)
    Done: BOOL;
    Ready: BOOL;

    (* Funcionalidades *)
    Situado: BOOL;
    Transferido: BOOL;

    (* Parametros *)
    CP: UINT; (* Codigo de pale *)

    (* Entradas *)
    pp AT %I*: BOOL; (* Presencia de pale *)
    cp0 AT %I*: BOOL; (* Codigo de pale bit 0 *)
    cp1 AT %I*: BOOL; (* Codigo de pale bit 1 *)
    cp2 AT %I*: BOOL; (* Codigo de pale bit 2 *)
END_VAR
VAR
    (* Salidas *)
    RUN AT %Q*: BOOL; (* Motor de la cinta activa [KA1] *)
    REV AT %Q*: BOOL; (* Motor de la cinta invierte [KA2] *)
    R_1 AT %Q*: BOOL; (* Retenedor de pale baja [R+] *)
    S_1 AT %Q*: BOOL; (* Separador de pale sube [S+] *)
END_VAR       Initial    Ready   N             Transferir   E     ?/^              Transition Transferir   	x??b   Execute AND Transferir       S1    R_1   N       S_1   N    $   Baja el retenedor
Sube el separador       TR/X1   I     ?/??              TR/X1   	x??b   (S1.t > TR) AND (S1.t > TS)       S2    RUN   N       R_1   N       S_1   N       Cinta adelante       NOT pp         S3    RUN   N       R_1   N       S_1   N       Saca el pale       TX/X3   J     ?/??              TX/X3   	x??b	   S3.t > TX       S4    RUN   N       S_1   N       Sube el retenedor       TR/X4   K     ?/O              TR/X4   	x??b	   S4.t > TR       S5    RUN   N    "   Transfiere pale
Baja el separador       TT/X5   L     ?/??              TT/X5   	x??b   (S5.t > TT) AND (S5.t > TS)       S6    Transferido   N           TRUE      Situar  (     ?/'              Transition Situar  	x??b   Execute AND Situar       S1a    RUN   N       Trae un pale       pp         S2a    RUN   N       Ajusta el pale   *     ?/??              Action S2a - Exit x??b(   CP.0 := cp0;
CP.1 := cp1;
CP.2 := cp2;   TE/X2a   1     ?/??              TE/X2a   	x??b
   S2a.t > TE       s3A    Situado   N           TRUE         End    Done   N           Ack     Initiald                  '   , ? ? ??           FB_Clock 4?b	4?b                      2  FUNCTION_BLOCK FB_Clock
(*
Square wave oscillator

Copyright (c) 2009-2017 victortorreslopez

GNU General Public License

Version history
2.1, 2017/03/15, VTL: style review (PLCopen Coding Guidelines)
2.0, 2014/12/29, VTL: complete review
1.0, 2009/11/06, VTL: first release
0.0, 2009/11/06, VTL: alfa release
*)
VAR_INPUT
  EN: BOOL := TRUE;	(* ENabled *)
  PT: TIME := T#500ms; (* Semicycle time *)
END_VAR
VAR_OUTPUT
  ET: TIME; (* Elapsed time *)
  Q: BOOL; (* Square wave *)
END_VAR
VAR
  Timer: TON; (* Auto-pilot timer *)
END_VAR
?   (* OUTPUT FUNCTION *)
IF Timer.Q THEN
  Q := NOT Q;
END_IF

(* FUNCTION BLOCKS *)
Timer(IN := EN AND NOT Timer.Q, PT := PT, ET => ET);               O   ,     z?        	   FB_FMS203 4?b	4?b       io1           ?  FUNCTION_BLOCK FB_FMS203
(*
Controlador de la estacion "PRENSADO HIDRAULICO DEL RODAMIENTO" (FMS-203)

Prensa el rodamiento en el interior de la base 
*)
VAR_INPUT
    PV: UINT := 1; (* Valor inicial (pre-seleccion) del contador de maniobras *)
    Reinicia: BOOL; (* Reinicia el estado *)

    RB: BOOL; (* Rodamiento bajo *)
END_VAR
VAR_OUTPUT
    CI: BOOL; (* Condiciones iniciales *)
    CN: UINT; (* Valor actual de maniobras realizadas *)
    CV: UINT; (* Valor actual de maniobras pendientes *)
    Ready: BOOL;
END_VAR
VAR
    (* PANEL DE OPERADOR *)
    PE AT %I*: BOOL; (* Pulsador de parada de emergencia [EMERGENCY STOP] *)
    SM AT %I*: BOOL; (* Selector de modo (AUT/MAN) *)
    PM AT %I*: BOOL; (* Pulsador de marcha *)
    PS AT %I*: BOOL := TRUE; (* Pulsador de parada [STOP] *)

    AS AT %Q*: BOOL; (* Avisador sonoro *)
    LA AT %Q*: BOOL; (* Lampara de alarma *)
    LM AT %Q*: BOOL; (* Lampara de marcha *)

    (* ESTACION *)
    POC AT %I*: BOOL; (* PO conectada [RESET] *)
    DPO AT %Q*: BOOL; (* Desconecta PO *)

    (* BLOQUES FUNCIONALES *)
    CLK: FB_Clock;

    Coordinador: FB_FMS203_SFC;
    Cinta: FB_Cinta_SFC;
    PickPlace: FB_PickPlace_SFC;
    Prensa: FB_Prensa_SFC;
END_VAR  CI := POC AND PickPlace.a1 AND Prensa.b0 AND Prensa.c0 AND NOT Prensa.d1 AND Prensa.e0;
Ready := Coordinador.Ready AND Cinta.Ready AND PickPlace.Ready AND Prensa.Ready;

IF NOT SM THEN
    (* FUNCION DE ESTADO *)

    Coordinador(
        SFCReset := Reinicia,
        Execute := CI AND (PV > 0) AND PM,
        PV := PV,
  	    Situado := Cinta.Situado,
        Cargada := PickPlace.Cargada,
        Prensado := Prensa.Done,
        Descargada := PickPlace.Descargada,
        Transferido := Cinta.Transferido,
        CV := CV,
        CN := CN
        );

    Cinta(
        SFCReset := Reinicia,
        Ack := NOT (Coordinador.Situa OR Coordinador.Transfiere),
        Execute := Coordinador.Situa OR Coordinador.Transfiere,
        Situar := Coordinador.Situa,
        Transferir := Coordinador.Transfiere
        );

    PickPlace(
        SFCReset := Reinicia,
        Ack := NOT (Coordinador.Carga OR Coordinador.Descarga),
        Execute := Coordinador.Carga OR Coordinador.Descarga,
        Cargar := Coordinador.Carga,
        Descargar := Coordinador.Descarga
        );

    Prensa(
        SFCReset := Reinicia,
        Ack := NOT Coordinador.Prensa,
        Execute := Coordinador.Prensa,
        RB := RB
        );
END_IF

(* FUNCION DE SALIDA *)
LA := (SM AND NOT CI AND CLK.Q)
    OR (NOT SM AND (Coordinador.Ready AND NOT ((PV > 0) AND CI)) AND CLK.Q);
LM := NOT SM AND ((Coordinador.Ready AND ((PV > 0) AND CI)) AND CLK.Q)
    OR NOT Coordinador.Ready;

(* BLOQUES FUNCIONALES *)
CLK();


               )   ,     ?           FB_FMS203_SFC 4?b	4?b      ?<    ?r        ?  FUNCTION_BLOCK FB_FMS203_SFC
(*
Secuencias de funcionamiento del diagrama grafcet de coordinacion para la estacion 
"PRENSADO HIDRAULICO DEL RODAMIENTO" (FMS-203).
*)
VAR_INPUT
    (* SFC-Flags *)
    SFCPause: BOOL;
    SFCReset: BOOL;

    (* Indicadores de sincronizacion *)
    Ack: BOOL := TRUE;
    Execute: BOOL;

    (* Funcionalidades *)
    Situado: BOOL;
    Cargada: BOOL;
    Prensado: BOOL;
    Descargada: BOOL;
    Transferido: BOOL;

    (* Parametros *)
    PV: UINT; (* Valor inicial (pre-seleccion) del contador de maniobras *)
END_VAR
VAR_OUTPUT
    (* Indicadores de sincronizacion *)
    Done: BOOL;
    Ready: BOOL;

    (* Funcionalidades *)
    Situa: BOOL;
    Carga: BOOL;
    Prensa: BOOL;
	Descarga: BOOL;
    Transfiere: BOOL;
END_VAR
VAR_IN_OUT
    CN: UINT; (* Valor actual de maniobras realizadas *)
    CV: UINT; (* Valor actual de maniobras pendientes *)
END_VAR
VAR
END_VAR       Initial    Ready   N       +     ?/??              Action Initial - Exit N??b'   IF (PV > 0) THEN
    CV := PV;
END_IF   Execute         S1    Situa   N           Situado         S2    Carga   N           Cargada         S3    Prensa   N           Prensado         S4    Descarga   N        
   Descargada         S5 
   Transfiere   N           Transferido         S6     Cuenta la pieza ,     ?/??              Action S6 - Entry N??bA   CN := CN + 1;

IF (CV > 0 ) THEN
    CV := CV - 1;
END_IF

       (CV=0)         End    Done   N           Ack      (CV<>0)     S1   Initiald                  S   , ? ? ??           FB_PickPlace_SFC 4?b	4?b                      ?  FUNCTION_BLOCK FB_PickPlace_SFC
(*
Secuencias de funcionamiento de las funcionalidades de Pick & Place.
- Carga: carga una base desde el pale situado en la zona de retencion a la zona de 
  carga/descarga (punto de trasvase)
- Descarga: descarga un pale desde el punto de trasvase al pale situado en la zona 
  de retencion
*)
VAR_INPUT
    (* SFC-Flags *)
    SFCPause: BOOL;
    SFCReset: BOOL;

    (* Indicadores de sincronizacion *)
    Ack: BOOL := TRUE;
    Execute: BOOL;

    (* Funcionalidades *)
    Cargar: BOOL;
    Descargar: BOOL;
END_VAR
VAR_OUTPUT
    (* Indicadores de sincronizacion *)
    Done: BOOL;
    Ready: BOOL;

    (* Funcionalidades *)
    Cargada: BOOL;
    Descargada: BOOL;

    (* Entradas *)
    a0 AT %I*: BOOL; (* Pick and place detras *)
    a1 AT %I*: BOOL := TRUE; (* Pick and place en medio *)
    a2 AT %I*: BOOL; (* Pick and place delante *)
    v1 AT %I*: BOOL; (* Pick and place vacio *)
END_VAR
VAR
    (* Salidas *)
    A_0 AT %Q*: BOOL; (* Pick and place atras [A-] *)
    A_1 AT %Q*: BOOL; (* Pick and place adelante [A+] *)
    V_1 AT %Q*: BOOL; (* Pick and place succiona [V+] *)
END_VAR       Initial    Ready   N             Cargar  T     ?/??              Transition Cargar  	x??b   Execute AND Cargar       S1    A_0   N       Hacia el pale       a0         S2    V_1   N       Coge la base       v1         S3    A_1   N       V_1   N       Carga la base       a2         S4     Suelta la base       NOT v1         S5    A_0   N       Hacia arriba       a1         S6    Cargada   N           TRUE   
   Descargar  %     ?/??              Transition Descargar  	x??b   Execute AND Descargar       S1a    A_1   N       Hacia la estacion       a2         S2a    V_1   N       Coge la base       v1         S3a    A_0   N       V_1   N       Descarga la base       a0         S4a     Suelta la base       NOT v1         S5a    A_1   N       Hacia arriba       a1         S6a 
   Descargada   N           TRUE         End    Done   N           Ack     Initiald                  ^   , ??           FB_Prensa_SFC 4?b	4?b                      _  FUNCTION_BLOCK FB_Prensa_SFC
(*
Secuencia de funcionamiento de la prensa.
*)
VAR_INPUT
    (* SFC-Flags *)
    SFCPause: BOOL;
    SFCReset: BOOL;

    (* Indicadores de sincronizacion *)
    Ack: BOOL := TRUE;
    Execute: BOOL;

    (* Parametros *)
    RB: BOOL; (* Rodamiento bajo *)
    TG: TIME := T#2s; (* Tiempo de activacion del grupo hidraulico *)
    TP: TIME := T#2s; (* Tiempo subida del protector *)
END_VAR
VAR_OUTPUT
    (* Indicadores de sincronizacion *)
    Done: BOOL;
    Ready: BOOL;

    (* Entradas *)
    b0 AT %I*: BOOL := TRUE; (* Cilindro de introduccion detras *)
    b1 AT %I*: BOOL; (* Cilindro de introduccion delante *)
    c0 AT %I*: BOOL := TRUE; (* Cilindro de extraccion detras *)
    c1 AT %I*: BOOL; (* Cilindro de extraccion delante *)
    d1 AT %I*:BOOL; (* Protector abajo *)
    e0 AT %I*: BOOL := TRUE; (* Prensa arriba *)
    e1 AT %I*: BOOL; (* Prensa abajo rodamiento alto *)
    e2 AT %I*: BOOL; (* Prensa abajo rodamiento bajo *)
END_VAR
VAR
    (* Salidas *)
    B_1 AT %Q*: BOOL; (* Cilindro de introduccion adelante [B+] *)
    C_1 AT %Q*: BOOL; (* Cilindro de extraccion adelante [C+] *)
    D_1 AT %Q*: BOOL; (* Protector baja [D+] *)
    E_0 AT %Q*: BOOL; (* Prensa sube [E-] *)
    E_1 AT %Q*: BOOL; (* Prensa baja [E+] *)
    KC1 AT %Q*: BOOL; (* Prensa activa motor *)
END_VAR       Initial    Ready   N           Execute          S1    B_1   N       Introduce la base       b1         S2     Retorna       b0         S3    KC1   N       Activa hidraulico       TG/X3  a                        TG/X3  	???b
   S3.t >= TG       S4    D_1   N       KC1   N       Baja el protector       d1         S5    E_1   N       D_1   N       KC1   N       Baja la prensa       e12  b                        e12  	???b   (NOT RB AND e1) OR (RB AND e2)       S6    E_0   N       D_1   N       KC1   N       Sube la prensa       e0         S7     Sube el protector       TP/X7  c                        TP/X7  	???b
   S7.t >= TP       S8    C_1   N       Extrae la base       c1         S9     Retorna       c0         End    Done   N           Ack     Initiald                      , w 5 ??           MAIN 4?b	4?b                      ?  PROGRAM MAIN
(*
Programa principal para la estacion "PRENSADO HIDRAULICO DEL RODAMIENTO" (FMS-203) 

Transcripcion de la logica de control especificada mediante el grafcet 
estructurado utilizando nomenclatura no estandar (IEC 60848) y el 
concepto de unidad funcional (en vez del de tarea).

Notas
- Se mejora la compresion con el cambio de terminologia de los diagramas grafcet.
- Al utilizar el concepto de unidad funcional todos las funcionalidades de la  
  unidad funcional quedan recogidas en el mismo FB con lo que no se producen las 
  duplicidades en la declaracion de las variables de las imagenes de entrada y 
  salida.

Copyright (c) 2021-2022 victortorreslopez

GNU General Public License

Referencias
- FMS-203 - Prensado hidraulico del rodamiento. [en linea]. 
  [consulta: 22 de abril de 2022]. Disponible en
  https://www.smctraining.com/es/webpage/indexpage/295
- FMS-200 - Manual de usuario. SMC International Training. 2020.
- FMS-203 - Prensado hidraulico del rodamiento. Descripcion 
  Funcional. Victor Torres Lopez. Universidad de Malaga. 2022.

Historia de modificaciones
--------------------------
1.1, 09/07/2022, VTL: revisado y ampliado
1.0, 03/05/2021, VTL: creado
*)

VAR
    FMS203: FB_FMS203;
END_VAR   FMS203();
                &   , z  ??           TC_VISU 4?b
    @    4?b.  d   ?                                                                                                       
    @            ??	  ???  .] ??                                             @                      ?   ???        @                       @                                                                                                           
    @        ? Z ?m  cfj     ???                                             @                      ?    ???        @                       @                                                                                                           
    @        
 < ? ? d ?   cfj     ???                                             @                      ?   ???        @                       @                                                                                                           
    @        
 
 ?3 ?           ???     ???                                0&   PRENSADO HIDRAULICO DEL RODAMIENTO @                      <    ???       Arial Black @                       @                                                                                                           
    @         
 ? 3 d      ???     ???     ???                                0   FMS-203 @                      f    ???       Arial Narrow @                       @                                                                                                           
    @        ? < [ mK           ???     ???                                0
   Planta @                      ?    ???    	   Arial @                       @                                                                                                           
    @        ? ? A? 	?           ???     ???                               0   Introductor @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        ? d A? 	s           ???     ???                               0   Pick-Place @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        ? ? A? 	?           ???     ???                               0   Extractor @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        ? A#	          ???     ???                               0   Protector @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        ? ,AK	;          ???     ???                               0
   Prensa @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        ? TAs	c          ???     ???                               0   Hidraulico @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        ? ? A? 	?           ???     ???                               0   Eyector @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        ?Z ??C  cfj     ???                                             @                      =   ???        @                       @                                                                                                           
    @        ?< ?[ CK           ???     ???                                0   Parametros @                      >   ???    	   Arial @                       @                                                                                                           
    @        ?^S}m          ???     ???                               0   Hidraulico @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        ?6SUE          ???     ???                               0   Protector @                      A   ???       Arial Narrow @                       @                                                                                                           
    @        ?d S? s           ???     ???                               0   Retenedor @                      C   ???       Arial Narrow @                       @                                                                                                           
    @        \d ?? s   ??? ??? ?   ?                                     MAIN.FMS203.Cinta.TR   %d @                      D   ???       Arial Narrow @                      @                                                                                                           
    @        ?? S? ?           ???     ???                               0   Ent. Pale @                      E   ???       Arial Narrow @                       @                                                                                                           
    @        \? ?? ?   ??? ??? ?   ?                                     MAIN.FMS203.Cinta.TE   %d @                      F   ???       Arial Narrow @                      @                                                                                                           
    @        ?? S? ?           ???     ???                               0   Trans. Pale @                      G   ???       Arial Narrow @                       @                                                                                                           
    @        \? ?? ?   ??? ??? ?   ?                                     MAIN.FMS203.Cinta.TT   %d @                      H   ???       Arial Narrow @                      @                                                                                                           
    @        ?S#          ???     ???                               0   Salida Pale @                      K   ???       Arial Narrow @                       @                                                                                                           
    @        \?#  ??? ??? ?   ?                                     MAIN.FMS203.Cinta.TX   %d @                      L   ???       Arial Narrow @                      @                                                                                                          
    @         C,?,?,  ???     ???                           @                         M   ???        @                                                                                                                               
    @        \6?UE  ??? ??? ?   ?                                     MAIN.FMS203.Prensa.TP   %d @                      :   ???       Arial Narrow @                      @                                                                                                           
    @        \^?}m  ??? ??? ?   ?                                     MAIN.FMS203.Prensa.TG   %d @                      <   ???       Arial Narrow @                      @                                                                                                           
    @        Z ?v?   cfj     ???                                             @                      X   ???        @                       @                                                                                                           
    @        < ?[ vK           ???     ???                                0	   Tarea @                      Y   ???    	   Arial @                       @                                                                                                           
    @        &? m? I?           ???     ???                               0   CV @                      Z   ???       Arial Narrow @                       @                                                                                                           
    @        &d m? Is           ???     ???                               0   PV @                      [   ???       Arial Narrow @                       @                                                                                                           
    @        &? m? I?           ???     ???                               0   CN @                      \   ???       Arial Narrow @                       @                                                                                                           
    @        ?? ?? ??   ??? ??? ?   ?   ???                               MAIN.FMS203.CV   %d @                      ]   ???       Arial Narrow @                  $   INTERN ASSIGN MAIN.FMS203.CV:=(0) @                                                                                                           
    @        ?? ?? ??   ??? ??? ?   ?   ???                               MAIN.FMS203.CN   %d @                      ^   ???       Arial Narrow @                  $   INTERN ASSIGN MAIN.FMS203.CN:=(0) @                                                                                                           
    @        ?? ?? ??   ??? ???  ?@  ?@ ???                           NOT MAIN.FMS203.RB       Alto @                      `   ???       Arial Narrow @                  (   INTERN ASSIGN MAIN.FMS203.RB:=(FALSE) @                                                                                                           
    @        &? m? I?   ??? ???  ?@  ?@ ???                           MAIN.FMS203.RB       Bajo @                      a   ???       Arial Narrow @                  '   INTERN ASSIGN MAIN.FMS203.RB:=(TRUE) @                                                                                                           
    @        
 ??	??          ???     ???                                0    @                      b   ???       Arial Black @                       @                                                                                                           
    @        k????   ???  ?@  ?@  ?@ ???                            MAIN.FMS203.Ready    	   Ready @                      c   ???       Arial Narrow @
                       @                                                                                                           
    @        %?bC?   ???  ?@  ?@  ?@ ???                            MAIN.FMS203.CI       CI @                      d   ???       Arial Narrow @
                       @                                                                                                           
    @         ?= ( ?  ?? ?? ???     ???                                    ISA @                      f   ???       Arial Narrow @
                       @                                                     	   16#BEA019                                                  
    @        < ?j S ?      ?? ???      ??                                    2022 @                      g   ???       Arial Narrow @
                       @                                                                                                          
    @        ?
 ?3 K     ??? ??? ???     ???                                    %t %d/%m/%y-%H:%M @                      h   ???       Arial Narrow @                       @                                                                                                         
    @        ( U ? ? d ?         ???     ???                                                ?   ???        @                                               @ 
    @            d                                                                                                          
    @          ]   <  <  d ( d ( x   x   ???     ???                          @                         ?   ???        @                                                                                                                               
    @         ` ] x < Z < Z d P d P x x x   ???     ???                          @                         ?   ???        @                                                                                                                              
    @          s   x ( n   ???     ???                           @                         ?   ???        @                                                                                                                              
    @          i   n ( d   ???     ???                           @                         ?   ???        @                                                                                                                              
    @          _   d ( Z   ???     ???                           @                         ?   ???        @                                                                                                                              
    @          U   Z ( P   ???     ???                           @                         ?   ???        @                                                                                                                              
    @          K   P ( F   ???     ???                           @                         ?   ???        @                                                                                                                              
    @          A   F ( <   ???     ???                           @                         ?   ???        @                                                                                                                              
    @         d s P x x n   ???     ???                           @                         ?   ???        @                                                                                                                              
    @         d i P n x d   ???     ???                           @                         ?   ???        @                                                                                                                              
    @         d _ P d x Z   ???     ???                           @                         ?   ???        @                                                                                                                              
    @         d U P Z x P   ???     ???                           @                         ?   ???        @                                                                                                                              
    @         d K P P x F   ???     ???                           @                         ?   ???        @                                                                                                                              
    @         d A P F x <   ???     ???                           @                         ?   ???        @                                                                                                                               
    @         P [ e < Z   ???     ???                                            @                      ?   ???        @                       @                                                                                                           
    @         ( [ G < 7   ???     ???                                            @                      ?   ???        @                       @                                                                                                           
    @        2   G ) <    ???     ???                                            @                      ?   ???        @                       @                                                                                                           
    @        2  G ) < #           ???                                             @                      ?   ???        @                       @                                                                                                           
    @         F [ Q < K   cfj     cfj                                            @                      ?   ???        @                       @             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                                                                                                           
    @        ?T?s?c   ??? ??? ??      ???                                    1 @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        ?T?s?c   ??? ??? ??      ???                                    0 @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        ?T	s?c   ??? ??? ??      ???                                    2 @                      ?   ???       Arial Narrow @                       @                                            NOT MAIN.FMS203.Ready        +   SEL(MAIN.FMS203.Ready, 16#FFFFFF, 16#00000)                                                  
    @        ?d ?? ?s   ??? ??? ??? ???                               NOT MAIN.FMS203.Ready   MAIN.FMS203.PV   %d @                      ?   ???       Arial Narrow @                      @                                                                                                           
    @        ?? S? ?           ???     ???                               0   Separador @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        \? ?? ?   ??? ??? ?   ?                                     MAIN.FMS203.Cinta.TS   %d @                      ?   ???       Arial Narrow @                      @                                                                                                           
    @        ?d 	? ?s    ??? ??? ??      ???                                    2 @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        ?d 	? ?s   ??? ???  ?@  ?@ ???                           MAIN.FMS203.PickPlace.a2       2 @                      ?   ???       Arial Narrow @    MAIN.FMS203.PickPlace.a2                 @                                                                                                           
    @        ?d ?? ?s    ??? ??? ??      ???                                    1 @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        ?d ?? ?s    ??? ??? ??      ???                                    0 @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        Jd i? Ys    ??? ??? ??      ???                                    A- @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        rd ?? ?s    ??? ??? ??      ???                                    A+ @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        ?? ?? ??    ??? ??? ??      ???                            MAIN.FMS203.Prensa.b1       1 @                      ?   ???       Arial Narrow @    MAIN.FMS203.Prensa.b1                 @                                                                                                           
    @        ?? ?? ??    ??? ??? ??      ???                                    0 @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        J? i? Y?    ??? ??? ??      ???                                    B- @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        r? ?? ??    ??? ??? ??      ???                                    B+ @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        ?? 	? ??    ??? ??? ??      ???                                    2 @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        ?? ?? ??    ??? ??? ??      ???                                    1 @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        ?? ?? ??    ??? ??? ??      ???                                    0 @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        J? i? Y?    ??? ??? ??      ???                                    C- @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        r? ?? ??    ??? ??? ??      ???                                    C+ @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        ?? 	? ??    ??? ??? ??      ???                                    2 @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        ??#?   ??? ??? ??      ???                                    1 @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        ??#?   ??? ??? ??      ???                                    0 @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        Ji#Y   ??? ??? ??      ???                                    D- @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        r?#?   ??? ??? ??      ???                                    D+ @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        ?	#?   ??? ??? ??      ???                                    2 @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        ?,?K?;   ??? ??? ??      ???                                    1 @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        ?,?K?;   ??? ??? ??      ???                                    0 @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        J,iKY;   ??? ??? ??      ???                                    E- @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        r,?K?;   ??? ??? ??      ???                                    E+ @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        ?,	K?;   ??? ??? ??      ???                                    2 @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        ?? ?? ??    ??? ??? ??      ???                                    1 @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        ?? ?? ??    ??? ??? ??      ???                                    0 @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        J? i? Y?    ??? ??? ??      ???                                    V- @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        r? ?? ??    ??? ??? ??      ???                                    V+ @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        ?? 	? ??    ??? ??? ??      ???                                    2 @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        Jd i? Ys   ???             ???                           MAIN.FMS203.PickPlace.A_0       A- @                      ?   ???       Arial Narrow @    MAIN.FMS203.PickPlace.A_0                 @                                                                                                           
    @        rd ?? ?s   ???             ???                           MAIN.FMS203.PickPlace.A_1       A+ @                      ?   ???       Arial Narrow @    MAIN.FMS203.PickPlace.A_1                 @                                                                                                           
    @        ?d ?? ?s   ??? ???  ?@  ?@ ???                           MAIN.FMS203.PickPlace.a0       0 @                      ?   ???       Arial Narrow @    MAIN.FMS203.PickPlace.a0                 @                                                                                                           
    @        ?d ?? ?s   ??? ???  ?@  ?@ ???                           MAIN.FMS203.PickPlace.a1       1 @                      ?   ???       Arial Narrow @    MAIN.FMS203.PickPlace.a1                 @                                                                                                           
    @        r? ?? ??   ???             ???                           MAIN.FMS203.Prensa.B_1       B+ @                      ?   ???       Arial Narrow @    MAIN.FMS203.Prensa.B_1                 @                                                                                                           
    @        ?? ?? ??   ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.b0       0 @                      ?   ???       Arial Narrow @    MAIN.FMS203.Prensa.b0                 @                                                                                                           
    @        ?? ?? ??   ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.b1       1 @                      ?   ???       Arial Narrow @    MAIN.FMS203.Prensa.b1                 @                                                                                                           
    @        r? ?? ??   ???             ???                           MAIN.FMS203.Prensa.C_1       C+ @                      ?   ???       Arial Narrow @    MAIN.FMS203.Prensa.C_1                 @                                                                                                           
    @        r?#?  ???             ???                           MAIN.FMS203.Prensa.D_1       D+ @                      ?   ???       Arial Narrow @    MAIN.FMS203.Prensa.D_1                 @                                                                                                           
    @        ??#?  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.d1       1 @                      ?   ???       Arial Narrow @    MAIN.FMS203.Prensa.d1                 @                                                                                                           
    @        r,?K?;  ???             ???                           MAIN.FMS203.Prensa.E_1       E+ @                      ?   ???       Arial Narrow @    MAIN.FMS203.Prensa.E_1                 @                                                                                                           
    @        ?? ?? ??   ??? ???  ?@  ?@ ???                           MAIN.FMS203.PickPlace.v1       1 @                      ?   ???       Arial Narrow @    MAIN.FMS203.PickPlace.v1                 @                                                                                                           
    @        r? ?? ??   ???             ???                           MAIN.FMS203.PickPlace.V_1       V+ @                      ?   ???       Arial Narrow @    MAIN.FMS203.PickPlace.V_1                 @                                                                                                           
    @        JT?smc  ???     ?   ?   ???                           MAIN.FMS203.Prensa.KC1       KC1 @                      ?   ???       Arial Narrow @    MAIN.FMS203.Prensa.KC1                 @                                                                                                           
    @        ?? ?? ??   ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.c0       0 @                      ?   ???       Arial Narrow @    MAIN.FMS203.Prensa.c0                 @                                                                                                           
    @        ?? ?? ??   ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.c1       1 @                      ?   ???       Arial Narrow @    MAIN.FMS203.Prensa.c1                 @                                                                                                           
    @        ?,	K?;  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.e2       2 @                      ?   ???       Arial Narrow @    MAIN.FMS203.Prensa.e2                 @                                                                                                           
    @        ?,?K?;  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.e0       0 @                      ?   ???       Arial Narrow @    MAIN.FMS203.Prensa.e0                 @                                                                                                           
    @        ?,?K?;  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.e1       1 @                      ?   ???       Arial Narrow @    MAIN.FMS203.Prensa.e1                 @                                                                                                         
    @        ??	??        ???     ???                                                ???? ???        @                                               @ 
    @            d                                                                                                          
    @           `  <      ??? ??? ??      ???                                    VTL - 2022 @                      ?   ???       Arial Narrow @
                       @                                                                                                           
    @                    ??? ??? ??      ???                                    ? @                      ?   ???   
   Symbol @                       @             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                                                                                                           
    @        6??v?  cfj     ???                                             @                      ?   ???        @                       @                                                                                                           
    @        &@E_5O  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Cinta.pp       pp @                      ?   ???       Arial Narrow @    MAIN.FMS203.Cinta.pp                 @                                                                                                           
    @        ?7v'          ???     ???                                0	   Cinta @                      ?   ???    	   Arial @                       @                                                                                                           
    @        q@?_yO  ???      ?@  .] ???                            MAIN.FMS203.Cinta.cp2       .2 @                      ?   ???       Arial Narrow @    MAIN.FMS203.Cinta.cp2                 @                                                                                                           
    @        ?@?_?O  ???      ?@  .] ???                            MAIN.FMS203.Cinta.cp1       .1 @                      ?   ???       Arial Narrow @    MAIN.FMS203.Cinta.cp1                 @                                                                                                           
    @        ?@?_?O  ???      ?@  .] ???                            MAIN.FMS203.Cinta.cp0       .0 @                      ?   ???       Arial Narrow @    MAIN.FMS203.Cinta.cp0                 @                                                                                                           
    @        ??????   ??? ??? ??      ???                                    0 @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        ?h???w  ??? ???  ?@  ?@ ???                        3   MAIN.FMS203.Cinta.RUN AND NOT MAIN.FMS203.Cinta.REV       4 @                      ?   ???      Webdings @                       @                                                                                                           
    @        ?@?_?O  ??? ??? ???     ???                               MAIN.FMS203.Cinta.CP   %d @                      ?   ???       Consolas @                       @                                                                                                           
    @        ?h???w  ??? ???  ?@  ?@ ???                        /   MAIN.FMS203.Cinta.RUN AND MAIN.FMS203.Cinta.REV       3 @                      ?   ???      Webdings @                       @                                                                                                           
    @        N@m_]O          ???     ???                                   CP @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        Nhm?]w  ???             ???                           MAIN.FMS203.Cinta.REV       REV @                      ?   ???       Arial Narrow @
    MAIN.FMS203.Cinta.REV                 @                                                                                                           
    @        &hE?5w  ???             ???                           MAIN.FMS203.Cinta.RUN       RUN @                      ?   ???       Arial Narrow @
    MAIN.FMS203.Cinta.RUN                 @                                                                                                           
    @        ??????   ??? ??? ??      ???                                    1 @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        &?E?5?   ??? ??? ??      ???                                    R- @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        N?m?]?   ??? ??? ??      ???                                    R+ @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        &?E?5?   ??? ??? ??      ???                                    S- @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        N?m?]?   ??? ??? ??      ???                                    S+ @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        ??????   ??? ??? ??      ???                                    0 @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        ??????   ??? ??? ??      ???                                    1 @                      ?   ???       Arial Narrow @                       @                                                                                                           
    @        N?m?]?  ???             ???                           MAIN.FMS203.Cinta.R_1       R+ @                      ?   ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        N?m?]?  ???             ???                           MAIN.FMS203.Cinta.S_1       S+ @                      ?   ???       Arial Narrow @    MAIN.FMS203.Cinta.S_1                 @                                                                                                         
    @         ?[ ?7 ?        ???     ???                                                ?   ???        @                                               @ 
    @           d                                                                                                          
    @            G  #     ??? ??? ??      ???                                     @                      ?   ???       Arial Narrow @
                       @                                                                                                         
    @          B  #          ???     ???                                                ?   ???        @                                               @ 
    @            d                                                                                                          
    @              
 
   ??? ??? ??  ??                                          @                      ?   ???        @                       @                                                                                                           
    @         & 
  
 <  2     ??? ??? ??  ??                        @                         ?   ???        @                                 ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                                                                                                           
    @        
 ? ?d w  cfj     ???                                             @                      ?   ???        @                       @                                                                                                           
    @        
 ? ? d ?           ???     ???                                0	   Panel @                      ?   ???    	   Arial @                       @                                                                                                           
    @        n ? 7? "  ??? ??? ?   ?   ???                            MAIN.FMS203.PE    
   E-Stop @                      ?   ???       Arial Narrow @     MAIN.FMS203.PE                 @                                                                                                           
    @        n h? ?? r  ??? ???  ?@  ?@ ???                           MAIN.FMS203.PM    
   Marcha @                      ?   ???       Arial Narrow @    MAIN.FMS203.PM                 @                                                                                                           
    @        n ?? ?? ?  ??? ??? ?   ?   ???                           NOT MAIN.FMS203.PS    
   Parada @                      ?   ???       Arial Narrow @    MAIN.FMS203.PS                @                                                                                                           
    @        n ?? ?? ?  ??? ???         ???                           MAIN.FMS203.SM    
   Manual @                      ?   ???       Arial Narrow @    MAIN.FMS203.SM                 @                                                                                                           
    @         @[ _2 J  ???     ?       ???                           MAIN.FMS203.LA   0
   Alarma @                      ?   ???       Arial Narrow @    MAIN.FMS203.LA                 @                                                                                                           
    @         h[ ?7 w  ???      ?@     ???                           MAIN.FMS203.LM   0
   Marcha @                      ?   ???       Arial Narrow @    MAIN.FMS203.LM                 @                                                                                                           
    @        n @? _? J  ??? ???  ??  ?? ???                           MAIN.FMS203.POC       POC @                      ?   ???       Arial Narrow @    MAIN.FMS203.POC                 @                                                                                                           
    @         [ 72 "  ???      ??     ???                           MAIN.FMS203.DPO   0   DPO @                      ?   ???       Arial Narrow @        MAIN.FMS203.DPO             @                                                                                                         
    @         ?[ ?7 ?        ???     ???                                                ?   ???        @                                               @ 
    @           d                                                                                                          
    @            G  #     ??? ??? ??      ???                                     @                      ?   ???       Arial Narrow @
                       @                                                                                                         
    @          B  #          ???     ???                                                ?   ???        @                                               @ 
    @            d                                                                                                          
    @              
 
   ??? ??? ??  ??                                          @                      ?   ???        @                       @                                                                                                           
    @         & 
  
 <  2     ??? ??? ??  ??                        @                         ?   ???        @                                 ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                                                                                                           
    @         ?[ ?7 ?  ???     ??      ???                           MAIN.FMS203.AS        @                      ?   ???       Trebuchet MS @    MAIN.FMS203.AS                 @                                                                                                         
    @         ?V ?7 ?        ???     ???                                                ?   ???        @                                               @ 
    @            d                                                                                                          
    @              
 
           ??  ??                                          @                      ?   ???        @                       @                                                                                                           
    @         & 
  
 <  2             ??  ??                        @                         ?   ???        @                                 ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                                                                                                          
    @         m? ? ? ?   ???     ???                           @                         ?   ???        @                                                                                                                               
    @         ?[ ?2 ?  ???             ???                           MAIN.FMS203.Reinicia   0	   Reset @                      -   ???       Arial Narrow @        MAIN.FMS203.Reinicia             @             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  ;   , ? ? _Y        	   TC_VISU_2 4?b
    @    4?b?   d   ?                                                                                                       
    @            ?O?'  ???     ??                                             @                           ???        @                       @                                                                                                           
    @        ?Z ?+;  cfj     ???                                             @                          ???        @                       @                                                                                                           
    @        
 < }? ? ?   cfj     ???                                             @                          ???        @                       @                                                                                                           
    @        
 
 ?3 ?           ???     ???                                0&   PRENSADO HIDRAULICO DEL RODAMIENTO @                          ???       Arial Black @                       @                                                                                                           
    @         
 ? 3 d      ???     ???     ???                                0   FMS-203 @                          ???       Arial Narrow @                       @                                                                                                           
    @        ?< ?[ +K           ???     ???                                0
   Planta @                          ???    	   Arial @                       @                                                                                                           
    @        ?T?s?c          ???     ???                               0   Introductor @                          ???       Arial Narrow @                       @                                                                                                           
    @        ??#?          ???     ???                               0   Pick-Place @                          ???       Arial Narrow @                       @                                                                                                           
    @        ?|????          ???     ???                               0   Extractor @                          ???       Arial Narrow @                       @                                                                                                           
    @        ??????          ???     ???                               0   Protector @                      	    ???       Arial Narrow @                       @                                                                                                           
    @        ??????          ???     ???                               0
   Prensa @                      
    ???       Arial Narrow @                       @                                                                                                           
    @        ????          ???     ???                               0   Hidraulico @                          ???       Arial Narrow @                       @                                                                                                           
    @        ?,?K?;          ???     ???                               0   Eyector @                          ???       Arial Narrow @                       @                                                                                                           
    @        ?Z ?C;  cfj     ???                                             @                          ???        @                       @                                                                                                           
    @        ?< ?[ CK           ???     ???                                0   Parametros @                          ???    	   Arial @                       @                                                                                                           
    @        ?^S}m          ???     ???                               0   Hidraulico @                          ???       Arial Narrow @                       @                                                                                                           
    @        ?6SUE          ???     ???                               0   Protector @                          ???       Arial Narrow @                       @                                                                                                           
    @        ?d S? s           ???     ???                               0   Retenedor @                          ???       Arial Narrow @                       @                                                                                                           
    @        \d ?? s   ??? ??? ?   ?                                     MAIN.FMS203.Cinta.TR   %d @                          ???       Arial Narrow @                      @                                                                                                           
    @        ?? S? ?           ???     ???                               0   Ent. Pale @                          ???       Arial Narrow @                       @                                                                                                           
    @        \? ?? ?   ??? ??? ?   ?                                     MAIN.FMS203.Cinta.TE   %d @                          ???       Arial Narrow @                      @                                                                                                           
    @        ?? S? ?           ???     ???                               0   Trans. Pale @                          ???       Arial Narrow @                       @                                                                                                           
    @        \? ?? ?   ??? ??? ?   ?                                     MAIN.FMS203.Cinta.TT   %d @                          ???       Arial Narrow @                      @                                                                                                           
    @        ?S#          ???     ???                               0   Salida Pale @                          ???       Arial Narrow @                       @                                                                                                           
    @        \?#  ??? ??? ?   ?                                     MAIN.FMS203.Cinta.TX   %d @                          ???       Arial Narrow @                      @                                                                                                          
    @         C,?,?,  ???     ???                           @                             ???        @                                                                                                                               
    @        \6?UE  ??? ??? ?   ?                                     MAIN.FMS203.Prensa.TP   %d @                          ???       Arial Narrow @                      @                                                                                                           
    @        \^?}m  ??? ??? ?   ?                                     MAIN.FMS203.Prensa.TG   %d @                          ???       Arial Narrow @                      @                                                                                                           
    @        ? }"?  cfj     ???                                             @                          ???        @                       @                                                                                                           
    @        ? ? }"?           ???     ???                                0	   Tarea @                          ???    	   Arial @                       @                                                                                                           
    @        ? h?? w          ???     ???                               0   CV @                          ???       Arial Narrow @                       @                                                                                                           
    @        ? 7? '          ???     ???                               0   PV @                          ???       Arial Narrow @                       @                                                                                                           
    @        ? ??? ?          ???     ???                               0   CN @                           ???       Arial Narrow @                       @                                                                                                           
    @        ,hs?Jr  ??? ??? ?   ?   ???                               MAIN.FMS203.CV   %d @                      !    ???       Arial Narrow @                  $   INTERN ASSIGN MAIN.FMS203.CV:=(0) @                                                                                                           
    @        ,?s?J?  ??? ??? ?   ?   ???                               MAIN.FMS203.CN   %d @                      "    ???       Arial Narrow @                  $   INTERN ASSIGN MAIN.FMS203.CN:=(0) @                                                                                                           
    @        ,@s_JJ  ??? ???  ?@  ?@ ???                           NOT MAIN.FMS203.RB       Alto @                      #    ???       Arial Narrow @                  (   INTERN ASSIGN MAIN.FMS203.RB:=(FALSE) @                                                                                                           
    @        ? @_? O  ??? ???  ?@  ?@ ???                           MAIN.FMS203.RB       Bajo @                      $    ???       Arial Narrow @                  '   INTERN ASSIGN MAIN.FMS203.RB:=(TRUE) @                                                                                                           
    @        
 &?E?5          ???     ???                                0    @                      %    ???       Arial Black @                       @                                                                                                           
    @        k+?@?5   ???  ?@  ?@  ?@ ???                            MAIN.FMS203.Ready    	   Ready @                      &    ???       Arial Narrow @
                       @                                                                                                           
    @        %+b@C5   ???  ?@  ?@  ?@ ???                            MAIN.FMS203.CI       CI @                      '    ???       Arial Narrow @
                       @                                                                                                           
    @         += @( 0  ?? ?? ???     ???                                    ISA @                      (    ???       Arial Narrow @
                       @                                                     	   16#BEA019                                                  
    @        < +j @S 5      ?? ???      ??                                    2022 @                      )    ???       Arial Narrow @
                       @                                                                                                          
    @        ?
 ?3 K     ??? ??? ???     ???                                    %t %d/%m/%y-%H:%M @                      *    ???       Arial Narrow @                       @                                                                                                         
    @        ( U ? ? d ?         ???     ???                                                +    ???        @                                               @ 
    @            d                                                                                                          
    @          ]   <  <  d ( d ( x   x   ???     ???                          @                         ,    ???        @                                                                                                                               
    @         ` ] x < Z < Z d P d P x x x   ???     ???                          @                         -    ???        @                                                                                                                              
    @          s   x ( n   ???     ???                           @                         .    ???        @                                                                                                                              
    @          i   n ( d   ???     ???                           @                         /    ???        @                                                                                                                              
    @          _   d ( Z   ???     ???                           @                         0    ???        @                                                                                                                              
    @          U   Z ( P   ???     ???                           @                         1    ???        @                                                                                                                              
    @          K   P ( F   ???     ???                           @                         2    ???        @                                                                                                                              
    @          A   F ( <   ???     ???                           @                         3    ???        @                                                                                                                              
    @         d s P x x n   ???     ???                           @                         4    ???        @                                                                                                                              
    @         d i P n x d   ???     ???                           @                         5    ???        @                                                                                                                              
    @         d _ P d x Z   ???     ???                           @                         6    ???        @                                                                                                                              
    @         d U P Z x P   ???     ???                           @                         7    ???        @                                                                                                                              
    @         d K P P x F   ???     ???                           @                         8    ???        @                                                                                                                              
    @         d A P F x <   ???     ???                           @                         9    ???        @                                                                                                                               
    @         P [ e < Z   ???     ???                                            @                      :    ???        @                       @                                                                                                           
    @         ( [ G < 7   ???     ???                                            @                      ;    ???        @                       @                                                                                                           
    @        2   G ) <    ???     ???                                            @                      <    ???        @                       @                                                                                                           
    @        2  G ) < #           ???                                             @                      =    ???        @                       @                                                                                                           
    @         F [ Q < K   cfj     cfj                                            @                      >    ???        @                       @             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                                                                                                           
    @        ????   ??? ??? ??      ???                                    1 @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        X?wg   ??? ??? ??      ???                                    0 @                      @    ???       Arial Narrow @                       @                                                                                                           
    @        ????   ??? ??? ??      ???                                    2 @                      A    ???       Arial Narrow @                       @                                            NOT MAIN.FMS203.Ready        +   SEL(MAIN.FMS203.Ready, 16#FFFFFF, 16#00000)                                                  
    @        ,s7O'  ??? ??? ??? ???                               NOT MAIN.FMS203.Ready   MAIN.FMS203.PV   %d @                      B    ???       Arial Narrow @                      @                                                                                                           
    @        ?? S? ?           ???     ???                               0   Separador @                      C    ???       Arial Narrow @                       @                                                                                                           
    @        \? ?? ?   ??? ??? ?   ?                                     MAIN.FMS203.Cinta.TS   %d @                      D    ???       Arial Narrow @                      @                                                                                                           
    @        ??#?   ??? ??? ??      ???                                    2 @                      E    ???       Arial Narrow @                       @                                                                                                           
    @        ??#?  ??? ???  ?@  ?@ ???                           MAIN.FMS203.PickPlace.a2       2 @                      F    ???       Arial Narrow @    MAIN.FMS203.PickPlace.a2                 @                                                                                                           
    @        ??#?   ??? ??? ??      ???                                    1 @                      G    ???       Arial Narrow @                       @                                                                                                           
    @        Xw#g   ??? ??? ??      ???                                    0 @                      H    ???       Arial Narrow @                       @                                                                                                           
    @        '#   ??? ??? ??      ???                                    A- @                      I    ???       Arial Narrow @                       @                                                                                                           
    @        0O#?   ??? ??? ??      ???                                    A+ @                      J    ???       Arial Narrow @                       @                                                                                                           
    @        ?T?s?c   ??? ??? ??      ???                            MAIN.FMS203.Prensa.b1       1 @                      K    ???       Arial Narrow @    MAIN.FMS203.Prensa.b1                 @                                                                                                           
    @        XTwsgc   ??? ??? ??      ???                                    0 @                      L    ???       Arial Narrow @                       @                                                                                                           
    @        T'sc   ??? ??? ??      ???                                    B- @                      M    ???       Arial Narrow @                       @                                                                                                           
    @        0TOs?c   ??? ??? ??      ???                                    B+ @                      N    ???       Arial Narrow @                       @                                                                                                           
    @        ?T?s?c   ??? ??? ??      ???                                    2 @                      O    ???       Arial Narrow @                       @                                                                                                           
    @        ?|????   ??? ??? ??      ???                                    1 @                      P    ???       Arial Narrow @                       @                                                                                                           
    @        X|w?g?   ??? ??? ??      ???                                    0 @                      Q    ???       Arial Narrow @                       @                                                                                                           
    @        |'??   ??? ??? ??      ???                                    C- @                      R    ???       Arial Narrow @                       @                                                                                                           
    @        0|O???   ??? ??? ??      ???                                    C+ @                      S    ???       Arial Narrow @                       @                                                                                                           
    @        ?|????   ??? ??? ??      ???                                    2 @                      T    ???       Arial Narrow @                       @                                                                                                           
    @        ??????   ??? ??? ??      ???                                    1 @                      U    ???       Arial Narrow @                       @                                                                                                           
    @        X?w?g?   ??? ??? ??      ???                                    0 @                      V    ???       Arial Narrow @                       @                                                                                                           
    @        ?'??   ??? ??? ??      ???                                    D- @                      W    ???       Arial Narrow @                       @                                                                                                           
    @        0?O???   ??? ??? ??      ???                                    D+ @                      X    ???       Arial Narrow @                       @                                                                                                           
    @        ??????   ??? ??? ??      ???                                    2 @                      Y    ???       Arial Narrow @                       @                                                                                                           
    @        ??????   ??? ??? ??      ???                                    1 @                      Z    ???       Arial Narrow @                       @                                                                                                           
    @        X?w?g?   ??? ??? ??      ???                                    0 @                      [    ???       Arial Narrow @                       @                                                                                                           
    @        ?'??   ??? ??? ??      ???                                    E- @                      \    ???       Arial Narrow @                       @                                                                                                           
    @        0?O???   ??? ??? ??      ???                                    E+ @                      ]    ???       Arial Narrow @                       @                                                                                                           
    @        ??????   ??? ??? ??      ???                                    2 @                      ^    ???       Arial Narrow @                       @                                                                                                           
    @        ?,?K?;   ??? ??? ??      ???                                    1 @                      _    ???       Arial Narrow @                       @                                                                                                           
    @        X,wKg;   ??? ??? ??      ???                                    0 @                      `    ???       Arial Narrow @                       @                                                                                                           
    @        ,'K;   ??? ??? ??      ???                                    V- @                      a    ???       Arial Narrow @                       @                                                                                                           
    @        0,OK?;   ??? ??? ??      ???                                    V+ @                      b    ???       Arial Narrow @                       @                                                                                                           
    @        ?,?K?;   ??? ??? ??      ???                                    2 @                      c    ???       Arial Narrow @                       @                                                                                                           
    @        '#  ???             ???                           MAIN.FMS203.PickPlace.A_0       A- @                      d    ???       Arial Narrow @    MAIN.FMS203.PickPlace.A_0                 @                                                                                                           
    @        0O#?  ???             ???                           MAIN.FMS203.PickPlace.A_1       A+ @                      e    ???       Arial Narrow @    MAIN.FMS203.PickPlace.A_1                 @                                                                                                           
    @        Xw#g  ??? ???  ?@  ?@ ???                           MAIN.FMS203.PickPlace.a0       0 @                      f    ???       Arial Narrow @    MAIN.FMS203.PickPlace.a0                 @                                                                                                           
    @        ??#?  ??? ???  ?@  ?@ ???                           MAIN.FMS203.PickPlace.a1       1 @                      g    ???       Arial Narrow @    MAIN.FMS203.PickPlace.a1                 @                                                                                                           
    @        0TOs?c  ???             ???                           MAIN.FMS203.Prensa.B_1       B+ @                      h    ???       Arial Narrow @    MAIN.FMS203.Prensa.B_1                 @                                                                                                           
    @        XTwsgc  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.b0       0 @                      i    ???       Arial Narrow @    MAIN.FMS203.Prensa.b0                 @                                                                                                           
    @        ?T?s?c  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.b1       1 @                      j    ???       Arial Narrow @    MAIN.FMS203.Prensa.b1                 @                                                                                                           
    @        0|O???  ???             ???                           MAIN.FMS203.Prensa.C_1       C+ @                      k    ???       Arial Narrow @    MAIN.FMS203.Prensa.C_1                 @                                                                                                           
    @        0?O???  ???             ???                           MAIN.FMS203.Prensa.D_1       D+ @                      l    ???       Arial Narrow @    MAIN.FMS203.Prensa.D_1                 @                                                                                                           
    @        ??????  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.d1       1 @                      m    ???       Arial Narrow @    MAIN.FMS203.Prensa.d1                 @                                                                                                           
    @        0?O???  ???             ???                           MAIN.FMS203.Prensa.E_1       E+ @                      n    ???       Arial Narrow @    MAIN.FMS203.Prensa.E_1                 @                                                                                                           
    @        ?,?K?;  ??? ???  ?@  ?@ ???                           MAIN.FMS203.PickPlace.v1       1 @                      o    ???       Arial Narrow @    MAIN.FMS203.PickPlace.v1                 @                                                                                                           
    @        0,OK?;  ???             ???                           MAIN.FMS203.PickPlace.V_1       V+ @                      p    ???       Arial Narrow @    MAIN.FMS203.PickPlace.V_1                 @                                                                                                           
    @        ?O+  ???     ?   ?   ???                           MAIN.FMS203.Prensa.KC1       KC1 @                      q    ???       Arial Narrow @    MAIN.FMS203.Prensa.KC1                 @                                                                                                           
    @        X|w?g?  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.c0       0 @                      r    ???       Arial Narrow @    MAIN.FMS203.Prensa.c0                 @                                                                                                           
    @        ?|????  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.c1       1 @                      s    ???       Arial Narrow @    MAIN.FMS203.Prensa.c1                 @                                                                                                           
    @        ??????  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.e2       2 @                      t    ???       Arial Narrow @    MAIN.FMS203.Prensa.e2                 @                                                                                                           
    @        X?w?g?  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.e0       0 @                      u    ???       Arial Narrow @    MAIN.FMS203.Prensa.e0                 @                                                                                                           
    @        ??????  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.e1       1 @                      v    ???       Arial Narrow @    MAIN.FMS203.Prensa.e1                 @                                                                                                         
    @        ?&E?5        ???     ???                                                w    ???        @                                               @ 
    @            d                                                                                                          
    @           `  <      ??? ??? ??      ???                                    VTL - 2022 @                      x    ???       Arial Narrow @
                       @                                                                                                           
    @                    ??? ??? ??      ???                                    ? @                      y    ???   
   Symbol @                       @             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                                                                                                         
    @         ?[ ?7 ?        ???     ???                                                ?    ???        @                                               @ 
    @           d                                                                                                          
    @            G  #     ??? ??? ??      ???                                     @                      ?    ???       Arial Narrow @
                       @                                                                                                         
    @          B  #          ???     ???                                                ?    ???        @                                               @ 
    @            d                                                                                                          
    @              
 
   ??? ??? ??  ??                                          @                      ?    ???        @                       @                                                                                                           
    @         & 
  
 <  2     ??? ??? ??  ??                        @                         ?    ???        @                                 ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                                                                                                           
    @        
 ? d ?  cfj     ???                                             @                      ?    ???        @                       @                                                                                                           
    @        
 ? ? d ?           ???     ???                                0	   Panel @                      ?    ???    	   Arial @                       @                                                                                                           
    @        n ? 7? "  ??? ??? ?   ?   ???                            MAIN.FMS203.PE    
   E-Stop @                      ?    ???       Arial Narrow @     MAIN.FMS203.PE                 @                                                                                                           
    @        n h? ?? r  ??? ???  ?@  ?@ ???                           MAIN.FMS203.PM    
   Marcha @                      ?    ???       Arial Narrow @    MAIN.FMS203.PM                 @                                                                                                           
    @        n ?? ?? ?  ??? ??? ?   ?   ???                           NOT MAIN.FMS203.PS    
   Parada @                      ?    ???       Arial Narrow @    MAIN.FMS203.PS                @                                                                                                           
    @        n ?? ?? ?  ??? ???         ???                           MAIN.FMS203.SM    
   Manual @                      ?    ???       Arial Narrow @    MAIN.FMS203.SM                 @                                                                                                           
    @         @[ _2 J  ???     ?       ???                           MAIN.FMS203.LA   0
   Alarma @                      ?    ???       Arial Narrow @    MAIN.FMS203.LA                 @                                                                                                           
    @         h[ ?7 w  ???      ?@     ???                           MAIN.FMS203.LM   0
   Marcha @                      ?    ???       Arial Narrow @    MAIN.FMS203.LM                 @                                                                                                           
    @        n @? _? J  ??? ???  ??  ?? ???                           MAIN.FMS203.POC       POC @                      ?    ???       Arial Narrow @    MAIN.FMS203.POC                 @                                                                                                           
    @         [ 72 "  ???      ??     ???                           MAIN.FMS203.DPO   0   DPO @                      ?    ???       Arial Narrow @        MAIN.FMS203.DPO             @                                                                                                         
    @         ?[ ?7 ?        ???     ???                                                ?    ???        @                                               @ 
    @           d                                                                                                          
    @            G  #     ??? ??? ??      ???                                     @                      ?    ???       Arial Narrow @
                       @                                                                                                         
    @          B  #          ???     ???                                                ?    ???        @                                               @ 
    @            d                                                                                                          
    @              
 
   ??? ??? ??  ??                                          @                      ?    ???        @                       @                                                                                                           
    @         & 
  
 <  2     ??? ??? ??  ??                        @                         ?    ???        @                                 ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                                                                                                           
    @         ?[ ?7 ?  ???     ??      ???                           MAIN.FMS203.AS        @                      ?    ???       Trebuchet MS @    MAIN.FMS203.AS                 @                                                                                                         
    @         ?V ?7 ?        ???     ???                                                ?    ???        @                                               @ 
    @            d                                                                                                          
    @              
 
           ??  ??                                          @                      ?    ???        @                       @                                                                                                           
    @         & 
  
 <  2             ??  ??                        @                         ?    ???        @                                 ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                                                                                                          
    @         +O?O?O  ???     ???                           @                         ?    ???        @                                                                                                                               
    @        ?d ?? ?s           ???     ???                               0	   Cinta @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        ?d ?? ?s    ??? ??? ??      ???                                    1 @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        Xd w? gs    ??? ??? ??      ???                                    0 @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        ?d ?? ?s    ??? ??? ??      ???                                    2 @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        d '? s   ???             ???                           MAIN.FMS203.Cinta.RUN       RUN @                      ?    ???       Arial Narrow @
    MAIN.FMS203.Cinta.RUN                 @                                                                                                           
    @        ?d ?? ?s   ??? ???  ?@  ?@ ???                        3   MAIN.FMS203.Cinta.RUN AND NOT MAIN.FMS203.Cinta.REV       4 @                      ?    ???      Webdings @                       @                                                                                                           
    @        ?d ?? ?s   ??? ???  ?@  ?@ ???                        /   MAIN.FMS203.Cinta.RUN AND MAIN.FMS203.Cinta.REV       3 @                      ?    ???      Webdings @                       @                                                                                                           
    @        0d O? ?s   ???             ???                           MAIN.FMS203.Cinta.REV       REV @                      ?    ???       Arial Narrow @
    MAIN.FMS203.Cinta.REV                 @                                                                                                           
    @        ?? ?? ??           ???     ???                               0   Retenedor @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        X? w? g?    ??? ??? ??      ???                                    0 @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        ?? ?? ??    ??? ??? ??      ???                                    1 @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        ? '? ?    ??? ??? ??      ???                                    R- @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        0? O? ??    ??? ??? ??      ???                                    R+ @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        ? '? ?    ??? ??? ??      ???                                    S- @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        0? O? ??    ??? ??? ??      ???                                    S+ @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        X? w? g?    ??? ??? ??      ???                                    0 @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        ?? ?? ??    ??? ??? ??      ???                                    1 @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        0? O? ??   ???             ???                           MAIN.FMS203.Cinta.R_1       R+ @                      ?    ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        0? O? ??   ???             ???                           MAIN.FMS203.Cinta.S_1       S+ @                      ?    ???       Arial Narrow @    MAIN.FMS203.Cinta.S_1                 @                                                                                                           
    @        ?? ?? ??    ??? ??? ??      ???                                    2 @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        ?? ?? ??    ??? ??? ??      ???                                    2 @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        ?? ?? ??           ???     ???                               0   Separador @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        ?? ?? ??           ???     ???                               0   Codigo Pale @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        ? '? ?   ???      ?@  .] ???                            MAIN.FMS203.Cinta.cp2       .2 @                      ?    ???       Arial Narrow @    MAIN.FMS203.Cinta.cp2                 @                                                                                                           
    @        0? O? ??   ???      ?@  .] ???                            MAIN.FMS203.Cinta.cp1       .1 @                      ?    ???       Arial Narrow @    MAIN.FMS203.Cinta.cp1                 @                                                                                                           
    @        X? w? g?   ???      ?@  .] ???                            MAIN.FMS203.Cinta.cp0       .0 @                      ?    ???       Arial Narrow @    MAIN.FMS203.Cinta.cp0                 @                                                                                                           
    @        ?? ?? ??   ??? ??? ???     ???                               MAIN.FMS203.Cinta.CP   %d @                      ?    ???       Consolas @                       @                                                                                                           
    @        Xd w? gs   ??? ???  ?@  ?@ ???                           MAIN.FMS203.Cinta.pp       pp @                      ?    ???       Arial Narrow @    MAIN.FMS203.Cinta.pp                 @                                                                                                          
    @         +? ?? ??   ???     ???                           @                         ?    ???        @                                 ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  ????, ? ? ?         !   Iecsfc.lib 12.5.98 11:03:00 @DX5"   STANDARD.LIB 5.6.98 12:03:02 @F?w5   F   SFCActionControl @      SFCActionType       SFCStepType                      Globale_Variablen @              CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @                                             2                ????????????????  
             ????                 ????  ?X??? ?                      POUs               FB                 FB_Clock  '   ????              FMS203            	   FB_FMS203  O                  FB_FMS203_SFC  )   ????              PRG                 MAIN      ????              UF                FB_Cinta_SFC  D                  FB_PickPlace_SFC  S                  FB_Prensa_SFC  ^   ????????          
   Data types  ????              Visualizations                 TC_VISU  &               	   TC_VISU_2  ;   ????              Global Variables                 Constantes_Globales  $                   Global_Variables                    Variable_Configuration  	   ????                                         s\scnero             ?n?^                         	   localhost            P      	   localhost            P      	   localhost            P     ?!?`   ???