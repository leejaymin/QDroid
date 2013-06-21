.class public Lgnu/expr/LambdaExp;
.super Lgnu/expr/ScopeExp;
.source "LambdaExp.java"


# static fields
.field public static final ATTEMPT_INLINE:I = 0x1000

.field static final CANNOT_INLINE:I = 0x20

.field static final CAN_CALL:I = 0x4

.field static final CAN_READ:I = 0x2

.field static final CLASS_METHOD:I = 0x40

.field static final DEFAULT_CAPTURES_ARG:I = 0x200

.field static final IMPORTS_LEX_VARS:I = 0x8

.field static final INLINE_ONLY:I = 0x1

.field static final METHODS_COMPILED:I = 0x80

.field static final NEEDS_STATIC_LINK:I = 0x10

.field protected static final NEXT_AVAIL_FLAG:I = 0x2000

.field public static final NO_FIELD:I = 0x100

.field public static final OVERLOADABLE_FIELD:I = 0x800

.field public static final SEQUENCE_RESULT:I = 0x400

.field static searchForKeywordMethod3:Lgnu/bytecode/Method;

.field static searchForKeywordMethod4:Lgnu/bytecode/Method;

.field static final unknownContinuation:Lgnu/expr/ApplyExp;


# instance fields
.field applyMethods:Ljava/util/Vector;

.field argsArray:Lgnu/bytecode/Variable;

.field public body:Lgnu/expr/Expression;

.field capturedVars:Lgnu/expr/Declaration;

.field closureEnv:Lgnu/bytecode/Variable;

.field public closureEnvField:Lgnu/bytecode/Field;

.field public defaultArgs:[Lgnu/expr/Expression;

.field private firstArgsArrayArg:Lgnu/expr/Declaration;

.field public firstChild:Lgnu/expr/LambdaExp;

.field heapFrame:Lgnu/bytecode/Variable;

.field initChain:Lgnu/expr/Initializer;

.field public keywords:[Lgnu/expr/Keyword;

.field public max_args:I

.field public min_args:I

.field public nameDecl:Lgnu/expr/Declaration;

.field public nextSibling:Lgnu/expr/LambdaExp;

.field primBodyMethods:[Lgnu/bytecode/Method;

.field primMethods:[Lgnu/bytecode/Method;

.field properties:[Ljava/lang/Object;

.field public returnContinuation:Lgnu/expr/ApplyExp;

.field public returnType:Lgnu/bytecode/Type;

.field selectorValue:I

.field public staticLinkField:Lgnu/bytecode/Field;

.field thisValue:Lgnu/mapping/Procedure;

.field thisVariable:Lgnu/bytecode/Variable;

.field throwsSpecification:[Lgnu/expr/ReferenceExp;

.field type:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 74
    new-instance v3, Lgnu/expr/ApplyExp;

    move-object v0, v2

    check-cast v0, Lgnu/expr/Expression;

    move-object v1, v0

    invoke-direct {v3, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    sput-object v3, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 458
    invoke-direct {p0}, Lgnu/expr/ScopeExp;-><init>()V

    .line 261
    sget-object v0, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    .line 459
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "args"

    .prologue
    .line 462
    invoke-direct {p0}, Lgnu/expr/ScopeExp;-><init>()V

    .line 261
    sget-object v0, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    .line 463
    iput p1, p0, Lgnu/expr/LambdaExp;->min_args:I

    .line 464
    iput p1, p0, Lgnu/expr/LambdaExp;->max_args:I

    .line 465
    return-void
.end method

.method public constructor <init>(Lgnu/expr/Expression;)V
    .locals 1
    .parameter "body"

    .prologue
    .line 469
    invoke-direct {p0}, Lgnu/expr/ScopeExp;-><init>()V

    .line 261
    sget-object v0, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    .line 470
    iput-object p1, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 471
    return-void
.end method


# virtual methods
.method final addApplyMethod(Lgnu/expr/Compilation;Lgnu/bytecode/Field;)V
    .locals 4
    .parameter "comp"
    .parameter "field"

    .prologue
    .line 613
    move-object v1, p0

    .line 614
    .local v1, owner:Lgnu/expr/LambdaExp;
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 615
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v1

    .line 631
    :cond_0
    :goto_0
    iget-object v2, v1, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    if-nez v2, :cond_1

    .line 632
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, v1, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    .line 633
    :cond_1
    iget-object v2, v1, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    invoke-virtual {v2, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 634
    return-void

    .line 622
    :cond_2
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v1

    .line 623
    instance-of v2, v1, Lgnu/expr/ModuleExp;

    if-nez v2, :cond_3

    iget-object v2, v1, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v2, :cond_2

    .line 627
    :cond_3
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 628
    .local v0, frameType:Lgnu/bytecode/ClassType;
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v2

    sget-object v3, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 629
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v1

    goto :goto_0
.end method

.method addMethodFor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V
    .locals 57
    .parameter "ctype"
    .parameter "comp"
    .parameter "closureEnvType"

    .prologue
    .line 790
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v36

    .line 791
    .local v36, name:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v43

    .line 793
    .local v43, outer:Lgnu/expr/LambdaExp;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v54, v0

    if-nez v54, :cond_12

    const/16 v54, 0x0

    move/from16 v26, v54

    .line 794
    .local v26, key_args:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v54, v0

    if-nez v54, :cond_13

    const/16 v54, 0x0

    move/from16 v42, v54

    .line 795
    .local v42, opt_args:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->flags:I

    move/from16 v54, v0

    move/from16 v0, v54

    and-int/lit16 v0, v0, 0x200

    move/from16 v54, v0

    if-eqz v54, :cond_14

    const/16 v54, 0x0

    move/from16 v41, v54

    .line 797
    .local v41, numStubs:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v54, v0

    if-ltz v54, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v54, v0

    add-int v54, v54, v41

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-ge v0, v1, :cond_15

    :cond_0
    const/16 v54, 0x1

    move/from16 v52, v54

    .line 799
    .local v52, varArgs:Z
    :goto_3
    add-int/lit8 v54, v41, 0x1

    move/from16 v0, v54

    new-array v0, v0, [Lgnu/bytecode/Method;

    move-object/from16 v32, v0

    .line 803
    .local v32, methods:[Lgnu/bytecode/Method;
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/LambdaExp;->primBodyMethods:[Lgnu/bytecode/Method;

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v54, v0

    if-nez v54, :cond_1

    .line 805
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    .line 809
    :cond_1
    const/16 v21, 0x0

    .line 810
    .local v21, isInitMethod:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v54, v0

    if-eqz v54, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v54, v0

    const/16 v55, 0x1000

    invoke-virtual/range {v54 .. v55}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v54

    if-eqz v54, :cond_16

    .line 812
    const/16 v22, 0x0

    .line 843
    .local v22, isStatic:Z
    :cond_2
    :goto_4
    new-instance v38, Ljava/lang/StringBuffer;

    const/16 v54, 0x3c

    move-object/from16 v0, v38

    move/from16 v1, v54

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 844
    .local v38, nameBuf:Ljava/lang/StringBuffer;
    if-eqz v22, :cond_20

    const/16 v54, 0x8

    move/from16 v34, v54

    .line 845
    .local v34, mflags:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v54, v0

    if-eqz v54, :cond_3

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Lgnu/expr/Declaration;->needsExternalAccess()Z

    move-result v54

    if-eqz v54, :cond_21

    .line 848
    or-int/lit8 v34, v34, 0x1

    .line 857
    :cond_3
    :goto_6
    invoke-virtual/range {v43 .. v43}, Lgnu/expr/LambdaExp;->isModuleBody()Z

    move-result v54

    if-nez v54, :cond_4

    move-object/from16 v0, v43

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v54, v0

    if-eqz v54, :cond_5

    :cond_4
    if-nez v36, :cond_6

    .line 860
    :cond_5
    const-string v54, "lambda"

    move-object/from16 v0, v38

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 861
    move-object/from16 v0, p2

    iget v0, v0, Lgnu/expr/Compilation;->method_counter:I

    move/from16 v54, v0

    add-int/lit8 v54, v54, 0x1

    move/from16 v0, v54

    move-object/from16 v1, p2

    iput v0, v1, Lgnu/expr/Compilation;->method_counter:I

    move-object/from16 v0, v38

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 863
    :cond_6
    const/16 v54, 0x43

    move/from16 v0, v21

    move/from16 v1, v54

    if-ne v0, v1, :cond_24

    .line 864
    const-string v54, "<clinit>"

    move-object/from16 v0, v38

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 867
    :cond_7
    :goto_7
    const/16 v54, 0x400

    move-object/from16 v0, p0

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->getFlag(I)Z

    move-result v54

    if-eqz v54, :cond_8

    .line 868
    const-string v54, "$C"

    move-object/from16 v0, v38

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 869
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v54

    const/16 v55, 0x2

    move/from16 v0, v54

    move/from16 v1, v55

    if-lt v0, v1, :cond_25

    if-nez v21, :cond_25

    const/16 v54, 0x1

    move/from16 v53, v54

    .line 872
    .local v53, withContext:Z
    :goto_8
    if-eqz v21, :cond_9

    .line 874
    if-eqz v22, :cond_26

    .line 878
    and-int/lit8 v54, v34, -0x3

    add-int/lit8 v34, v54, 0x1

    .line 887
    :cond_9
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v54

    if-nez v54, :cond_a

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v54

    if-eqz v54, :cond_b

    .line 888
    :cond_a
    move/from16 v0, v34

    or-int/lit16 v0, v0, 0x400

    move/from16 v34, v0

    .line 892
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v54

    if-eqz v54, :cond_c

    move-object/from16 v0, v43

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v54, v0

    if-eqz v54, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-ne v0, v1, :cond_c

    .line 895
    const/16 v20, 0x0

    .line 896
    .local v20, inherited:[Lgnu/bytecode/Method;
    const/16 v19, 0x0

    .line 898
    .local v19, iarg:I
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v44

    .line 901
    .local v44, param:Lgnu/expr/Declaration;
    :goto_a
    if-nez v44, :cond_27

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    move-object/from16 v54, v0

    if-eqz v54, :cond_2a

    .line 958
    .end local v19           #iarg:I
    .end local v20           #inherited:[Lgnu/bytecode/Method;
    .end local v44           #param:Lgnu/expr/Declaration;
    :cond_c
    :goto_b
    const/16 v54, 0x400

    move-object/from16 v0, p0

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->getFlag(I)Z

    move-result v54

    if-nez v54, :cond_d

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v54

    const/16 v55, 0x2

    move/from16 v0, v54

    move/from16 v1, v55

    if-lt v0, v1, :cond_32

    :cond_d
    sget-object v54, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    move-object/from16 v48, v54

    .line 963
    .local v48, rtype:Lgnu/bytecode/Type;
    :goto_c
    if-eqz p3, :cond_33

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_33

    const/16 v54, 0x1

    move/from16 v16, v54

    .line 965
    .local v16, extraArg:I
    :goto_d
    const/4 v9, 0x0

    .line 966
    .local v9, ctxArg:I
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v54

    const/16 v55, 0x2

    move/from16 v0, v54

    move/from16 v1, v55

    if-lt v0, v1, :cond_e

    if-nez v21, :cond_e

    .line 968
    const/4 v9, 0x1

    .line 970
    :cond_e
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuffer;->length()I

    move-result v37

    .line 971
    .local v37, nameBaseLength:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_e
    move/from16 v0, v18

    move/from16 v1, v41

    if-gt v0, v1, :cond_47

    .line 973
    move-object/from16 v0, v38

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 974
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v54, v0

    add-int v45, v54, v18

    .line 975
    .local v45, plainArgs:I
    move/from16 v40, v45

    .line 976
    .local v40, numArgs:I
    move/from16 v0, v18

    move/from16 v1, v41

    if-ne v0, v1, :cond_f

    if-eqz v52, :cond_f

    .line 977
    add-int/lit8 v40, v40, 0x1

    .line 978
    :cond_f
    add-int v54, v16, v40

    add-int v54, v54, v9

    move/from16 v0, v54

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object v6, v0

    .line 979
    .local v6, atypes:[Lgnu/bytecode/Type;
    if-lez v16, :cond_10

    .line 980
    const/16 v54, 0x0

    aput-object p3, v6, v54

    .line 981
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v51

    .line 982
    .local v51, var:Lgnu/expr/Declaration;
    if-eqz v51, :cond_11

    invoke-virtual/range {v51 .. v51}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v54

    if-eqz v54, :cond_11

    .line 983
    invoke-virtual/range {v51 .. v51}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v51

    .line 984
    :cond_11
    const/16 v23, 0x0

    .local v23, itype:I
    move/from16 v24, v23

    .end local v23           #itype:I
    .local v24, itype:I
    :goto_f
    move/from16 v0, v24

    move/from16 v1, v45

    if-ge v0, v1, :cond_34

    .line 985
    add-int/lit8 v23, v24, 0x1

    .end local v24           #itype:I
    .restart local v23       #itype:I
    add-int v54, v16, v24

    invoke-virtual/range {v51 .. v51}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v55

    aput-object v55, v6, v54

    .line 984
    invoke-virtual/range {v51 .. v51}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v51

    move/from16 v24, v23

    .end local v23           #itype:I
    .restart local v24       #itype:I
    goto :goto_f

    .line 793
    .end local v6           #atypes:[Lgnu/bytecode/Type;
    .end local v9           #ctxArg:I
    .end local v16           #extraArg:I
    .end local v18           #i:I
    .end local v21           #isInitMethod:C
    .end local v22           #isStatic:Z
    .end local v24           #itype:I
    .end local v26           #key_args:I
    .end local v32           #methods:[Lgnu/bytecode/Method;
    .end local v34           #mflags:I
    .end local v37           #nameBaseLength:I
    .end local v38           #nameBuf:Ljava/lang/StringBuffer;
    .end local v40           #numArgs:I
    .end local v41           #numStubs:I
    .end local v42           #opt_args:I
    .end local v45           #plainArgs:I
    .end local v48           #rtype:Lgnu/bytecode/Type;
    .end local v51           #var:Lgnu/expr/Declaration;
    .end local v52           #varArgs:Z
    .end local v53           #withContext:Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    array-length v0, v0

    move/from16 v54, v0

    move/from16 v26, v54

    goto/16 :goto_0

    .line 794
    .restart local v26       #key_args:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    array-length v0, v0

    move/from16 v54, v0

    sub-int v54, v54, v26

    move/from16 v42, v54

    goto/16 :goto_1

    .restart local v42       #opt_args:I
    :cond_14
    move/from16 v41, v42

    .line 795
    goto/16 :goto_2

    .line 797
    .restart local v41       #numStubs:I
    :cond_15
    const/16 v54, 0x0

    move/from16 v52, v54

    goto/16 :goto_3

    .line 813
    .restart local v21       #isInitMethod:C
    .restart local v32       #methods:[Lgnu/bytecode/Method;
    .restart local v52       #varArgs:Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v54, v0

    if-eqz v54, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v54, v0

    const/16 v55, 0x800

    invoke-virtual/range {v54 .. v55}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v54

    if-eqz v54, :cond_17

    .line 815
    const/16 v22, 0x1

    .restart local v22       #isStatic:Z
    goto/16 :goto_4

    .line 816
    .end local v22           #isStatic:Z
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v54

    if-eqz v54, :cond_1b

    .line 818
    move-object/from16 v0, v43

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v54, v0

    if-eqz v54, :cond_1a

    .line 820
    move-object/from16 v0, v43

    check-cast v0, Lgnu/expr/ClassExp;

    move-object v7, v0

    .line 821
    .local v7, cl:Lgnu/expr/ClassExp;
    invoke-virtual {v7}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v54

    if-eqz v54, :cond_18

    if-eqz p3, :cond_18

    const/16 v54, 0x1

    move/from16 v22, v54

    .line 822
    .restart local v22       #isStatic:Z
    :goto_10
    move-object v0, v7

    iget-object v0, v0, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_19

    .line 823
    const/16 v21, 0x49

    goto/16 :goto_4

    .line 821
    .end local v22           #isStatic:Z
    :cond_18
    const/16 v54, 0x0

    move/from16 v22, v54

    goto :goto_10

    .line 824
    .restart local v22       #isStatic:Z
    :cond_19
    move-object v0, v7

    iget-object v0, v0, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_2

    .line 826
    const/16 v21, 0x43

    .line 827
    const/16 v22, 0x1

    goto/16 :goto_4

    .line 831
    .end local v7           #cl:Lgnu/expr/ClassExp;
    .end local v22           #isStatic:Z
    :cond_1a
    const/16 v22, 0x0

    .restart local v22       #isStatic:Z
    goto/16 :goto_4

    .line 833
    .end local v22           #isStatic:Z
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    move-object/from16 v54, v0

    if-nez v54, :cond_1c

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1d

    .line 834
    :cond_1c
    const/16 v22, 0x0

    .restart local v22       #isStatic:Z
    goto/16 :goto_4

    .line 835
    .end local v22           #isStatic:Z
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v54, v0

    if-eqz v54, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v54, v0

    if-eqz v54, :cond_1f

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    move-object/from16 v33, v0

    check-cast v33, Lgnu/expr/ModuleExp;

    .line 838
    .local v33, mexp:Lgnu/expr/ModuleExp;
    invoke-virtual/range {v33 .. v33}, Lgnu/expr/ModuleExp;->getSuperType()Lgnu/bytecode/ClassType;

    move-result-object v54

    if-nez v54, :cond_1e

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/ModuleExp;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v54

    if-nez v54, :cond_1e

    const/16 v54, 0x1

    move/from16 v22, v54

    .line 839
    .restart local v22       #isStatic:Z
    :goto_11
    goto/16 :goto_4

    .line 838
    .end local v22           #isStatic:Z
    :cond_1e
    const/16 v54, 0x0

    move/from16 v22, v54

    goto :goto_11

    .line 841
    .end local v33           #mexp:Lgnu/expr/ModuleExp;
    :cond_1f
    const/16 v22, 0x1

    .restart local v22       #isStatic:Z
    goto/16 :goto_4

    .line 844
    .restart local v38       #nameBuf:Ljava/lang/StringBuffer;
    :cond_20
    const/16 v54, 0x0

    move/from16 v34, v54

    goto/16 :goto_5

    .line 851
    .restart local v34       #mflags:I
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v54

    if-eqz v54, :cond_23

    const/16 v54, 0x0

    move/from16 v12, v54

    .line 852
    .local v12, defaultFlag:S
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v54

    if-eqz v54, :cond_22

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move v1, v12

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->getAccessFlags(S)S

    move-result v12

    .line 854
    :cond_22
    or-int v34, v34, v12

    goto/16 :goto_6

    .line 851
    .end local v12           #defaultFlag:S
    :cond_23
    const/16 v54, 0x1

    move/from16 v12, v54

    goto :goto_12

    .line 865
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getSymbol()Ljava/lang/Object;

    move-result-object v54

    if-eqz v54, :cond_7

    .line 866
    invoke-static/range {v36 .. v36}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v38

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_7

    .line 869
    :cond_25
    const/16 v54, 0x0

    move/from16 v53, v54

    goto/16 :goto_8

    .line 884
    .restart local v53       #withContext:Z
    :cond_26
    and-int/lit8 v54, v34, 0x2

    add-int/lit8 v34, v54, 0x2

    goto/16 :goto_9

    .line 906
    .restart local v19       #iarg:I
    .restart local v20       #inherited:[Lgnu/bytecode/Method;
    .restart local v44       #param:Lgnu/expr/Declaration;
    :cond_27
    invoke-virtual/range {v44 .. v44}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v54

    if-eqz v54, :cond_29

    .line 908
    add-int/lit8 v19, v19, -0x1

    .line 899
    :cond_28
    invoke-virtual/range {v44 .. v44}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v44

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_a

    .line 911
    :cond_29
    const/16 v54, 0x2000

    move-object/from16 v0, v44

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v54

    if-nez v54, :cond_28

    .line 913
    :cond_2a
    if-nez v20, :cond_2b

    .line 915
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v30

    .line 916
    .local v30, mangled:Ljava/lang/String;
    new-instance v17, Lgnu/expr/LambdaExp$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lgnu/expr/LambdaExp$1;-><init>(Lgnu/expr/LambdaExp;Ljava/lang/String;)V

    .line 927
    .local v17, filter:Lgnu/bytecode/Filter;
    const/16 v54, 0x2

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;I)[Lgnu/bytecode/Method;

    move-result-object v20

    .line 929
    .end local v17           #filter:Lgnu/bytecode/Filter;
    .end local v30           #mangled:Ljava/lang/String;
    :cond_2b
    const/16 v50, 0x0

    .line 930
    .local v50, type:Lgnu/bytecode/Type;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v18, v0

    .restart local v18       #i:I
    :cond_2c
    :goto_13
    add-int/lit8 v18, v18, -0x1

    if-ltz v18, :cond_2f

    .line 932
    aget-object v31, v20, v18

    .line 933
    .local v31, method:Lgnu/bytecode/Method;
    if-nez v44, :cond_2d

    invoke-virtual/range {v31 .. v31}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v54

    move-object/from16 v46, v54

    .line 935
    .local v46, ptype:Lgnu/bytecode/Type;
    :goto_14
    if-nez v50, :cond_2e

    .line 936
    move-object/from16 v50, v46

    goto :goto_13

    .line 933
    .end local v46           #ptype:Lgnu/bytecode/Type;
    :cond_2d
    invoke-virtual/range {v31 .. v31}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v54

    aget-object v54, v54, v19

    move-object/from16 v46, v54

    goto :goto_14

    .line 937
    .restart local v46       #ptype:Lgnu/bytecode/Type;
    :cond_2e
    move-object/from16 v0, v46

    move-object/from16 v1, v50

    if-eq v0, v1, :cond_2c

    .line 940
    if-nez v44, :cond_28

    goto/16 :goto_b

    .line 946
    .end local v31           #method:Lgnu/bytecode/Method;
    .end local v46           #ptype:Lgnu/bytecode/Type;
    :cond_2f
    if-eqz v50, :cond_30

    .line 948
    if-eqz v44, :cond_31

    .line 949
    move-object/from16 v0, v44

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 953
    :cond_30
    :goto_15
    if-nez v44, :cond_28

    goto/16 :goto_b

    .line 951
    :cond_31
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->setCoercedReturnType(Lgnu/bytecode/Type;)V

    goto :goto_15

    .line 958
    .end local v18           #i:I
    .end local v19           #iarg:I
    .end local v20           #inherited:[Lgnu/bytecode/Method;
    .end local v44           #param:Lgnu/expr/Declaration;
    .end local v50           #type:Lgnu/bytecode/Type;
    :cond_32
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v54

    move-object/from16 v48, v54

    goto/16 :goto_c

    .line 963
    .restart local v48       #rtype:Lgnu/bytecode/Type;
    :cond_33
    const/16 v54, 0x0

    move/from16 v16, v54

    goto/16 :goto_d

    .line 986
    .restart local v6       #atypes:[Lgnu/bytecode/Type;
    .restart local v9       #ctxArg:I
    .restart local v16       #extraArg:I
    .restart local v18       #i:I
    .restart local v24       #itype:I
    .restart local v37       #nameBaseLength:I
    .restart local v40       #numArgs:I
    .restart local v45       #plainArgs:I
    .restart local v51       #var:Lgnu/expr/Declaration;
    :cond_34
    if-eqz v9, :cond_35

    .line 987
    move-object v0, v6

    array-length v0, v0

    move/from16 v54, v0

    const/16 v55, 0x1

    sub-int v54, v54, v55

    sget-object v55, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    aput-object v55, v6, v54

    .line 988
    :cond_35
    move/from16 v0, v45

    move/from16 v1, v40

    if-ge v0, v1, :cond_38

    .line 990
    invoke-virtual/range {v51 .. v51}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v27

    .line 991
    .local v27, lastType:Lgnu/bytecode/Type;
    invoke-virtual/range {v27 .. v27}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v28

    .line 992
    .local v28, lastTypeName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassType;->getClassfileVersion()I

    move-result v54

    const/high16 v55, 0x31

    move/from16 v0, v54

    move/from16 v1, v55

    if-lt v0, v1, :cond_3b

    const-string v54, "java.lang.Object[]"

    move-object/from16 v0, v54

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_3b

    .line 994
    move/from16 v0, v34

    or-int/lit16 v0, v0, 0x80

    move/from16 v34, v0

    .line 997
    :goto_16
    if-gtz v26, :cond_36

    move/from16 v0, v41

    move/from16 v1, v42

    if-lt v0, v1, :cond_36

    const-string v54, "gnu.lists.LList"

    move-object/from16 v0, v54

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-nez v54, :cond_37

    const-string v54, "java.lang.Object[]"

    move-object/from16 v0, v54

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-nez v54, :cond_37

    .line 1006
    :cond_36
    sget-object v27, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    .line 1007
    new-instance v54, Lgnu/bytecode/Variable;

    const-string v55, "argsArray"

    sget-object v56, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    invoke-direct/range {v54 .. v56}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    move-object/from16 v54, v0

    const/16 v55, 0x1

    invoke-virtual/range {v54 .. v55}, Lgnu/bytecode/Variable;->setParameter(Z)V

    .line 1011
    :cond_37
    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/LambdaExp;->firstArgsArrayArg:Lgnu/expr/Declaration;

    .line 1012
    move-object v0, v6

    array-length v0, v0

    move/from16 v54, v0

    if-eqz v53, :cond_3c

    const/16 v55, 0x2

    :goto_17
    sub-int v54, v54, v55

    aput-object v27, v6, v54

    .line 1014
    .end local v27           #lastType:Lgnu/bytecode/Type;
    .end local v28           #lastTypeName:Ljava/lang/String;
    :cond_38
    if-eqz v53, :cond_39

    .line 1015
    const-string v54, "$X"

    move-object/from16 v0, v38

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1017
    :cond_39
    move-object/from16 v0, v43

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v54, v0

    if-nez v54, :cond_3a

    move-object/from16 v0, v43

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v54, v0

    if-eqz v54, :cond_3d

    move-object/from16 v0, v43

    check-cast v0, Lgnu/expr/ModuleExp;

    move-object/from16 v44, v0

    const/high16 v54, 0x1

    move-object/from16 v0, v44

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v54

    if-eqz v54, :cond_3d

    :cond_3a
    const/16 v54, 0x1

    move/from16 v8, v54

    .line 1022
    .local v8, classSpecified:Z
    :goto_18
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v36

    .line 1029
    const/16 v47, 0x0

    .line 1030
    .local v47, renameCount:I
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuffer;->length()I

    move-result v29

    .line 1034
    .local v29, len:I
    :goto_19
    move-object/from16 v49, p1

    .local v49, t:Lgnu/bytecode/ClassType;
    :goto_1a
    if-eqz v49, :cond_3f

    .line 1036
    move-object/from16 v0, v49

    move-object/from16 v1, v36

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v54

    if-eqz v54, :cond_3e

    .line 1038
    move-object/from16 v0, v38

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1039
    const/16 v54, 0x24

    move-object/from16 v0, v38

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1040
    add-int/lit8 v47, v47, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1041
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v36

    .line 1042
    goto :goto_19

    .line 996
    .end local v8           #classSpecified:Z
    .end local v29           #len:I
    .end local v47           #renameCount:I
    .end local v49           #t:Lgnu/bytecode/ClassType;
    .restart local v27       #lastType:Lgnu/bytecode/Type;
    .restart local v28       #lastTypeName:Ljava/lang/String;
    :cond_3b
    const-string v54, "$V"

    move-object/from16 v0, v38

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_16

    .line 1012
    :cond_3c
    const/16 v55, 0x1

    goto :goto_17

    .line 1017
    .end local v27           #lastType:Lgnu/bytecode/Type;
    .end local v28           #lastTypeName:Ljava/lang/String;
    :cond_3d
    const/16 v54, 0x0

    move/from16 v8, v54

    goto :goto_18

    .line 1044
    .restart local v8       #classSpecified:Z
    .restart local v29       #len:I
    .restart local v47       #renameCount:I
    .restart local v49       #t:Lgnu/bytecode/ClassType;
    :cond_3e
    if-eqz v8, :cond_43

    .line 1051
    :cond_3f
    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object v2, v6

    move-object/from16 v3, v48

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v31

    .line 1052
    .restart local v31       #method:Lgnu/bytecode/Method;
    aput-object v31, v32, v18

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/ReferenceExp;

    move-object/from16 v54, v0

    if-eqz v54, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/ReferenceExp;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    array-length v0, v0

    move/from16 v54, v0

    if-lez v54, :cond_46

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/ReferenceExp;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    array-length v0, v0

    move/from16 v35, v0

    .line 1057
    .local v35, n:I
    move/from16 v0, v35

    new-array v0, v0, [Lgnu/bytecode/ClassType;

    move-object v15, v0

    .line 1058
    .local v15, exceptions:[Lgnu/bytecode/ClassType;
    const/16 v25, 0x0

    .local v25, j:I
    :goto_1b
    move/from16 v0, v25

    move/from16 v1, v35

    if-ge v0, v1, :cond_45

    .line 1060
    const/4 v14, 0x0

    .line 1061
    .local v14, exception:Lgnu/bytecode/ClassType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/ReferenceExp;

    move-object/from16 v54, v0

    aget-object v54, v54, v25

    invoke-virtual/range {v54 .. v54}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v10

    .line 1062
    .local v10, decl:Lgnu/expr/Declaration;
    if-eqz v10, :cond_40

    .line 1064
    invoke-virtual {v10}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v11

    .line 1065
    .local v11, declValue:Lgnu/expr/Expression;
    move-object v0, v11

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v54, v0

    if-eqz v54, :cond_44

    .line 1066
    check-cast v11, Lgnu/expr/ClassExp;

    .end local v11           #declValue:Lgnu/expr/Expression;
    move-object v0, v11

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lgnu/expr/ClassExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v14

    .line 1072
    :cond_40
    :goto_1c
    if-nez v14, :cond_42

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/ReferenceExp;

    move-object/from16 v54, v0

    aget-object v54, v54, v25

    invoke-virtual/range {v54 .. v54}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1075
    .local v13, exName:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v39

    .line 1076
    .local v39, nlen:I
    const/16 v54, 0x2

    move/from16 v0, v39

    move/from16 v1, v54

    if-le v0, v1, :cond_41

    const/16 v54, 0x0

    move-object v0, v13

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v54

    const/16 v55, 0x3c

    move/from16 v0, v54

    move/from16 v1, v55

    if-ne v0, v1, :cond_41

    const/16 v54, 0x1

    sub-int v54, v39, v54

    move-object v0, v13

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v54

    const/16 v55, 0x3e

    move/from16 v0, v54

    move/from16 v1, v55

    if-ne v0, v1, :cond_41

    .line 1079
    const/16 v54, 0x1

    const/16 v55, 0x1

    sub-int v55, v39, v55

    move-object v0, v13

    move/from16 v1, v54

    move/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 1080
    :cond_41
    invoke-static {v13}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v14

    .line 1082
    .end local v13           #exName:Ljava/lang/String;
    .end local v39           #nlen:I
    :cond_42
    aput-object v14, v15, v25

    .line 1058
    add-int/lit8 v25, v25, 0x1

    goto :goto_1b

    .line 1034
    .end local v10           #decl:Lgnu/expr/Declaration;
    .end local v14           #exception:Lgnu/bytecode/ClassType;
    .end local v15           #exceptions:[Lgnu/bytecode/ClassType;
    .end local v25           #j:I
    .end local v31           #method:Lgnu/bytecode/Method;
    .end local v35           #n:I
    :cond_43
    invoke-virtual/range {v49 .. v49}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v49

    goto/16 :goto_1a

    .line 1069
    .restart local v10       #decl:Lgnu/expr/Declaration;
    .restart local v11       #declValue:Lgnu/expr/Expression;
    .restart local v14       #exception:Lgnu/bytecode/ClassType;
    .restart local v15       #exceptions:[Lgnu/bytecode/ClassType;
    .restart local v25       #j:I
    .restart local v31       #method:Lgnu/bytecode/Method;
    .restart local v35       #n:I
    :cond_44
    const/16 v54, 0x65

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "throws specification "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual {v10}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string v56, " has non-class lexical binding"

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, p2

    move/from16 v1, v54

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto/16 :goto_1c

    .line 1084
    .end local v10           #decl:Lgnu/expr/Declaration;
    .end local v11           #declValue:Lgnu/expr/Expression;
    .end local v14           #exception:Lgnu/bytecode/ClassType;
    :cond_45
    new-instance v5, Lgnu/bytecode/ExceptionsAttr;

    move-object v0, v5

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lgnu/bytecode/ExceptionsAttr;-><init>(Lgnu/bytecode/Method;)V

    .line 1085
    .local v5, attr:Lgnu/bytecode/ExceptionsAttr;
    invoke-virtual {v5, v15}, Lgnu/bytecode/ExceptionsAttr;->setExceptions([Lgnu/bytecode/ClassType;)V

    .line 971
    .end local v5           #attr:Lgnu/bytecode/ExceptionsAttr;
    .end local v15           #exceptions:[Lgnu/bytecode/ClassType;
    .end local v25           #j:I
    .end local v35           #n:I
    :cond_46
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_e

    .line 1088
    .end local v6           #atypes:[Lgnu/bytecode/Type;
    .end local v8           #classSpecified:Z
    .end local v24           #itype:I
    .end local v29           #len:I
    .end local v31           #method:Lgnu/bytecode/Method;
    .end local v40           #numArgs:I
    .end local v45           #plainArgs:I
    .end local v47           #renameCount:I
    .end local v49           #t:Lgnu/bytecode/ClassType;
    .end local v51           #var:Lgnu/expr/Declaration;
    :cond_47
    return-void
.end method

.method addMethodFor(Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V
    .locals 3
    .parameter "comp"
    .parameter "closureEnvType"

    .prologue
    .line 774
    move-object v1, p0

    .line 775
    .local v1, sc:Lgnu/expr/ScopeExp;
    :goto_0
    if-eqz v1, :cond_0

    instance-of v2, v1, Lgnu/expr/ClassExp;

    if-nez v2, :cond_0

    .line 776
    iget-object v1, v1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_0

    .line 780
    :cond_0
    if-eqz v1, :cond_1

    .line 781
    check-cast v1, Lgnu/expr/ClassExp;

    .end local v1           #sc:Lgnu/expr/ScopeExp;
    iget-object v0, v1, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    .line 784
    .local v0, ctype:Lgnu/bytecode/ClassType;
    :goto_1
    invoke-virtual {p0, v0, p1, p2}, Lgnu/expr/LambdaExp;->addMethodFor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V

    .line 785
    return-void

    .line 783
    .end local v0           #ctype:Lgnu/bytecode/ClassType;
    .restart local v1       #sc:Lgnu/expr/ScopeExp;
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v0

    .restart local v0       #ctype:Lgnu/bytecode/ClassType;
    goto :goto_1
.end method

.method public allocChildClasses(Lgnu/expr/Compilation;)V
    .locals 10
    .parameter "comp"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1093
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getMainMethod()Lgnu/bytecode/Method;

    move-result-object v1

    .line 1095
    .local v1, main:Lgnu/bytecode/Method;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1096
    invoke-virtual {v1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v5

    invoke-virtual {p0, v5}, Lgnu/expr/LambdaExp;->declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;

    .line 1098
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 1101
    .local v0, decl:Lgnu/expr/Declaration;
    :goto_0
    iget-object v5, p0, Lgnu/expr/LambdaExp;->firstArgsArrayArg:Lgnu/expr/Declaration;

    if-ne v0, v5, :cond_1

    iget-object v5, p0, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    if-eqz v5, :cond_1

    .line 1103
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v5

    iget-object v6, p0, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    invoke-virtual {v5, v6}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/Variable;)V

    .line 1105
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    iget-object v5, p0, Lgnu/expr/LambdaExp;->firstArgsArrayArg:Lgnu/expr/Declaration;

    if-nez v5, :cond_3

    if-nez v0, :cond_2

    .line 1111
    :goto_1
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v5

    sget-object v6, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v7, "$ctx"

    invoke-virtual {v5, v8, v6, v7}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v2

    .line 1115
    .local v2, var:Lgnu/bytecode/Variable;
    invoke-virtual {v2, v9}, Lgnu/bytecode/Variable;->setParameter(Z)V

    .line 1117
    .end local v2           #var:Lgnu/bytecode/Variable;
    :cond_2
    if-nez v0, :cond_5

    .line 1149
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->declareClosureEnv()Lgnu/bytecode/Variable;

    .line 1151
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->allocFrame(Lgnu/expr/Compilation;)V

    .line 1153
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->allocChildMethods(Lgnu/expr/Compilation;)V

    .line 1154
    return-void

    .line 1105
    :cond_3
    iget-object v5, p0, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lgnu/expr/LambdaExp;->firstArgsArrayArg:Lgnu/expr/Declaration;

    if-ne v0, v5, :cond_2

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lgnu/expr/LambdaExp;->firstArgsArrayArg:Lgnu/expr/Declaration;

    invoke-virtual {v5}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v5

    if-ne v0, v5, :cond_2

    goto :goto_1

    .line 1119
    :cond_5
    iget-object v2, v0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 1121
    .restart local v2       #var:Lgnu/bytecode/Variable;
    if-nez v2, :cond_6

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v0}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1146
    :cond_6
    :goto_2
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 1147
    goto :goto_0

    .line 1124
    :cond_7
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1128
    invoke-virtual {v0, v8}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    move-result-object v2

    goto :goto_2

    .line 1138
    :cond_8
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 1140
    .local v3, vname:Ljava/lang/String;
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 1141
    .local v4, vtype:Lgnu/bytecode/Type;
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v5

    invoke-virtual {v5, v8, v4, v3}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v2

    .end local v2           #var:Lgnu/bytecode/Variable;
    iput-object v2, v0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 1143
    .restart local v2       #var:Lgnu/bytecode/Variable;
    invoke-virtual {v2, v9}, Lgnu/bytecode/Variable;->setParameter(Z)V

    goto :goto_2
.end method

.method allocChildMethods(Lgnu/expr/Compilation;)V
    .locals 8
    .parameter "comp"

    .prologue
    .line 1158
    iget-object v1, p0, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .local v1, child:Lgnu/expr/LambdaExp;
    :goto_0
    if-eqz v1, :cond_9

    .line 1161
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->isClassGenerated()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1164
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1165
    const/4 v3, 0x0

    .line 1175
    .local v3, closureEnvType:Lgnu/bytecode/ObjectType;
    :goto_1
    invoke-virtual {v1, p1, v3}, Lgnu/expr/LambdaExp;->addMethodFor(Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V

    .line 1177
    .end local v3           #closureEnvType:Lgnu/bytecode/ObjectType;
    :cond_0
    instance-of v7, v1, Lgnu/expr/ClassExp;

    if-eqz v7, :cond_2

    .line 1179
    move-object v0, v1

    check-cast v0, Lgnu/expr/ClassExp;

    move-object v2, v0

    .line 1180
    .local v2, cl:Lgnu/expr/ClassExp;
    invoke-virtual {v2}, Lgnu/expr/ClassExp;->getNeedsClosureEnv()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1183
    instance-of v7, p0, Lgnu/expr/ModuleExp;

    if-nez v7, :cond_1

    instance-of v7, p0, Lgnu/expr/ClassExp;

    if-eqz v7, :cond_7

    .line 1184
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    check-cast v6, Lgnu/bytecode/ClassType;

    .line 1192
    .local v6, parentFrameType:Lgnu/bytecode/ClassType;
    :goto_2
    iget-object v7, v2, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v7, v6}, Lgnu/bytecode/ClassType;->setOuterLink(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Field;

    move-result-object v7

    iput-object v7, v2, Lgnu/expr/ClassExp;->staticLinkField:Lgnu/bytecode/Field;

    iput-object v7, v2, Lgnu/expr/ClassExp;->closureEnvField:Lgnu/bytecode/Field;

    .line 1159
    .end local v2           #cl:Lgnu/expr/ClassExp;
    .end local v6           #parentFrameType:Lgnu/bytecode/ClassType;
    :cond_2
    iget-object v1, v1, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    goto :goto_0

    .line 1166
    :cond_3
    instance-of v7, p0, Lgnu/expr/ClassExp;

    if-nez v7, :cond_4

    instance-of v7, p0, Lgnu/expr/ModuleExp;

    if-eqz v7, :cond_5

    .line 1167
    :cond_4
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v3

    .restart local v3       #closureEnvType:Lgnu/bytecode/ObjectType;
    goto :goto_1

    .line 1170
    .end local v3           #closureEnvType:Lgnu/bytecode/ObjectType;
    :cond_5
    move-object v4, p0

    .line 1171
    .local v4, owner:Lgnu/expr/LambdaExp;
    :goto_3
    iget-object v7, v4, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-nez v7, :cond_6

    .line 1172
    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v4

    goto :goto_3

    .line 1173
    :cond_6
    iget-object v7, v4, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    invoke-virtual {v7}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/ClassType;

    .restart local v3       #closureEnvType:Lgnu/bytecode/ObjectType;
    goto :goto_1

    .line 1187
    .end local v3           #closureEnvType:Lgnu/bytecode/ObjectType;
    .end local v4           #owner:Lgnu/expr/LambdaExp;
    .restart local v2       #cl:Lgnu/expr/ClassExp;
    :cond_7
    iget-object v7, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object v5, v7

    .line 1190
    .local v5, parentFrame:Lgnu/bytecode/Variable;
    :goto_4
    invoke-virtual {v5}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    check-cast v6, Lgnu/bytecode/ClassType;

    .restart local v6       #parentFrameType:Lgnu/bytecode/ClassType;
    goto :goto_2

    .line 1187
    .end local v5           #parentFrame:Lgnu/bytecode/Variable;
    .end local v6           #parentFrameType:Lgnu/bytecode/ClassType;
    :cond_8
    iget-object v7, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object v5, v7

    goto :goto_4

    .line 1197
    .end local v2           #cl:Lgnu/expr/ClassExp;
    :cond_9
    return-void
.end method

.method allocFieldFor(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;
    .locals 13
    .parameter "comp"

    .prologue
    .line 562
    iget-object v11, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    iget-object v11, v11, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v11, :cond_0

    .line 563
    iget-object v11, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    iget-object v11, v11, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 608
    :goto_0
    return-object v11

    .line 564
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v7

    .line 565
    .local v7, needsClosure:Z
    if-eqz v7, :cond_7

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v11

    invoke-virtual {v11}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v11

    move-object v5, v11

    .line 567
    .local v5, frameType:Lgnu/bytecode/ClassType;
    :goto_1
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v6

    .line 568
    .local v6, name:Ljava/lang/String;
    if-nez v6, :cond_8

    const-string v11, "lambda"

    move-object v3, v11

    .line 570
    .local v3, fname:Ljava/lang/String;
    :goto_2
    const/16 v1, 0x10

    .line 571
    .local v1, fflags:I
    iget-object v11, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    iget-object v11, v11, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v11, v11, Lgnu/expr/ModuleExp;

    if-eqz v11, :cond_a

    .line 573
    iget-object v11, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v11}, Lgnu/expr/Declaration;->needsExternalAccess()Z

    move-result v0

    .line 574
    .local v0, external_access:Z
    if-eqz v0, :cond_1

    .line 575
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "$Prvt$"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 576
    :cond_1
    iget-object v11, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    const/16 v12, 0x800

    invoke-virtual {v11, v12}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 578
    or-int/lit8 v1, v1, 0x8

    .line 582
    iget-object v11, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    iget-object v11, v11, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    check-cast v11, Lgnu/expr/ModuleExp;

    invoke-virtual {v11}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v11

    if-nez v11, :cond_2

    .line 583
    and-int/lit8 v1, v1, -0x11

    .line 588
    :cond_2
    iget-object v11, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v11}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v11

    if-eqz v11, :cond_3

    if-nez v0, :cond_3

    iget-boolean v11, p1, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v11, :cond_4

    .line 589
    :cond_3
    or-int/lit8 v1, v1, 0x1

    .line 590
    :cond_4
    iget v11, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit16 v11, v11, 0x800

    if-eqz v11, :cond_5

    .line 592
    move-object v4, v3

    .line 593
    .local v4, fname0:Ljava/lang/String;
    iget v11, p0, Lgnu/expr/LambdaExp;->min_args:I

    iget v12, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v11, v12, :cond_9

    iget v11, p0, Lgnu/expr/LambdaExp;->min_args:I

    move v9, v11

    .line 594
    .local v9, suffix:I
    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x24

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v10, v9, 0x1

    .end local v9           #suffix:I
    .local v10, suffix:I
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 595
    invoke-virtual {v5, v3}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v11

    if-nez v11, :cond_b

    .line 604
    .end local v0           #external_access:Z
    .end local v4           #fname0:Ljava/lang/String;
    .end local v10           #suffix:I
    :cond_5
    :goto_4
    sget-object v8, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    .line 605
    .local v8, rtype:Lgnu/bytecode/Type;
    invoke-virtual {v5, v3, v8, v1}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v2

    .line 606
    .local v2, field:Lgnu/bytecode/Field;
    iget-object v11, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v11, :cond_6

    .line 607
    iget-object v11, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    iput-object v2, v11, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    :cond_6
    move-object v11, v2

    .line 608
    goto/16 :goto_0

    .line 565
    .end local v1           #fflags:I
    .end local v2           #field:Lgnu/bytecode/Field;
    .end local v3           #fname:Ljava/lang/String;
    .end local v5           #frameType:Lgnu/bytecode/ClassType;
    .end local v6           #name:Ljava/lang/String;
    .end local v8           #rtype:Lgnu/bytecode/Type;
    :cond_7
    iget-object v11, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    move-object v5, v11

    goto/16 :goto_1

    .line 568
    .restart local v5       #frameType:Lgnu/bytecode/ClassType;
    .restart local v6       #name:Ljava/lang/String;
    :cond_8
    invoke-static {v6}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    goto/16 :goto_2

    .line 593
    .restart local v0       #external_access:Z
    .restart local v1       #fflags:I
    .restart local v3       #fname:Ljava/lang/String;
    .restart local v4       #fname0:Ljava/lang/String;
    :cond_9
    const/4 v11, 0x1

    move v9, v11

    goto :goto_3

    .line 600
    .end local v0           #external_access:Z
    .end local v4           #fname0:Ljava/lang/String;
    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "$Fn"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Lgnu/expr/Compilation;->localFieldIndex:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p1, Lgnu/expr/Compilation;->localFieldIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 601
    if-nez v7, :cond_5

    .line 602
    or-int/lit8 v1, v1, 0x8

    goto :goto_4

    .restart local v0       #external_access:Z
    .restart local v4       #fname0:Ljava/lang/String;
    .restart local v10       #suffix:I
    :cond_b
    move v9, v10

    .end local v10           #suffix:I
    .restart local v9       #suffix:I
    goto :goto_3
.end method

.method public allocFrame(Lgnu/expr/Compilation;)V
    .locals 2
    .parameter "comp"

    .prologue
    .line 1201
    iget-object v1, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v1, :cond_1

    .line 1204
    instance-of v1, p0, Lgnu/expr/ModuleExp;

    if-nez v1, :cond_0

    instance-of v1, p0, Lgnu/expr/ClassExp;

    if-eqz v1, :cond_2

    .line 1205
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 1212
    .local v0, frameType:Lgnu/bytecode/ClassType;
    :goto_0
    iget-object v1, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    invoke-virtual {v1, v0}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 1214
    .end local v0           #frameType:Lgnu/bytecode/ClassType;
    :cond_1
    return-void

    .line 1208
    :cond_2
    new-instance v0, Lgnu/bytecode/ClassType;

    const-string v1, "frame"

    invoke-virtual {p1, v1}, Lgnu/expr/Compilation;->generateClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    .line 1209
    .restart local v0       #frameType:Lgnu/bytecode/ClassType;
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getModuleType()Lgnu/bytecode/ClassType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 1210
    invoke-virtual {p1, v0}, Lgnu/expr/Compilation;->addClass(Lgnu/bytecode/ClassType;)V

    goto :goto_0
.end method

.method allocParameters(Lgnu/expr/Compilation;)V
    .locals 7
    .parameter "comp"

    .prologue
    .line 1218
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 1220
    .local v0, code:Lgnu/bytecode/CodeAttr;
    const/4 v2, 0x0

    .line 1221
    .local v2, i:I
    const/4 v3, 0x0

    .line 1223
    .local v3, j:I
    iget-object v5, v0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/bytecode/LocalVarsAttr;->enterScope(Lgnu/bytecode/Scope;)V

    .line 1224
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v4

    .line 1225
    .local v4, line:I
    if-lez v4, :cond_0

    .line 1226
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 1228
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .local v1, decl:Lgnu/expr/Declaration;
    :goto_0
    if-eqz v1, :cond_2

    .line 1235
    iget-object v5, p0, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    if-eqz v5, :cond_1

    iget v5, p0, Lgnu/expr/LambdaExp;->min_args:I

    iget v6, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 1239
    iget-object v5, p0, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1240
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1241
    sget-object v5, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v5}, Lgnu/bytecode/CodeAttr;->emitArrayLoad(Lgnu/bytecode/Type;)V

    .line 1242
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    invoke-virtual {v5, v0}, Lgnu/bytecode/Type;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    .line 1243
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v5

    invoke-virtual {v0, v5}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 1245
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 1246
    add-int/lit8 v2, v2, 0x1

    .line 1247
    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    goto :goto_0

    .line 1249
    :cond_2
    iget-object v5, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v5, :cond_3

    .line 1250
    iget-object v5, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    invoke-virtual {v5, v0}, Lgnu/bytecode/Variable;->allocateLocal(Lgnu/bytecode/CodeAttr;)V

    .line 1251
    :cond_3
    return-void
.end method

.method public apply(Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1673
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->setIndexes()V

    .line 1674
    new-instance v0, Lgnu/expr/Closure;

    invoke-direct {v0, p0, p1}, Lgnu/expr/Closure;-><init>(Lgnu/expr/LambdaExp;Lgnu/mapping/CallContext;)V

    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 1675
    return-void
.end method

.method public capture(Lgnu/expr/Declaration;)V
    .locals 2
    .parameter "decl"

    .prologue
    .line 42
    invoke-virtual {p1}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lgnu/expr/LambdaExp;->capturedVars:Lgnu/expr/Declaration;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lgnu/expr/ModuleExp;

    if-nez v0, :cond_0

    instance-of v0, p0, Lgnu/expr/ClassExp;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lgnu/bytecode/Variable;

    const-string v1, "heapFrame"

    invoke-direct {v0, v1}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    .line 50
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 51
    invoke-virtual {p1}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lgnu/expr/LambdaExp;->capturedVars:Lgnu/expr/Declaration;

    iput-object v0, p1, Lgnu/expr/Declaration;->nextCapturedVar:Lgnu/expr/Declaration;

    .line 54
    iput-object p1, p0, Lgnu/expr/LambdaExp;->capturedVars:Lgnu/expr/Declaration;

    .line 57
    :cond_1
    return-void
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 7
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 652
    instance-of v6, p2, Lgnu/expr/IgnoreTarget;

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getCanRead()Z

    move-result v6

    if-nez v6, :cond_1

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 720
    .local v0, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v3

    .line 721
    .local v3, outer:Lgnu/expr/LambdaExp;
    sget-object v5, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    .line 722
    .local v5, rtype:Lgnu/bytecode/Type;
    iget v6, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit16 v6, v6, 0x100

    if-nez v6, :cond_2

    iget-boolean v6, p1, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v6, :cond_3

    instance-of v6, v3, Lgnu/expr/ModuleExp;

    if-eqz v6, :cond_3

    .line 725
    :cond_2
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->compileAsMethod(Lgnu/expr/Compilation;)V

    .line 726
    const/4 v6, 0x0

    invoke-virtual {p0, p1, v6}, Lgnu/expr/LambdaExp;->addApplyMethod(Lgnu/expr/Compilation;Lgnu/bytecode/Field;)V

    .line 727
    invoke-static {p0, p1}, Lgnu/expr/ProcInitializer;->emitLoadModuleMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V

    .line 745
    :goto_1
    invoke-virtual {p2, p1, v5}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_0

    .line 731
    :cond_3
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->compileSetField(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;

    move-result-object v1

    .line 732
    .local v1, field:Lgnu/bytecode/Field;
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 733
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto :goto_1

    .line 736
    :cond_4
    iget-object v4, p1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 737
    .local v4, parent:Lgnu/expr/LambdaExp;
    iget-object v6, v4, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v6, :cond_5

    iget-object v6, v4, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object v2, v6

    .line 740
    .local v2, frame:Lgnu/bytecode/Variable;
    :goto_2
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 741
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    goto :goto_1

    .line 737
    .end local v2           #frame:Lgnu/bytecode/Variable;
    :cond_5
    iget-object v6, v4, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object v2, v6

    goto :goto_2
.end method

.method compileAsMethod(Lgnu/expr/Compilation;)V
    .locals 27
    .parameter "comp"

    .prologue
    .line 1476
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->flags:I

    move/from16 v24, v0

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x80

    move/from16 v24, v0

    if-nez v24, :cond_0

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 1583
    :cond_0
    :goto_0
    return-void

    .line 1478
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->flags:I

    move/from16 v24, v0

    move/from16 v0, v24

    or-int/lit16 v0, v0, 0x80

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/expr/LambdaExp;->flags:I

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 1481
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v20, v0

    .line 1482
    .local v20, save_method:Lgnu/bytecode/Method;
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v19, v0

    .line 1483
    .local v19, save_lambda:Lgnu/expr/LambdaExp;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v14, v24, v25

    .line 1486
    .local v14, method:Lgnu/bytecode/Method;
    invoke-virtual {v14}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v9

    .line 1487
    .local v9, isStatic:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    sub-int v15, v24, v25

    .line 1488
    .local v15, numStubs:I
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->restArgType()Lgnu/bytecode/Type;

    move-result-object v17

    .line 1490
    .local v17, restArgType:Lgnu/bytecode/Type;
    const/16 v18, 0x0

    .line 1491
    .local v18, saveDeclFlags:[I
    if-lez v15, :cond_2

    .line 1493
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v24, v0

    add-int v24, v24, v15

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 1494
    const/4 v11, 0x0

    .line 1495
    .local v11, k:I
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v7

    .line 1496
    .local v7, decl:Lgnu/expr/Declaration;
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v24, v0

    add-int v24, v24, v15

    move v0, v11

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    .line 1497
    add-int/lit8 v12, v11, 0x1

    .end local v11           #k:I
    .local v12, k:I
    move-object v0, v7

    iget v0, v0, Lgnu/expr/Declaration;->flags:I

    move/from16 v24, v0

    aput v24, v18, v11

    .line 1496
    invoke-virtual {v7}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v7

    move v11, v12

    .end local v12           #k:I
    .restart local v11       #k:I
    goto :goto_1

    .line 1500
    .end local v7           #decl:Lgnu/expr/Declaration;
    .end local v11           #k:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_3

    const/16 v24, 0x1

    move/from16 v6, v24

    .line 1502
    .local v6, ctxArg:Z
    :goto_2
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    if-gt v8, v15, :cond_12

    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v24, v0

    aget-object v24, v24, v8

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1505
    if-ge v8, v15, :cond_10

    .line 1507
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v5

    .line 1508
    .local v5, code:Lgnu/bytecode/CodeAttr;
    add-int/lit8 v21, v8, 0x1

    .line 1510
    .local v21, toCall:I
    :goto_4
    move/from16 v0, v21

    move v1, v15

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v24, v0

    aget-object v24, v24, v21

    move-object/from16 v0, v24

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 1511
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 1500
    .end local v5           #code:Lgnu/bytecode/CodeAttr;
    .end local v6           #ctxArg:Z
    .end local v8           #i:I
    .end local v21           #toCall:I
    :cond_3
    const/16 v24, 0x0

    move/from16 v6, v24

    goto :goto_2

    .line 1512
    .restart local v5       #code:Lgnu/bytecode/CodeAttr;
    .restart local v6       #ctxArg:Z
    .restart local v8       #i:I
    .restart local v21       #toCall:I
    :cond_4
    move/from16 v0, v21

    move v1, v15

    if-ne v0, v1, :cond_7

    if-eqz v17, :cond_7

    const/16 v24, 0x1

    move/from16 v23, v24

    .line 1514
    .local v23, varArgs:Z
    :goto_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object v4, v0

    .line 1515
    .local v4, callContextSave:Lgnu/bytecode/Variable;
    const/16 v24, 0x0

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v22

    .line 1516
    .local v22, var:Lgnu/bytecode/Variable;
    if-nez v9, :cond_6

    .line 1518
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1519
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 1520
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 1521
    :cond_5
    const/16 v24, 0x1

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v22

    .line 1523
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v7

    .line 1524
    .restart local v7       #decl:Lgnu/expr/Declaration;
    const/4 v10, 0x0

    .local v10, j:I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v24, v0

    add-int v24, v24, v8

    move v0, v10

    move/from16 v1, v24

    if-ge v0, v1, :cond_8

    .line 1526
    move-object v0, v7

    iget v0, v0, Lgnu/expr/Declaration;->flags:I

    move/from16 v24, v0

    or-int/lit8 v24, v24, 0x40

    move/from16 v0, v24

    move-object v1, v7

    iput v0, v1, Lgnu/expr/Declaration;->flags:I

    .line 1527
    move-object/from16 v0, v22

    move-object v1, v7

    iput-object v0, v1, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 1528
    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1529
    invoke-virtual/range {v22 .. v22}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v22

    .line 1524
    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v7}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v7

    goto :goto_6

    .line 1512
    .end local v4           #callContextSave:Lgnu/bytecode/Variable;
    .end local v7           #decl:Lgnu/expr/Declaration;
    .end local v10           #j:I
    .end local v22           #var:Lgnu/bytecode/Variable;
    .end local v23           #varArgs:Z
    :cond_7
    const/16 v24, 0x0

    move/from16 v23, v24

    goto :goto_5

    .line 1531
    .restart local v4       #callContextSave:Lgnu/bytecode/Variable;
    .restart local v7       #decl:Lgnu/expr/Declaration;
    .restart local v10       #j:I
    .restart local v22       #var:Lgnu/bytecode/Variable;
    .restart local v23       #varArgs:Z
    :cond_8
    if-eqz v6, :cond_9

    move-object/from16 v24, v22

    :goto_7
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1532
    move v10, v8

    :goto_8
    move v0, v10

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 1534
    invoke-virtual {v7}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v16

    .line 1535
    .local v16, paramTarget:Lgnu/expr/Target;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v24, v0

    aget-object v24, v24, v10

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 1532
    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v7}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v7

    goto :goto_8

    .line 1531
    .end local v16           #paramTarget:Lgnu/expr/Target;
    :cond_9
    const/16 v24, 0x0

    goto :goto_7

    .line 1537
    :cond_a
    if-eqz v23, :cond_b

    .line 1540
    invoke-virtual/range {v17 .. v17}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1541
    .local v13, lastTypeName:Ljava/lang/String;
    const-string v24, "gnu.lists.LList"

    move-object/from16 v0, v24

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 1542
    new-instance v3, Lgnu/expr/QuoteExp;

    sget-object v24, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, v3

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 1547
    .local v3, arg:Lgnu/expr/Expression;
    :goto_9
    move-object v0, v3

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 1549
    .end local v3           #arg:Lgnu/expr/Expression;
    .end local v13           #lastTypeName:Ljava/lang/String;
    :cond_b
    if-eqz v6, :cond_c

    .line 1550
    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1551
    :cond_c
    if-eqz v9, :cond_f

    .line 1552
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v24, v0

    aget-object v24, v24, v21

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1555
    :goto_a
    invoke-virtual {v5}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1556
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 1557
    move-object v0, v4

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1502
    .end local v4           #callContextSave:Lgnu/bytecode/Variable;
    .end local v5           #code:Lgnu/bytecode/CodeAttr;
    .end local v7           #decl:Lgnu/expr/Declaration;
    .end local v10           #j:I
    .end local v21           #toCall:I
    .end local v22           #var:Lgnu/bytecode/Variable;
    .end local v23           #varArgs:Z
    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 1543
    .restart local v4       #callContextSave:Lgnu/bytecode/Variable;
    .restart local v5       #code:Lgnu/bytecode/CodeAttr;
    .restart local v7       #decl:Lgnu/expr/Declaration;
    .restart local v10       #j:I
    .restart local v13       #lastTypeName:Ljava/lang/String;
    .restart local v21       #toCall:I
    .restart local v22       #var:Lgnu/bytecode/Variable;
    .restart local v23       #varArgs:Z
    :cond_d
    const-string v24, "java.lang.Object[]"

    move-object/from16 v0, v24

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 1544
    new-instance v3, Lgnu/expr/QuoteExp;

    sget-object v24, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    move-object v0, v3

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .restart local v3       #arg:Lgnu/expr/Expression;
    goto :goto_9

    .line 1546
    .end local v3           #arg:Lgnu/expr/Expression;
    :cond_e
    new-instance v24, Ljava/lang/Error;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "unimplemented #!rest type "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v24

    .line 1554
    .end local v13           #lastTypeName:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v24, v0

    aget-object v24, v24, v21

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_a

    .line 1561
    .end local v4           #callContextSave:Lgnu/bytecode/Variable;
    .end local v5           #code:Lgnu/bytecode/CodeAttr;
    .end local v7           #decl:Lgnu/expr/Declaration;
    .end local v10           #j:I
    .end local v21           #toCall:I
    .end local v22           #var:Lgnu/bytecode/Variable;
    .end local v23           #varArgs:Z
    :cond_10
    if-eqz v18, :cond_11

    .line 1563
    const/4 v11, 0x0

    .line 1564
    .restart local v11       #k:I
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v7

    .line 1565
    .restart local v7       #decl:Lgnu/expr/Declaration;
    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v24, v0

    add-int v24, v24, v15

    move v0, v11

    move/from16 v1, v24

    if-ge v0, v1, :cond_11

    .line 1567
    add-int/lit8 v12, v11, 0x1

    .end local v11           #k:I
    .restart local v12       #k:I
    aget v24, v18, v11

    move/from16 v0, v24

    move-object v1, v7

    iput v0, v1, Lgnu/expr/Declaration;->flags:I

    .line 1568
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object v1, v7

    iput-object v0, v1, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 1565
    invoke-virtual {v7}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v7

    move v11, v12

    .end local v12           #k:I
    .restart local v11       #k:I
    goto :goto_c

    .line 1571
    .end local v7           #decl:Lgnu/expr/Declaration;
    .end local v11           #k:I
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lgnu/bytecode/Method;->initCode()V

    .line 1572
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/LambdaExp;->allocChildClasses(Lgnu/expr/Compilation;)V

    .line 1573
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/LambdaExp;->allocParameters(Lgnu/expr/Compilation;)V

    .line 1574
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/LambdaExp;->enterFunction(Lgnu/expr/Compilation;)V

    .line 1576
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/LambdaExp;->compileBody(Lgnu/expr/Compilation;)V

    .line 1577
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/LambdaExp;->compileEnd(Lgnu/expr/Compilation;)V

    goto/16 :goto_b

    .line 1581
    :cond_12
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1582
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    goto/16 :goto_0
.end method

.method public compileBody(Lgnu/expr/Compilation;)V
    .locals 5
    .parameter "comp"

    .prologue
    .line 1588
    iget-object v0, p1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1589
    .local v0, callContextSave:Lgnu/bytecode/Variable;
    const/4 v3, 0x0

    iput-object v3, p1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1590
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    .line 1592
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v3

    const-string v4, "$ctx"

    invoke-virtual {v3, v4}, Lgnu/bytecode/Scope;->lookup(Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v2

    .line 1593
    .local v2, var:Lgnu/bytecode/Variable;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    sget-object v4, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    if-ne v3, v4, :cond_0

    .line 1594
    iput-object v2, p1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1595
    :cond_0
    invoke-static {p1}, Lgnu/expr/ConsumerTarget;->makeContextTarget(Lgnu/expr/Compilation;)Lgnu/expr/Target;

    move-result-object v1

    .line 1599
    .end local v2           #var:Lgnu/bytecode/Variable;
    .local v1, target:Lgnu/expr/Target;
    :goto_0
    iget-object v3, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    iget-object v4, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v4}, Lgnu/expr/Expression;->getLineNumber()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    :goto_1
    invoke-virtual {v3, p1, v1, v4}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/expr/Expression;)V

    .line 1601
    iput-object v0, p1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1602
    return-void

    .line 1598
    .end local v1           #target:Lgnu/expr/Target;
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-static {v3}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v1

    .restart local v1       #target:Lgnu/expr/Target;
    goto :goto_0

    :cond_2
    move-object v4, p0

    .line 1599
    goto :goto_1
.end method

.method public compileEnd(Lgnu/expr/Compilation;)V
    .locals 4
    .parameter "comp"

    .prologue
    .line 524
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 525
    .local v1, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v2

    if-nez v2, :cond_2

    .line 527
    iget-object v2, p1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v2}, Lgnu/bytecode/Method;->reachableHere()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isModuleBody()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isHandlingTailCalls()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 530
    :cond_0
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 531
    :cond_1
    invoke-virtual {p0, v1}, Lgnu/expr/LambdaExp;->popScope(Lgnu/bytecode/CodeAttr;)V

    .line 532
    sget-boolean v2, Lgnu/expr/Compilation;->fewerClasses:Z

    if-nez v2, :cond_2

    .line 533
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 536
    :cond_2
    iget-object v0, p0, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .local v0, child:Lgnu/expr/LambdaExp;
    :goto_0
    if-eqz v0, :cond_4

    .line 538
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getCanRead()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v2

    if-nez v2, :cond_3

    .line 540
    invoke-virtual {v0, p1}, Lgnu/expr/LambdaExp;->compileAsMethod(Lgnu/expr/Compilation;)V

    .line 542
    :cond_3
    iget-object v0, v0, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    goto :goto_0

    .line 545
    :cond_4
    iget-object v2, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v2, :cond_5

    .line 546
    iget-object v2, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    invoke-virtual {v2}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/ClassType;

    invoke-virtual {p1, v2, p0}, Lgnu/expr/Compilation;->generateConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)V

    .line 548
    :cond_5
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->generateApplyMethods(Lgnu/expr/Compilation;)V

    .line 549
    return-void
.end method

.method public compileSetField(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;
    .locals 2
    .parameter "comp"

    .prologue
    .line 638
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->allocFieldFor(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;

    move-result-object v0

    .line 639
    .local v0, field:Lgnu/bytecode/Field;
    invoke-virtual {p1}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    sget-object v1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, p1, v1}, Lgnu/expr/LambdaExp;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 647
    :goto_0
    new-instance v1, Lgnu/expr/ProcInitializer;

    invoke-direct {v1, p0, p1, v0}, Lgnu/expr/ProcInitializer;-><init>(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;Lgnu/bytecode/Field;)V

    iget-object v1, v1, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    return-object v1

    .line 643
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->compileAsMethod(Lgnu/expr/Compilation;)V

    .line 644
    invoke-virtual {p0, p1, v0}, Lgnu/expr/LambdaExp;->addApplyMethod(Lgnu/expr/Compilation;Lgnu/bytecode/Field;)V

    goto :goto_0
.end method

.method public declareClosureEnv()Lgnu/bytecode/Variable;
    .locals 9

    .prologue
    const-string v8, "closureEnv"

    const-string v7, "*init*"

    .line 414
    iget-object v6, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 416
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v2

    .line 417
    .local v2, parent:Lgnu/expr/LambdaExp;
    instance-of v6, v2, Lgnu/expr/ClassExp;

    if-eqz v6, :cond_0

    .line 418
    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v2

    .line 419
    :cond_0
    iget-object v6, v2, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v6, :cond_2

    iget-object v6, v2, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object v3, v6

    .line 421
    .local v3, parentFrame:Lgnu/bytecode/Variable;
    :goto_0
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "*init*"

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 422
    iget-object v6, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v6}, Lgnu/expr/LambdaExp;->declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;

    move-result-object v6

    iput-object v6, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 454
    .end local v2           #parent:Lgnu/expr/LambdaExp;
    .end local v3           #parentFrame:Lgnu/bytecode/Variable;
    :cond_1
    :goto_1
    iget-object v6, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    return-object v6

    .line 419
    .restart local v2       #parent:Lgnu/expr/LambdaExp;
    :cond_2
    iget-object v6, v2, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object v3, v6

    goto :goto_0

    .line 423
    .restart local v3       #parentFrame:Lgnu/bytecode/Variable;
    :cond_3
    iget-object v6, v2, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-nez v6, :cond_4

    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->getNeedsStaticLink()Z

    move-result v6

    if-nez v6, :cond_4

    instance-of v6, v2, Lgnu/expr/ModuleExp;

    if-nez v6, :cond_4

    .line 425
    const/4 v6, 0x0

    iput-object v6, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    goto :goto_1

    .line 426
    :cond_4
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isClassGenerated()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v6

    if-nez v6, :cond_7

    .line 428
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getMainMethod()Lgnu/bytecode/Method;

    move-result-object v5

    .line 429
    .local v5, primMethod:Lgnu/bytecode/Method;
    const-string v6, "*init*"

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 430
    .local v1, isInit:Z
    invoke-virtual {v5}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v6

    if-nez v6, :cond_5

    if-nez v1, :cond_5

    .line 432
    invoke-virtual {v5}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgnu/expr/LambdaExp;->declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;

    move-result-object v6

    iput-object v6, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    goto :goto_1

    .line 435
    :cond_5
    invoke-virtual {v5}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v0, v6, v7

    .line 436
    .local v0, envType:Lgnu/bytecode/Type;
    new-instance v6, Lgnu/bytecode/Variable;

    const-string v7, "closureEnv"

    invoke-direct {v6, v8, v0}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    iput-object v6, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 438
    if-eqz v1, :cond_6

    .line 439
    invoke-virtual {v5}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgnu/expr/LambdaExp;->declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;

    move-result-object v4

    .line 442
    .local v4, prev:Lgnu/bytecode/Variable;
    :goto_2
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v6

    iget-object v7, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    invoke-virtual {v6, v4, v7}, Lgnu/bytecode/Scope;->addVariableAfter(Lgnu/bytecode/Variable;Lgnu/bytecode/Variable;)V

    .line 443
    iget-object v6, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lgnu/bytecode/Variable;->setParameter(Z)V

    goto :goto_1

    .line 441
    .end local v4           #prev:Lgnu/bytecode/Variable;
    :cond_6
    const/4 v4, 0x0

    .restart local v4       #prev:Lgnu/bytecode/Variable;
    goto :goto_2

    .line 446
    .end local v0           #envType:Lgnu/bytecode/Type;
    .end local v1           #isInit:Z
    .end local v4           #prev:Lgnu/bytecode/Variable;
    .end local v5           #primMethod:Lgnu/bytecode/Method;
    :cond_7
    invoke-virtual {p0, v2}, Lgnu/expr/LambdaExp;->inlinedIn(Lgnu/expr/LambdaExp;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 447
    iput-object v3, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    goto :goto_1

    .line 450
    :cond_8
    new-instance v6, Lgnu/bytecode/Variable;

    const-string v7, "closureEnv"

    invoke-virtual {v3}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v7

    invoke-direct {v6, v8, v7}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    iput-object v6, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 451
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v6

    iget-object v7, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    invoke-virtual {v6, v7}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/Variable;)V

    goto/16 :goto_1
.end method

.method public declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;
    .locals 3
    .parameter "clas"

    .prologue
    .line 399
    iget-object v0, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Lgnu/bytecode/Variable;

    const-string v1, "this"

    invoke-direct {v0, v1}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    .line 402
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/Scope;->addVariableAfter(Lgnu/bytecode/Variable;Lgnu/bytecode/Variable;)V

    .line 403
    iget-object v0, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/bytecode/Variable;->setParameter(Z)V

    .line 405
    :cond_0
    iget-object v0, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    invoke-virtual {v0}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    if-nez v0, :cond_1

    .line 406
    iget-object v0, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 407
    :cond_1
    iget-object v0, p0, Lgnu/expr/LambdaExp;->decls:Lgnu/expr/Declaration;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgnu/expr/LambdaExp;->decls:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 408
    iget-object v0, p0, Lgnu/expr/LambdaExp;->decls:Lgnu/expr/Declaration;

    iget-object v1, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    iput-object v1, v0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 409
    :cond_2
    iget-object v0, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    return-object v0
.end method

.method enterFunction(Lgnu/expr/Compilation;)V
    .locals 31
    .parameter "comp"

    .prologue
    .line 1261
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v8

    .line 1264
    .local v8, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v8

    invoke-virtual {v0, v1}, Lgnu/bytecode/Scope;->noteStartFunction(Lgnu/bytecode/CodeAttr;)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lgnu/bytecode/Variable;->isParameter()Z

    move-result v27

    if-nez v27, :cond_1

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v27

    if-nez v27, :cond_1

    .line 1269
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v27

    if-nez v27, :cond_2

    .line 1271
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->closureEnvField:Lgnu/bytecode/Field;

    move-object v13, v0

    .line 1273
    .local v13, field:Lgnu/bytecode/Field;
    if-nez v13, :cond_0

    .line 1274
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Lgnu/expr/LambdaExp;->closureEnvField:Lgnu/bytecode/Field;

    move-object v13, v0

    .line 1275
    :cond_0
    invoke-virtual {v8, v13}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object/from16 v27, v0

    move-object v0, v8

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 1284
    .end local v13           #field:Lgnu/bytecode/Field;
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v27

    if-nez v27, :cond_5

    .line 1286
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object/from16 v27, v0

    if-nez v27, :cond_3

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->currentModule()Lgnu/expr/ModuleExp;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v27

    move-object/from16 v14, v27

    .line 1289
    .local v14, frameType:Lgnu/bytecode/ClassType;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->capturedVars:Lgnu/expr/Declaration;

    move-object v10, v0

    .local v10, decl:Lgnu/expr/Declaration;
    :goto_2
    if-eqz v10, :cond_5

    .line 1292
    move-object v0, v10

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4

    .line 1290
    :goto_3
    iget-object v10, v10, Lgnu/expr/Declaration;->nextCapturedVar:Lgnu/expr/Declaration;

    goto :goto_2

    .line 1278
    .end local v10           #decl:Lgnu/expr/Declaration;
    .end local v14           #frameType:Lgnu/bytecode/ClassType;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->inlinedIn(Lgnu/expr/LambdaExp;)Z

    move-result v27

    if-nez v27, :cond_1

    .line 1280
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->loadHeapFrame(Lgnu/expr/Compilation;)V

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object/from16 v27, v0

    move-object v0, v8

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    goto :goto_0

    .line 1286
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    check-cast v5, Lgnu/bytecode/ClassType;

    move-object v14, v5

    goto :goto_1

    .line 1294
    .restart local v10       #decl:Lgnu/expr/Declaration;
    .restart local v14       #frameType:Lgnu/bytecode/ClassType;
    :cond_4
    const/16 v27, 0x0

    move-object v0, v10

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lgnu/expr/Declaration;->makeField(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/expr/Expression;)V

    goto :goto_3

    .line 1297
    .end local v10           #decl:Lgnu/expr/Declaration;
    .end local v14           #frameType:Lgnu/bytecode/ClassType;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object/from16 v27, v0

    if-eqz v27, :cond_8

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v27

    if-nez v27, :cond_8

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v14

    check-cast v14, Lgnu/bytecode/ClassType;

    .line 1300
    .restart local v14       #frameType:Lgnu/bytecode/ClassType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object/from16 v27, v0

    if-eqz v27, :cond_6

    move-object/from16 v0, p0

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v27, v0

    if-nez v27, :cond_6

    .line 1301
    const-string v27, "staticLink"

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v28

    move-object v0, v14

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;)Lgnu/bytecode/Field;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    .line 1303
    :cond_6
    move-object/from16 v0, p0

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v27, v0

    if-nez v27, :cond_8

    move-object/from16 v0, p0

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v27, v0

    if-nez v27, :cond_8

    .line 1305
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    move-object/from16 v27, v0

    move-object v0, v14

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->setEnclosingMember(Lgnu/bytecode/Member;)V

    .line 1306
    invoke-virtual {v8, v14}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 1307
    invoke-virtual {v8, v14}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 1308
    move-object v0, v14

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    move-result-object v9

    .line 1309
    .local v9, constructor:Lgnu/bytecode/Method;
    invoke-virtual {v8, v9}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    move-object/from16 v27, v0

    if-eqz v27, :cond_7

    .line 1313
    invoke-virtual {v8, v14}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    move-object/from16 v27, v0

    move-object v0, v8

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    move-object/from16 v27, v0

    move-object v0, v8

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 1317
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    move-object/from16 v27, v0

    move-object v0, v8

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 1321
    .end local v9           #constructor:Lgnu/bytecode/Method;
    .end local v14           #frameType:Lgnu/bytecode/ClassType;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    move-object v5, v0

    .line 1322
    .local v5, argsArray:Lgnu/bytecode/Variable;
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    sget-boolean v27, Lgnu/expr/Compilation;->fewerClasses:Z

    if-nez v27, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v27, v0

    if-nez v27, :cond_9

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_9

    .line 1325
    const/4 v5, 0x0

    .line 1330
    :cond_9
    const/4 v15, 0x0

    .line 1331
    .local v15, i:I
    const/16 v21, 0x0

    .line 1332
    .local v21, opt_i:I
    const/16 v17, 0x0

    .line 1333
    .local v17, key_i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v27, v0

    if-nez v27, :cond_a

    const/16 v27, 0x0

    move/from16 v16, v27

    .line 1334
    .local v16, key_args:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v27, v0

    if-nez v27, :cond_b

    const/16 v27, 0x0

    move/from16 v20, v27

    .line 1336
    .local v20, opt_args:I
    :goto_5
    move-object/from16 v0, p0

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    move/from16 v27, v0

    if-eqz v27, :cond_c

    .line 1472
    :goto_6
    return-void

    .line 1333
    .end local v16           #key_args:I
    .end local v20           #opt_args:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v16, v27

    goto :goto_4

    .line 1334
    .restart local v16       #key_args:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    sub-int v27, v27, v16

    move/from16 v20, v27

    goto :goto_5

    .line 1339
    .restart local v20       #opt_args:I
    :cond_c
    const/16 v25, -0x1

    .line 1340
    .local v25, plainArgs:I
    const/4 v12, 0x0

    .line 1341
    .local v12, defaultStart:I
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getMainMethod()Lgnu/bytecode/Method;

    move-result-object v19

    .line 1342
    .local v19, mainMethod:Lgnu/bytecode/Method;
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move-object v7, v0

    .line 1344
    .local v7, callContextSave:Lgnu/bytecode/Variable;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v23

    .local v23, param:Lgnu/expr/Declaration;
    move/from16 v18, v17

    .end local v17           #key_i:I
    .local v18, key_i:I
    move/from16 v22, v21

    .end local v21           #opt_i:I
    .local v22, opt_i:I
    :goto_7
    if-eqz v23, :cond_1e

    .line 1346
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_13

    const/16 v27, 0x0

    :goto_8
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->firstArgsArrayArg:Lgnu/expr/Declaration;

    move-object/from16 v27, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_d

    if-eqz v5, :cond_d

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    move-object/from16 v27, v0

    if-eqz v27, :cond_14

    .line 1353
    move/from16 v25, v15

    .line 1354
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v27, v0

    sub-int v12, v25, v27

    .line 1362
    :cond_d
    :goto_9
    if-gez v25, :cond_e

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v27

    if-eqz v27, :cond_e

    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v27

    if-eqz v27, :cond_1f

    .line 1365
    :cond_e
    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v24

    .line 1366
    .local v24, paramType:Lgnu/bytecode/Type;
    if-eqz v19, :cond_f

    if-ltz v25, :cond_15

    :cond_f
    sget-object v27, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object/from16 v26, v27

    .line 1374
    .local v26, stackType:Lgnu/bytecode/Type;
    :goto_a
    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v27

    if-nez v27, :cond_10

    .line 1375
    const/16 v27, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->loadOwningObject(Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 1377
    :cond_10
    if-gez v25, :cond_16

    .line 1380
    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v27

    move-object v0, v8

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    move/from16 v17, v18

    .end local v18           #key_i:I
    .restart local v17       #key_i:I
    move/from16 v21, v22

    .line 1460
    .end local v22           #opt_i:I
    .restart local v21       #opt_i:I
    :goto_b
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_11

    .line 1461
    add-int/lit8 v27, v15, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, v27

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;ILgnu/bytecode/Type;)V

    .line 1462
    :cond_11
    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v27

    if-eqz v27, :cond_12

    .line 1463
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->pushIndirectBinding(Lgnu/expr/Compilation;)V

    .line 1464
    :cond_12
    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v27

    if-eqz v27, :cond_1d

    .line 1465
    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v27

    move-object v0, v8

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 1469
    .end local v24           #paramType:Lgnu/bytecode/Type;
    .end local v26           #stackType:Lgnu/bytecode/Type;
    :goto_c
    add-int/lit8 v15, v15, 0x1

    .line 1344
    invoke-virtual/range {v23 .. v23}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v23

    move/from16 v18, v17

    .end local v17           #key_i:I
    .restart local v18       #key_i:I
    move/from16 v22, v21

    .end local v21           #opt_i:I
    .restart local v22       #opt_i:I
    goto/16 :goto_7

    .line 1346
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v27

    const-string v28, "$ctx"

    invoke-virtual/range {v27 .. v28}, Lgnu/bytecode/Scope;->lookup(Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v27

    goto/16 :goto_8

    .line 1358
    :cond_14
    const/16 v25, 0x0

    .line 1359
    const/4 v12, 0x0

    goto/16 :goto_9

    .restart local v24       #paramType:Lgnu/bytecode/Type;
    :cond_15
    move-object/from16 v26, v24

    .line 1366
    goto :goto_a

    .line 1382
    .restart local v26       #stackType:Lgnu/bytecode/Type;
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v27, v0

    move v0, v15

    move/from16 v1, v27

    if-ge v0, v1, :cond_17

    .line 1384
    invoke-virtual {v8, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1385
    invoke-virtual {v8, v15}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1386
    sget-object v27, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object v0, v8

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitArrayLoad(Lgnu/bytecode/Type;)V

    move/from16 v17, v18

    .end local v18           #key_i:I
    .restart local v17       #key_i:I
    move/from16 v21, v22

    .end local v22           #opt_i:I
    .restart local v21       #opt_i:I
    goto :goto_b

    .line 1388
    .end local v17           #key_i:I
    .end local v21           #opt_i:I
    .restart local v18       #key_i:I
    .restart local v22       #opt_i:I
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v27, v0

    add-int v27, v27, v20

    move v0, v15

    move/from16 v1, v27

    if-ge v0, v1, :cond_18

    .line 1390
    sub-int v27, v15, v25

    move-object v0, v8

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1391
    invoke-virtual {v8, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1392
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitArrayLength()V

    .line 1393
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitIfIntLt()V

    .line 1394
    invoke-virtual {v8, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1395
    sub-int v27, v15, v25

    move-object v0, v8

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1396
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitArrayLoad()V

    .line 1397
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 1398
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v27, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #opt_i:I
    .restart local v21       #opt_i:I
    add-int v28, v12, v22

    aget-object v27, v27, v28

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 1399
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitFi()V

    move/from16 v17, v18

    .end local v18           #key_i:I
    .restart local v17       #key_i:I
    goto/16 :goto_b

    .line 1401
    .end local v17           #key_i:I
    .end local v21           #opt_i:I
    .restart local v18       #key_i:I
    .restart local v22       #opt_i:I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v27, v0

    if-gez v27, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v27, v0

    add-int v27, v27, v20

    move v0, v15

    move/from16 v1, v27

    if-ne v0, v1, :cond_19

    .line 1405
    invoke-virtual {v8, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1406
    sub-int v27, v15, v25

    move-object v0, v8

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1407
    sget-object v27, Lgnu/expr/Compilation;->makeListMethod:Lgnu/bytecode/Method;

    move-object v0, v8

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1408
    sget-object v26, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    move/from16 v17, v18

    .end local v18           #key_i:I
    .restart local v17       #key_i:I
    move/from16 v21, v22

    .end local v22           #opt_i:I
    .restart local v21       #opt_i:I
    goto/16 :goto_b

    .line 1412
    .end local v17           #key_i:I
    .end local v21           #opt_i:I
    .restart local v18       #key_i:I
    .restart local v22       #opt_i:I
    :cond_19
    invoke-virtual {v8, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1413
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v27, v0

    add-int v27, v27, v20

    sub-int v27, v27, v25

    move-object v0, v8

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    move-object/from16 v27, v0

    add-int/lit8 v17, v18, 0x1

    .end local v18           #key_i:I
    .restart local v17       #key_i:I
    aget-object v27, v27, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 1415
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    move-object/from16 v27, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #opt_i:I
    .restart local v21       #opt_i:I
    add-int v28, v12, v22

    aget-object v11, v27, v28

    .line 1419
    .local v11, defaultArg:Lgnu/expr/Expression;
    move-object v0, v11

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    move/from16 v27, v0

    if-eqz v27, :cond_1b

    .line 1421
    sget-object v27, Lgnu/expr/LambdaExp;->searchForKeywordMethod4:Lgnu/bytecode/Method;

    if-nez v27, :cond_1a

    .line 1423
    const/16 v27, 0x4

    move/from16 v0, v27

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object v6, v0

    .line 1424
    .local v6, argts:[Lgnu/bytecode/Type;
    const/16 v27, 0x0

    sget-object v28, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    aput-object v28, v6, v27

    .line 1425
    const/16 v27, 0x1

    sget-object v28, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v28, v6, v27

    .line 1426
    const/16 v27, 0x2

    sget-object v28, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    aput-object v28, v6, v27

    .line 1427
    const/16 v27, 0x3

    sget-object v28, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    aput-object v28, v6, v27

    .line 1428
    sget-object v27, Lgnu/expr/Compilation;->scmKeywordType:Lgnu/bytecode/ClassType;

    const-string v28, "searchForKeyword"

    sget-object v29, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/16 v30, 0x9

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object v2, v6

    move-object/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v27

    sput-object v27, Lgnu/expr/LambdaExp;->searchForKeywordMethod4:Lgnu/bytecode/Method;

    .line 1433
    .end local v6           #argts:[Lgnu/bytecode/Type;
    :cond_1a
    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 1434
    sget-object v27, Lgnu/expr/LambdaExp;->searchForKeywordMethod4:Lgnu/bytecode/Method;

    move-object v0, v8

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto/16 :goto_b

    .line 1438
    :cond_1b
    sget-object v27, Lgnu/expr/LambdaExp;->searchForKeywordMethod3:Lgnu/bytecode/Method;

    if-nez v27, :cond_1c

    .line 1440
    const/16 v27, 0x3

    move/from16 v0, v27

    new-array v0, v0, [Lgnu/bytecode/Type;

    move-object v6, v0

    .line 1441
    .restart local v6       #argts:[Lgnu/bytecode/Type;
    const/16 v27, 0x0

    sget-object v28, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    aput-object v28, v6, v27

    .line 1442
    const/16 v27, 0x1

    sget-object v28, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v28, v6, v27

    .line 1443
    const/16 v27, 0x2

    sget-object v28, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    aput-object v28, v6, v27

    .line 1444
    sget-object v27, Lgnu/expr/Compilation;->scmKeywordType:Lgnu/bytecode/ClassType;

    const-string v28, "searchForKeyword"

    sget-object v29, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/16 v30, 0x9

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object v2, v6

    move-object/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v27

    sput-object v27, Lgnu/expr/LambdaExp;->searchForKeywordMethod3:Lgnu/bytecode/Method;

    .line 1449
    .end local v6           #argts:[Lgnu/bytecode/Type;
    :cond_1c
    sget-object v27, Lgnu/expr/LambdaExp;->searchForKeywordMethod3:Lgnu/bytecode/Method;

    move-object v0, v8

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1450
    const/16 v27, 0x1

    move-object v0, v8

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 1451
    sget-object v27, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 1452
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitIfEq()V

    .line 1453
    const/16 v27, 0x1

    move-object v0, v8

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 1454
    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 1455
    invoke-virtual {v8}, Lgnu/bytecode/CodeAttr;->emitFi()V

    goto/16 :goto_b

    .line 1467
    .end local v11           #defaultArg:Lgnu/expr/Expression;
    :cond_1d
    move-object/from16 v0, v23

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    move-object/from16 v27, v0

    move-object v0, v8

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    goto/16 :goto_c

    .line 1471
    .end local v17           #key_i:I
    .end local v21           #opt_i:I
    .end local v24           #paramType:Lgnu/bytecode/Type;
    .end local v26           #stackType:Lgnu/bytecode/Type;
    .restart local v18       #key_i:I
    .restart local v22       #opt_i:I
    :cond_1e
    move-object v0, v7

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    move/from16 v17, v18

    .end local v18           #key_i:I
    .restart local v17       #key_i:I
    move/from16 v21, v22

    .line 1472
    .end local v22           #opt_i:I
    .restart local v21       #opt_i:I
    goto/16 :goto_6

    .end local v17           #key_i:I
    .end local v21           #opt_i:I
    .restart local v18       #key_i:I
    .restart local v22       #opt_i:I
    :cond_1f
    move/from16 v17, v18

    .end local v18           #key_i:I
    .restart local v17       #key_i:I
    move/from16 v21, v22

    .end local v22           #opt_i:I
    .restart local v21       #opt_i:I
    goto/16 :goto_c
.end method

.method evalDefaultArg(ILgnu/mapping/CallContext;)Ljava/lang/Object;
    .locals 3
    .parameter "index"
    .parameter "ctx"

    .prologue
    .line 1681
    :try_start_0
    iget-object v1, p0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1683
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1685
    .local v0, ex:Ljava/lang/Throwable;
    new-instance v1, Lgnu/mapping/WrappedException;

    const-string v2, "error evaluating default argument"

    invoke-direct {v1, v2, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public generateApplyMethods(Lgnu/expr/Compilation;)V
    .locals 2
    .parameter "comp"

    .prologue
    .line 553
    invoke-virtual {p1, p0}, Lgnu/expr/Compilation;->generateMatchMethods(Lgnu/expr/LambdaExp;)V

    .line 554
    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 555
    invoke-virtual {p1, p0}, Lgnu/expr/Compilation;->generateApplyMethodsWithContext(Lgnu/expr/LambdaExp;)V

    .line 558
    :goto_0
    return-void

    .line 557
    :cond_0
    invoke-virtual {p1, p0}, Lgnu/expr/Compilation;->generateApplyMethodsWithoutContext(Lgnu/expr/LambdaExp;)V

    goto :goto_0
.end method

.method getArg(I)Lgnu/expr/Declaration;
    .locals 3
    .parameter "i"

    .prologue
    .line 512
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 514
    .local v0, var:Lgnu/expr/Declaration;
    :goto_0
    if-nez v0, :cond_0

    .line 515
    new-instance v1, Ljava/lang/Error;

    const-string v2, "internal error - getArg"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 516
    :cond_0
    if-nez p1, :cond_1

    .line 517
    return-object v0

    .line 518
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 512
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0
.end method

.method public getCallConvention()I
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 239
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isModuleBody()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    if-lt v0, v2, :cond_0

    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    .line 246
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 240
    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 245
    goto :goto_0

    .line 246
    :cond_2
    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    if-eqz v0, :cond_3

    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getCaller()Lgnu/expr/LambdaExp;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/ApplyExp;

    iget-object v0, v0, Lgnu/expr/ApplyExp;->context:Lgnu/expr/LambdaExp;

    return-object v0
.end method

.method public final getCanCall()Z
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCanRead()Z
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;
    .locals 2
    .parameter "comp"

    .prologue
    .line 266
    iget-object v0, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    sget-object v1, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    if-ne v0, v1, :cond_0

    .line 267
    new-instance v0, Ljava/lang/Error;

    const-string v1, "internal error: getCompiledClassType"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    iget-object v0, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method protected final getExpClassName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1833
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1834
    .local v0, cname:Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1835
    .local v1, index:I
    if-ltz v1, :cond_0

    .line 1836
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1837
    :cond_0
    return-object v0
.end method

.method public getHeapFrameType()Lgnu/bytecode/ClassType;
    .locals 1

    .prologue
    .line 750
    instance-of v0, p0, Lgnu/expr/ModuleExp;

    if-nez v0, :cond_0

    instance-of v0, p0, Lgnu/expr/ClassExp;

    if-eqz v0, :cond_1

    .line 751
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getType()Lgnu/bytecode/Type;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/bytecode/ClassType;

    move-object v0, p0

    .line 753
    :goto_0
    return-object v0

    .restart local p0
    :cond_1
    iget-object v0, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    invoke-virtual {v0}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/bytecode/ClassType;

    move-object v0, p0

    goto :goto_0
.end method

.method public final getImportsLexVars()Z
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getInlineOnly()Z
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getMainMethod()Lgnu/bytecode/Method;
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lgnu/expr/LambdaExp;->primBodyMethods:[Lgnu/bytecode/Method;

    .line 333
    .local v0, methods:[Lgnu/bytecode/Method;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public final getMethod(I)Lgnu/bytecode/Method;
    .locals 4
    .parameter "argCount"

    .prologue
    const/4 v3, 0x0

    .line 319
    iget-object v2, p0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    if-eqz v2, :cond_0

    iget v2, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-ltz v2, :cond_1

    iget v2, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-le p1, v2, :cond_1

    :cond_0
    move-object v2, v3

    .line 325
    :goto_0
    return-object v2

    .line 321
    :cond_1
    iget v2, p0, Lgnu/expr/LambdaExp;->min_args:I

    sub-int v0, p1, v2

    .line 322
    .local v0, index:I
    if-gez v0, :cond_2

    move-object v2, v3

    .line 323
    goto :goto_0

    .line 324
    :cond_2
    iget-object v2, p0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    array-length v1, v2

    .line 325
    .local v1, length:I
    iget-object v2, p0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    if-ge v0, v1, :cond_3

    move v3, v0

    :goto_1
    aget-object v2, v2, v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    sub-int v3, v1, v3

    goto :goto_1
.end method

.method public final getNeedsClosureEnv()Z
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, 0x18

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getNeedsStaticLink()Z
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOwningLambda()Lgnu/expr/LambdaExp;
    .locals 3

    .prologue
    .line 759
    iget-object v1, p0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 762
    .local v1, exp:Lgnu/expr/ScopeExp;
    :goto_0
    if-nez v1, :cond_0

    .line 763
    const/4 v2, 0x0

    .line 768
    .end local v1           #exp:Lgnu/expr/ScopeExp;
    :goto_1
    return-object v2

    .line 764
    .restart local v1       #exp:Lgnu/expr/ScopeExp;
    :cond_0
    instance-of v2, v1, Lgnu/expr/ModuleExp;

    if-nez v2, :cond_2

    instance-of v2, v1, Lgnu/expr/ClassExp;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    instance-of v2, v1, Lgnu/expr/LambdaExp;

    if-eqz v2, :cond_3

    move-object v0, v1

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v2, v0

    iget-object v2, v2, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v2, :cond_3

    .line 768
    :cond_2
    check-cast v1, Lgnu/expr/LambdaExp;

    .end local v1           #exp:Lgnu/expr/ScopeExp;
    move-object v2, v1

    goto :goto_1

    .line 760
    .restart local v1       #exp:Lgnu/expr/ScopeExp;
    :cond_3
    iget-object v1, v1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1859
    iget-object v1, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1861
    iget-object v1, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    array-length v0, v1

    .local v0, i:I
    :cond_0
    add-int/lit8 v0, v0, -0x2

    if-ltz v0, :cond_1

    .line 1863
    iget-object v1, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1864
    iget-object v1, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    .line 1867
    .end local v0           #i:I
    :goto_0
    return-object v1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method

.method public final getReturnType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 1882
    iget-object v0, p0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    if-nez v0, :cond_0

    .line 1884
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    .line 1886
    iget-object v0, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1887
    iget-object v0, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    .line 1889
    :cond_0
    iget-object v0, p0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    return-object v0
.end method

.method getSelectorValue(Lgnu/expr/Compilation;)I
    .locals 2
    .parameter "comp"

    .prologue
    .line 296
    iget v0, p0, Lgnu/expr/LambdaExp;->selectorValue:I

    .line 297
    .local v0, s:I
    if-nez v0, :cond_0

    .line 299
    iget v0, p1, Lgnu/expr/Compilation;->maxSelectorValue:I

    .line 300
    iget-object v1, p0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    array-length v1, v1

    add-int/2addr v1, v0

    iput v1, p1, Lgnu/expr/Compilation;->maxSelectorValue:I

    .line 301
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/expr/LambdaExp;->selectorValue:I

    .line 303
    :cond_0
    return v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public incomingArgs()I
    .locals 2

    .prologue
    .line 288
    iget v0, p0, Lgnu/expr/LambdaExp;->min_args:I

    iget v1, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lgnu/expr/LambdaExp;->max_args:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    iget v0, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-lez v0, :cond_0

    iget v0, p0, Lgnu/expr/LambdaExp;->max_args:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/expr/Declaration;Z)Lgnu/expr/Expression;
    .locals 23
    .parameter "exp"
    .parameter "walker"
    .parameter "decl"
    .parameter "argsInlined"

    .prologue
    .line 1692
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v5

    .line 1693
    .local v5, args:[Lgnu/expr/Expression;
    if-nez p4, :cond_1

    .line 1695
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->flags:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x1000

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 1697
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lgnu/expr/InlineCalls;->inlineCall(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;Z)Lgnu/expr/Expression;

    move-result-object v12

    .line 1698
    .local v12, inlined:Lgnu/expr/Expression;
    if-eqz v12, :cond_0

    .line 1699
    move-object/from16 v0, p2

    move-object v1, v12

    invoke-virtual {v0, v1}, Lgnu/expr/InlineCalls;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v20

    .line 1763
    .end local v12           #inlined:Lgnu/expr/Expression;
    :goto_0
    return-object v20

    .line 1701
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lgnu/expr/InlineCalls;->walkExps([Lgnu/expr/Expression;I)[Lgnu/expr/Expression;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .line 1703
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move v6, v0

    .line 1704
    .local v6, args_length:I
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Lgnu/mapping/WrongArguments;->checkArgCount(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v17

    .line 1706
    .local v17, msg:Ljava/lang/String;
    if-eqz v17, :cond_2

    .line 1707
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v20

    goto :goto_0

    .line 1708
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v9

    .line 1709
    .local v9, conv:I
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v8

    .line 1712
    .local v8, comp:Lgnu/expr/Compilation;
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lgnu/expr/Compilation;->inlineOk(Lgnu/expr/Expression;)Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v20

    if-eqz v20, :cond_a

    const/16 v20, 0x2

    move v0, v9

    move/from16 v1, v20

    if-le v0, v1, :cond_3

    const/16 v20, 0x3

    move v0, v9

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    :cond_3
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->getMethod(I)Lgnu/bytecode/Method;

    move-result-object v15

    .local v15, method:Lgnu/bytecode/Method;
    if-eqz v15, :cond_a

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v13

    .line 1728
    .local v13, isStatic:Z
    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lgnu/expr/ClassExp;

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 1730
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    move-object v7, v0

    check-cast v7, Lgnu/expr/ClassExp;

    .line 1731
    .local v7, cl:Lgnu/expr/ClassExp;
    invoke-virtual {v7}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1735
    .end local v7           #cl:Lgnu/expr/ClassExp;
    :cond_4
    new-instance v16, Lgnu/expr/PrimProcedure;

    move-object/from16 v0, v16

    move-object v1, v15

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;Lgnu/expr/LambdaExp;)V

    .line 1737
    .local v16, mproc:Lgnu/expr/PrimProcedure;
    if-eqz v13, :cond_5

    .line 1738
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object v14, v0

    .line 1760
    .local v14, margs:[Lgnu/expr/Expression;
    :goto_1
    new-instance v19, Lgnu/expr/ApplyExp;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 1761
    .local v19, nexp:Lgnu/expr/ApplyExp;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_0

    .line 1741
    .end local v14           #margs:[Lgnu/expr/Expression;
    .end local v19           #nexp:Lgnu/expr/ApplyExp;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/InlineCalls;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v10

    .line 1744
    .local v10, curLambda:Lgnu/expr/LambdaExp;
    :goto_2
    if-nez v10, :cond_6

    .line 1745
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "internal error: missing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_0

    .line 1746
    :cond_6
    move-object v0, v10

    iget-object v0, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 1750
    invoke-virtual {v10}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v11

    .line 1751
    .local v11, d:Lgnu/expr/Declaration;
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v20

    if-nez v20, :cond_9

    .line 1752
    :cond_7
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "calling non-static method "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " from static method "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v10}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v20

    goto/16 :goto_0

    .line 1748
    .end local v11           #d:Lgnu/expr/Declaration;
    :cond_8
    invoke-virtual {v10}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v10

    goto :goto_2

    .line 1755
    .restart local v11       #d:Lgnu/expr/Declaration;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v18

    .line 1756
    .local v18, nargs:I
    add-int/lit8 v20, v18, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object v14, v0

    .line 1757
    .restart local v14       #margs:[Lgnu/expr/Expression;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object v2, v14

    move/from16 v3, v22

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1758
    const/16 v20, 0x0

    new-instance v21, Lgnu/expr/ThisExp;

    move-object/from16 v0, v21

    move-object v1, v11

    invoke-direct {v0, v1}, Lgnu/expr/ThisExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v21, v14, v20

    goto/16 :goto_1

    .end local v10           #curLambda:Lgnu/expr/LambdaExp;
    .end local v11           #d:Lgnu/expr/Declaration;
    .end local v13           #isStatic:Z
    .end local v14           #margs:[Lgnu/expr/Expression;
    .end local v15           #method:Lgnu/bytecode/Method;
    .end local v16           #mproc:Lgnu/expr/PrimProcedure;
    .end local v18           #nargs:I
    :cond_a
    move-object/from16 v20, p1

    .line 1763
    goto/16 :goto_0
.end method

.method inlinedIn(Lgnu/expr/LambdaExp;)Z
    .locals 2
    .parameter "outer"

    .prologue
    .line 381
    move-object v0, p0

    .local v0, exp:Lgnu/expr/LambdaExp;
    :goto_0
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    if-ne v0, p1, :cond_0

    .line 384
    const/4 v1, 0x1

    .line 386
    :goto_1
    return v1

    .line 381
    :cond_0
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getCaller()Lgnu/expr/LambdaExp;

    move-result-object v0

    goto :goto_0

    .line 386
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isAbstract()Z
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    sget-object v1, Lgnu/expr/QuoteExp;->abstractExp:Lgnu/expr/QuoteExp;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isClassGenerated()Z
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isModuleBody()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lgnu/expr/ClassExp;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isClassMethod()Z
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isHandlingTailCalls()Z
    .locals 2

    .prologue
    .line 254
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isModuleBody()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isModuleBody()Z
    .locals 1

    .prologue
    .line 222
    instance-of v0, p0, Lgnu/expr/ModuleExp;

    return v0
.end method

.method public loadHeapFrame(Lgnu/expr/Compilation;)V
    .locals 5
    .parameter "comp"

    .prologue
    .line 476
    iget-object v1, p1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 477
    .local v1, curLambda:Lgnu/expr/LambdaExp;
    :goto_0
    if-eq v1, p0, :cond_0

    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 478
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->getCaller()Lgnu/expr/LambdaExp;

    move-result-object v1

    goto :goto_0

    .line 480
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 481
    .local v0, code:Lgnu/bytecode/CodeAttr;
    iget-object v4, v1, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v4, :cond_2

    if-ne p0, v1, :cond_2

    .line 483
    iget-object v4, v1, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 507
    :cond_1
    return-void

    .line 487
    :cond_2
    iget-object v4, v1, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    if-eqz v4, :cond_4

    .line 489
    iget-object v4, v1, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 490
    iget-object v4, v1, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    invoke-virtual {v4}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/ClassType;

    .line 497
    .local v2, curType:Lgnu/bytecode/ClassType;
    :goto_1
    if-eq v1, p0, :cond_1

    .line 499
    iget-object v3, v1, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    .line 500
    .local v3, link:Lgnu/bytecode/Field;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v4

    if-ne v4, v2, :cond_3

    .line 502
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 503
    invoke-virtual {v3}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    .end local v2           #curType:Lgnu/bytecode/ClassType;
    check-cast v2, Lgnu/bytecode/ClassType;

    .line 505
    .restart local v2       #curType:Lgnu/bytecode/ClassType;
    :cond_3
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v1

    .line 506
    goto :goto_1

    .line 494
    .end local v2           #curType:Lgnu/bytecode/ClassType;
    .end local v3           #link:Lgnu/bytecode/Field;
    :cond_4
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 495
    iget-object v2, p1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .restart local v2       #curType:Lgnu/bytecode/ClassType;
    goto :goto_1
.end method

.method protected mustCompile()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1652
    iget-object v2, p0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    array-length v2, v2

    if-lez v2, :cond_0

    move v2, v3

    .line 1664
    :goto_0
    return v2

    .line 1654
    :cond_0
    iget-object v2, p0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    if-eqz v2, :cond_2

    .line 1656
    iget-object v2, p0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    array-length v1, v2

    .local v1, i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 1658
    iget-object v2, p0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    aget-object v0, v2, v1

    .line 1660
    .local v0, def:Lgnu/expr/Expression;
    if-eqz v0, :cond_1

    instance-of v2, v0, Lgnu/expr/QuoteExp;

    if-nez v2, :cond_1

    move v2, v3

    .line 1661
    goto :goto_0

    .line 1664
    .end local v0           #def:Lgnu/expr/Expression;
    .end local v1           #i:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public outerLambda()Lgnu/expr/LambdaExp;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    invoke-virtual {v0}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    goto :goto_0
.end method

.method public outerLambdaNotInline()Lgnu/expr/LambdaExp;
    .locals 4

    .prologue
    .line 363
    move-object v1, p0

    .local v1, exp:Lgnu/expr/ScopeExp;
    :cond_0
    iget-object v1, v1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    if-eqz v1, :cond_1

    .line 365
    instance-of v3, v1, Lgnu/expr/LambdaExp;

    if-eqz v3, :cond_0

    .line 367
    move-object v0, v1

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v2, v0

    .line 368
    .local v2, result:Lgnu/expr/LambdaExp;
    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    .line 372
    .end local v2           #result:Lgnu/expr/LambdaExp;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 13
    .parameter "out"

    .prologue
    .line 1768
    const-string v10, "(Lambda/"

    const-string v11, ")"

    const/4 v12, 0x2

    invoke-virtual {p1, v10, v11, v12}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1769
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getSymbol()Ljava/lang/Object;

    move-result-object v9

    .line 1770
    .local v9, sym:Ljava/lang/Object;
    if-eqz v9, :cond_0

    .line 1772
    invoke-virtual {p1, v9}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 1773
    const/16 v10, 0x2f

    invoke-virtual {p1, v10}, Lgnu/mapping/OutPort;->print(C)V

    .line 1775
    :cond_0
    iget v10, p0, Lgnu/expr/LambdaExp;->id:I

    invoke-virtual {p1, v10}, Lgnu/mapping/OutPort;->print(I)V

    .line 1776
    const/16 v10, 0x2f

    invoke-virtual {p1, v10}, Lgnu/mapping/OutPort;->print(C)V

    .line 1777
    const-string v10, "fl:"

    invoke-virtual {p1, v10}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    iget v10, p0, Lgnu/expr/LambdaExp;->flags:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 1778
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 1779
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->printLineColumn(Lgnu/mapping/OutPort;)V

    .line 1780
    const-string v10, "("

    const/4 v11, 0x0

    const-string v12, ")"

    invoke-virtual {p1, v10, v11, v12}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1781
    const/4 v8, 0x0

    .line 1782
    .local v8, prevMode:Lgnu/expr/Special;
    const/4 v2, 0x0

    .line 1783
    .local v2, i:I
    const/4 v6, 0x0

    .line 1784
    .local v6, opt_i:I
    iget-object v10, p0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    if-nez v10, :cond_6

    const/4 v10, 0x0

    move v3, v10

    .line 1785
    .local v3, key_args:I
    :goto_0
    iget-object v10, p0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    if-nez v10, :cond_7

    const/4 v10, 0x0

    move v5, v10

    .line 1786
    .local v5, opt_args:I
    :goto_1
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 1787
    .local v0, decl:Lgnu/expr/Declaration;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1788
    const/4 v2, -0x1

    move v7, v6

    .line 1789
    .end local v6           #opt_i:I
    .local v7, opt_i:I
    :goto_2
    if-eqz v0, :cond_b

    .line 1792
    iget v10, p0, Lgnu/expr/LambdaExp;->min_args:I

    if-ge v2, v10, :cond_8

    .line 1793
    const/4 v4, 0x0

    .line 1800
    .local v4, mode:Lgnu/expr/Special;
    :goto_3
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v10

    if-eq v0, v10, :cond_1

    .line 1801
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 1802
    :cond_1
    if-eq v4, v8, :cond_2

    .line 1804
    invoke-virtual {p1, v4}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 1805
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 1807
    :cond_2
    const/4 v1, 0x0

    .line 1808
    .local v1, defaultArg:Lgnu/expr/Expression;
    sget-object v10, Lgnu/expr/Special;->optional:Lgnu/expr/Special;

    if-eq v4, v10, :cond_3

    sget-object v10, Lgnu/expr/Special;->key:Lgnu/expr/Special;

    if-ne v4, v10, :cond_d

    .line 1809
    :cond_3
    iget-object v10, p0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    add-int/lit8 v6, v7, 0x1

    .end local v7           #opt_i:I
    .restart local v6       #opt_i:I
    aget-object v1, v10, v7

    .line 1810
    :goto_4
    if-eqz v1, :cond_4

    .line 1811
    const/16 v10, 0x28

    invoke-virtual {p1, v10}, Lgnu/mapping/OutPort;->print(C)V

    .line 1812
    :cond_4
    invoke-virtual {v0, p1}, Lgnu/expr/Declaration;->printInfo(Lgnu/mapping/OutPort;)V

    .line 1813
    if-eqz v1, :cond_5

    sget-object v10, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    if-eq v1, v10, :cond_5

    .line 1815
    const/16 v10, 0x20

    invoke-virtual {p1, v10}, Lgnu/mapping/OutPort;->print(C)V

    .line 1816
    invoke-virtual {v1, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 1817
    const/16 v10, 0x29

    invoke-virtual {p1, v10}, Lgnu/mapping/OutPort;->print(C)V

    .line 1819
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 1820
    move-object v8, v4

    .line 1789
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    move v7, v6

    .end local v6           #opt_i:I
    .restart local v7       #opt_i:I
    goto :goto_2

    .line 1784
    .end local v0           #decl:Lgnu/expr/Declaration;
    .end local v1           #defaultArg:Lgnu/expr/Expression;
    .end local v3           #key_args:I
    .end local v4           #mode:Lgnu/expr/Special;
    .end local v5           #opt_args:I
    .end local v7           #opt_i:I
    .restart local v6       #opt_i:I
    :cond_6
    iget-object v10, p0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    array-length v10, v10

    move v3, v10

    goto :goto_0

    .line 1785
    .restart local v3       #key_args:I
    :cond_7
    iget-object v10, p0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    array-length v10, v10

    sub-int/2addr v10, v3

    move v5, v10

    goto :goto_1

    .line 1794
    .end local v6           #opt_i:I
    .restart local v0       #decl:Lgnu/expr/Declaration;
    .restart local v5       #opt_args:I
    .restart local v7       #opt_i:I
    :cond_8
    iget v10, p0, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v10, v5

    if-ge v2, v10, :cond_9

    .line 1795
    sget-object v4, Lgnu/expr/Special;->optional:Lgnu/expr/Special;

    .restart local v4       #mode:Lgnu/expr/Special;
    goto :goto_3

    .line 1796
    .end local v4           #mode:Lgnu/expr/Special;
    :cond_9
    iget v10, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-gez v10, :cond_a

    iget v10, p0, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v10, v5

    if-ne v2, v10, :cond_a

    .line 1797
    sget-object v4, Lgnu/expr/Special;->rest:Lgnu/expr/Special;

    .restart local v4       #mode:Lgnu/expr/Special;
    goto :goto_3

    .line 1799
    .end local v4           #mode:Lgnu/expr/Special;
    :cond_a
    sget-object v4, Lgnu/expr/Special;->key:Lgnu/expr/Special;

    .restart local v4       #mode:Lgnu/expr/Special;
    goto :goto_3

    .line 1822
    .end local v4           #mode:Lgnu/expr/Special;
    :cond_b
    const-string v10, ")"

    invoke-virtual {p1, v10}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 1823
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 1824
    iget-object v10, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-nez v10, :cond_c

    .line 1825
    const-string v10, "<null body>"

    invoke-virtual {p1, v10}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 1828
    :goto_5
    const-string v10, ")"

    invoke-virtual {p1, v10}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 1829
    return-void

    .line 1827
    :cond_c
    iget-object v10, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v10, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    goto :goto_5

    .restart local v1       #defaultArg:Lgnu/expr/Expression;
    .restart local v4       #mode:Lgnu/expr/Special;
    :cond_d
    move v6, v7

    .end local v7           #opt_i:I
    .restart local v6       #opt_i:I
    goto :goto_4

    .end local v1           #defaultArg:Lgnu/expr/Expression;
    .end local v4           #mode:Lgnu/expr/Special;
    :cond_e
    move v7, v6

    .end local v6           #opt_i:I
    .restart local v7       #opt_i:I
    goto/16 :goto_2
.end method

.method public final restArgType()Lgnu/bytecode/Type;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 339
    iget v4, p0, Lgnu/expr/LambdaExp;->min_args:I

    iget v5, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v4, v5, :cond_0

    move-object v4, v8

    .line 351
    :goto_0
    return-object v4

    .line 341
    :cond_0
    iget-object v4, p0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    if-nez v4, :cond_1

    .line 342
    new-instance v4, Ljava/lang/Error;

    const-string v5, "internal error - restArgType"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 343
    :cond_1
    iget-object v2, p0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    .line 344
    .local v2, methods:[Lgnu/bytecode/Method;
    iget v4, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-ltz v4, :cond_2

    array-length v4, v2

    iget v5, p0, Lgnu/expr/LambdaExp;->max_args:I

    iget v6, p0, Lgnu/expr/LambdaExp;->min_args:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2

    move-object v4, v8

    .line 345
    goto :goto_0

    .line 346
    :cond_2
    array-length v4, v2

    sub-int/2addr v4, v7

    aget-object v1, v2, v4

    .line 347
    .local v1, method:Lgnu/bytecode/Method;
    invoke-virtual {v1}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v3

    .line 348
    .local v3, types:[Lgnu/bytecode/Type;
    array-length v4, v3

    sub-int v0, v4, v7

    .line 349
    .local v0, ilast:I
    invoke-virtual {v1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "$X"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 350
    add-int/lit8 v0, v0, -0x1

    .line 351
    :cond_3
    aget-object v4, v3, v0

    goto :goto_0
.end method

.method setCallersNeedStaticLink()V
    .locals 4

    .prologue
    .line 186
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v2

    .line 187
    .local v2, outer:Lgnu/expr/LambdaExp;
    iget-object v3, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    iget-object v0, v3, Lgnu/expr/Declaration;->firstCall:Lgnu/expr/ApplyExp;

    .local v0, app:Lgnu/expr/ApplyExp;
    :goto_0
    if-eqz v0, :cond_1

    .line 189
    iget-object v1, v0, Lgnu/expr/ApplyExp;->context:Lgnu/expr/LambdaExp;

    .line 190
    .local v1, caller:Lgnu/expr/LambdaExp;
    :goto_1
    if-eq v1, v2, :cond_0

    instance-of v3, v1, Lgnu/expr/ModuleExp;

    if-nez v3, :cond_0

    .line 191
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->setNeedsStaticLink()V

    .line 190
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v1

    goto :goto_1

    .line 187
    :cond_0
    iget-object v0, v0, Lgnu/expr/ApplyExp;->nextCall:Lgnu/expr/ApplyExp;

    goto :goto_0

    .line 193
    .end local v1           #caller:Lgnu/expr/LambdaExp;
    :cond_1
    return-void
.end method

.method public final setCanCall(Z)V
    .locals 1
    .parameter "called"

    .prologue
    .line 207
    if-eqz p1, :cond_0

    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    .line 209
    :goto_0
    return-void

    .line 208
    :cond_0
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    goto :goto_0
.end method

.method public final setCanRead(Z)V
    .locals 1
    .parameter "read"

    .prologue
    .line 199
    if-eqz p1, :cond_0

    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    .line 201
    :goto_0
    return-void

    .line 200
    :cond_0
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    goto :goto_0
.end method

.method public final setClassMethod(Z)V
    .locals 1
    .parameter "isMethod"

    .prologue
    .line 217
    if-eqz p1, :cond_0

    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    .line 219
    :goto_0
    return-void

    .line 218
    :cond_0
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    goto :goto_0
.end method

.method public final setCoercedReturnType(Lgnu/bytecode/Type;)V
    .locals 3
    .parameter "returnType"

    .prologue
    .line 1900
    iput-object p1, p0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    .line 1901
    if-eqz p1, :cond_0

    sget-object v1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-eq p1, v1, :cond_0

    sget-object v1, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    sget-object v2, Lgnu/expr/QuoteExp;->abstractExp:Lgnu/expr/QuoteExp;

    if-eq v1, v2, :cond_0

    .line 1906
    iget-object v0, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 1907
    .local v0, value:Lgnu/expr/Expression;
    invoke-static {v0, p1}, Lgnu/kawa/functions/Convert;->makeCoercion(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 1908
    iget-object v1, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v1, v0}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 1910
    .end local v0           #value:Lgnu/expr/Expression;
    :cond_0
    return-void
.end method

.method public setExceptions([Lgnu/expr/ReferenceExp;)V
    .locals 0
    .parameter "exceptions"

    .prologue
    .line 91
    iput-object p1, p0, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/ReferenceExp;

    .line 92
    return-void
.end method

.method public final setImportsLexVars()V
    .locals 2

    .prologue
    .line 166
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    .line 167
    .local v0, old:I
    iget v1, p0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lgnu/expr/LambdaExp;->flags:I

    .line 170
    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_0

    iget-object v1, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->setCallersNeedStaticLink()V

    .line 172
    :cond_0
    return-void
.end method

.method public final setImportsLexVars(Z)V
    .locals 1
    .parameter "importsLexVars"

    .prologue
    .line 160
    if-eqz p1, :cond_0

    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    .line 162
    :goto_0
    return-void

    .line 161
    :cond_0
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    goto :goto_0
.end method

.method public final setInlineOnly(Z)V
    .locals 1
    .parameter "inlineOnly"

    .prologue
    .line 138
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lgnu/expr/LambdaExp;->setFlag(ZI)V

    return-void
.end method

.method public final setNeedsStaticLink()V
    .locals 2

    .prologue
    .line 176
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    .line 177
    .local v0, old:I
    iget v1, p0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lgnu/expr/LambdaExp;->flags:I

    .line 180
    and-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_0

    iget-object v1, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->setCallersNeedStaticLink()V

    .line 182
    :cond_0
    return-void
.end method

.method public final setNeedsStaticLink(Z)V
    .locals 1
    .parameter "needsStaticLink"

    .prologue
    .line 150
    if-eqz p1, :cond_0

    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    goto :goto_0
.end method

.method public declared-synchronized setProperty(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1872
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lgnu/mapping/PropertySet;->setProperty([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1873
    monitor-exit p0

    return-void

    .line 1872
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setReturnType(Lgnu/bytecode/Type;)V
    .locals 0
    .parameter "returnType"

    .prologue
    .line 1895
    iput-object p1, p0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    .line 1896
    return-void
.end method

.method public setType(Lgnu/bytecode/ClassType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 278
    iput-object p1, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    .line 279
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2f

    .line 1842
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getExpClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getSymbol()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lgnu/expr/LambdaExp;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1844
    .local v1, str:Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v0

    .line 1845
    .local v0, l:I
    if-gtz v0, :cond_0

    iget-object v2, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-eqz v2, :cond_0

    .line 1846
    iget-object v2, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v2}, Lgnu/expr/Expression;->getLineNumber()I

    move-result v0

    .line 1847
    :cond_0
    if-lez v0, :cond_1

    .line 1848
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "l:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1850
    :cond_1
    return-object v1
.end method

.method public final variable_args()Z
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected walk(Lgnu/expr/ExpWalker;)Lgnu/expr/Expression;
    .locals 1
    .parameter "walker"

    .prologue
    .line 1609
    invoke-virtual {p1, p0}, Lgnu/expr/ExpWalker;->walkLambdaExp(Lgnu/expr/LambdaExp;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected walkChildren(Lgnu/expr/ExpWalker;)V
    .locals 0
    .parameter "walker"

    .prologue
    .line 1614
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->walkChildrenOnly(Lgnu/expr/ExpWalker;)V

    .line 1615
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->walkProperties(Lgnu/expr/ExpWalker;)V

    .line 1616
    return-void
.end method

.method protected final walkChildrenOnly(Lgnu/expr/ExpWalker;)V
    .locals 2
    .parameter "walker"

    .prologue
    .line 1620
    iget-object v0, p1, Lgnu/expr/ExpWalker;->currentLambda:Lgnu/expr/LambdaExp;

    .line 1621
    .local v0, save:Lgnu/expr/LambdaExp;
    iput-object p0, p1, Lgnu/expr/ExpWalker;->currentLambda:Lgnu/expr/LambdaExp;

    .line 1624
    :try_start_0
    invoke-virtual {p1, p0}, Lgnu/expr/ExpWalker;->walkDefaultArgs(Lgnu/expr/LambdaExp;)V

    .line 1625
    iget-object v1, p1, Lgnu/expr/ExpWalker;->exitValue:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object v1, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-eqz v1, :cond_0

    .line 1626
    iget-object v1, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {p1, v1}, Lgnu/expr/ExpWalker;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1630
    :cond_0
    iput-object v0, p1, Lgnu/expr/ExpWalker;->currentLambda:Lgnu/expr/LambdaExp;

    .line 1632
    return-void

    .line 1630
    :catchall_0
    move-exception v1

    iput-object v0, p1, Lgnu/expr/ExpWalker;->currentLambda:Lgnu/expr/LambdaExp;

    throw v1
.end method

.method protected final walkProperties(Lgnu/expr/ExpWalker;)V
    .locals 5
    .parameter "walker"

    .prologue
    .line 1636
    iget-object v3, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 1638
    iget-object v3, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    array-length v1, v3

    .line 1639
    .local v1, len:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1641
    iget-object v3, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    aget-object v2, v3, v0

    .line 1642
    .local v2, val:Ljava/lang/Object;
    instance-of v3, v2, Lgnu/expr/Expression;

    if-eqz v3, :cond_0

    .line 1644
    iget-object v4, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    iget-object v3, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lgnu/expr/Expression;

    invoke-virtual {p1, v3}, Lgnu/expr/ExpWalker;->walk(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    aput-object v3, v4, v0

    .line 1639
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1648
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #val:Ljava/lang/Object;
    :cond_1
    return-void
.end method
