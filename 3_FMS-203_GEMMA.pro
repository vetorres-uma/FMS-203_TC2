CoDeSys+?   ?                  FMS-203 (Monol?tico) @       1.0 @   2.3.9.59   victortorreslopez @?   Implementaci?n de la l?gica de control de 
la estaci?n de prensado hidr?ulico 
(FMS_203) del Sistema Did?ctico Modular 
de Ensamblaje Flexible de SMC
International Training
 
 
 @                             ?|?b +    @            p?             ?n?^        ?X   @   o   C:\TWINCAT\PLC\LIB\Iecsfc.lib @                                                                                          SFCACTIONCONTROL     
      S_FF                 RS   ??              L_TMR                    TON   ??              D_TMR                    TON   ??              P_TRIG                 R_TRIG   ??              SD_TMR                    TON   ??              SD_FF                 RS   ??              DS_FF                 RS   ??              DS_TMR                    TON   ??              SL_FF                 RS   ??              SL_TMR                    TON   ??           
      N            ??              R0            ??              S0            ??              L            ??              D            ??              P            ??              SD            ??	              DS            ??
              SL            ??              T           ??                 Q            ??                       ?|?b  ?   ????    q   C:\TWINCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               ??              STR2               ??                 CONCAT                                         ?|?b  ?   ????           CTD           M             ??           Variable for CD Edge Detection      CD            ??           Count Down on rising edge    LOAD            ??           Load Start Value    PV           ??           Start Value       Q            ??           Counter reached 0    CV           ??           Current Counter Value             ?|?b  ?   ????           CTU           M             ??            Variable for CU Edge Detection       CU            ??       
    Count Up    RESET            ??           Reset Counter to 0    PV           ??           Counter Limit       Q            ??           Counter reached the Limit    CV           ??           Current Counter Value             ?|?b  ?   ????           CTUD           MU             ??            Variable for CU Edge Detection    MD             ??            Variable for CD Edge Detection       CU            ??	       
    Count Up    CD            ??
           Count Down    RESET            ??           Reset Counter to Null    LOAD            ??           Load Start Value    PV           ??           Start Value / Counter Limit       QU            ??           Counter reached Limit    QD            ??           Counter reached Null    CV           ??           Current Counter Value             ?|?b  ?   ????           DELETE               STR               ??              LEN           ??              POS           ??                 DELETE                                         ?|?b  ?   ????           F_TRIG           M             ??
                 CLK            ??           Signal to detect       Q            ??           Edge detected             ?|?b  ?   ????           FIND               STR1               ??              STR2               ??                 FIND                                     ?|?b  ?   ????           INSERT               STR1               ??              STR2               ??              POS           ??                 INSERT                                         ?|?b  ?   ????           LEFT               STR               ??              SIZE           ??                 LEFT                                         ?|?b  ?   ????           LEN               STR               ??                 LEN                                     ?|?b  ?   ????           MID               STR               ??              LEN           ??              POS           ??                 MID                                         ?|?b  ?   ????           R_TRIG           M             ??
                 CLK            ??           Signal to detect       Q            ??           Edge detected             ?|?b  ?   ????           REPLACE               STR1               ??              STR2               ??              L           ??              P           ??                 REPLACE                                         ?|?b  ?   ????           RIGHT               STR               ??              SIZE           ??                 RIGHT                                         ?|?b  ?   ????           RS               SET            ??              RESET1            ??                 Q1            ??
                       ?|?b  ?   ????           SEMA           X             ??                 CLAIM            ??	              RELEASE            ??
                 BUSY            ??                       ?|?b  ?   ????           SR               SET1            ??              RESET            ??                 Q1            ??	                       ?|?b  ?   ????           TOF           M             ??           internal variable 	   StartTime            ??           internal variable       IN            ??       ?    starts timer with falling edge, resets timer with rising edge    PT           ??           time to pass, before Q is set       Q            ??	       2    is FALSE, PT seconds after IN had a falling edge    ET           ??
           elapsed time             ?|?b  ?   ????           TON           M             ??           internal variable 	   StartTime            ??           internal variable       IN            ??       ?    starts timer with rising edge, resets timer with falling edge    PT           ??           time to pass, before Q is set       Q            ??	       0    is TRUE, PT seconds after IN had a rising edge    ET           ??
           elapsed time             ?|?b  ?   ????           TP        	   StartTime            ??           internal variable       IN            ??       !    Trigger for Start of the Signal    PT           ??       '    The length of the High-Signal in 10ms       Q            ??	           The pulse    ET           ??
       &    The current phase of the High-Signal             ?|?b  ?   ????    R    @                                                                                	          FB_CINTA_SFC           RUN             O 6            Motor de la cinta activa [KA1]    REV             O 7       "    Motor de la cinta invierte [KA2]    R_1             O 8           Retenedor de pale baja [R+]    S_1             O 9           Separador de pale sube [S+]    INITIAL          (x := TRUE, _x := TRUE)                  SFCStepType                   S1                  SFCStepType                   S2                  SFCStepType                   S3                  SFCStepType                   S4                  SFCStepType                   S5                  SFCStepType                   S6                  SFCStepType                   S1A                  SFCStepType                   S2A                  SFCStepType                   S3A                  SFCStepType                   END                  SFCStepType                   Done__action                   SFCActionType                   R_1__action                   SFCActionType                   Ready__action                   SFCActionType                   RUN__action                   SFCActionType                   S_1__action                   SFCActionType                   Transferido__action                   SFCActionType                      SFCPause            O 	              SFCReset            O 
           Indicadores de sincronizacion    Ack           O               Execute            O               Restore            O               Resume            O               Safe           O            Funcionalidades    Situar            O            
   Transferir            O            Parametros    TE    ?     O            Tiempo de entrada del pale    TR    ?     O            Tiempo del retenedor    TS    ?     O            Tiempo del separador    TT    ?     O        "    Tiempo de transferencia del pale    TX    ?     O            Tiempo de salida del pale 
      CI           O                Done            O !              Ready            O "              Restored           O #           Funcionalidades    Transferido            O &           Parametros    CP           O )           Codigo de pale    pp           O ,           Presencia de pale    cp0           O -           Codigo de pale bit 0    cp1           O .           Codigo de pale bit 1    cp2           O /           Codigo de pale bit 2       Situado            O 2                   ?|?b  @  ????           FB_CLOCK           Timer                    TON   '            Auto-pilot timer       EN           '        	    ENabled    PT    ?     '            Semicycle time       ET           '            Elapsed time    Q            '            Square wave             ?|?b  @   ????           FB_DIRECTOR         
   
   Emergencia                        
   Finalizada                           FinTarea                           FinCiclo                           Manual                           Marcha                           Para                    $    Solicitud de parada a fin de ciclo 	   Preparada                           Reinicia                        
   Restaurada                        En condiciones iniciales       Modo           A6       E_GEMMA                 Defecto                        Procedimientos de defecto    Funcionamiento                    !    Procedimientos de funcionamiento   Parada                         Procedimientos de parada             ?|?b  @   ????        	   FB_FMS203     	      _Modo               E_GEMMA   ^            Valor anterior de "Modo"    Director                            FB_Director   ^ "              Panel                                FB_Panel   ^ #           Secuencias    Coordinador        =                                                                   FB_FMS203_SFC   ^ &           Unidades funcionales    Cinta        .                                                    FB_Cinta_SFC   ^ )           	   PickPlace        /                                                     FB_PickPlace_SFC   ^ *              Prensa        5                                                           FB_Prensa_SFC   ^ +       
    Entradas    POC            ^ .           PO conectada [RESET]    DPO             ^ 1           Desconecta PO       PV           ^        R    Valor inicial (pre-seleccion) del contador de maniobras, 0 = produccion continua    Reinicia            ^            Reinicia el estado    RB            ^            Rodamiento bajo       CI            ^            Condiciones iniciales    CN           ^        &    Valor actual de maniobras realizadas    CV           ^        &    Valor actual de maniobras pendientes    Modo               E_GEMMA  ^            Modo de funcionamiento    Ready            ^               Situado            ^            Pale situado en la cinta             ?|?b  @  ????           FB_FMS203_SFC           INITIAL          (x := TRUE, _x := TRUE)                  SFCStepType                   S1                  SFCStepType                   S2                  SFCStepType                   S3                  SFCStepType                   S4                  SFCStepType                   S5                  SFCStepType                   S6                  SFCStepType                   S1A                  SFCStepType                   S2A                  SFCStepType                   S1B                  SFCStepType                   S2B                  SFCStepType                   S1C                  SFCStepType                   S2C                  SFCStepType                   END                  SFCStepType                   Carga__action                   SFCActionType                   Descarga__action                   SFCActionType                   Done__action                   SFCActionType                   Finaliza__action                   SFCActionType                   Finalizada__action                   SFCActionType                   Prensa__action                   SFCActionType                   Prepara__action                   SFCActionType                   Preparada__action                   SFCActionType                   Producido__action                   SFCActionType                   Ready__action                   SFCActionType                   Restaura__action                   SFCActionType                   Restaurada__action                   SFCActionType                   Situa__action                   SFCActionType                   Transfiere__action                   SFCActionType                      SFCPause            _               SFCReset            _            Indicadores de sincronizacion    Ack           _               Execute            _               Restore            _               Resume            _               Safe           _            Funcionalidades    Producir            _               Preparar            _            	   Finalizar            _            	   Restaurar            _        
    Entradas    CI            _               Situado            _               Cargada            _               Prensado            _            
   Descargada            _               Transferido            _            Parametros   TP    ?     _ !           Tiempo de preparacion    TF    ?     _ "           Tiempo de finalizacion       Done            _ &              Ready            _ '       	    Salidas    Situa            _ *              Carga            _ +              Finaliza            _ ,           
   Finalizada            _ -              Prepara            _ .           	   Preparada            _ /              Prensa            _ 0           	   Producido            _ 1              Descarga            _ 2              Restaura            _ 3           
   Restaurada            _ 4           
   Transfiere            _ 5                       ?|?b  @   ????           FB_PANEL     
      CLK                   FB_Clock   +               FP_PM                 R_TRIG   +               TmpReinicio                    TON   +        
    Entradas    PE            +         3    Pulsador de parada de emergencia [EMERGENCY STOP]    PM            + !           Pulsador de marcha [START]    PS           + "           Pulsador de parada [STOP]    SM            + #           Selector de modo [AUTO/MAN]    AS             + &           Avisador sonoro    LA             + '           Lampara de alarma [ALARM]    LM             + (           Lampara de marcha [START]       Modo               E_GEMMA  +               TR    ?     +            Tiempo de reinicio    
   Emergencia            +               Manual            +               Reinicia            +            Reinicia el estado inicial    Restaura            +        $    Restaura las condiciones iniciales    Marcha            +               Para            +                        ?|?b  @  ????           FB_PICKPLACE_SFC           A_0             5 -           Pick and place atras [A-]    A_1             5 .           Pick and place adelante [A+]    V_1             5 /           Pick and place succiona [V+]    INITIAL          (x := TRUE, _x := TRUE)                  SFCStepType                   S1                  SFCStepType                   S2                  SFCStepType                   S3                  SFCStepType                   S4                  SFCStepType                   S5                  SFCStepType                   S6                  SFCStepType                   S1A                  SFCStepType                   S2A                  SFCStepType                   S3A                  SFCStepType                   S4A                  SFCStepType                   S5A                  SFCStepType                   S6A                  SFCStepType                   S1B                  SFCStepType                   S2B                  SFCStepType                   S3B                  SFCStepType                   END                  SFCStepType                   A_0__action                   SFCActionType                   A_1__action                   SFCActionType                   Cargada__action                   SFCActionType                   Descargada__action                   SFCActionType                   Done__action                   SFCActionType                   Ready__action                   SFCActionType                   Restored__action                   SFCActionType                   V_1__action                   SFCActionType                	      SFCPause            5               SFCReset            5            Indicadores de sincronizacion    Ack           5               Execute            5               Restore            5               Resume            5               Safe           5            Funcionalidades    Cargar            5            	   Descargar            5            
      CI           5               Done            5               Ready            5               Restored           5            Parametros    Cargada            5 "           
   Descargada            5 #       
    Entradas    a0           5 &           Pick and place detras    a1          5 '           Pick and place en medio    a2           5 (           Pick and place delante    v1           5 )           Pick and place vacio             ?|?b  @  ????           FB_PRENSA_SFC           B_1             9 .       (    Cilindro de introduccion adelante [B+]    C_1             9 /       &    Cilindro de extraccion adelante [C+]    D_1             9 0           Protector baja [D+]    E_0             9 1           Prensa sube [E-]    E_1             9 2           Prensa baja [E+]    KC1             9 3           Prensa activa motor    INITIAL          (x := TRUE, _x := TRUE)                  SFCStepType                   S1                  SFCStepType                   S2                  SFCStepType                   S3                  SFCStepType                   S4                  SFCStepType                   S5                  SFCStepType                   S6                  SFCStepType                   S7                  SFCStepType                   S8                  SFCStepType                   S9                  SFCStepType                   S10                  SFCStepType                   S1A                  SFCStepType                   S2A                  SFCStepType                   END                  SFCStepType                   B_1__action                   SFCActionType                   C_1__action                   SFCActionType                   D_1__action                   SFCActionType                   Done__action                   SFCActionType                   E_0__action                   SFCActionType                   E_1__action                   SFCActionType                   KC1__action                   SFCActionType                   Prensado__action                   SFCActionType                   Ready__action                   SFCActionType                   Restored__action                   SFCActionType                
      SFCPause            9 	              SFCReset            9 
           Indicadores de sincronizacion    Ack           9               Execute            9               Restore            9               Resume            9               Safe           9            Parametros    RB            9            Rodamiento bajo    TG    ?     9        +    Tiempo de activacion del grupo hidraulico    TP    ?     9            Tiempo subida del protector       CI           9               Done            9               Ready            9               Restored           9            Parametros    Prensado            9         
    Entradas    b0          9 #       !    Cilindro de introduccion detras    b1           9 $       "    Cilindro de introduccion delante    c0          9 %           Cilindro de extraccion detras    c1           9 &            Cilindro de extraccion delante    d1           9 '           Protector abajo    e0          9 (           Prensa arriba    e1           9 )           Prensa abajo rodamiento alto    e2           9 *           Prensa abajo rodamiento bajo             ?|?b  @  ????           MAIN           FMS203                             	   FB_FMS203                                    ?|?b  @   ????           
 ?   5   O   9   ^   &   *   ,   _   +      	   -   ( ?Z      K   ?Z     K   ?Z     K   ?Z     K   ?Z                 ?Z         +     ??localhost ?ژw   l?     ??- U?V?H^??X??? ?? x? ?? 5?.wS?	 ????w+2w*2wl?           l?       ?? D?? ?\?   X^?`? x(2w`^?F  x? x? uu? ????    ?66??             ?? l?          l?       ?? D?? ?? x? D?? ??d?????? ?-?     ,   ,                                                        K         @   ?|?b?\  /*BECKCONFI3*/
        !       @   @   ?   ?     3               
   Standard            	?|?b                        VAR_GLOBAL
END_VAR
                                                                                  "       ??  ?             Standard
         MAIN????           ???? ?|?b                 $????  ??                                      Standard ?n?^	?n?^                                    	?|?b       lq               VAR_CONFIG
END_VAR
                                                                                   '           $   ,     J           Constantes_Globales ?|?b	?|?b$                     ?   VAR_GLOBAL CONSTANT
    (* Nombres de los colores RGB *)
    RGB_RED: DWORD := 16#0000FF; (* 255-0-0 *)
    PAN_Gray8: DWORD := 16#8D8B88; (* 136-139-141 *) (* PANTONE Cool Gray 8 C*)
    TC2_Green: DWORD := 16#408000; (* 0, 128, 64 *)
END_VAR
                                                                                               '              , X           Global_Variables ?|?b	?|?b     @??              VAR_GLOBAL
END_VAR
                                                                                               '           	   , ? ? w?           Variable_Configuration ?|?b	?|?b	     @??              VAR_CONFIG
END_VAR
                                                                                                 ?   |1|0|3_FMS-203_GEMMA_SPA.XML @   SPA @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss?????                               7     ?   ???  ?3 ???   ? ???     
    @??  ???     @      DEFAULT             System      ?   |1|0 @   SPA @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss?????                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '   %   ,     ??           E_GEMMA ?|?b	?|?b                      ?
  TYPE E_GEMMA: (
    (* Modos de la Guia de Estudio de los Modos de Marcha y Parada *)
    (* [Modes du Guide d'Etude des Modes de Marche et d'Arr?t] *)
    (* [Modes of Study Guide of the Modes of Operating and Stopping] *)

    (* Procedimientos de parada [les proc?dures d'arrets/stop procedures] *)
    A1, (*  0: parada en el estado inicial
               [arr?t dans etat initial] 
               [stopped in the initial state] *)
    A2, (*  1: parada solicitada a final de ciclo
               [arret demand? en fin de cycle] 
               [requested end cycle stop] *)
    A3, (*  2: parada solicitada en un estado determinado
               [arret demande dans etat determine] 
               [requested particular state stop] *)
    A4, (*  3: parada obtenida
               [arret obtenu] 
               [obteined stop] *)
    A5, (*  4: preparacion para la recuperacion del fallo
               [preparation pour remise en route apres defaillance] 
               [preparation for the recovery of the failure] *)
    A6, (*  5: situando la PO en el estado inicial
               [mise PO dans ?tat initial] 
               [set the PO in initial state] *)
    A7, (*  6: situando la PO en un estado determinado
               [mise PO dans ?tat d?termin?]
               [set the PO in a certain state] *)

    (* Procedimientos de funcionamiento [les proc?dures de fonctionnement/operating procedures] *)
    F1, (*  7: produccion normal
               [production normale] 
               [normal operation] *)
    F2, (*  8: secuencia de preparacion
               [marche de preparation] 
               [preparation sequence] *)
    F3, (*  9: secuencia de finalizacion
               [marche de cloture] 
               [ending sequence] *)
    F4, (* 10: verificacion en desorden
               [marche de verification dans le desordre] 
               [verification with no order] *)
    F5, (* 11: verificacion en orden
               [marche de verification dans l'ordre] 
               [verification whit order] *)
    F6, (* 12: prueba
               [marche de test] 
               [test] *)

    (* Procedimientos de fallo [les proc?dures en d?faillances] *)
    D1, (* 13: parada de emergencia
               [arret d'urgence] 
               [emergency stop] *)
    D2, (* 14: diagnostico y/o tratamiento de los fallos
               [diagnostic et/ou traitement de la d?faillance] 
               [diagnosis and/or treatment of failures] *)
    D3  (* 15: produccion a pesar de los fallos
               [production tout de m?me] 
               [production despite the failures] *)
    );
END_TYPE             	 O   ,     ?;           FB_Cinta_SFC ?|?b	?|?b      ib*.b@cr        `  FUNCTION_BLOCK FB_Cinta_SFC
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
    Restore: BOOL;
    Resume: BOOL;
    Safe: BOOL := TRUE;

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
    CI: BOOL := TRUE;
    Done: BOOL;
    Ready: BOOL;
    Restored: BOOL := TRUE;

    (* Funcionalidades *)
    Transferido: BOOL;

    (* Parametros *)
    CP: UINT; (* Codigo de pale *)

    (* Entradas *)
    pp AT %I*: BOOL; (* Presencia de pale *)
    cp0 AT %I*: BOOL; (* Codigo de pale bit 0 *)
    cp1 AT %I*: BOOL; (* Codigo de pale bit 1 *)
    cp2 AT %I*: BOOL; (* Codigo de pale bit 2 *)
END_VAR
VAR_IN_OUT
    Situado: BOOL;
END_VAR
VAR
    (* Salidas *)
    RUN AT %Q*: BOOL; (* Motor de la cinta activa [KA1] *)
    REV AT %Q*: BOOL; (* Motor de la cinta invierte [KA2] *)
    R_1 AT %Q*: BOOL; (* Retenedor de pale baja [R+] *)
    S_1 AT %Q*: BOOL; (* Separador de pale sube [S+] *)
END_VAR       Initial    Ready   N             Transferir    P     ?/??              Transferir    	T?b   Safe AND Execute AND Transferir       S1    R_1   N       S_1   N    $   Baja el retenedor
Sube el separador   &     ?/??              Action S1 - Exit T?b   Situado := FALSE;   TR/X1    T     ?/??              TR/X1    	T?b   (S1.t > TR) AND (S1.t > TS)       S2    RUN   N       R_1   N       S_1   N       Cinta adelante       NOT pp         S3    RUN   N       R_1   N       S_1   N       Saca el pale       TX/X3    U     ?/??              TX/X3    	T?b	   S3.t > TX       S4    RUN   N       S_1   N       Sube el retenedor       TR/X4    V     ?/??              TR/X4    	T?b	   S4.t > TR       S5    RUN   N    "   Transfiere pale
Baja el separador       TT/X5    W     ?/??              TT/X5    	T?b   (S5.t > TT) AND (S5.t > TS)       S6    Transferido   N           TRUE      Situar ]     ?/??              Transition Situar 	T?b   Safe AND Execute AND Situar       S1a    RUN   N       Trae un pale *     ?/??              Action S1a - Entry T?b   Situado := FALSE;
     pp         S2a    RUN   N       Ajusta el pale   Y     ?/??              Action S2a - Exit T?b(   CP.0 := cp0;
CP.1 := cp1;
CP.2 := cp2;	   TE/X2a    Z     ?/??           	   TE/X2a    	T?b
   S2a.t > TE       s3A   ,     ?/??              Action s3A - Entry T?b   Situado := TRUE;
     TRUE         End    Done   N           Ack     Initiald                  '   , ? ? ??           FB_Clock ?|?b	?|?b                      2  FUNCTION_BLOCK FB_Clock
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
Timer(IN := EN AND NOT Timer.Q, PT := PT, ET => ET);                  ,     ?;           FB_Director ?|?b	?|?b                      u  FUNCTION_BLOCK FB_Director
(*
Implementacion del grafcet de conduccion/direccion (GC).

Grafico Descriptivo de los Modos de Marcha y Parada (GDMMA)

Copyright (c) 2020 victortorreslopez

GNU General Public License

Historia de modificaciones
--------------------------
1.0, 18/07/2022, VTL: primera version
0.0, 16/10/2020, VTL: creacion
*)
VAR_INPUT
    Emergencia: BOOL;
    Finalizada: BOOL;
    FinTarea: BOOL;
    FinCiclo: BOOL;
    Manual: BOOL;
    Marcha: BOOL;
    Para: BOOL; (* Solicitud de parada a fin de ciclo *)
    Preparada: BOOL;
    Reinicia: BOOL;
    Restaurada: BOOL; (* En condiciones iniciales *)
END_VAR
VAR_OUTPUT
    Modo: E_GEMMA := A6;
    Defecto: BOOL; (* Procedimientos de defecto *)
    Funcionamiento: BOOL; (* Procedimientos de funcionamiento*)
    Parada: BOOL; (* Procedimientos de parada *)
END_VAR
VAR
END_VAR
?
  (* FUNCION DE ESTADO *)
IF Emergencia THEN
    Modo := D1;
ELSIF Reinicia THEN
    Modo := A6;
ELSE
    CASE Modo OF
        (* Procedimientos de parada *)
        A1: (* Parada en el estado inicial *)
            IF NOT Restaurada THEN
                Modo := A6;
            ELSIF Manual THEN
                Modo := F4;
            ELSIF Marcha THEN
                Modo := F2;
            END_IF
        A2: (* Parada solicitada a final de ciclo *)
            IF FinCiclo THEN
                Modo := A1;
            ELSE
                (* En este caso no es necesario que suceda nada! *)
                ;
            END_IF
        A3: (* Parada solicitada en un estado determinado *)
            ;
        A4: (* Parada obtenida *)
            ;
        A5: (* Preparando de reanudacion tras el fallo *)
            ;
        A6: (* Situando la PO en el estado inicial *)
            IF Restaurada THEN
                Modo := A1;
            ELSIF Manual THEN
                Modo := F4;
            END_IF
        A7: (* Situando la PO en un estado determinado *)
            ;

        (* Procedimientos de funcionamiento *)
        F1: (* Produccion normal *)
            IF FinTarea THEN
                Modo := F3;
            ELSIF Para THEN
                Modo := A2;
            END_IF
        F2: (* Secuencia de preparacion *)
            IF Preparada THEN
                Modo := F1;
            ELSE
                (* En este caso no es necesario que suceda nada! *)
                ;
            END_IF
        F3: (* Secuencia de finalizacion *)
            IF Finalizada THEN
                Modo := A1;
            ELSE
                (* En este caso no es necesario que suceda nada! *)
                ;
            END_IF
        F4: (* Verificacion sin orden *)
            IF NOT Manual THEN
                Modo := A6;
            ELSE
                (* En este caso no es necesario que suceda nada! *)
                ;
            END_IF
        F5: (* Verificacion en orden *)
            ;
        F6: (* Prueba *)
            ;

        (* Procedimientos de defecto *)
        D1: (* Parada de emergencia *)
            IF NOT Emergencia THEN
                Modo := A6;
            ELSE
                (* En este caso no es necesario que suceda nada! *)
                ;
            END_IF
        D2: (* Diagnostico/tratamiento de los fallos *)
            ;
        D3: (* Produccion a pesar de los fallos *)
            ;
    END_CASE
END_IF

(* PARAMETROS DE SALIDA *)
Defecto := (Modo >= D1) AND (Modo <= D3);
Funcionamiento:= (Modo >= F1) AND (Modo <= F6);
Parada := (Modo >= A1) AND (Modo <= A7);

               ^   , ?  (	;        	   FB_FMS203 ?|?b	?|?b       io1           )  FUNCTION_BLOCK FB_FMS203
(*
Controlador de la estacion Prensado Hidraulico del Rodamiento" (FMS-203)

Prensa el rodamiento en el interior de la base

Copyright (c) 2021-2022 victortorreslopez

GNU General Public License

Historia de modificaciones
--------------------------
0.1, 18/07/2022, VTL: primera version
0.0, 02/05/2021, VTL: creacion
*)
VAR_INPUT
    PV: UINT; (* Valor inicial (pre-seleccion) del contador de maniobras, 0 = produccion continua *)
    Reinicia: BOOL; (* Reinicia el estado *)

    RB: BOOL; (* Rodamiento bajo *)
END_VAR
VAR_OUTPUT
    CI: BOOL; (* Condiciones iniciales *)
    CN: UINT; (* Valor actual de maniobras realizadas *)
    CV: UINT; (* Valor actual de maniobras pendientes *)
    Modo: E_GEMMA; (* Modo de funcionamiento *)
    Ready: BOOL;
    Situado: BOOL; (* Pale situado en la cinta *)
END_VAR
VAR
    _Modo: E_GEMMA; (* Valor anterior de "Modo" *)

    (* Manejadores *)
    Director: FB_Director;
    Panel: FB_Panel;

    (* Secuencias *)
    Coordinador: FB_FMS203_SFC;

    (* Unidades funcionales *)
    Cinta: FB_Cinta_SFC;
    PickPlace: FB_PickPlace_SFC;
    Prensa: FB_Prensa_SFC;

    (* Entradas *)
    POC AT %I*: BOOL; (* PO conectada [RESET] *)

    (* Salidas *)
    DPO AT %Q*: BOOL; (* Desconecta PO *)
END_VAR`  (* PARAMETROS DE SALIDA *)
CI := POC AND PickPlace.a1 AND Prensa.b0 AND Prensa.c0 AND NOT Prensa.d1 AND Prensa.e0;
IF Coordinador.Producido THEN
    CN := CN + 1;
END_IF
Ready := Coordinador.Ready AND Cinta.Ready AND PickPlace.Ready AND Prensa.Ready;
IF Panel.Reinicia OR Reinicia THEN
    Situado := FALSE;
END_IF

(* BLOQUES FUNCIONALES *)
Director(
    Emergencia := Panel.Emergencia,
    Finalizada := Coordinador.Finalizada,
    FinTarea := (PV > 0) AND (CV = 0),
    FinCiclo := Coordinador.Producido,
    Manual := Panel.Manual,
    Marcha := CI AND Panel.Marcha,
    Para := Panel.Para,
    Preparada := Coordinador.Preparada,
    Reinicia := Panel.Reinicia OR Reinicia,
    Restaurada := CI,
    Modo => Modo
    );

(* Maniobras pendientes - Requiere que la variable Modo este actualizada! *)
IF (Coordinador.Producido AND (CV > 0)) THEN
    CV := CV - 1;
ELSIF ((Modo = F2) AND (_Modo <> F2) AND (CV = 0)) THEN
    CV := PV;
END_IF

Panel(Modo := Modo);

(* Modo automatico *)
IF (Modo <> F4) THEN
    Coordinador(
         SFCReset := Panel.Reinicia OR Reinicia OR ((_Modo = D1) AND (Modo <> D1)),
         Ack := (Modo = F1) OR NOT ((Modo = F2) OR (Modo = F3) OR (Modo = A6)),
         Execute := (Modo = F1) OR (Modo = F2) OR (Modo = F3) OR (Modo = A6),

         Producir := (Modo = F1),
         Preparar := (Modo = F2),
         Finalizar := (Modo = F3),
         Restaurar := (Modo = A6) AND Panel.Marcha,

         CI := CI,
  	     Situado := Situado,
         Cargada := PickPlace.Cargada,
         Prensado := Prensa.Prensado,
         Descargada := PickPlace.Descargada,
         Transferido := Cinta.Transferido,
         );

    (* Unidades funcionales *)
    Cinta(
        SFCReset := Panel.Reinicia OR Reinicia OR ((_Modo = D1) AND (Modo <> D1)),
        Ack := NOT (Coordinador.Situa OR Coordinador.Transfiere),
        Execute := Coordinador.Situa OR Coordinador.Transfiere,
        Restore := Coordinador.Restaura,
        Safe := PickPlace.CI,
        Situar := Coordinador.Situa,
        Transferir := Coordinador.Transfiere,
        Situado := Situado
        );

    PickPlace(
        SFCReset := Panel.Reinicia OR Reinicia OR ((_Modo = D1) AND (Modo <> D1)),
        Ack := NOT (Coordinador.Carga OR Coordinador.Descarga),
        Execute := Coordinador.Carga OR Coordinador.Descarga,
        Restore := Coordinador.Restaura,
        Safe := Situado AND Prensa.CI,
        Cargar := Coordinador.Carga,
        Descargar := Coordinador.Descarga
        );

    Prensa(
        SFCReset := Panel.Reinicia OR Reinicia OR ((_Modo = D1) AND (Modo <> D1)),
        Ack := NOT Coordinador.Prensa,
        Execute := Coordinador.Prensa,
        Restore := Coordinador.Restaura,
        Safe := PickPlace.CI,
        RB := RB
        );
END_IF

(* ACTUALIZACION DE IMAGENES *)
_Modo := Modo;


               _   ,   ?;           FB_FMS203_SFC ?|?b	?|?b      ?<    ?r        8  FUNCTION_BLOCK FB_FMS203_SFC
(*
Secuencia de funcionamiento de la estacion.
*)
VAR_INPUT
    (* SFC-Flags *)
    SFCPause: BOOL;
    SFCReset: BOOL;

    (* Indicadores de sincronizacion *)
    Ack: BOOL := TRUE;
    Execute: BOOL;
    Restore: BOOL;
    Resume: BOOL;
    Safe: BOOL := TRUE;


    (* Funcionalidades *)
    Producir: BOOL;
    Preparar: BOOL;
    Finalizar: BOOL;
    Restaurar: BOOL;

    (* Entradas *)
    CI: BOOL;
	Situado: BOOL;
    Cargada: BOOL;
    Prensado: BOOL;
    Descargada: BOOL;
    Transferido: BOOL;

    (* Parametros*)
    TP: TIME := T#3s; (* Tiempo de preparacion *)
    TF: TIME := T#1s; (* Tiempo de finalizacion *)
END_VAR
VAR_OUTPUT
    (* Indicadores de sincronizacion *)
    Done: BOOL;
    Ready: BOOL;

    (* Salidas *)
	Situa: BOOL;
    Carga: BOOL;
    Finaliza: BOOL;
    Finalizada: BOOL;
    Prepara: BOOL;
    Preparada: BOOL;
    Prensa: BOOL;
    Producido: BOOL;
    Descarga: BOOL;
    Restaura: BOOL;
    Restaurada: BOOL;
    Transfiere: BOOL;
END_VAR
VAR
END_VAR       Initial    Ready   N             Producir `           K           Transition Producir 	?:?b   Safe AND Execute AND Producir       S1    Situa   N           Situado         S2    Carga   N           Cargada         S3    Prensa   N           Prensado         S4    Descarga   N        
   Descargada         S5 
   Transfiere   N           Transferido         S6 	   Producido   N           TRUE      Preparar e       K               Transition Preparar 	?:?b   Safe AND Execute AND Preparar       S1a    Prepara   N           TP/X1a  f                        Transition TP/X1a  	?:?b   S1a.t >= TP       S2a 	   Preparada   N           TRUE   	   Finalizar g     ????               Transition Finalizar 	?:?b   Safe AND Execute AND Finalizar       S1b    Finaliza   N           TF/X1b  h                        Transition TF/X1b  	?:?b	   S1b.t>=TF       S2b 
   Finalizada   N           TRUE   	   Restaurar k        @               Transition Restaurar 	?:?b   Safe AND Restaurar       S1c    Restaura   N           CI         S2c 
   Restaurada   N           TRUE         End    Done   N           Ack     Initiald                  +   ,     ?;           FB_Panel ?|?b	?|?b      icicsest        J  FUNCTION_BLOCK FB_Panel
(*
Panel de operador de la estacion

Copyright (c) 2020-2022 victortorreslopez

GNU General Public License

Historia de modificaciones
0.1, 2022/07/15, VTL: primera version
0.0, 2020/10/23, VTL: creacion
*)
VAR_INPUT
    Modo: E_GEMMA;
    TR: TIME := T#3s; (* Tiempo de reinicio *)
END_VAR
VAR_OUTPUT
    Emergencia: BOOL;
    Manual: BOOL;
    Reinicia: BOOL; (* Reinicia el estado inicial *)
    Restaura: BOOL; (* Restaura las condiciones iniciales *)
    Marcha: BOOL;
    Para: BOOL;
END_VAR
VAR
    (* Bloques funcionales *)
    CLK: FB_Clock;
    FP_PM: R_TRIG;
    TmpReinicio: TON;

    (* Entradas *)
    PE AT %I*: BOOL; (* Pulsador de parada de emergencia [EMERGENCY STOP] *)
    PM AT %I*: BOOL; (* Pulsador de marcha [START] *)
    PS AT %I*: BOOL := TRUE; (* Pulsador de parada [STOP] *)
    SM AT %I*: BOOL; (* Selector de modo [AUTO/MAN] *)

    (* Salidas *)
    AS AT %Q*: BOOL; (* Avisador sonoro *)
    LA AT %Q*: BOOL; (* Lampara de alarma [ALARM] *)
    LM AT %Q*: BOOL; (* Lampara de marcha [START] *)
END_VAR?  (* PARAMETROS DE SALIDA *)
Emergencia := PE;
Manual := SM;
Reinicia := TmpReinicio.Q;
Restaura := FP_PM.Q;
Marcha := FP_PM.Q;
Para := NOT PS;

(* ACCIONES *)
AS := (Modo = F3) OR (((Modo = D1) OR (Modo = F2)) AND CLK.Q);
LA := ((Modo = A6) OR (Modo = D1)) AND CLK.Q;
LM := ((Modo = A2) OR (Modo = F1) OR (Modo = F2) OR (Modo = F3)) OR ((Modo = A1) AND CLK.Q);

(* BLOQUES FUNCIONALES *)
CLK();

FP_PM(CLK := PM);

TmpReinicio(
    IN := PM AND NOT PS,
    PT := TR
    );
               5   ,     v'           FB_PickPlace_SFC ?|?b	?|?b                      <  FUNCTION_BLOCK FB_PickPlace_SFC
(*
Secuencias de funcionamiento de las funcionalidades de Pick & Place.
- Carga: carga una base desde el pale situado en la zona de retencion a la zona de 
  carga/descarga (punto de trasvase).
- Descarga: descarga un pale desde el punto de trasvase al pale situado en la zona 
  de retencion.
- Restaura: situa el brazo en posicion vertical
*)
VAR_INPUT
    (* SFC-Flags *)
    SFCPause: BOOL;
    SFCReset: BOOL;

    (* Indicadores de sincronizacion *)
    Ack: BOOL := TRUE;
    Execute: BOOL;
    Restore: BOOL;
    Resume: BOOL;
    Safe: BOOL := TRUE;

    (* Funcionalidades *)
    Cargar: BOOL;
    Descargar: BOOL;
END_VAR
VAR_OUTPUT
    (* Indicadores de sincronizacion *)
    CI: BOOL := TRUE;
    Done: BOOL;
    Ready: BOOL;
    Restored: BOOL := TRUE;

    (* Parametros *)
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
END_VAR       Initial    Ready   N             Cargar 6     ?/??              Transition Cargar 	??b   Safe AND Execute AND Cargar       S1    A_0   N       Hacia el pale       a0         S2    V_1   N       Coge la base       v1         S3    A_1   N       V_1   N       Carga       a2         S4     Suelta la base       NOT v1         S5    A_0   N       Hacia arriba       a1         S6    Cargada   N           TRUE   	   Descargar 7     ?/??              Transition Descargar 	??b   Safe AND Execute AND Descargar       S1a    A_1   N       Hacia la estacion       a2         S2a    V_1   N       Coge la base       v1         S3a    A_0   N       V_1   N       Descarga       a0         S4a     Suelta la base       NOT v1         S5a    A_1   N       Hacia arriba       a1         S6a 
   Descargada   N           TRUE      Restore >     ?/??              Transition Restore 	??b   Safe AND Restore       S1b    A_0   N       Hacia adentro       a0         S2b    A_1   N       Hacia afuera       a1         S3b    Restored   N           TRUE         End    Done   N           Ack     Initiald                  9   ,     8           FB_Prensa_SFC ?|?b	?|?b      h&              U  FUNCTION_BLOCK FB_Prensa_SFC
(*
Secuencias de funcionamiento de la prensa.
- Prensa (Execute): prensa el rodamiento (alto/bajo).
- Restaura: sube la prensa.
*)
VAR_INPUT
    (* SFC-Flags *)
    SFCPause: BOOL;
    SFCReset: BOOL;

    (* Indicadores de sincronizacion *)
    Ack: BOOL := TRUE;
    Execute: BOOL;
    Restore: BOOL;
    Resume: BOOL;
    Safe: BOOL := TRUE;

    (* Parametros *)
    RB: BOOL; (* Rodamiento bajo *)
    TG: TIME := T#2s; (* Tiempo de activacion del grupo hidraulico *)
    TP: TIME := T#2s; (* Tiempo subida del protector *)
END_VAR
VAR_OUTPUT
    (* Indicadores de sincronizacion *)
    CI: BOOL := TRUE;
    Done: BOOL;
    Ready: BOOL;
    Restored: BOOL := TRUE;

    (* Parametros *)
    Prensado: BOOL;

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
END_VAR       Initial    Ready   N             Execute .     ?/??              Transition Execute 	??b   Safe AND Execute       S1    B_1   N       Introduce la base       b1         S2     Retorna       b0         S3    KC1   N       Activa hidraulico       TG/X3 :     ?/??              Transition TG/X3 	??b
   S3.t >= TG       S4    D_1   N       KC1   N       Baja el protector       d1         S5    E_1   N       D_1   N       KC1   N       Baja la prensa       e1-2 ;     ?/??              Transition e1-2 	??b    (NOT RB AND e1) OR (RB AND e2)
       S6    E_0   N       D_1   N       KC1   N       Sube la prensa       e0         S7     Sube el protector       TP/X7 <     ?/??              Transition TP/X7 	??b
   S7.t >= TP       S8    C_1   N       Extrae la base       c1         S9     Retorna       c0         S10    Prensado   N           TRUE      Restore (     ?/??              Transition Restore 	??b   Safe AND Restore       S1a    E_0   N       Sube la prensa       e0         S2a    Restored   N           TRUE         End    Done   N           Ack     Initiald                      ,   9?           MAIN ?|?b	?|?b                      @  PROGRAM MAIN
(*
Programa principal para la estacion "PRENSADO HIDRAULICO DEL RODAMIENTO" (FMS-203) 

Transcripcion de la logica de control especificada mediante un grafcet 
estructurado con un GDMMA basico.

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
1.1, 09/07/2022, VTL: primera version
1.0, 02/05/2021, VTL: creado
*)

VAR
    FMS203: FB_FMS203;
END_VAR   FMS203();
                -   , Z Z 8?           TC_VISU ?|?b
    @    ?|?b?   d   ?                                                                                                       
    @            ??|m  ???     ??                                             @                           ???        @                       @                                                                                                           
    @        ????  cfj     ???                                             @                      ?    ???        @                       @                                                                                                           
    @        ? Z m;  cfj     ???                                             @                          ???        @                       @                                                                                                           
    @        
 &? ?d {  cfj     ???                                             @                          ???        @                       @                                                                                                           
    @        
 
 ?3 |           ???     ???                                0&   PRENSADO HIDRAULICO DEL RODAMIENTO @                          ???       Arial Black @                       @                                                                                                           
    @         
 ? 3 d      ???     ???     ???                                0   FMS-203 @                          ???       Arial Narrow @                       @                                                                                                           
    @        ? < [ mK           ???     ???                                0
   Planta @                          ???    	   Arial @                       @                                                                                                           
    @        ? TAs	c          ???     ???                               0   Introductor @                          ???       Arial Narrow @                       @                                                                                                           
    @        ? A#	          ???     ???                               0   Pick-Place @                          ???       Arial Narrow @                       @                                                                                                           
    @        ? |A?	?          ???     ???                               0   Extractor @                          ???       Arial Narrow @                       @                                                                                                           
    @        ? ?A?	?          ???     ???                               0   Protector @                      	    ???       Arial Narrow @                       @                                                                                                           
    @        ? ?A?	?          ???     ???                               0
   Prensa @                      
    ???       Arial Narrow @                       @                                                                                                           
    @        ? ?A	          ???     ???                               0   Hidraulico @                          ???       Arial Narrow @                       @                                                                                                           
    @        ? ,AK	;          ???     ???                               0   Eyector @                          ???       Arial Narrow @                       @                                                                                                           
    @        Z ????   cfj     ???                                             @                          ???        @                       @                                                                                                           
    @        < ?[ ?K           ???     ???                                0   Parametros @                          ???    	   Arial @                       @                                                                                                           
    @        &^?}]m          ???     ???                               0   Hidraulico @                          ???       Arial Narrow @                       @                                                                                                           
    @        &6?U]E          ???     ???                               0   Protector @                          ???       Arial Narrow @                       @                                                                                                           
    @        &d ?? ]s           ???     ???                               0   Retenedor @                          ???       Arial Narrow @                       @                                                                                                           
    @        ?d ?? ?s   ??? ??? ?   ?                                     MAIN.FMS203.Cinta.TR   %d @                          ???       Arial Narrow @                      @                                                                                                           
    @        &? ?? ]?           ???     ???                               0   Ent. Pale @                          ???       Arial Narrow @                       @                                                                                                           
    @        ?? ?? ??   ??? ??? ?   ?                                     MAIN.FMS203.Cinta.TE   %d @                          ???       Arial Narrow @                      @                                                                                                           
    @        &? ?? ]?           ???     ???                               0   Trans. Pale @                          ???       Arial Narrow @                       @                                                                                                           
    @        ?? ?? ??   ??? ??? ?   ?                                     MAIN.FMS203.Cinta.TT   %d @                          ???       Arial Narrow @                      @                                                                                                           
    @        &?#]          ???     ???                               0   Salida Pale @                          ???       Arial Narrow @                       @                                                                                                           
    @        ??#?  ??? ??? ?   ?                                     MAIN.FMS203.Cinta.TX   %d @                          ???       Arial Narrow @                      @                                                                                                          
    @         ?,,?,  ???     ???                           @                             ???        @                                                                                                                               
    @        ?6?U?E  ??? ??? ?   ?                                     MAIN.FMS203.Prensa.TP   %d @                          ???       Arial Narrow @                      @                                                                                                           
    @        ?^?}?m  ??? ??? ?   ?                                     MAIN.FMS203.Prensa.TG   %d @                          ???       Arial Narrow @                      @                                                                                                           
    @        
 Z ? d ?   cfj     ???                                             @                          ???        @                       @                                                                                                           
    @        
 < ? [ d K           ???     ???                                0	   Tarea @                          ???    	   Arial @                       @                                                                                                           
    @         ? [ ? 7 ?           ???     ???                               0   CV @                          ???       Arial Narrow @                       @                                                                                                           
    @         d [ ? 7 s           ???     ???                               0   PV @                          ???       Arial Narrow @                       @                                                                                                           
    @         ? [ ? 7 ?           ???     ???                               0   CN @                           ???       Arial Narrow @                       @                                                                                                           
    @        n ? ? ? ? ?   ??? ??? ?   ?   ???                               MAIN.FMS203.CV   %d @                      !    ???       Arial Narrow @                  $   INTERN ASSIGN MAIN.FMS203.CV:=(0) @                                                                                                           
    @        n ? ? ? ? ?   ??? ??? ?   ?   ???                               MAIN.FMS203.CN   %d @                      "    ???       Arial Narrow @                  $   INTERN ASSIGN MAIN.FMS203.CN:=(0) @                                                                                                           
    @        n ? ? ? ? ?   ??? ???  ?@  ?@ ???                           NOT MAIN.FMS203.RB       Alto @                      #    ???       Arial Narrow @                  (   INTERN ASSIGN MAIN.FMS203.RB:=(FALSE) @                                                                                                           
    @         ? [ ? 7 ?   ??? ???  ?@  ?@ ???                           MAIN.FMS203.RB       Bajo @                      $    ???       Arial Narrow @                  '   INTERN ASSIGN MAIN.FMS203.RB:=(TRUE) @                                                                                                           
    @          ???|?          ???     ???                                0    @                      %    ???       Arial Black @                       @                                                                                                           
    @        ??????   ???  ?@  ?@  ?@ ???                            MAIN.FMS203.Ready    	   Ready @                      &    ???       Arial Narrow @
                       @                                                                                                           
    @        q?????   ???  ?@  ?@  ?@ ???                            MAIN.FMS203.CI       CI @                      '    ???       Arial Narrow @
                       @                                                                                                           
    @         ?3 ? ?  ?? ?? ???     ???                                    ISA @                      (    ???       Arial Narrow @
                       @                                                     	   16#BEA019                                                  
    @        2 ?` ?I ?      ?? ???      ??                                    2022 @                      )    ???       Arial Narrow @
                       @                                                                                                          
    @        5
 ?3 ?     ??? ??? ???     ???                                    %t %d/%m/%y-%H:%M @                      *    ???       Arial Narrow @                       @                                                                                                         
    @        ( ?? ?d {        ???     ???                                                +    ???        @                                               @ 
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
    @        ????   ??? ??? ??      ???                                    1 @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        ????   ??? ??? ??      ???                                    0 @                      @    ???       Arial Narrow @                       @                                                                                                           
    @        ??	?   ??? ??? ??      ???                                    2 @                      A    ???       Arial Narrow @                       @                                            NOT MAIN.FMS203.Ready        +   SEL(MAIN.FMS203.Ready, 16#FFFFFF, 16#00000)                                                  
    @        n d ? ? ? s   ??? ??? ??? ???                               NOT MAIN.FMS203.Ready   MAIN.FMS203.PV   %d @                      B    ???       Arial Narrow @                      @                                                                                                           
    @        &? ?? ]?           ???     ???                               0   Separador @                      C    ???       Arial Narrow @                       @                                                                                                           
    @        ?? ?? ??   ??? ??? ?   ?                                     MAIN.FMS203.Cinta.TS   %d @                      D    ???       Arial Narrow @                      @                                                                                                           
    @        ?	#?   ??? ??? ??      ???                                    2 @                      E    ???       Arial Narrow @                       @                                                                                                           
    @        ?	#?  ??? ???  ?@  ?@ ???                           MAIN.FMS203.PickPlace.a2       2 @                      F    ???       Arial Narrow @    MAIN.FMS203.PickPlace.a2                 @                                                                                                           
    @        ??#?   ??? ??? ??      ???                                    1 @                      G    ???       Arial Narrow @                       @                                                                                                           
    @        ??#?   ??? ??? ??      ???                                    0 @                      H    ???       Arial Narrow @                       @                                                                                                           
    @        Ji#Y   ??? ??? ??      ???                                    A- @                      I    ???       Arial Narrow @                       @                                                                                                           
    @        r?#?   ??? ??? ??      ???                                    A+ @                      J    ???       Arial Narrow @                       @                                                                                                           
    @        ?T?s?c   ??? ??? ??      ???                            MAIN.FMS203.Prensa.b1       1 @                      K    ???       Arial Narrow @    MAIN.FMS203.Prensa.b1                 @                                                                                                           
    @        ?T?s?c   ??? ??? ??      ???                                    0 @                      L    ???       Arial Narrow @                       @                                                                                                           
    @        JTisYc   ??? ??? ??      ???                                    B- @                      M    ???       Arial Narrow @                       @                                                                                                           
    @        rT?s?c   ??? ??? ??      ???                                    B+ @                      N    ???       Arial Narrow @                       @                                                                                                           
    @        ?T	s?c   ??? ??? ??      ???                                    2 @                      O    ???       Arial Narrow @                       @                                                                                                           
    @        ?|????   ??? ??? ??      ???                                    1 @                      P    ???       Arial Narrow @                       @                                                                                                           
    @        ?|????   ??? ??? ??      ???                                    0 @                      Q    ???       Arial Narrow @                       @                                                                                                           
    @        J|i?Y?   ??? ??? ??      ???                                    C- @                      R    ???       Arial Narrow @                       @                                                                                                           
    @        r|????   ??? ??? ??      ???                                    C+ @                      S    ???       Arial Narrow @                       @                                                                                                           
    @        ?|	???   ??? ??? ??      ???                                    2 @                      T    ???       Arial Narrow @                       @                                                                                                           
    @        ??????   ??? ??? ??      ???                                    1 @                      U    ???       Arial Narrow @                       @                                                                                                           
    @        ??????   ??? ??? ??      ???                                    0 @                      V    ???       Arial Narrow @                       @                                                                                                           
    @        J?i?Y?   ??? ??? ??      ???                                    D- @                      W    ???       Arial Narrow @                       @                                                                                                           
    @        r?????   ??? ??? ??      ???                                    D+ @                      X    ???       Arial Narrow @                       @                                                                                                           
    @        ??	???   ??? ??? ??      ???                                    2 @                      Y    ???       Arial Narrow @                       @                                                                                                           
    @        ??????   ??? ??? ??      ???                                    1 @                      Z    ???       Arial Narrow @                       @                                                                                                           
    @        ??????   ??? ??? ??      ???                                    0 @                      [    ???       Arial Narrow @                       @                                                                                                           
    @        J?i?Y?   ??? ??? ??      ???                                    E- @                      \    ???       Arial Narrow @                       @                                                                                                           
    @        r?????   ??? ??? ??      ???                                    E+ @                      ]    ???       Arial Narrow @                       @                                                                                                           
    @        ??	???   ??? ??? ??      ???                                    2 @                      ^    ???       Arial Narrow @                       @                                                                                                           
    @        ?,?K?;   ??? ??? ??      ???                                    1 @                      _    ???       Arial Narrow @                       @                                                                                                           
    @        ?,?K?;   ??? ??? ??      ???                                    0 @                      `    ???       Arial Narrow @                       @                                                                                                           
    @        J,iKY;   ??? ??? ??      ???                                    V- @                      a    ???       Arial Narrow @                       @                                                                                                           
    @        r,?K?;   ??? ??? ??      ???                                    V+ @                      b    ???       Arial Narrow @                       @                                                                                                           
    @        ?,	K?;   ??? ??? ??      ???                                    2 @                      c    ???       Arial Narrow @                       @                                                                                                           
    @        Ji#Y  ???             ???                           MAIN.FMS203.PickPlace.A_0       A- @                      d    ???       Arial Narrow @    MAIN.FMS203.PickPlace.A_0                 @                                                                                                           
    @        r?#?  ???             ???                           MAIN.FMS203.PickPlace.A_1       A+ @                      e    ???       Arial Narrow @    MAIN.FMS203.PickPlace.A_1                 @                                                                                                           
    @        ??#?  ??? ???  ?@  ?@ ???                           MAIN.FMS203.PickPlace.a0       0 @                      f    ???       Arial Narrow @    MAIN.FMS203.PickPlace.a0                 @                                                                                                           
    @        ??#?  ??? ???  ?@  ?@ ???                           MAIN.FMS203.PickPlace.a1       1 @                      g    ???       Arial Narrow @    MAIN.FMS203.PickPlace.a1                 @                                                                                                           
    @        rT?s?c  ???             ???                           MAIN.FMS203.Prensa.B_1       B+ @                      h    ???       Arial Narrow @    MAIN.FMS203.Prensa.B_1                 @                                                                                                           
    @        ?T?s?c  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.b0       0 @                      i    ???       Arial Narrow @    MAIN.FMS203.Prensa.b0                 @                                                                                                           
    @        ?T?s?c  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.b1       1 @                      j    ???       Arial Narrow @    MAIN.FMS203.Prensa.b1                 @                                                                                                           
    @        r|????  ???             ???                           MAIN.FMS203.Prensa.C_1       C+ @                      k    ???       Arial Narrow @    MAIN.FMS203.Prensa.C_1                 @                                                                                                           
    @        r?????  ???             ???                           MAIN.FMS203.Prensa.D_1       D+ @                      l    ???       Arial Narrow @    MAIN.FMS203.Prensa.D_1                 @                                                                                                           
    @        ??????  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.d1       1 @                      m    ???       Arial Narrow @    MAIN.FMS203.Prensa.d1                 @                                                                                                           
    @        r?????  ???             ???                           MAIN.FMS203.Prensa.E_1       E+ @                      n    ???       Arial Narrow @    MAIN.FMS203.Prensa.E_1                 @                                                                                                           
    @        ?,?K?;  ??? ???  ?@  ?@ ???                           MAIN.FMS203.PickPlace.v1       1 @                      o    ???       Arial Narrow @    MAIN.FMS203.PickPlace.v1                 @                                                                                                           
    @        r,?K?;  ???             ???                           MAIN.FMS203.PickPlace.V_1       V+ @                      p    ???       Arial Narrow @    MAIN.FMS203.PickPlace.V_1                 @                                                                                                           
    @        J??m  ???     ?   ?   ???                           MAIN.FMS203.Prensa.KC1       KC1 @                      q    ???       Arial Narrow @    MAIN.FMS203.Prensa.KC1                 @                                                                                                           
    @        ?|????  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.c0       0 @                      r    ???       Arial Narrow @    MAIN.FMS203.Prensa.c0                 @                                                                                                           
    @        ?|????  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.c1       1 @                      s    ???       Arial Narrow @    MAIN.FMS203.Prensa.c1                 @                                                                                                           
    @        ??	???  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.e2       2 @                      t    ???       Arial Narrow @    MAIN.FMS203.Prensa.e2                 @                                                                                                           
    @        ??????  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.e0       0 @                      u    ???       Arial Narrow @    MAIN.FMS203.Prensa.e0                 @                                                                                                           
    @        ??????  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.e1       1 @                      v    ???       Arial Narrow @    MAIN.FMS203.Prensa.e1                 @                                                                                                         
    @        L???|?        ???     ???                                                w    ???        @                                               @ 
    @            d                                                                                                          
    @           `  <      ??? ??? ??      ???                                    VTL - 2022 @                      x    ???       Arial Narrow @
                       @                                                                                                           
    @                    ??? ??? ??      ???                                    ? @                      y    ???   
   Symbol @                       @             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                                                                                                          
    @         mO? OO  ???     ???                           @                         ?    ???        @                                                                                                                               
    @        ? d A? 	s           ???     ???                               0	   Cinta @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        ?d ?? ?s    ??? ??? ??      ???                                    1 @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        ?d ?? ?s    ??? ??? ??      ???                                    0 @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        ?d 	? ?s    ??? ??? ??      ???                                    2 @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        Jd i? Ys   ???             ???                           MAIN.FMS203.Cinta.RUN       RUN @                      ?    ???       Arial Narrow @
    MAIN.FMS203.Cinta.RUN                 @                                                                                                           
    @        ?d 	? ?s   ??? ???  ?@  ?@ ???                        3   MAIN.FMS203.Cinta.RUN AND NOT MAIN.FMS203.Cinta.REV       4 @                      ?    ???      Webdings @                       @                                                                                                           
    @        ?d ?? ?s   ??? ???  ?@  ?@ ???                        /   MAIN.FMS203.Cinta.RUN AND MAIN.FMS203.Cinta.REV       3 @                      ?    ???      Webdings @                       @                                                                                                           
    @        rd ?? ?s   ???             ???                           MAIN.FMS203.Cinta.REV       REV @                      ?    ???       Arial Narrow @
    MAIN.FMS203.Cinta.REV                 @                                                                                                           
    @        ? ? A? 	?           ???     ???                               0   Retenedor @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        ?? ?? ??    ??? ??? ??      ???                                    0 @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        ?? ?? ??    ??? ??? ??      ???                                    1 @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        J? i? Y?    ??? ??? ??      ???                                    R- @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        r? ?? ??    ??? ??? ??      ???                                    R+ @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        J? i? Y?    ??? ??? ??      ???                                    S- @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        r? ?? ??    ??? ??? ??      ???                                    S+ @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        ?? ?? ??    ??? ??? ??      ???                                    0 @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        ?? ?? ??    ??? ??? ??      ???                                    1 @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        r? ?? ??   ???             ???                           MAIN.FMS203.Cinta.R_1       R+ @                      ?    ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        r? ?? ??   ???             ???                           MAIN.FMS203.Cinta.S_1       S+ @                      ?    ???       Arial Narrow @    MAIN.FMS203.Cinta.S_1                 @                                                                                                           
    @        ?? 	? ??    ??? ??? ??      ???                                    2 @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        ?? 	? ??    ??? ??? ??      ???                                    2 @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        ? ? A? 	?           ???     ???                               0   Separador @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        ? ? A? 	?           ???     ???                               0   Codigo Pale @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        J? i? Y?   ??? ???  ?@  .] ???                            MAIN.FMS203.Cinta.cp2       .2 @                      ?    ???       Arial Narrow @    MAIN.FMS203.Cinta.cp2                 @                                                                                                           
    @        r? ?? ??   ??? ???  ?@  .] ???                            MAIN.FMS203.Cinta.cp1       .1 @                      ?    ???       Arial Narrow @    MAIN.FMS203.Cinta.cp1                 @                                                                                                           
    @        ?? ?? ??   ??? ???  ?@  .] ???                            MAIN.FMS203.Cinta.cp0       .0 @                      ?    ???       Arial Narrow @    MAIN.FMS203.Cinta.cp0                 @                                                                                                           
    @        ?? 	? ??   ??? ??? ???     ???                               MAIN.FMS203.Cinta.CP   %d @                      ?    ???       Consolas @                       @                                                                                                           
    @        ?d ?? ?s   ??? ???  ?@  ?@ ???                           MAIN.FMS203.Cinta.pp       pp @                      ?    ???       Arial Narrow @    MAIN.FMS203.Cinta.pp                 @                                                                                                          
    @         m? ? ? ?   ???     ???                           @                         ?    ???        @                                                                                                                               
    @        ? &???{  cfj     ???                                             @                      ?    ???        @                       @                                                                                                           
    @        ? 0AO	?          ???     ???                               0   Modo @                      ?    ???       Arial Narrow @                       @                                                                         f   SEL(MAIN.FMS203.Director.Defecto,SEL(MAIN.FMS203.Director.Funcionamiento,PAN_Gray8,TC2_Green),RGB_RED)    f   SEL(MAIN.FMS203.Director.Defecto,SEL(MAIN.FMS203.Director.Funcionamiento,PAN_Gray8,TC2_Green),RGB_RED)                      
    @        J0iOY?  ??? ??? ?   ?   ???                               MAIN.FMS203.Modo   %<ModoCodigo> @                      ?    ???       Arial Narrow @                  $   INTERN ASSIGN MAIN.FMS203.CV:=(0) @                                                                         f   SEL(MAIN.FMS203.Director.Defecto,SEL(MAIN.FMS203.Director.Funcionamiento,PAN_Gray8,TC2_Green),RGB_RED)    f   SEL(MAIN.FMS203.Director.Defecto,SEL(MAIN.FMS203.Director.Funcionamiento,PAN_Gray8,TC2_Green),RGB_RED)                      
    @        r0?O?  ??? ??? ?   ?   ???                               MAIN.FMS203.Modo   %<ModoDescripcion> @                      ?    ???       Arial Narrow @                  $   INTERN ASSIGN MAIN.FMS203.CV:=(0) @                                                                                                           
    @        JX?whb  ??? ???  ?@  ?@ ???                        !   NOT MAIN.FMS203.Coordinador.Ready       Estacion @                      ?    ???       Arial Narrow @                       @                                                                                 -   SEL(MAIN.FMS203.Cinta.CI, RGB_RED, PAN_Gray8)                      
    @        ?X?w?b  ??? ???  ?@  ?@ ???                           NOT MAIN.FMS203.Cinta.Ready    	   Cinta @                      ?    ???       Arial Narrow @                       @                                                                                 1   SEL(MAIN.FMS203.PickPlace.CI, RGB_RED, PAN_Gray8)                      
    @        ?X1wb  ??? ???  ?@  ?@ ???                           NOT MAIN.FMS203.PickPlace.Ready       PickPlace @                      ?    ???       Arial Narrow @                       @                                                                                 .   SEL(MAIN.FMS203.Prensa.CI, RGB_RED, PAN_Gray8)                      
    @        :X?wXb  ??? ???  ?@  ?@ ???                           NOT MAIN.FMS203.Prensa.Ready    
   Prensa @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        ?0?O??  ???             ???                           MAIN.FMS203.Reinicia   0   Reinicia @                      ?    ???       Arial Narrow @        MAIN.FMS203.Reinicia        3   INTERN ASSIGN MAIN.FMS203.Cinta.Situado:=(FALSE) @                                                                                                           
    @        ? XAw	g          ???     ???                               0
   Unidad @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        J???h?  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Coordinador.Situa    	   Situa @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        ??????  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Coordinador.Carga    	   Carga @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        ??1??  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Coordinador.Prensa    
   Prensa @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        ??????  ??? ???  ?@  ?@ ???                        "   MAIN.FMS203.Coordinador.Transfiere       Transfiere @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        :???X?  ??? ???  ?@  ?@ ???                            MAIN.FMS203.Coordinador.Descarga       Descarga @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        ? ?A?	?          ???     ???                               0   Funcion @                      ?    ???       Arial Narrow @                       @                                                                                                         
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
 <  2     ??? ??? ??  ??                        @                         ?    ???        @                             ??? cfj  .]  ??  ??   ?  .] ???     ?   ??   ?   ??   ? ? ? ???         ??? cfj  .]  ??  ??   ?  .] ???     ?   ??   ?   ??   ? ? ? ???                                                                                                           
    @        
 ,? d ?  cfj     ???                                             @                      ?    ???        @                       @                                                                                                           
    @        
 ? -d           ???     ???                                0	   Panel @                      ?    ???    	   Arial @                       @                                                                                                           
    @        n 6? U? @  ??? ??? ?   ?   ???                            MAIN.FMS203.Panel.PE    
   E-Stop @                      ?    ???       Arial Narrow @     MAIN.FMS203.Panel.PE                 @                                                                                                           
    @        n ?? ?? ?  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Panel.PM    
   Marcha @                      ?    ???       Arial Narrow @        MAIN.FMS203.Panel.PM             @                                                                                                           
    @        n ?? ?? ?  ??? ??? ?   ?   ???                           NOT MAIN.FMS203.Panel.PS    
   Parada @                      ?    ???       Arial Narrow @        MAIN.FMS203.Panel.PS             @                                                                                                           
    @        n ?? ?? ?  ??? ???         ???                           MAIN.FMS203.Panel.SM!   BOOL_TO_INT(MAIN.FMS203.Panel.SM)   MAN @                      ?    ???       Arial Narrow @    MAIN.FMS203.Panel.SM                 @                                                                                                           
    @         ^[ }2 h  ???     ?       ???                           MAIN.FMS203.Panel.LA   0
   Alarma @                      ?    ???       Arial Narrow @    MAIN.FMS203.Panel.LA                 @                                                                                                           
    @         ?[ ?7 ?  ???      ?@     ???                           MAIN.FMS203.Panel.LM   0
   Marcha @                      ?    ???       Arial Narrow @    MAIN.FMS203.Panel.LM                 @                                                                                                           
    @         ?[ ?7 ?  ???     ??      ???                           MAIN.FMS203.Panel.AS        @                      ?    ???       Trebuchet MS @    MAIN.FMS203.Panel.AS                 @                                                                                                         
    @         ?V ?7 ?        ???     ???                                                ?    ???        @                                               @ 
    @            d                                                                                                          
    @              
 
           ??  ??                                          @                      ?    ???        @                       @                                                                                                           
    @         & 
  
 <  2             ??  ??                        @                         ?    ???        @                             ??? cfj  .]  ??  ??   ?  .] ???     ?   ??   ?   ??   ? ? ? ???                                                                                                           
    @        n ^? }? h  ??? ???  ??  ?? ???                           MAIN.FMS203.POC       POC @                      ?    ???       Arial Narrow @    MAIN.FMS203.POC                 @                                                                                                           
    @         6[ U2 @  ???      ??     ???                           MAIN.FMS203.DPO       DPO @                      ?    ???       Arial Narrow @        MAIN.FMS203.DPO             @             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  ????, ? ? ?         !   Iecsfc.lib 12.5.98 11:03:00 @DX5"   STANDARD.LIB 5.6.98 12:03:02 @F?w5   F   SFCActionControl @      SFCActionType       SFCStepType                      Globale_Variablen @              CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @                                             2                ????????????????  
             ????                 ????  ?X??? ?                      POUs               FB                 FB_Clock  '   ????              FMS203                 FB_Director                 	   FB_FMS203  ^                   FB_FMS203_SFC  _                   FB_Panel  +   ????              PRG                 MAIN      ????              UF                FB_Cinta_SFC  O                  FB_PickPlace_SFC  5                  FB_Prensa_SFC  9   ????????           
   Data types                E_GEMMA  %   ????              Visualizations                TC_VISU  -   ????              Global Variables                Constantes_Globales  $                   Global_Variables                     Variable_Configuration  	   ????                                         s\scnero             ?n?^                         	   localhost            P      	   localhost            P      	   localhost            P     y|?b    5???