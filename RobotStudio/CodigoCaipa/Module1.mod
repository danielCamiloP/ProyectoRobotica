MODULE Module1
        CONST jointtarget Home:=[[0,0,0,0,45,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget P1_aux:=[[-5,20,0,-50,-10,25],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P1_base:=[[-188,244.6,0],[0,-0.707106781,0.707106781,0],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P1_alto:=[[-77.5,670,35],[0,0,1,0],[0,1,-2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P1_arm:=[[-77.5,670,0],[0,0,1,0],[0,1,-2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget P2_aux:=[[0,20,20,-2,-5,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P2_base:=[[-253,242.9,0],[0,0,1,0],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P2_alto:=[[-187.5,625,40],[0,-0.707106781,0.707106781,0],[0,-2,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P2_arm:=[[-187.5,625,0],[0,-0.707106781,0.707106781,0],[0,-2,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget P3_aux:=[[0,20,-5,25,25,-40],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P3_base:=[[-158,357.12,0],[0,-0.707106781,0.707106781,0],[-1,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P3_alto:=[[-135,640,40],[0,0,1,0],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P3_arm:=[[-135,640,5],[0,0,1,0],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget P4_aux:=[[-10,10,10,50,10,-50],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P4_base:=[[-273,52.1,0],[0,0,1,0],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P4_alto:=[[-60,600,40],[0,-0.707106781,0.707106781,0],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P4_arm:=[[-60,600,5],[0,-0.707106781,0.707106781,0],[0,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget P5_aux:=[[-15,20,-5,20,50,-50],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P5_base:=[[-188,99.7,0],[0,-0.707106781,0.707106781,0],[-1,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P5_alto:=[[-77.5,670,40],[0,0,1,0],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P5_arm:=[[-77.5,670,10],[0,0,1,0],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget P6_aux:=[[10,10,10,-50,5,50],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P6_base:=[[-253,437.2,0],[0,0,1,0],[0,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P6_alto:=[[-187.5,575,45],[0,0.707106781,0.707106781,0],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P6_arm:=[[-187.5,575,10],[0,0.707106781,0.707106781,0],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget Home_lab:=[[0,0,0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!***********************************************************
    !
    ! M�dulo:  Module1
    !
    ! Descripci�n:
    !   <Introduzca la descripci�n aqu�>
    !
    ! Autor: Julian A. Caipa
    !
    ! Versi�n: 1.0
    !
    !***********************************************************
    
    
    !***********************************************************
    !
    ! Procedimiento Main
    !
    !   Este es el punto de entrada de su programa
    !
    !***********************************************************
    PROC main()
        WaitDI DI_01,1;
        ToHome;
        WaitDI DI_01,1;
        Path_P1;
        Path_P2;
        Path_P3;
        Path_P4;
        Path_P5;
        Path_P6;
        ToHome;
        SetDO DO_01,1;
    ENDPROC
    PROC Path_P1()
        MoveAbsJ Home,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveAbsJ P1_aux,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveL P1_base,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveAbsJ P1_aux,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveL P1_alto,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveL P1_arm,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveAbsJ Home,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
    ENDPROC
    PROC Path_P2()
        MoveAbsJ Home,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveAbsJ P2_aux,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveL P2_base,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveAbsJ P2_aux,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveL P2_alto,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveL P2_arm,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveAbsJ Home,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
    ENDPROC
    PROC Path_P3()
        MoveAbsJ Home,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveAbsJ P3_aux,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveL P3_base,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveAbsJ P3_aux,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveL P3_alto,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveL P3_arm,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveAbsJ Home,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
    ENDPROC
    PROC Path_P4()
        MoveAbsJ Home,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveAbsJ P4_aux,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveL P4_base,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveAbsJ P4_aux,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveL P4_alto,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveL P4_arm,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveAbsJ Home,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
    ENDPROC
    PROC Path_P5()
        MoveAbsJ Home,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveAbsJ P5_aux,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveL P5_base,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveAbsJ P5_aux,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveL P5_alto,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveL P5_arm,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveAbsJ Home,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveAbsJ P5_aux,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
    ENDPROC
    PROC Path_P6()
        MoveAbsJ Home,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveAbsJ P6_aux,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveL P6_base,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveAbsJ P6_aux,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveL P6_alto,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveL P6_arm,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
        MoveAbsJ Home,v100,z10,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
    ENDPROC
    PROC ToHome()
        MoveAbsJ Home_lab,v1000,z100,Ventosa_AJDJ\WObj:=Objeto_AJDJ;
    ENDPROC
ENDMODULE