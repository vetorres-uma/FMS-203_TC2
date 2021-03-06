CoDeSys+?   ?                  FMS-203 (Monol?tico) @       1.0 @   2.3.9.59   victortorreslopez @?   Implementaci?n de la l?gica de control de 
la estaci?n de prensado hidr?ulico 
(FMS_203) del Sistema Did?ctico Modular 
de Ensamblaje Flexible de SMC
International Training
 
 
 @                             ???b +    @            p?             ?n?^        ?|   @   o   C:\TWINCAT\PLC\LIB\Iecsfc.lib @                                                                                          SFCACTIONCONTROL     
      S_FF                 RS    ??              L_TMR                    TON    ??              D_TMR                    TON    ??              P_TRIG                 R_TRIG    ??              SD_TMR                    TON    ??              SD_FF                 RS    ??              DS_FF                 RS    ??              DS_TMR                    TON    ??              SL_FF                 RS    ??              SL_TMR                    TON    ??           
      N            ??              R0            ??              S0            ??              L            ??              D            ??              P            ??              SD            ??	              DS            ??
              SL            ??              T           ??                 Q            ??                       =??b  ?    ????    q   C:\TWINCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               ??              STR2               ??                 CONCAT                                         =??b  ?   ????           CTD           M             ??           Variable for CD Edge Detection      CD            ??           Count Down on rising edge    LOAD            ??           Load Start Value    PV           ??           Start Value       Q            ??           Counter reached 0    CV           ??           Current Counter Value             =??b  ?   ????           CTU           M             ??            Variable for CU Edge Detection       CU            ??       
    Count Up    RESET            ??           Reset Counter to 0    PV           ??           Counter Limit       Q            ??           Counter reached the Limit    CV           ??           Current Counter Value             =??b  ?   ????           CTUD           MU             ??            Variable for CU Edge Detection    MD             ??            Variable for CD Edge Detection       CU            ??	       
    Count Up    CD            ??
           Count Down    RESET            ??           Reset Counter to Null    LOAD            ??           Load Start Value    PV           ??           Start Value / Counter Limit       QU            ??           Counter reached Limit    QD            ??           Counter reached Null    CV           ??           Current Counter Value             =??b  ?   ????           DELETE               STR               ??              LEN           ??              POS           ??                 DELETE                                         =??b  ?   ????           F_TRIG           M             ??
                 CLK            ??           Signal to detect       Q            ??           Edge detected             =??b  ?   ????           FIND               STR1               ??              STR2               ??                 FIND                                     =??b  ?   ????           INSERT               STR1               ??              STR2               ??              POS           ??                 INSERT                                         =??b  ?   ????           LEFT               STR               ??              SIZE           ??                 LEFT                                         =??b  ?   ????           LEN               STR               ??                 LEN                                     =??b  ?   ????           MID               STR               ??              LEN           ??              POS           ??                 MID                                         =??b  ?   ????           R_TRIG           M             ??
                 CLK            ??           Signal to detect       Q            ??           Edge detected             =??b  ?   ????           REPLACE               STR1               ??              STR2               ??              L           ??              P           ??                 REPLACE                                         =??b  ?   ????           RIGHT               STR               ??              SIZE           ??                 RIGHT                                         =??b  ?   ????           RS               SET            ??              RESET1            ??                 Q1            ??
                       =??b  ?   ????           SEMA           X             ??                 CLAIM            ??	              RELEASE            ??
                 BUSY            ??                       =??b  ?   ????           SR               SET1            ??              RESET            ??                 Q1            ??	                       =??b  ?   ????           TOF           M             ??           internal variable 	   StartTime            ??           internal variable       IN            ??       ?    starts timer with falling edge, resets timer with rising edge    PT           ??           time to pass, before Q is set       Q            ??	       2    is FALSE, PT seconds after IN had a falling edge    ET           ??
           elapsed time             =??b  ?   ????           TON           M             ??           internal variable 	   StartTime            ??           internal variable       IN            ??       ?    starts timer with rising edge, resets timer with falling edge    PT           ??           time to pass, before Q is set       Q            ??	       0    is TRUE, PT seconds after IN had a rising edge    ET           ??
           elapsed time             =??b  ?   ????           TP        	   StartTime            ??           internal variable       IN            ??       !    Trigger for Start of the Signal    PT           ??       '    The length of the High-Signal in 10ms       Q            ??	           The pulse    ET           ??
       &    The current phase of the High-Signal             =??b  ?   ????    R    @                                                                                          FB_CINTA     	      Controlador        ,                                                  FB_Cinta_SFC    ? 4       
    Entradas    pp            ? 7           Presencia de pale    cp0            ? 8           Codigo de pale bit 0    cp1            ? 9           Codigo de pale bit 1    cp2            ? :           Codigo de pale bit 2    RUN             ? =            Motor de la cinta activa [KA1]    REV             ? >       "    Motor de la cinta invierte [KA2]    R_1             ? ?           Retenedor de pale baja [R+]    S_1             ? @           Separador de pale sube [S+]       Ack           ?        -    Acuse de recibo de funcionalidad completada    Execute            ?        3    Inicia la ejecucion de la funcionaliad solicitada    ID           ?        &    Identificador de la unidad funcional    Manual            ? 	       )    Establece modo de funcionamiento manual    MRT           ? 
       H    Maximo tiempo de respuesta de los dispositivos (Maximun Response Time)    Pause            ?        1    Pausa la ejecucion de la funcionalidad en curso    Reset            ?        "    Restablece la condicion de fallo    Restart            ?        $    Reinicia el estado del controlador    Restore            ?        1    Restaura las condiciones iniciales (referencia)    Resume            ?        4    Continua la ejecucion de la funcionalidad en curso    Safe           ?        7    Condicion de seguridad para iniciar una funcionalidad    Situa            ?            
   Transfiere            ?            Mandos directos   MD_CintaAvanza            ? !              MD_CintaRetrocede            ? "              MD_RetenedorBaja            ? #              MD_SeparadorSube            ? $           Parametros    TE    ?     ? '           Tiempo de entrada del pale    TR    ?     ? (           Tiempo del retenedor    TS    ?     ? )           Tiempo del separador    TT    ?     ? *       "    Tiempo de transferencia del pale    TX    ?     ? +           Tiempo de salida del pale 
      Done            ?            Funcionalidad completada    Fail            ?            Unidad funcional en fallo    FailCode           ?            Codigo de fallo 
   FailDevice           ?        )    Identificador del dispositivo que falla    Ready            ?        +    Unidad funcional preparada para funcionar    Restored            ?            Unidad funcional restaurada    IC           ?             Unidad funcional en referencia    CP           ? /           Codigo de pale    Situado            ? 0              Transferido            ? 1                       =??b  @   ????           FB_CINTA_SFC           INITIAL          (x := TRUE, _x := TRUE)                  SFCStepType                   S1                  SFCStepType                   S2                  SFCStepType                   S3                  SFCStepType                   S4                  SFCStepType                   S5                  SFCStepType                   S6                  SFCStepType                   S7                  SFCStepType                   S8                  SFCStepType                   S1A                  SFCStepType                   S2A                  SFCStepType                   S3A                  SFCStepType                   END                  SFCStepType                   Done__action                   SFCActionType                   R_1__action                   SFCActionType                   Ready__action                   SFCActionType                   RUN__action                   SFCActionType                   S_1__action                   SFCActionType                   Situado__action                   SFCActionType                   Transferido__action                   SFCActionType                      SFCPause            & 	              SFCReset            & 
           Indicadores de sincronizacion    Ack           &               Execute            &               Restore            &               Resume            &               Safe           &               Situar            &            
   Transferir            &            Parametros    TE    ?     &            Tiempo de entrada del pale    TR    ?     &             Tiempo del retenedor    TS    ?     & !           Tiempo del separador    TT    ?     & "       "    Tiempo de transferencia del pale    TX    ?     & #           Tiempo de salida del pale    pp            & &           Presencia de pale 	      Done            &               Ready            &               Restored           &               Transferido            & *              Situado            & +       	    Salidas    RUN            & .            Motor de la cinta activa [KA1]    REV            & /       "    Motor de la cinta invierte [KA2]    R_1            & 0           Retenedor de pale baja [R+]    S_1            & 1           Separador de pale sube [S+]             =??b  @    ????           FB_CLOCK           Timer                    TON    '            Auto-pilot timer       EN           '        	    ENabled    PT    ?     '            Semicycle time       ET           '            Elapsed time    Q            '            Square wave             =??b  @    ????           FB_DIRECTOR           ModoAnterior               E_GEMMA     '                 Cancela                           Continua                        
   Emergencia                           Fallo                        
   Finalizada                           FinTarea                           FinCiclo                           Manual                           Marcha                           Para                    $    Solicitud de parada a fin de ciclo 	   Preparada                           Reinicia                        
   Restaurada                        En condiciones iniciales       Modo           A6       E_GEMMA                   Defecto             !           Procedimientos de defecto    Funcionamiento             "       !    Procedimientos de funcionamiento   Parada             #           Procedimientos de parada    Pausa             $                       =??b  @    ????        	   FB_FMS203     	      ModoAnterior               E_GEMMA    ^ ,           Componentes    Controlador        <                                                                  FB_FMS203_SFC    ^ /              Director                                 FB_Director    ^ 0              Panel                                   FB_Panel    ^ 1           Unidades funcionales    Cinta           (ID := ESTACION_CINTA))                                                  FB_Cinta    ^ 4           	   PickPlace           (ID := ESTACION_PICKPLACE)#                                            FB_PickPlace    ^ 5              Prensa           (ID := ESTACION_PRENSA)/                                                     	   FB_Prensa    ^ 6       
    Entradas    POC            ^ 9           PO conectada [RESET]    DPO             ^ <           Desconecta PO       TiempoMaximoRespuesta    0u     ^               ManiobrasDeseadas           ^               ReiniciaEstado            ^               RestableceFallo            ^               RestauraReferencia            ^               RodamientoBajo            ^               F_Carga            ^            
   F_Descarga            ^               F_Prensa            ^               F_Transfiere            ^               F_Situa            ^                  CondicionesIniciales            ^               ManiobrasRealizadas           ^               ManiobrasPendientes           ^                Fallo            ^ !              FalloCodigo           ^ "              FalloDispositivo           ^ #              FalloNumero           ^ $           origen + codigo    FalloOrigen           ^ %           unidad + dispositivo    FalloUnidad           ^ &              Modo               E_GEMMA   ^ '              Pausa            ^ (              Ready            ^ )                       ???b  @  ????           FB_FMS203_SFC           INITIAL          (x := TRUE, _x := TRUE)                  SFCStepType                   S1                  SFCStepType                   S2                  SFCStepType                   S3                  SFCStepType                   S4                  SFCStepType                   S5                  SFCStepType                   S6                  SFCStepType                   S1A                  SFCStepType                   S2A                  SFCStepType                   S1B                  SFCStepType                   S2B                  SFCStepType                   S1C                  SFCStepType                   S2C                  SFCStepType                   END                  SFCStepType                   Carga__action                   SFCActionType                   Descarga__action                   SFCActionType                   Done__action                   SFCActionType                   Finaliza__action                   SFCActionType                   Finalizada__action                   SFCActionType                   Prensa__action                   SFCActionType                   Prepara__action                   SFCActionType                   Preparada__action                   SFCActionType                   Producido__action                   SFCActionType                   Ready__action                   SFCActionType                   Restaura__action                   SFCActionType                   Restaurada__action                   SFCActionType                   Situa__action                   SFCActionType                   Transfiere__action                   SFCActionType                      SFCPause            _               SFCReset            _            Indicadores de sincronizacion    Ack           _               Execute            _               Resume            _               Safe           _            Funcionalidades    Producir            _               Preparar            _            	   Finalizar            _            	   Restaurar            _        
    Entradas    CI            _               Situado            _               Cargado            _               Prensado            _            
   Descargado            _               Transferido            _            Parametros   TP    ?     _            Tpo de preparacion    TF    ?     _             Tiempo de finalizacion       Done            _ $              Ready            _ %       	    Salidas    Situa            _ (              Carga            _ )              Finaliza            _ *           
   Finalizada            _ +              Prepara            _ ,           	   Preparada            _ -              Prensa            _ .           	   Producido            _ /              Descarga            _ 0              Restaura            _ 1           
   Restaurada            _ 2           
   Transfiere            _ 3                       =??b  @    ????           FB_PANEL     
      CLK                   FB_Clock    +               FP_PM                 R_TRIG    +               TmpReinicio                    TON    +         
    Entradas    PE            + #       3    Pulsador de parada de emergencia [EMERGENCY STOP]    PM            + $           Pulsador de marcha [START]    PS           + %           Pulsador de parada [STOP]    SM            + &       &    Selector de modo AUTO/MAN [AUTO/MAN]    AS             + )           Avisador sonoro    LA             + *           Lampara de alarma [ALARM]    LM             + +           Lampara de marcha [START]       Modo               E_GEMMA   +               TR    ?     +            Tiempo de reinicio 	      Cancela            +               Continua            +            
   Emergencia            +               Manual            +               ReiniciaEstado            +               RestableceFallo            +               RestauraReferencia            +               Marcha            +               Para            +                        =??b  @   ????           FB_PICKPLACE     
      Controlador        .                                                    FB_PickPlace_SFC    2 +           Temporizadores de fallo    TemporizadorCilindroRotativo                    TON    2 .              TemporizadorEyectorVacio                    TON    2 /       
    Entradas    a0            2 2           Pick and place detras    a1           2 3           Pick and place en medio    a2            2 4           Pick and place delante    v1            2 5           Pick and place vacio    A_0             2 8           Pick and place atras [A-]    A_1             2 9           Pick and place adelante [A+]    V_1             2 :           Pick and place succiona [V+]       Ack           2        -    Acuse de recibo de funcionalidad completada    Execute            2        3    Inicia la ejecucion de la funcionaliad solicitada    ID           2        &    Identificador de la unidad funcional    Manual            2 	       )    Establece modo de funcionamiento manual    MRT           2 
       H    Maximo tiempo de respuesta de los dispositivos (Maximun Response Time)    Pause            2        1    Pausa la ejecucion de la funcionalidad en curso    Reset            2        "    Restablece la condicion de fallo    Restart            2        $    Reinicia el estado del controlador    Restore            2        1    Restaura las condiciones iniciales (referencia)    Resume            2        4    Continua la ejecucion de la funcionalidad en curso    Safe           2        7    Condicion de seguridad para iniciar una funcionalidad    Carga            2               Descarga            2            Mandos directos   MD_CilindroAdelante            2 !              MD_CilindroAtras            2 "              MD_EyectorSucciona            2 #           	      Done            2            Funcionalidad completada    Fail            2            Unidad funcional en fallo    FailCode           2            Codigo de fallo 
   FailDevice           2        )    Identificador del dispositivo que falla    Ready            2        +    Unidad funcional preparada para funcionar    Restored            2            Unidad funcional restaurada    IC           2             Unidad funcional en referencia    Cargada            2 '           
   Descargada            2 (                       =??b  @   ????           FB_PICKPLACE_SFC           INITIAL          (x := TRUE, _x := TRUE)                  SFCStepType                   S1                  SFCStepType                   S2                  SFCStepType                   S3                  SFCStepType                   S4                  SFCStepType                   S5                  SFCStepType                   S6                  SFCStepType                   S1A                  SFCStepType                   S2A                  SFCStepType                   S3A                  SFCStepType                   S4A                  SFCStepType                   S5A                  SFCStepType                   S6A                  SFCStepType                   S1B                  SFCStepType                   S2B                  SFCStepType                   S3B                  SFCStepType                   END                  SFCStepType                   A_0__action                   SFCActionType                   A_1__action                   SFCActionType                   Cargada__action                   SFCActionType                   Descargada__action                   SFCActionType                   Done__action                   SFCActionType                   Ready__action                   SFCActionType                   Restored__action                   SFCActionType                   V_1__action                   SFCActionType                      SFCPause            H               SFCReset            H            Indicadores de sincronizacion    Ack           H               Execute            H               Restore            H               Resume            H               Safe           H               Cargar            H            	   Descargar            H        
    Entradas    a0            H "           Pick and place detras    a1           H #           Pick and place en medio    a2            H $           Pick and place delante    v1            H %           Pick and place vacio       Done            H               Ready            H               Restored           H               Cargada            H )           
   Descargada            H *       	    Salidas    A_0            H -           Pick and place atras [A-]    A_1            H .           Pick and place adelante [A+]    V_1            H /           Pick and place succiona [V+]             =??b  @    ????        	   FB_PRENSA           Controlador        4                                                          FB_Prensa_SFC    4 .       +    Controlador, Secuencia, Funcionalidad,...    TemporizadorIntroductor                    TON    4 1              TemporizadorExtractor                    TON    4 2              TemporizadorProtector                    TON    4 3              TemporizadorPrensa                    TON    4 4       
    Entradas    b0           4 7       !    Cilindro de introduccion detras    b1            4 8       "    Cilindro de introduccion delante    c0           4 9           Cilindro de extraccion detras    c1            4 :            Cilindro de extraccion delante    d1            4 ;           Protector abajo    e0           4 <           Prensa arriba    e1            4 =           Prensa abajo rodamiento alto    e2            4 >           Prensa abajo rodamiento bajo    B_1             4 A       (    Cilindro de introduccion adelante [B+]    C_1             4 B       &    Cilindro de extraccion adelante [C+]    D_1             4 C           Protector baja [D+]    E_0             4 D           Prensa sube [E-]    E_1             4 E           Prensa baja [E+]    KC1             4 F           Prensa activa motor       Ack           4        -    Acuse de recibo de funcionalidad completada    Execute            4        3    Inicia la ejecucion de la funcionaliad solicitada    ID           4        &    Identificador de la unidad funcional    Manual            4 	       )    Establece modo de funcionamiento manual    MRT           4 
       H    Maximo tiempo de respuesta de los dispositivos (Maximun Response Time)    Pause            4        1    Pausa la ejecucion de la funcionalidad en curso    Reset            4        "    Restablece la condicion de fallo    Restart            4        $    Reinicia el estado del controlador    Restore            4        1    Restaura las condiciones iniciales (referencia)    Resume            4        4    Continua la ejecucion de la funcionalidad en curso    Safe           4        7    Condicion de seguridad para iniciar una funcionalidad    RB            4            Rodamiento bajo    TG    ?     4        +    Tiempo de activacion del grupo hidraulico    TP    ?     4            Tiempo subida del protector    MD_IntroductorAdelante            4 "              MD_ExtractorAdelante            4 #              MD_ProtectorBaja            4 $              MD_PrensaSube            4 %              MD_PrensaBaja            4 &              MD_PrensaMotor            4 '                 Done            4            Funcionalidad completada    Fail            4            Unidad funcional en fallo    FailCode           4            Codigo de fallo 
   FailDevice           4        )    Identificador del dispositivo que falla    Ready            4        +    Unidad funcional preparada para funcionar    Restored            4            Unidad funcional restaurada    IC           4             Unidad funcional en referencia    Prensado            4 +                       =??b  @   ????           FB_PRENSA_SFC           INITIAL          (x := TRUE, _x := TRUE)                  SFCStepType                   S1                  SFCStepType                   S2                  SFCStepType                   S3                  SFCStepType                   S4                  SFCStepType                   S5                  SFCStepType                   S6                  SFCStepType                   S7                  SFCStepType                   S8                  SFCStepType                   S9                  SFCStepType                   S10                  SFCStepType                   S1A                  SFCStepType                   S2A                  SFCStepType                   END                  SFCStepType                   B_1__action                   SFCActionType                   C_1__action                   SFCActionType                   D_1__action                   SFCActionType                   Done__action                   SFCActionType                   E_0__action                   SFCActionType                   E_1__action                   SFCActionType                   KC1__action                   SFCActionType                   Prensado__action                   SFCActionType                   Ready__action                   SFCActionType                   Restored__action                   SFCActionType                      SFCPause            9 	              SFCReset            9 
           Indicadores de sincronizacion    Ack           9               Execute            9               Restore            9               Resume            9               Safe           9               RB            9            Rodamiento bajo    TG    ?     9        +    Tiempo de activacion del grupo hidraulico    TP    ?     9            Tiempo subida del protector    b0           9         !    Cilindro de introduccion detras    b1            9 !       "    Cilindro de introduccion delante    c0           9 "           Cilindro de extraccion detras    c1            9 #            Cilindro de extraccion delante    d1            9 $           Protector abajo    e0           9 %           Prensa arriba    e1            9 &           Prensa abajo rodamiento alto    e2            9 '           Prensa abajo rodamiento bajo 
      Done            9               Ready            9               Restored           9               Prensado            9 +       	    Salidas    B_1            9 .       (    Cilindro de introduccion adelante [B+]    C_1            9 /       &    Cilindro de extraccion adelante [C+]    D_1            9 0           Protector baja [D+]    E_0            9 1           Prensa sube [E-]    E_1            9 2           Prensa baja [E+]    KC1            9 3           Prensa activa motor             =??b  @    ????           MAIN           FMS203                                            	   FB_FMS203      "                               =??b  @    ????           
 ?    4   ^   Z   ?   2   i   ( ?~      K   ?~     K   ?~     K   ?~     K   ?~                 ?~         +     ??localhost ?ژw   l?     ??- U?V?H^??X??? ?? x? ?? 5?.wS?	 ????w+2w*2wl?           l?       ?? D?? ?\?   X^?`? x(2w`^?F  x? x? uu? ????    ?66??             ?? l?          l?       ?? D?? ?? x? D?? ??d?????? ?-?     ,   ,                                                        K         @   =??b??  /*BECKCONFI3*/
        !       @   @   ?   ?     3               
   Standard            	???b                        VAR_GLOBAL
END_VAR
                                                                                  "   , N N ?h             Standard
         MAIN????               =??b                 $????  ??                                      Standard ?n?^	?n?^                                    	=??b       lq               VAR_CONFIG
END_VAR
                                                                                   '           $   ,     J           Constantes_Globales =??b	=??b$                     ?   VAR_GLOBAL CONSTANT
    (* Nombres de los colores RGB *)
    RGB_RED: DWORD := 16#0000FF; (* 255-0-0 *)
    PAN_Gray8: DWORD := 16#8D8B88; (* 136-139-141 *) (* PANTONE Cool Gray 8 C*)
    TC2_Green: DWORD := 16#408000; (* 0, 128, 64 *)
END_VAR
                                                                                               '              , X           Global_Variables =??b	=??b     @??              VAR_GLOBAL
END_VAR
                                                                                               '           	   , ? ? w?           Variable_Configuration =??b	=??b	     @??              VAR_CONFIG
END_VAR
                                                                                                 ?   |1|0|4_FMS-203_FUNCIONAL_SPA.XML @   SPA @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss?????                               7     ?   ???  ?3 ???   ? ???     
    @??  ???     @      DEFAULT             System      ?   |1|0 @   SPA @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss?????                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '   b   ,   ??           E_ESTACION_DEVICES =??b	=??b       9            ;   TYPE E_ESTACION_DEVICES: (
	ESTACION_NINGUNO
);
END_TYPE             a   ,     ?!           E_ESTACION_FAILS ???b	=??b       ^ _           l   TYPE E_ESTACION_FAILS: (
    ESTACION_NONE,
    ESTACION_DESCONECTADA,
    ESTACION_PRESION
);
END_TYPE             c   , < < ?]           E_ESTACION_UNIDADES =??b	=??b       9            }   TYPE E_ESTACION_UNIDADES: (
	ESTACION_NINGUNA,
	ESTACION_CINTA,
    ESTACION_PICKPLACE,
    ESTACION_PRENSA
);
END_TYPE             %   ,     ?           E_GEMMA =??b	=??b                      ?
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
END_TYPE             Y   , x x ??           E_PICKPLACE_DEVICES =??b	=??b       9            n   TYPE E_PICKPLACE_DEVICES: (
	PICKPLACE_NINGUNO,
    PICKPLACE_ROTATIVO,
    PICKPLACE_EYECTOR
);
END_TYPE             Z   , RZ ??           E_PICKPLACE_FAILS =??b	=??b       ^ _           S   TYPE E_PICKPLACE_FAILS: (
    PICKPLACE_NONE,
    PICKPLACE_TIMEOUT
);
END_TYPE             [   , ? ? g#           E_PRENSA_DEVICES =??b	=??b       9            ?   TYPE E_PRENSA_DEVICES: (
	PRENSA_NINGUNO,
    PRENSA_INTRODUCTOR,
    PRENSA_EXTRACTOR,
    PRENSA_PROTECTOR,
    PRENSA_PRENSA
);
END_TYPE             \   , Z Z ??           E_PRENSA_FAILS =??b	=??b       9            J   TYPE E_PRENSA_FAILS: (
    PRENSA_NONE,
    PRENSA_TIMEOUT
);
END_TYPE              ?   ,  ??}?           FB_Cinta ??b	=??b                      ?	  FUNCTION_BLOCK FB_Cinta
(*
Unidad funcional de la "Cinta" transportadora.
*)
VAR_INPUT
    Ack: BOOL := TRUE; (* Acuse de recibo de funcionalidad completada *)
    Execute: BOOL; (* Inicia la ejecucion de la funcionaliad solicitada *)
    ID: BYTE; (* Identificador de la unidad funcional *)
    Manual: BOOL; (* Establece modo de funcionamiento manual *)
    MRT: TIME; (* Maximo tiempo de respuesta de los dispositivos (Maximun Response Time) *)
    Pause: BOOL; (* Pausa la ejecucion de la funcionalidad en curso *)
    Reset: BOOL; (* Restablece la condicion de fallo *)
    Restart: BOOL; (* Reinicia el estado del controlador *)
    Restore: BOOL; (* Restaura las condiciones iniciales (referencia) *)
    Resume: BOOL; (* Continua la ejecucion de la funcionalidad en curso *)
    Safe: BOOL := TRUE; (* Condicion de seguridad para iniciar una funcionalidad *)
END_VAR
VAR_OUTPUT
    Done: BOOL; (* Funcionalidad completada *)
    Fail: BOOL; (* Unidad funcional en fallo *)
    FailCode: WORD; (* Codigo de fallo *)
    FailDevice: BYTE; (* Identificador del dispositivo que falla *)
    Ready: BOOL; (* Unidad funcional preparada para funcionar *)
    Restored: BOOL; (* Unidad funcional restaurada *)
    IC: BOOL := TRUE; (* Unidad funcional en referencia *)
END_VAR
VAR_INPUT
    (* Funcionalidades *)
    Situa: BOOL;
    Transfiere: BOOL;

    (* Mandos directos*)
    MD_CintaAvanza: BOOL;
    MD_CintaRetrocede: BOOL;
    MD_RetenedorBaja: BOOL;
    MD_SeparadorSube: BOOL;

    (* Parametros *)
    TE: TIME := T#1s; (* Tiempo de entrada del pale *)
    TR: TIME := T#1s; (* Tiempo del retenedor *)
    TS: TIME := T#1s; (* Tiempo del separador *)
    TT: TIME := T#1s; (* Tiempo de transferencia del pale *)
    TX: TIME := T#1s; (* Tiempo de salida del pale *)
END_VAR
VAR_OUTPUT
    (* Parametros *)
    CP: UINT; (* Codigo de pale *)
    Situado: BOOL;
    Transferido: BOOL;
END_VAR
VAR
    Controlador: FB_Cinta_SFC;

    (* Entradas *)
    pp AT %I*: BOOL; (* Presencia de pale *)
    cp0 AT %I*: BOOL; (* Codigo de pale bit 0 *)
    cp1 AT %I*: BOOL; (* Codigo de pale bit 1 *)
    cp2 AT %I*: BOOL; (* Codigo de pale bit 2 *)

    (* Salidas *)
    RUN AT %Q*: BOOL; (* Motor de la cinta activa [KA1] *)
    REV AT %Q*: BOOL; (* Motor de la cinta invierte [KA2] *)
    R_1 AT %Q*: BOOL; (* Retenedor de pale baja [R+] *)
    S_1 AT %Q*: BOOL; (* Separador de pale sube [S+] *)
END_VAR?  (* FUNCION DE SALIDA *)
(* Salidas *)
Done := Controlador.Done;
Fail := (FailCode <> 0);
Ready := Controlador.Ready;
Restored := Controlador.Restored;
IC := TRUE;

IF Controlador.Situado THEN
    CP.0 := cp0;
    CP.1 := cp1;
    CP.2 := cp2;
    Situado := TRUE;
ELSIF (Situa OR Transfiere) THEN
    Situado := FALSE;
ELSIF Restart THEN
    Situado := FALSE;
END_IF
Transferido := Controlador.Transferido;

(* BLOQUES FUNCIONALES *)
Controlador(
    (* SFC-Flags *)
    SFCPause := Pause OR Fail AND NOT Restart,
    SFCReset := Restart,

    (* Indicadores de sincronizacion *)
    Ack := Ack,
    Execute := (Situa OR Transfiere),
    Restore := Restore,
    Resume := FALSE,
    Safe := Safe,

    (* Funcionalidades *)
    Situar := Situa,
    Transferir := Transfiere,

    (* Parametros de entrada *)
    TE := TE,
    TR := TR,
    TS := TS,
    TT := TT,
    TX := TX,

    (* Entradas *)
    pp:= pp
);

(* ACCIONES *)
RUN := (Manual AND (MD_CintaAvanza OR MD_CintaRetrocede)) OR (NOT Pause AND Controlador.RUN);
REV := (Manual AND MD_CintaRetrocede) OR Controlador.REV;
R_1 := (Manual AND MD_RetenedorBaja) OR Controlador.R_1;
S_1 := (Manual AND MD_SeparadorSube) OR Controlador.S_1;

(* FUNCION DE FALLO *)
(* Al carecer los actuadores de informacion sensorial de realimentacion no pueden detectarse fallos *)
IF Reset THEN
    FailCode := 0;
    FailDevice := 0;
END_IF
               &   ,     z?           FB_Cinta_SFC =??b	=??b       ?x          a  FUNCTION_BLOCK FB_Cinta_SFC
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
END_VAR
VAR_OUTPUT
    (* Indicadores de sincronizacion *)
    Done: BOOL;
    Ready: BOOL;
    Restored: BOOL := TRUE;
END_VAR
VAR_INPUT
    (* Funcionalidades *)
    Situar: BOOL;
    Transferir: BOOL;

    (* Parametros *)
    TE: TIME := T#1s; (* Tiempo de entrada del pale *)
    TR: TIME := T#1s; (* Tiempo del retenedor *)
    TS: TIME := T#1s; (* Tiempo del separador *)
    TT: TIME := T#1s; (* Tiempo de transferencia del pale *)
    TX: TIME := T#1s; (* Tiempo de salida del pale *)

    (* Entradas *)
    pp: BOOL; (* Presencia de pale *)
END_VAR
VAR_OUTPUT
    (* Parametros *)
    Transferido: BOOL;
    Situado: BOOL;

    (* Salidas *)
    RUN: BOOL; (* Motor de la cinta activa [KA1] *)
    REV: BOOL; (* Motor de la cinta invierte [KA2] *)
    R_1: BOOL; (* Retenedor de pale baja [R+] *)
    S_1: BOOL; (* Separador de pale sube [S+] *)
END_VAR
VAR
END_VAR       Initial    Ready   N          
   Transferir N      iorci s           Transition Transferir 	?7?b   Safe AND Execute AND Transferir       S1    S_1   N       Sube el separador       TS/X1    @     ?/??              Transition TS/X1    	?7?b   (S1.t > TR)       S2    R_1   N       S_1   N       Baja el retenedor       TR/X2    A     ?/??              Transition TR/X2    	?7?b	   S2.t > TR       S3    RUN   N       R_1   N       S_1   N       Cinta adelante       NOT pp         S4    RUN   N       R_1   N       S_1   N    	   Saca pale       TX/X4  -     ?/??              Transition TX/X4  	?7?b	   S4.t > TX       S5    RUN   N       S_1   N       Sube retenedor       TR/X5 ,     ?/??              Transition TR/X5 	?7?b	   S5.t > TR       S6    RUN   N       Baja separador       TS/X6 /     ?/??              Transition TS/X6 	?7?b	   S6.t > TS       S7    RUN   N       Transfiere pale       TT/X7  0     )  EVBO           Transition TT/X7  	?7?b   (S7.t > TT)       S8    Transferido   N           TRUE      Situar O     ?/??              Transition Situar 	?7?b   Safe AND Execute AND Situar       S1a    RUN   N       Trae un pale       pp         S2a    RUN   N       Ajusta un pale       TE/X2a  3     ?/??              TE/X2a  	?7?b
   S2a.t > TE       S3a    Situado   N           TRUE         End    Done   N           Ack     Initiald                  '   , ? ? ??           FB_Clock =??b	=??b                      2  FUNCTION_BLOCK FB_Clock
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
Timer(IN := EN AND NOT Timer.Q, PT := PT, ET => ET);                  ,     ?L           FB_Director =??b	=??b                      ?  FUNCTION_BLOCK FB_Director
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
    Cancela: BOOL;
    Continua: BOOL;
    Emergencia: BOOL;
    Fallo: BOOL;
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
    Pausa: BOOL;
END_VAR
VAR
    ModoAnterior: E_GEMMA;
END_VAR
Z  (* FUNCION DE ESTADO *)
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
            IF Fallo THEN
                ModoAnterior := A2;
                Modo := D2;
            ELSIF FinCiclo THEN
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
            IF Continua THEN
                Modo := ModoAnterior;
            ELSIF Cancela THEN
                Modo := A6;
            END_IF
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
            IF Fallo THEN
                ModoAnterior := F1;
                Modo := D2;
            ELSIF FinTarea THEN
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
            IF Fallo THEN
                ModoAnterior := F4;
                Modo := D2;
            ELSIF NOT Manual THEN
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
            IF NOT Fallo THEN
                Modo := A5;
            ELSE
                (* En este caso no es necesario que suceda nada! *)
                ;
            END_IF

        D3: (* Produccion a pesar de los fallos *)
            ;
    END_CASE
END_IF

(* PARAMETROS DE SALIDA *)
Defecto := (Modo >= D1) AND (Modo <= D3);
Funcionamiento:= (Modo >= F1) AND (Modo <= F6);
Parada := (Modo >= A1) AND (Modo <= A7);
Pausa := (Modo = A3) OR (Modo = A4) OR (Modo = A5) OR (Modo = D1) OR (Modo = D2);

               ^   ,     z        	   FB_FMS203 ???b	???b       io1           ?  FUNCTION_BLOCK FB_FMS203
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
    TiempoMaximoRespuesta: TIME := T#30s;
    ManiobrasDeseadas: UINT;
    ReiniciaEstado: BOOL;
    RestableceFallo: BOOL;
    RestauraReferencia: BOOL;
    RodamientoBajo: BOOL;
    F_Carga: BOOL;
    F_Descarga: BOOL;
    F_Prensa: BOOL;
    F_Transfiere: BOOL;
    F_Situa: BOOL;
END_VAR
VAR_OUTPUT
    CondicionesIniciales: BOOL;
    ManiobrasRealizadas: UINT;
    ManiobrasPendientes: UINT;
    Fallo: BOOL;
    FalloCodigo: WORD;
    FalloDispositivo: BYTE;
    FalloNumero: DWORD; (* origen + codigo *)
    FalloOrigen: WORD; (* unidad + dispositivo *)
    FalloUnidad: BYTE;
    Modo: E_GEMMA;
    Pausa: BOOL;
    Ready: BOOL;
END_VAR
VAR
    ModoAnterior: E_GEMMA;

    (* Componentes *)
    Controlador: FB_FMS203_SFC;
    Director: FB_Director;
    Panel: FB_Panel;

    (* Unidades funcionales *)
    Cinta: FB_Cinta := (ID := ESTACION_CINTA);
    PickPlace: FB_PickPlace := (ID := ESTACION_PICKPLACE);
    Prensa: FB_Prensa := (ID := ESTACION_PRENSA);

    (* Entradas *)
    POC AT %I*: BOOL; (* PO conectada [RESET] *)

    (* Salidas *)
    DPO AT %Q*: BOOL; (* Desconecta PO *)
END_VAR?  (* PARAMETROS DE SALIDA *)
CondicionesIniciales := POC AND Cinta.IC AND PickPlace.IC AND Prensa.IC;

IF Controlador.Producido THEN
    ManiobrasRealizadas := ManiobrasRealizadas + 1;
END_IF

Fallo := (FalloCodigo <> 0);
FalloOrigen := FalloUnidad;
FalloOrigen := SHL(FalloOrigen, 8) + FalloDispositivo;
FalloNumero := FalloOrigen;
FalloNumero := SHL(FalloNumero, 16) + FalloCodigo;
Pausa := Director.Pausa;
Ready := Controlador.Ready AND Cinta.Ready AND PickPlace.Ready AND Prensa.Ready;

(* BLOQUES FUNCIONALES *)
(* Manejadores *)
Director(
    Cancela := Panel.Cancela,
    Continua := Panel.Continua,
    Fallo := Fallo,
    Para := Panel.Para,
    Emergencia := Panel.Emergencia,
    Finalizada := Controlador.Finalizada,
    FinTarea := (ManiobrasDeseadas > 0) AND (ManiobrasPendientes = 0),
    FinCiclo := Controlador.Producido,
    Manual := Panel.Manual,
    Marcha := CondicionesIniciales AND Panel.Marcha,
    Preparada := Controlador.Preparada,
    Reinicia := Panel.ReiniciaEstado OR ReiniciaEstado,
    Restaurada := CondicionesIniciales,
    Modo => Modo
    );

IF (Controlador.Producido AND (ManiobrasPendientes > 0)) THEN
    ManiobrasPendientes := ManiobrasPendientes - 1;
ELSIF ((Modo = F2) AND (ModoAnterior <> F2) AND (ManiobrasPendientes = 0)) THEN
    ManiobrasPendientes := ManiobrasDeseadas;
END_IF

Panel(Modo := Modo);

Controlador(
    SFCPause := Pausa,
    SFCReset := Panel.ReiniciaEstado OR ReiniciaEstado OR ((ModoAnterior = D1) AND (Modo <> D1)),
    Ack := (Modo = F1) OR NOT ((Modo = F2) OR (Modo = F3) OR (Modo = A6)),
    Execute := (Modo = F1),
    Preparar := (Modo = F2),
    Finalizar := (Modo = F3),
    Restaurar := (Modo = A6) AND Panel.Marcha,
    CI := CondicionesIniciales,
 	Situado := Cinta.Situado,
    Cargado := PickPlace.Cargada,
    Prensado := Prensa.Prensado,
    Descargado := PickPlace.Descargada,
    Transferido := Cinta.Transferido
    );

(* Unidades funcionales *)
Cinta(
    Ack := NOT (Controlador.Situa OR Controlador.Transfiere),
    Execute := TRUE,
    Manual := (Director.Modo = F4),
    MRT := TiempoMaximoRespuesta,
    Pause := Pausa,
    Reset := Panel.RestableceFallo OR RestableceFallo ,
    Restart := Panel.ReiniciaEstado OR ReiniciaEstado OR ((ModoAnterior = D1) AND (Modo <> D1)),
    Restore := Controlador.Restaura,
    Resume := FALSE,
    Safe := PickPlace.IC,

    Situa := ((Director.Modo = F4) AND F_Situa) OR Controlador.Situa,
    Transfiere := ((Director.Modo = F4) AND F_Transfiere) OR Controlador.Transfiere
    );

PickPlace(
    Ack := NOT (Controlador.Carga OR Controlador.Descarga),
    Execute := TRUE,
    Manual := (Director.Modo = F4),
    MRT := TiempoMaximoRespuesta,
    Pause := Pausa,
    Reset := Panel.RestableceFallo OR RestableceFallo,
    Restart := Panel.ReiniciaEstado OR ReiniciaEstado OR ((ModoAnterior = D1) AND (Modo <> D1)),
    Restore := Controlador.Restaura,
    Resume := FALSE,
    Safe := Cinta.Ready AND Prensa.Ready,

   Carga := ((Director.Modo = F4) AND F_Carga) OR Controlador.Carga,
   Descarga := ((Director.Modo = F4) AND F_Descarga) OR Controlador.Descarga
   );

Prensa(
    Ack := NOT Controlador.Prensa,
    Execute := ((Director.Modo = F4) AND F_Prensa) OR Controlador.Prensa,
    Manual := (Director.Modo = F4),
    MRT := TiempoMaximoRespuesta,
    Pause := Pausa,
    Reset := Panel.RestableceFallo OR RestableceFallo,
    Restart := Panel.ReiniciaEstado OR ReiniciaEstado OR ((ModoAnterior = D1) AND (Modo <> D1)),
    Restore := Controlador.Restaura,
    Resume := FALSE,
    Safe := PickPlace.IC,

    RB := RodamientoBajo
    );

(* ACTUALIZACION DE IMAGENES *)
ModoAnterior := Modo;

(* FUNCION DE FALLO *)
IF Panel.RestableceFallo OR RestableceFallo THEN
    FalloCodigo := ESTACION_NONE;
    FalloDispositivo := INT_TO_BYTE(ESTACION_NINGUNO);
    FalloUnidad := INT_TO_BYTE(ESTACION_NINGUNA);
ELSIF (Modo <> A6) AND NOT POC THEN
    FalloCodigo := ESTACION_DESCONECTADA;
    FalloDispositivo := INT_TO_BYTE(ESTACION_NINGUNO);
    FalloUnidad := INT_TO_BYTE(ESTACION_NINGUNA);
(*
ELSIF NOT Presion THEN
    FalloCodigo := ESTACION_PRESION;
    FalloDispositivo := INT_TO_BYTE(ESTACION_NINGUNO);
    FalloUnidad := INT_TO_BYTE(ESTACION_NINGUNA);
*)
ELSIF Cinta.Fail THEN
    FalloCodigo := Cinta.FailCode;
    FalloDispositivo := Cinta.FailDevice;
    FalloUnidad := Cinta.ID;
ELSIF PickPlace.Fail THEN
    FalloCodigo := PickPlace.FailCode;
    FalloDispositivo := PickPlace.FailDevice;
    FalloUnidad := PickPlace.ID;
ELSIF Prensa.Fail THEN
    FalloCodigo := Prensa.FailCode;
    FalloDispositivo := Prensa.FailDevice;
    FalloUnidad := Prensa.ID;
END_IF



               _   ,   ,?           FB_FMS203_SFC =??b	=??b      ?<    ?r          FUNCTION_BLOCK FB_FMS203_SFC
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
    Cargado: BOOL;
    Prensado: BOOL;
    Descargado: BOOL;
    Transferido: BOOL;

    (* Parametros*)
    TP: TIME := T#3s; (* Tpo de preparacion *)
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
END_VAR       Initial    Ready   N             Producir `     ?/??              Transition Producir 	???b   Safe AND Execute       S1    Situa   N           Situado         S2    Carga   N           Cargado         S3    Prensa   N           Prensado         S4    Descarga   N        
   Descargado         S5 
   Transfiere   N           Transferido         S6 	   Producido   N           TRUE      Preparar e     ?/??              Transition Preparar 	???b   Safe AND Preparar       S1a    Prepara   N           TP/X1  f     ?/??              TP/X1  	???b   S1a.t >= TP       S2a 	   Preparada   N           TRUE   	   Finalizar g     ?/??              Transition Finalizar 	???b   Safe AND Finalizar       S1b    Finaliza   N           TF/X1  h     ?/??              TF/X1  	???b	   S1b.t>=TF       S2b 
   Finalizada   N           TRUE   	   Restaurar k     ?/??              Transition Restaurar 	???b   Safe AND Restaurar       S1c    Restaura   N           CI         S2c 
   Restaurada   N           TRUE         End    Done   N           Ack     Initiald                  +   ,     v           FB_Panel =??b	=??b      icicsest        ^  FUNCTION_BLOCK FB_Panel
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
    Cancela: BOOL;
    Continua: BOOL;
    Emergencia: BOOL;
    Manual: BOOL;
    ReiniciaEstado: BOOL;
    RestableceFallo: BOOL;
    RestauraReferencia: BOOL;
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
    SM AT %I*: BOOL; (* Selector de modo AUTO/MAN [AUTO/MAN] *)

    (* Salidas *)
    AS AT %Q*: BOOL; (* Avisador sonoro *)
    LA AT %Q*: BOOL; (* Lampara de alarma [ALARM] *)
    LM AT %Q*: BOOL; (* Lampara de marcha [START] *)
END_VAR_  (* PARAMETROS DE SALIDA *)
Cancela := PS;
Continua := FP_PM.Q;
Emergencia := PE;
Manual := SM;
ReiniciaEstado := TmpReinicio.Q;
RestableceFallo := FP_PM.Q;
RestauraReferencia := FP_PM.Q;
Marcha := FP_PM.Q;
Para := NOT PS;

(* ACCIONES *)
AS := (Modo = F3) OR (((Modo = D1) OR (Modo = D2) OR (Modo = F2)) AND CLK.Q);
LA := ((Modo = A6) OR (Modo = D1) OR (Modo = D2)) AND CLK.Q;
LM := ((Modo = A2) OR (Modo = F1) OR (Modo = F2) OR (Modo = F3)) OR ((Modo = A1) AND CLK.Q);

(* BLOQUES FUNCIONALES *)
CLK();

FP_PM(CLK := PM);

TmpReinicio(
    IN := PM AND NOT PS,
    PT := TR
    );
               2   ,   ?           FB_PickPlace  ??b	=??b      `? ??נ?        ?  FUNCTION_BLOCK FB_PickPlace
(*
Unidad funcional del "PickPlace" rotativo.
*)
VAR_INPUT
    Ack: BOOL := TRUE; (* Acuse de recibo de funcionalidad completada *)
    Execute: BOOL; (* Inicia la ejecucion de la funcionaliad solicitada *)
    ID: BYTE; (* Identificador de la unidad funcional *)
    Manual: BOOL; (* Establece modo de funcionamiento manual *)
    MRT: TIME; (* Maximo tiempo de respuesta de los dispositivos (Maximun Response Time) *)
    Pause: BOOL; (* Pausa la ejecucion de la funcionalidad en curso *)
    Reset: BOOL; (* Restablece la condicion de fallo *)
    Restart: BOOL; (* Reinicia el estado del controlador *)
    Restore: BOOL; (* Restaura las condiciones iniciales (referencia) *)
    Resume: BOOL; (* Continua la ejecucion de la funcionalidad en curso *)
    Safe: BOOL := TRUE; (* Condicion de seguridad para iniciar una funcionalidad *)
END_VAR
VAR_OUTPUT
    Done: BOOL; (* Funcionalidad completada *)
    Fail: BOOL; (* Unidad funcional en fallo *)
    FailCode: WORD; (* Codigo de fallo *)
    FailDevice: BYTE; (* Identificador del dispositivo que falla *)
    Ready: BOOL; (* Unidad funcional preparada para funcionar *)
    Restored: BOOL; (* Unidad funcional restaurada *)
    IC: BOOL := TRUE; (* Unidad funcional en referencia *)
END_VAR
VAR_INPUT
    (* Funcionalidades *)
    Carga: BOOL;
    Descarga: BOOL;

    (* Mandos directos*)
    MD_CilindroAdelante: BOOL;
    MD_CilindroAtras: BOOL;
    MD_EyectorSucciona: BOOL;
END_VAR
VAR_OUTPUT
    (* Parametros *)
    Cargada: BOOL;
    Descargada: BOOL;
END_VAR
VAR
    Controlador: FB_PickPlace_SFC;

    (* Temporizadores de fallo *)
    TemporizadorCilindroRotativo: TON;
    TemporizadorEyectorVacio: TON;

    (* Entradas *)
    a0 AT %I*: BOOL; (* Pick and place detras *)
    a1 AT %I*: BOOL := TRUE; (* Pick and place en medio *)
    a2 AT %I*: BOOL; (* Pick and place delante *)
    v1 AT %I*: BOOL; (* Pick and place vacio *)

    (* Salidas *)
    A_0 AT %Q*: BOOL; (* Pick and place atras [A-] *)
    A_1 AT %Q*: BOOL; (* Pick and place adelante [A+] *)
    V_1 AT %Q*: BOOL; (* Pick and place succiona [V+] *)
END_VAR  (* FUNCION DE SALIDA *)
(* Salidas *)
Done := Controlador.Done;
Fail := (FailCode <> 0);
Ready := Controlador.Ready;
Restored := Controlador.Restored;
IC := a1 AND NOT v1;

Cargada := Controlador.Cargada;
Descargada := Controlador.Descargada;

(* BLOQUES FUNCIONALES *)
Controlador(
    (* SFC-Flags *)
    SFCPause := Pause OR Fail AND NOT Restart,
    SFCReset := Restart,

    (* Indicadores de sincronizacion *)
    Ack := Ack,
    Execute := (Carga OR Descarga),
    Restore := Restore,
    Resume := FALSE,
    Safe := Safe,

    (* Funcionalidades *)
    Cargar := Carga,
    Descargar := Descarga,

    (* Entradas *)
    a0 := a0,
    a1 := a1,
    a2 := a2,
    v1 := v1
);

(* ACCIONES *)
A_0 := (Manual AND MD_CilindroAtras) OR Controlador.A_0;
A_1 := (Manual AND MD_CilindroAdelante) OR Controlador.A_1;
V_1 := (Manual AND MD_EyectorSucciona) OR Controlador.V_1;

(* FUNCION DE FALLO *)
TemporizadorCilindroRotativo(
    IN := (MRT > T#0ms) AND (A_0 AND NOT a0) OR (A_1 AND NOT a1),
    PT := MRT
);

TemporizadorEyectorVacio(
    IN := (MRT > T#0ms) AND (NOT V_1 AND v1) OR (V_1 AND NOT v1),
    PT := MRT
);

IF Reset THEN
    FailCode := PICKPLACE_NONE;
    FailDevice := INT_TO_BYTE(PICKPLACE_NINGUNO);
ELSIF TemporizadorCilindroRotativo.Q THEN
    FailCode := PICKPLACE_TIMEOUT;
    FailDevice := INT_TO_BYTE(PICKPLACE_ROTATIVO);
ELSIF TemporizadorEyectorVacio.Q THEN
    FailCode := PICKPLACE_TIMEOUT;
    FailDevice := INT_TO_BYTE(PICKPLACE_EYECTOR);
END_IF
               H   ,   x?           FB_PickPlace_SFC =??b	=??b                        FUNCTION_BLOCK FB_PickPlace_SFC
(*
Secuencias de funcionamiento de las funcionalidades de Pick & Place.
- Carga: carga una base desde el pale situado en la zona de retencion a la zona de 
  carga/descarga (punto de trasvase).
- Descarga: descarga un pale desde el punto de trasvase al pale situado en la zona 
  de retencion.
- Restaura: situa el brazo en posicion vertical.
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
    Safe:BOOL := TRUE;
END_VAR
VAR_OUTPUT
    (* Indicadores de sincronizacion *)
    Done: BOOL;
    Ready: BOOL;
    Restored: BOOL := TRUE;
END_VAR
VAR_INPUT
    (* Funcionalidades *)
    Cargar: BOOL;
    Descargar: BOOL;

	(* Entradas *)
    a0: BOOL; (* Pick and place detras *)
    a1: BOOL := TRUE; (* Pick and place en medio *)
    a2: BOOL; (* Pick and place delante *)
    v1: BOOL; (* Pick and place vacio *)
END_VAR
VAR_OUTPUT
    (* Parametros *)
    Cargada: BOOL;
    Descargada: BOOL;

	(* Salidas *)
    A_0: BOOL; (* Pick and place atras [A-] *)
    A_1: BOOL; (* Pick and place adelante [A+] *)
    V_1: BOOL; (* Pick and place succiona [V+] *)
END_VAR
VAR
END_VAR       Initial    Ready   N             Cargar P     ?/??              Transition Cargar 	i??b   Safe AND Execute AND Cargar       S1    A_0   N       Hacia el pale       a0         S2    V_1   N       Coge la base       v1         S3    A_1   N       V_1   N       Carga       a2         S4     Suelta la base       NOT v1         S5    A_0   N       Hacia arriba       a1         S6    Cargada   N           TRUE   	   Descargar Q     ?/??              Transition Descargar 	i??b   Safe AND Execute AND Descargar       S1a    A_1   N       Hacia la estacion       a2         S2a    V_1   N       Coge la base       v1         S3a    A_0   N       V_1   N       Descarga       a0         S4a     Suelta la base       NOT v1         S5a    A_1   N       Hacia arriba       a1         S6a 
   Descargada   N           TRUE      Restore R     ?/??              Transition Restore 	i??b   Safe AND Restore       S1b    A_0   N       Hacia adentro       a0         S2b    A_1   N       Hacia afuera       a1         S3b    Restored   N           TRUE         End    Done   N           Ack     Initiald                  4   , ? ??        	   FB_Prensa ??b	=??b      `? ??נ?        $  FUNCTION_BLOCK FB_Prensa
(*
Unidad funcional del "Prensa".
*)
VAR_INPUT
    Ack: BOOL := TRUE; (* Acuse de recibo de funcionalidad completada *)
    Execute: BOOL; (* Inicia la ejecucion de la funcionaliad solicitada *)
    ID: BYTE; (* Identificador de la unidad funcional *)
    Manual: BOOL; (* Establece modo de funcionamiento manual *)
    MRT: TIME; (* Maximo tiempo de respuesta de los dispositivos (Maximun Response Time) *)
    Pause: BOOL; (* Pausa la ejecucion de la funcionalidad en curso *)
    Reset: BOOL; (* Restablece la condicion de fallo *)
    Restart: BOOL; (* Reinicia el estado del controlador *)
    Restore: BOOL; (* Restaura las condiciones iniciales (referencia) *)
    Resume: BOOL; (* Continua la ejecucion de la funcionalidad en curso *)
    Safe: BOOL := TRUE; (* Condicion de seguridad para iniciar una funcionalidad *)
END_VAR
VAR_OUTPUT
    Done: BOOL; (* Funcionalidad completada *)
    Fail: BOOL; (* Unidad funcional en fallo *)
    FailCode: WORD; (* Codigo de fallo *)
    FailDevice: BYTE; (* Identificador del dispositivo que falla *)
    Ready: BOOL; (* Unidad funcional preparada para funcionar *)
    Restored: BOOL; (* Unidad funcional restaurada *)
    IC: BOOL := TRUE; (* Unidad funcional en referencia *)
END_VAR
VAR_INPUT
    (* Parametros *)
    RB: BOOL; (* Rodamiento bajo *)
    TG: TIME := T#2s; (* Tiempo de activacion del grupo hidraulico *)
    TP: TIME := T#2s; (* Tiempo subida del protector *)

    (* Mandos directos*)
    MD_IntroductorAdelante: BOOL;
    MD_ExtractorAdelante: BOOL;
    MD_ProtectorBaja: BOOL;
    MD_PrensaSube: BOOL;
    MD_PrensaBaja: BOOL;
    MD_PrensaMotor: BOOL;
END_VAR
VAR_OUTPUT
    (* Parametros *)
    Prensado: BOOL;
END_VAR
VAR
    Controlador: FB_Prensa_SFC; (* Controlador, Secuencia, Funcionalidad,... *)

    (* Temporizadores de fallo *)
    TemporizadorIntroductor: TON;
    TemporizadorExtractor: TON;
    TemporizadorProtector: TON;
    TemporizadorPrensa: TON;

    (* Entradas *)
    b0 AT %I*: BOOL := TRUE; (* Cilindro de introduccion detras *)
    b1 AT %I*: BOOL; (* Cilindro de introduccion delante *)
    c0 AT %I*: BOOL := TRUE; (* Cilindro de extraccion detras *)
    c1 AT %I*: BOOL; (* Cilindro de extraccion delante *)
    d1 AT %I*:BOOL; (* Protector abajo *)
    e0 AT %I*: BOOL := TRUE; (* Prensa arriba *)
    e1 AT %I*: BOOL; (* Prensa abajo rodamiento alto *)
    e2 AT %I*: BOOL; (* Prensa abajo rodamiento bajo *)

    (* Salidas *)
    B_1 AT %Q*: BOOL; (* Cilindro de introduccion adelante [B+] *)
    C_1 AT %Q*: BOOL; (* Cilindro de extraccion adelante [C+] *)
    D_1 AT %Q*: BOOL; (* Protector baja [D+] *)
    E_0 AT %Q*: BOOL; (* Prensa sube [E-] *)
    E_1 AT %Q*: BOOL; (* Prensa baja [E+] *)
    KC1 AT %Q*: BOOL; (* Prensa activa motor *)
END_VARi  (* FUNCION DE SALIDA *)
(* Salidas *)
Done := Controlador.Done;
Fail := (FailCode <> 0);
Ready := Controlador.Ready;
Restored := Controlador.Restored;
IC := b0 AND c0 AND NOT d1 AND e0;

Prensado := Controlador.Prensado;

(* BLOQUES FUNCIONALES *)
Controlador(
    (* SFC-Flags *)
    SFCPause := Pause OR Fail AND NOT Restart,
    SFCReset := Restart,

    (* Indicadores de sincronizacion *)
    Ack := Ack,
    Execute := Execute,
    Restore := Restore,
    Resume := FALSE,
    Safe := Safe,

    (* Parametros *)
    RB := RB,
    TG := TG,
    TP := TP,

    (* Entradas *)
    b0 := b0,
    b1 := b1,
    c0 := c0,
    c1 := c1,
    d1 := d1,
    e0 := e0,
    e1 := e1,
    e2 := e2
);

(* ACCIONES *)
B_1 := (Manual AND MD_IntroductorAdelante) OR Controlador.B_1;
C_1 := (Manual AND MD_ExtractorAdelante) OR Controlador.C_1;
D_1 := (Manual AND MD_ProtectorBaja) OR Controlador.D_1;
E_0 := (Manual AND MD_PrensaSube) OR Controlador.E_0;
E_1 := (Manual AND MD_PrensaBaja) OR Controlador.E_1;
KC1 := (Manual AND MD_PrensaMotor) OR Controlador.KC1;

(* FUNCION DE FALLO *)
TemporizadorIntroductor(
    IN := (MRT > T#0ms) AND (NOT B_1 AND NOT b0) OR (B_1 AND NOT b1),
    PT := MRT
);

TemporizadorExtractor(
    IN := (MRT > T#0ms) AND (NOT C_1 AND NOT c0) OR (C_1 AND NOT c1),
    PT := MRT
);

TemporizadorProtector(
    IN := (MRT > T#0ms) AND (D_1 AND NOT d1),
    PT := MRT
);

TemporizadorPrensa(
    IN := (MRT > T#0ms) AND (E_0 AND NOT (e0 OR e1)) OR (E_1 AND NOT (e2 OR e1)),
    PT := MRT
);

IF Reset THEN
    FailCode := PRENSA_NONE;
    FailDevice := INT_TO_BYTE(PRENSA_NINGUNO);
ELSIF TemporizadorIntroductor.Q THEN
    FailCode := PRENSA_TIMEOUT;
    FailDevice := INT_TO_BYTE(PRENSA_INTRODUCTOR);
ELSIF TemporizadorExtractor.Q THEN
    FailCode := PRENSA_TIMEOUT;
    FailDevice := INT_TO_BYTE(PRENSA_EXTRACTOR);
ELSIF TemporizadorProtector.Q THEN
    FailCode := PRENSA_TIMEOUT;
    FailDevice := INT_TO_BYTE(PRENSA_PROTECTOR);
ELSIF TemporizadorPrensa.Q THEN
    FailCode := PRENSA_TIMEOUT;
    FailDevice := INT_TO_BYTE(PRENSA_PRENSA);
END_IF
               9   ,     ?L           FB_Prensa_SFC =??b	=??b      h&                 FUNCTION_BLOCK FB_Prensa_SFC
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
    Safe:BOOL := TRUE;
END_VAR
VAR_OUTPUT
    (* Indicadores de sincronizacion *)
    Done: BOOL;
    Ready: BOOL;
    Restored: BOOL := TRUE;
END_VAR
VAR_INPUT
    (* Parametros *)
    RB: BOOL; (* Rodamiento bajo *)
    TG: TIME := T#2s; (* Tiempo de activacion del grupo hidraulico *)
    TP: TIME := T#2s; (* Tiempo subida del protector *)

	(* Entradas *)
    b0: BOOL := TRUE; (* Cilindro de introduccion detras *)
    b1: BOOL; (* Cilindro de introduccion delante *)
    c0: BOOL := TRUE; (* Cilindro de extraccion detras *)
    c1: BOOL; (* Cilindro de extraccion delante *)
    d1: BOOL; (* Protector abajo *)
    e0: BOOL := TRUE; (* Prensa arriba *)
    e1: BOOL; (* Prensa abajo rodamiento alto *)
    e2: BOOL; (* Prensa abajo rodamiento bajo *)
END_VAR
VAR_OUTPUT
    (* Parametros *)
    Prensado: BOOL;

    (* Salidas *)
    B_1: BOOL; (* Cilindro de introduccion adelante [B+] *)
    C_1: BOOL; (* Cilindro de extraccion adelante [C+] *)
    D_1: BOOL; (* Protector baja [D+] *)
    E_0: BOOL; (* Prensa sube [E-] *)
    E_1: BOOL; (* Prensa baja [E+] *)
    KC1: BOOL; (* Prensa activa motor *)
END_VAR
VAR
END_VAR       Initial    Ready   N             Execute S                        Transition Execute 	v,?b   Safe AND Execute       S1    B_1   N       Introduce la base       b1         S2     Retorna       b0         S3    KC1   N       Activa hidraulico       TG/X3 :                        Transition TG/X3 	v,?b
   S3.t >= TG       S4    D_1   N       KC1   N       Baja protector       d1         S5    E_1   N       D_1   N       KC1   N       Baja la prensa       e12 ;                        Transition e12 	v,?b    (NOT RB AND e1) OR (RB AND e2)
       S6    E_0   N       D_1   N       KC1   N       Sube la prensa       e0         S7     Sube el protector       TP/X7 <                        Transition TP/X7 	v,?b
   S7.t >= TP       S8    C_1   N       Extrae la base       c1         S9     Retorna       c0         S10    Prensado   N           TRUE      Restore T                        Transition Restore 	v,?b   Safe AND Restore       S1a    E_0   N       Sube la prensa       e0         S2a    Restored   N           TRUE         End    Done   N           Ack     Initiald                      ,   9?           MAIN =??b	=??b                      ?  PROGRAM MAIN
(*
Programa principal para la estacion "PRENSADO HIDRAULICO DEL RODAMIENTO" (FMS-203) 

Transcripcion funcional de la logica de control especificada mediante un grafcet 
estructurado con un GDMMA avanzado.
- Modo continuo/por lotes
- Modo manual (mandos directos/funcionalidades)
- Deteccion, propagacion y tratamiento de fallos
- Recuperacion del fallo regresando al modo anterior
- Recuperacion automatica de las condiciones iniciales
- Condiciones de seguridad para iniciar las funionalidades
- Paradas: inmediata y a final de ciclo

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
1.0, 18/07/2022, VTL: primera version
0.0, 02/05/2021, VTL: creado
*)

VAR
    FMS203: FB_FMS203;
END_VAR   FMS203();
                i   , z  ?           TC_VISU =??b
    @   ??b?  d   ?                                                                                                       
    @        Z ?#a?   cfj     ???                                             @                         ???        @                       @                                                                                                           
    @            ?|?  ???     ??                                             @                           ???        @                       @                                                                                                           
    @        ? Z 1mE  cfj     ???                                             @                          ???        @                       @                                                                                                           
    @        
 :? ?d ?  cfj     ???                                             @                          ???        @                       @                                                                                                           
    @        
 
 ?3 |           ???     ???                                0&   PRENSADO HIDRAULICO DEL RODAMIENTO @                          ???       Arial Black @                       @                                                                                                           
    @         
 ? 3 d      ???     ???     ???                                0   FMS-203 @                          ???       Arial Narrow @                       @                                                                                                           
    @        ? < [ mK           ???     ???                                0
   Planta @                          ???    	   Arial @                       @                                                                                                           
    @        ? hA?	w          ???     ???                               0   Introductor @                          ???       Arial Narrow @                       @                                                                                                           
    @        ? A-	          ???     ???                               0   Pick-Place @                          ???       Arial Narrow @                       @                                                                                                           
    @        ? ?A?	?          ???     ???                               0   Extractor @                          ???       Arial Narrow @                       @                                                                                                           
    @        ? ?A?	?          ???     ???                               0   Protector @                      	    ???       Arial Narrow @                       @                                                                                                           
    @        ? ?A?	?          ???     ???                               0
   Prensa @                      
    ???       Arial Narrow @                       @                                                                                                           
    @        ? A'	          ???     ???                               0   Hidraulico @                          ???       Arial Narrow @                       @                                                                                                           
    @        ? 6AU	E          ???     ???                               0   Eyector @                          ???       Arial Narrow @                       @                                                                                                           
    @        Z ?1?E  cfj     ???                                             @                          ???        @                       @                                                                                                           
    @        < ?[ ?K           ???     ???                                0   Par?metros @                          ???    	   Arial @                       @                                                                                                           
    @        &??	]?          ???     ???                               0   Hidr?ulico @                          ???       Arial Narrow @                       @                                                                                                           
    @        &???]?          ???     ???                               0   Protector @                          ???       Arial Narrow @                       @                                                                                                           
    @        &? ?]?           ???     ???                               0   Retenedor @                          ???       Arial Narrow @                       @                                                                                                           
    @        ?? ???   ??? ??? ?   ?                                     MAIN.FMS203.Cinta.TR   %d @                          ???       Arial Narrow @                      @                                                                                                           
    @        &@?_]O          ???     ???                               0   Ent. Pal? @                          ???       Arial Narrow @                       @                                                                                                           
    @        ?@?_?O  ??? ??? ?   ?                                     MAIN.FMS203.Cinta.TE   %d @                          ???       Arial Narrow @                      @                                                                                                           
    @        &h??]w          ???     ???                               0   Trans. Pal? @                          ???       Arial Narrow @                       @                                                                                                           
    @        ?h???w  ??? ??? ?   ?                                     MAIN.FMS203.Cinta.TT   %d @                          ???       Arial Narrow @                      @                                                                                                           
    @        &???]?          ???     ???                               0   Salida Pal? @                          ???       Arial Narrow @                       @                                                                                                           
    @        ??????  ??? ??? ?   ?                                     MAIN.FMS203.Cinta.TX   %d @                          ???       Arial Narrow @                      @                                                                                                          
    @         ?????  ???     ???                           @                             ???        @                                                                                                                               
    @        ??????  ??? ??? ?   ?                                     MAIN.FMS203.Prensa.TP   %d @                          ???       Arial Narrow @                      @                                                                                                           
    @        ???	??  ??? ??? ?   ?                                     MAIN.FMS203.Prensa.TG   %d @                          ???       Arial Narrow @                      @                                                                                                           
    @        
 Z ? d ?   cfj     ???                                             @                          ???        @                       @                                                                                                           
    @        
 < ? [ d K           ???     ???                                0	   Tarea @                          ???    	   Arial @                       @                                                                                                           
    @         ? [ ? 7 ?           ???     ???                               0   CV @                          ???       Arial Narrow @                  5   INTERN ASSIGN MAIN.FMS203.ManiobrasPendientes:=(0) @                                                                                                           
    @         d [ ? 7 s           ???     ???                               0   PV @                          ???       Arial Narrow @                  3   INTERN ASSIGN MAIN.FMS203.ManiobrasDeseadas:=(0) @                                                                                                           
    @         ? [ ? 7 ?           ???     ???                               0   CN @                           ???       Arial Narrow @                  5   INTERN ASSIGN MAIN.FMS203.ManiobrasRealizadas:=(0) @                                                                                                           
    @        n ? ? ? ? ?   ??? ??? ?   ?   ???                               MAIN.FMS203.ManiobrasPendientes   %d @                      !    ???       Arial Narrow @                  5   INTERN ASSIGN MAIN.FMS203.ManiobrasPendientes:=(0) @                                                                                                           
    @        n ? ? ? ? ?   ??? ??? ?   ?   ???                               MAIN.FMS203.ManiobrasRealizadas   %d @                      "    ???       Arial Narrow @                  5   INTERN ASSIGN MAIN.FMS203.ManiobrasRealizadas:=(0) @                                                                                                           
    @        n ? ? ? ? ?   ??? ???  ?@  ?@ ???                           NOT MAIN.FMS203.RodamientoBajo       Alto @                      #    ???       Arial Narrow @                  4   INTERN ASSIGN MAIN.FMS203.RodamientoBajo:=(FALSE) @                                                                                                           
    @         ? [ ? 7 ?   ??? ???  ?@  ?@ ???                           MAIN.FMS203.RodamientoBajo       Bajo @                      $    ???       Arial Narrow @                  3   INTERN ASSIGN MAIN.FMS203.RodamientoBajo:=(TRUE) @                                                                                                           
    @          ??|?          ???     ???                                0    @                      %    ???       Arial Black @                       @                                                                                                           
    @        ?????   ???  ?@  ?@  ?@ ???                            MAIN.FMS203.Ready    	   Ready @                      &    ???       Arial Narrow @
        MAIN.FMS203.ReiniciaEstado             @                                                                                                           
    @        q????   ???  ?@  ?@  ?@ ???                             MAIN.FMS203.CondicionesIniciales       CI @                      '    ???       Arial Narrow @
        MAIN.FMS203.RestauraReferencia             @                                                                                                           
    @         ?3  ?  ?? ?? ???     ???                                    ISA @                      (    ???       Arial Narrow @
                       @                                                     	   16#BEA019                                                  
    @        2 ?` I ?      ?? ???      ??                                    2022 @                      )    ???       Arial Narrow @
                       @                                                                                                          
    @        5
 ?3 ?     ??? ??? ???     ???                                    %t %d/%m/%y-%H:%M @                      *    ???       Arial Narrow @                       @                                                                                                         
    @        ( S? ?d ?        ???     ???                                                +    ???        @                                               @ 
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
    @        ??'?   ??? ??? ??      ???                                    1 @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        ??'?   ??? ??? ??      ???                                    0 @                      @    ???       Arial Narrow @                       @                                                                                                           
    @        ?	'?   ??? ??? ??      ???                                    2 @                      A    ???       Arial Narrow @                       @                                            NOT MAIN.FMS203.Ready        +   SEL(MAIN.FMS203.Ready, 16#FFFFFF, 16#00000)                                                  
    @        n d ? ? ? s   ??? ??? ??? ???                               NOT MAIN.FMS203.Ready   MAIN.FMS203.ManiobrasDeseadas   %d @                      B    ???       Arial Narrow @                      @                                                                                                           
    @        &?7]'          ???     ???                               0   Separador @                      C    ???       Arial Narrow @                       @                                                                                                           
    @        ??7?'  ??? ??? ?   ?                                     MAIN.FMS203.Cinta.TS   %d @                      D    ???       Arial Narrow @                      @                                                                                                           
    @        ?	-?   ??? ??? ??      ???                                    2 @                      E    ???       Arial Narrow @                       @                                                                                                           
    @        ?	-?  ??? ???  ?@  ?@ ???                           MAIN.FMS203.PickPlace.a2       2 @                      F    ???       Arial Narrow @    MAIN.FMS203.PickPlace.a2                 @                                                                                                           
    @        ??-?   ??? ??? ??      ???                                    1 @                      G    ???       Arial Narrow @                       @                                                                                                           
    @        ??-?   ??? ??? ??      ???                                    0 @                      H    ???       Arial Narrow @                       @                                                                                                           
    @        Ji-Y   ??? ??? ??      ???                                    A- @                      I    ???       Arial Narrow @                       @                                                                                                           
    @        r?-?   ??? ??? ??      ???                                    A+ @                      J    ???       Arial Narrow @                       @                                                                                                           
    @        ?h???w   ??? ??? ??      ???                            MAIN.FMS203.Prensa.b1       1 @                      K    ???       Arial Narrow @    MAIN.FMS203.Prensa.b1                 @                                                                                                           
    @        ?h???w   ??? ??? ??      ???                                    0 @                      L    ???       Arial Narrow @                       @                                                                                                           
    @        Jhi?Yw   ??? ??? ??      ???                                    B- @                      M    ???       Arial Narrow @                       @                                                                                                           
    @        rh???w   ??? ??? ??      ???                                    B+ @                      N    ???       Arial Narrow @                       @                                                                                                           
    @        ?h	??w   ??? ??? ??      ???                                    2 @                      O    ???       Arial Narrow @                       @                                                                                                           
    @        ??????   ??? ??? ??      ???                                    1 @                      P    ???       Arial Narrow @                       @                                                                                                           
    @        ??????   ??? ??? ??      ???                                    0 @                      Q    ???       Arial Narrow @                       @                                                                                                           
    @        J?i?Y?   ??? ??? ??      ???                                    C- @                      R    ???       Arial Narrow @                       @                                                                                                           
    @        r?????   ??? ??? ??      ???                                    C+ @                      S    ???       Arial Narrow @                       @                                                                                                           
    @        ??	???   ??? ??? ??      ???                                    2 @                      T    ???       Arial Narrow @                       @                                                                                                           
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
    @        ?6?U?E   ??? ??? ??      ???                                    1 @                      _    ???       Arial Narrow @                       @                                                                                                           
    @        ?6?U?E   ??? ??? ??      ???                                    0 @                      `    ???       Arial Narrow @                       @                                                                                                           
    @        J6iUYE   ??? ??? ??      ???                                    V- @                      a    ???       Arial Narrow @                       @                                                                                                           
    @        r6?U?E   ??? ??? ??      ???                                    V+ @                      b    ???       Arial Narrow @                       @                                                                                                           
    @        ?6	U?E   ??? ??? ??      ???                                    2 @                      c    ???       Arial Narrow @                       @                                                                                                           
    @        Ji-Y  ???             ???                           MAIN.FMS203.PickPlace.A_0       A- @                      d    ???       Arial Narrow @    MAIN.FMS203.PickPlace.A_0                 @                                                                                                           
    @        r?-?  ???             ???                           MAIN.FMS203.PickPlace.A_1       A+ @                      e    ???       Arial Narrow @    MAIN.FMS203.PickPlace.A_1                 @                                                                                                           
    @        ??-?  ??? ???  ?@  ?@ ???                           MAIN.FMS203.PickPlace.a0       0 @                      f    ???       Arial Narrow @    MAIN.FMS203.PickPlace.a0                 @                                                                                                           
    @        ??-?  ??? ???  ?@  ?@ ???                           MAIN.FMS203.PickPlace.a1       1 @                      g    ???       Arial Narrow @    MAIN.FMS203.PickPlace.a1                 @                                                                                                           
    @        rh???w  ???             ???                           MAIN.FMS203.Prensa.B_1       B+ @                      h    ???       Arial Narrow @    MAIN.FMS203.Prensa.B_1                 @                                                                                                           
    @        ?h???w  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.b0       0 @                      i    ???       Arial Narrow @    MAIN.FMS203.Prensa.b0                 @                                                                                                           
    @        ?h???w  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.b1       1 @                      j    ???       Arial Narrow @    MAIN.FMS203.Prensa.b1                 @                                                                                                           
    @        r?????  ???             ???                           MAIN.FMS203.Prensa.C_1       C+ @                      k    ???       Arial Narrow @    MAIN.FMS203.Prensa.C_1                 @                                                                                                           
    @        r?????  ???             ???                           MAIN.FMS203.Prensa.D_1       D+ @                      l    ???       Arial Narrow @    MAIN.FMS203.Prensa.D_1                 @                                                                                                           
    @        ??????  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.d1       1 @                      m    ???       Arial Narrow @    MAIN.FMS203.Prensa.d1                 @                                                                                                           
    @        r?????  ???             ???                           MAIN.FMS203.Prensa.E_1       E+ @                      n    ???       Arial Narrow @    MAIN.FMS203.Prensa.E_1                 @                                                                                                           
    @        ?6?U?E  ??? ???  ?@  ?@ ???                           MAIN.FMS203.PickPlace.v1       1 @                      o    ???       Arial Narrow @    MAIN.FMS203.PickPlace.v1                 @                                                                                                           
    @        r6?U?E  ???             ???                           MAIN.FMS203.PickPlace.V_1       V+ @                      p    ???       Arial Narrow @    MAIN.FMS203.PickPlace.V_1                 @                                                                                                           
    @        J?'m  ???     ?   ?   ???                           MAIN.FMS203.Prensa.KC1       KC1 @                      q    ???       Arial Narrow @    MAIN.FMS203.Prensa.KC1                 @                                                                                                           
    @        ??????  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.c0       0 @                      r    ???       Arial Narrow @    MAIN.FMS203.Prensa.c0                 @                                                                                                           
    @        ??????  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.c1       1 @                      s    ???       Arial Narrow @    MAIN.FMS203.Prensa.c1                 @                                                                                                           
    @        ??	???  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.e2       2 @                      t    ???       Arial Narrow @    MAIN.FMS203.Prensa.e2                 @                                                                                                           
    @        ??????  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.e0       0 @                      u    ???       Arial Narrow @    MAIN.FMS203.Prensa.e0                 @                                                                                                           
    @        ??????  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Prensa.e1       1 @                      v    ???       Arial Narrow @    MAIN.FMS203.Prensa.e1                 @                                                                                                         
    @        L??|?        ???     ???                                                w    ???        @                                               @ 
    @            d                                                                                                          
    @           `  <      ??? ??? ??      ???                                    VTL - 2022 @                      x    ???       Arial Narrow @
                       @                                                                                                           
    @                    ??? ??? ??      ???                                    ? @                      y    ???   
   Symbol @                       @             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                                                                                                          
    @         m^? ^^  ???     ???                           @                         ?    ???        @                                                                                                                               
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
    @         m?   ???     ???                           @                         ?    ???        @                                                                                                                               
    @        ? :????  cfj     ???                                             @                      ?    ???        @                       @                                                                                                           
    @        ? DAc	S          ???     ???                               0   Modo @                      ?    ???       Arial Narrow @                       @                                                                         f   SEL(MAIN.FMS203.Director.Defecto,SEL(MAIN.FMS203.Director.Funcionamiento,PAN_Gray8,TC2_Green),RGB_RED)    f   SEL(MAIN.FMS203.Director.Defecto,SEL(MAIN.FMS203.Director.Funcionamiento,PAN_Gray8,TC2_Green),RGB_RED)                      
    @        JD?cmS  ??? ??? ?   ?   ???                               MAIN.FMS203.Modo   %<ModoCodigo> @                      ?    ???       Arial Narrow @                  5   INTERN ASSIGN MAIN.FMS203.ManiobrasPendientes:=(0) @                                                                         f   SEL(MAIN.FMS203.Director.Defecto,SEL(MAIN.FMS203.Director.Funcionamiento,PAN_Gray8,TC2_Green),RGB_RED)    f   SEL(MAIN.FMS203.Director.Defecto,SEL(MAIN.FMS203.Director.Funcionamiento,PAN_Gray8,TC2_Green),RGB_RED)                      
    @        ?D?c?S  ??? ??? ?   ?   ???                               MAIN.FMS203.Modo   %<ModoDescripcion> @                      ?    ???       Arial Narrow @                  5   INTERN ASSIGN MAIN.FMS203.ManiobrasPendientes:=(0) @                                                                                                         
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
 ,? 1d ?  cfj     ???                                             @                      ?    ???        @                       @                                                                                                           
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
 <  2             ??  ??                        @                         ?    ???        @                                 ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                                                                                                           
    @        n ^? }? m  ??? ???  ??  ?? ???                           MAIN.FMS203.POC       POC @                      ?    ???       Arial Narrow @    MAIN.FMS203.POC                 @                                                                                                           
    @         6[ U2 @  ???      ??     ???                           MAIN.FMS203.DPO       DPO @                      ?    ???       Arial Narrow @        MAIN.FMS203.DPO             @                                                                                                           
    @        &? ?? ]?           ???     ???                               0   Finalizaci?n @                      ?    ???       Arial Narrow @                       @                                                                                                           
    @        &? ?? ]?           ???     ???                               0   Preparaci?n @                      ?    ???       Arial Narrow @                       @                                                                                                          
    @         ?? ? ??   ???     ???                           @                         ?    ???        @                                                                                                                               
    @        ?? ?? ??   ??? ??? ?   ?                                     MAIN.FMS203.Controlador.TP   %d @                      ?    ???       Arial Narrow @                      @                                                                                                           
    @        ?? ?? ??   ??? ??? ?   ?                                     MAIN.FMS203.Controlador.TF   %d @                      ?    ???       Arial Narrow @                      @                                                                                                           
    @        ? ?A?	?          ???     ???                               0	   Fallo @                      ?    ???       Arial Narrow @                       @                                                                         f   SEL(MAIN.FMS203.Director.Defecto,SEL(MAIN.FMS203.Director.Funcionamiento,PAN_Gray8,TC2_Green),RGB_RED)    f   SEL(MAIN.FMS203.Director.Defecto,SEL(MAIN.FMS203.Director.Funcionamiento,PAN_Gray8,TC2_Green),RGB_RED)                      
    @        J???m?  ??? ??? ?   ?   ???                               MAIN.FMS203.FalloNumero   %x @                      ?    ???       Arial Narrow @                  5   INTERN ASSIGN MAIN.FMS203.ManiobrasPendientes:=(0) @                                                                         f   SEL(MAIN.FMS203.Director.Defecto,SEL(MAIN.FMS203.Director.Funcionamiento,PAN_Gray8,TC2_Green),RGB_RED)    f   SEL(MAIN.FMS203.Director.Defecto,SEL(MAIN.FMS203.Director.Funcionamiento,PAN_Gray8,TC2_Green),RGB_RED)                      
    @        ??????  ??? ??? ?   ?   ???                               MAIN.FMS203.FalloNumero   %<FalloNumeroDescripcion> @                      ?    ???       Arial Narrow @                  5   INTERN ASSIGN MAIN.FMS203.ManiobrasPendientes:=(0) @                                                                                                           
    @        +?hI?   ??? ?   ?   ?   ???                            MAIN.FMS203.Fallo    	   Fallo @                      ?    ???       Arial Narrow @
        MAIN.FMS203.RestableceFallo             @                                                                                                           
    @        ? lA?	{          ???     ???                               0
   Origen @                      ?    ???       Arial Narrow @                       @                                                                         f   SEL(MAIN.FMS203.Director.Defecto,SEL(MAIN.FMS203.Director.Funcionamiento,PAN_Gray8,TC2_Green),RGB_RED)    f   SEL(MAIN.FMS203.Director.Defecto,SEL(MAIN.FMS203.Director.Funcionamiento,PAN_Gray8,TC2_Green),RGB_RED)                      
    @        Jl??m{  ??? ??? ?   ?   ???                               MAIN.FMS203.FalloOrigen   %x @                      ?    ???       Arial Narrow @                  5   INTERN ASSIGN MAIN.FMS203.ManiobrasPendientes:=(0) @                                                                         f   SEL(MAIN.FMS203.Director.Defecto,SEL(MAIN.FMS203.Director.Funcionamiento,PAN_Gray8,TC2_Green),RGB_RED)    f   SEL(MAIN.FMS203.Director.Defecto,SEL(MAIN.FMS203.Director.Funcionamiento,PAN_Gray8,TC2_Green),RGB_RED)                      
    @        ?l???{  ??? ??? ?   ?   ???                               MAIN.FMS203.FalloOrigen   %<FalloOrigenDescripcion> @                      ?    ???       Arial Narrow @                  5   INTERN ASSIGN MAIN.FMS203.ManiobrasPendientes:=(0) @                                                                                                           
    @        J???h?  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Controlador.Situa    	   Sit?a @                         ???       Arial Narrow @        MAIN.FMS203.F_Situa             @                                                                                                           
    @        ??????  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Controlador.Carga    	   Carga @                         ???       Arial Narrow @        MAIN.FMS203.F_Carga             @                                                                                                           
    @        ??;??  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Controlador.Prensa    
   Prensa @                         ???       Arial Narrow @        MAIN.FMS203.F_Prensa             @                                                                                                           
    @        ??????  ??? ???  ?@  ?@ ???                        "   MAIN.FMS203.Controlador.Transfiere       Transfiere @                         ???       Arial Narrow @        MAIN.FMS203.F_Transfiere             @                                                                                                           
    @        N???l?  ??? ???  ?@  ?@ ???                            MAIN.FMS203.Controlador.Descarga       Descarga @                         ???       Arial Narrow @        MAIN.FMS203.F_Descarga             @                                                                                                           
    @        ? ?A?	?          ???     ???                               0   Funci?n @                         ???       Arial Narrow @                       @                                                                                                           
    @         ?[ ?7 ?  ???      ?@     ???                           MAIN.FMS203.Pausa   0	   Pausa @                      	   ???       Arial Narrow @    MAIN.FMS203.Pausa                 @                                                                                                           
    @        &d ?? ]s           ???     ???                               0   MTR @                      
   ???       Arial Narrow @                       @                                                                                                           
    @        ?d ?? ?s   ??? ??? ?   ?                                  !   MAIN.FMS203.TiempoMaximoRespuesta   %d @                         ???       Arial Narrow @                      @                                                                                                          
    @         ?? ? ??   ???     ???                           @                            ???        @                                                                                                                               
    @        < ?[ aK           ???     ???                                0	   Cinta @                         ???    	   Arial @                       @                                                                                                           
    @        ? ]? 4?   ???             ???                           MAIN.FMS203.Cinta.R_1       Restaura @                         ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        d ]~ 4q   ??? ???  ?@  ?@ ???                           MAIN.FMS203.Cinta.pp    	   Ready @                         ???       Arial Narrow @    MAIN.FMS203.Cinta.pp                 @                                                                                                           
    @        ? ]? 4?   ??? ???  ?@  ?@ ???                           MAIN.FMS203.Cinta.pp       IC @                         ???       Arial Narrow @    MAIN.FMS203.Cinta.pp                 @                                                                                                           
    @        ? ]? 4?   ??? ???  ?@  ?@ ???                           MAIN.FMS203.Cinta.pp       Fail @                         ???       Arial Narrow @    MAIN.FMS203.Cinta.pp                 @                                                                                                           
    @        ? ]? 4?   ???             ???                           MAIN.FMS203.Cinta.R_1    	   Sit?a @                         ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        ? ]4  ???             ???                           MAIN.FMS203.Cinta.R_1       Transfiere @                         ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        fd ?~ ?q   ???             ???                           MAIN.FMS203.Cinta.R_1    
   Activa @                         ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        f? ?? ??   ???             ???                           MAIN.FMS203.Cinta.R_1       Invierte @                         ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        f? ?? ??   ???             ???                           MAIN.FMS203.Cinta.R_1       Retenedor @                         ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        f? ?? ??   ???             ???                           MAIN.FMS203.Cinta.R_1       Separador @                         ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        J?a?  cfj     ???                                             @                         ???        @                       @                                                                                                           
    @        ,?Ka;          ???     ???                                0   PickPlace @                         ???    	   Arial @                       @                                                                                                           
    @        ?]?4?  ???             ???                           MAIN.FMS203.Cinta.R_1       Restaura @                         ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        T]n4a  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Cinta.pp    	   Ready @                         ???       Arial Narrow @    MAIN.FMS203.Cinta.pp                 @                                                                                                           
    @        r]?4  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Cinta.pp       IC @                         ???       Arial Narrow @    MAIN.FMS203.Cinta.pp                 @                                                                                                           
    @        ?]?4?  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Cinta.pp       Fail @                          ???       Arial Narrow @    MAIN.FMS203.Cinta.pp                 @                                                                                                           
    @        ?]?4?  ???             ???                           MAIN.FMS203.Cinta.R_1    	   Sit?a @                      !   ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        ?]4?  ???             ???                           MAIN.FMS203.Cinta.R_1       Transfiere @                      "   ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        fT?n?a  ???             ???                           MAIN.FMS203.Cinta.R_1    
   Activa @                      #   ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        fr???  ???             ???                           MAIN.FMS203.Cinta.R_1       Invierte @                      $   ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        f?????  ???             ???                           MAIN.FMS203.Cinta.R_1       Retenedor @                      %   ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        f?????  ???             ???                           MAIN.FMS203.Cinta.R_1       Separador @                      &   ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        :?a?  cfj     ???                                             @                      '   ???        @                       @                                                                                                           
    @        ?;a+          ???     ???                                0
   Prensa @                      (   ???    	   Arial @                       @                                                                                                           
    @        ?]?4?  ???             ???                           MAIN.FMS203.Cinta.R_1       Restaura @                      )   ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        D]^4Q  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Cinta.pp    	   Ready @                      *   ???       Arial Narrow @    MAIN.FMS203.Cinta.pp                 @                                                                                                           
    @        b]|4o  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Cinta.pp       IC @                      +   ???       Arial Narrow @    MAIN.FMS203.Cinta.pp                 @                                                                                                           
    @        ?]?4?  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Cinta.pp       Fail @                      ,   ???       Arial Narrow @    MAIN.FMS203.Cinta.pp                 @                                                                                                           
    @        ?]?4?  ???             ???                           MAIN.FMS203.Cinta.R_1    	   Sit?a @                      -   ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        ?]?4?  ???             ???                           MAIN.FMS203.Cinta.R_1       Transfiere @                      .   ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        fD?^?Q  ???             ???                           MAIN.FMS203.Cinta.R_1    
   Activa @                      /   ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        fb?|?o  ???             ???                           MAIN.FMS203.Cinta.R_1       Invierte @                      0   ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        f?????  ???             ???                           MAIN.FMS203.Cinta.R_1       Retenedor @                      1   ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        f?????  ???             ???                           MAIN.FMS203.Cinta.R_1       Separador @                      2   ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        4??ax  cfj     ???                                             @                      3   ???        @                       @                                                                                                           
    @        ?5a%          ???     ???                                0	   Cinta @                      4   ???    	   Arial @                       @                                                                                                           
    @        ?>?X?K  ???             ???                           MAIN.FMS203.Cinta.R_1       0 @                      5   ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        >0XK  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Cinta.pp       R @                      6   ???       Arial Narrow @    MAIN.FMS203.Cinta.pp                 @                                                                                                           
    @        9>]XKK  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Cinta.pp       I @                      7   ???       Arial Narrow @    MAIN.FMS203.Cinta.pp                 @                                                                                                           
    @        f>?XxK  ??? ???  ?@  ?@ ???                           MAIN.FMS203.Cinta.pp       F @                      8   ???       Arial Narrow @    MAIN.FMS203.Cinta.pp                 @                                                                                                           
    @        \]v4i  ???             ???                           MAIN.FMS203.Cinta.R_1    	   Sit?a @                      9   ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        f\?v?i  ???             ???                           MAIN.FMS203.Cinta.R_1       Transfiere @                      :   ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        z]?4?  ???             ???                           MAIN.FMS203.Cinta.R_1    
   Activa @                      ;   ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        fz????  ???             ???                           MAIN.FMS203.Cinta.R_1       Invierte @                      <   ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        ?]?4?  ???             ???                           MAIN.FMS203.Cinta.R_1       Retenedor @                      =   ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @                                                                                                           
    @        f?????  ???             ???                           MAIN.FMS203.Cinta.R_1       Separador @                      >   ???       Arial Narrow @    MAIN.FMS203.Cinta.R_1                 @             ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  ????, ? ? ?         !   Iecsfc.lib 12.5.98 11:03:00 @DX5"   STANDARD.LIB 5.6.98 12:03:02 @F?w5   F   SFCActionControl @      SFCActionType       SFCStepType                      Globale_Variablen @              CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @                                             2                ????????????????  
             ????                 ????  ?X??? ?                      POUs               FB                 FB_Clock  '   ????              FMS203                 FB_Director                  	   FB_FMS203  ^                   FB_FMS203_SFC  _                   FB_Panel  +   ????              PRG                 MAIN      ????              UF                 FB_Cinta  ?                  FB_Cinta_SFC  &                   FB_PickPlace  2                  FB_PickPlace_SFC  H               	   FB_Prensa  4                  FB_Prensa_SFC  9   ????????           
   Data types                 E_ESTACION_DEVICES  b                   E_ESTACION_FAILS  a                   E_ESTACION_UNIDADES  c                  E_GEMMA  %                   E_PICKPLACE_DEVICES  Y                   E_PICKPLACE_FAILS  Z                   E_PRENSA_DEVICES  [                   E_PRENSA_FAILS  \   ????              Visualizations                TC_VISU  i   ????              Global Variables                 Constantes_Globales  $                   Global_Variables                     Variable_Configuration  	   ????                                         s\scnero             ?n?^                         	   localhost            P      	   localhost            P      	   localhost            P     C}?b    ?,?