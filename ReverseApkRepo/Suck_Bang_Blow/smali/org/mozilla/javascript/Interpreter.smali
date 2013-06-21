.class public final Lorg/mozilla/javascript/Interpreter;
.super Lorg/mozilla/javascript/Icode;
.source "Interpreter.java"

# interfaces
.implements Lorg/mozilla/javascript/Evaluator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/Interpreter$1;,
        Lorg/mozilla/javascript/Interpreter$GeneratorState;,
        Lorg/mozilla/javascript/Interpreter$ContinuationJump;,
        Lorg/mozilla/javascript/Interpreter$CallFrame;
    }
.end annotation


# static fields
.field static final EXCEPTION_HANDLER_SLOT:I = 0x2

.field static final EXCEPTION_LOCAL_SLOT:I = 0x4

.field static final EXCEPTION_SCOPE_SLOT:I = 0x5

.field static final EXCEPTION_SLOT_SIZE:I = 0x6

.field static final EXCEPTION_TRY_END_SLOT:I = 0x1

.field static final EXCEPTION_TRY_START_SLOT:I = 0x0

.field static final EXCEPTION_TYPE_SLOT:I = 0x3


# instance fields
.field itsData:Lorg/mozilla/javascript/InterpreterData;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/mozilla/javascript/Icode;-><init>()V

    .line 857
    return-void
.end method

.method private static addInstructionCount(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I)V
    .locals 3
    .parameter "cx"
    .parameter "frame"
    .parameter "extra"

    .prologue
    .line 3114
    iget v0, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    iget v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    iget v2, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    .line 3115
    iget v0, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    iget v1, p0, Lorg/mozilla/javascript/Context;->instructionThreshold:I

    if-le v0, v1, :cond_0

    .line 3116
    iget v0, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Context;->observeInstructionCount(I)V

    .line 3117
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/Context;->instructionCount:I

    .line 3119
    :cond_0
    return-void
.end method

.method private static bytecodeSpan(I)I
    .locals 3
    .parameter "bytecode"

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x2

    const/4 v0, 0x3

    .line 532
    sparse-switch p0, :sswitch_data_0

    .line 609
    invoke-static {p0}, Lorg/mozilla/javascript/Interpreter;->validBytecode(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :sswitch_0
    move v0, v2

    .line 610
    :goto_0
    :sswitch_1
    return v0

    :sswitch_2
    move v0, v1

    .line 557
    goto :goto_0

    :sswitch_3
    move v0, v1

    .line 565
    goto :goto_0

    :sswitch_4
    move v0, v2

    .line 573
    goto :goto_0

    :sswitch_5
    move v0, v1

    .line 577
    goto :goto_0

    :sswitch_6
    move v0, v2

    .line 585
    goto :goto_0

    :sswitch_7
    move v0, v1

    .line 589
    goto :goto_0

    :sswitch_8
    move v0, v2

    .line 597
    goto :goto_0

    :sswitch_9
    move v0, v1

    .line 603
    goto :goto_0

    .line 610
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 532
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f -> :sswitch_1
        -0x3e -> :sswitch_1
        -0x3d -> :sswitch_9
        -0x36 -> :sswitch_1
        -0x31 -> :sswitch_9
        -0x30 -> :sswitch_9
        -0x2f -> :sswitch_8
        -0x2e -> :sswitch_1
        -0x2d -> :sswitch_7
        -0x28 -> :sswitch_6
        -0x27 -> :sswitch_1
        -0x26 -> :sswitch_5
        -0x1c -> :sswitch_4
        -0x1b -> :sswitch_1
        -0x1a -> :sswitch_1
        -0x17 -> :sswitch_1
        -0x15 -> :sswitch_0
        -0xb -> :sswitch_3
        -0xa -> :sswitch_3
        -0x9 -> :sswitch_3
        -0x8 -> :sswitch_3
        -0x7 -> :sswitch_3
        -0x6 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x32 -> :sswitch_1
        0x39 -> :sswitch_2
        0x48 -> :sswitch_1
    .end sparse-switch
.end method

.method public static captureContinuation(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/NativeContinuation;
    .locals 2
    .parameter "cx"

    .prologue
    .line 2928
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    instance-of v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-nez v0, :cond_1

    .line 2931
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interpreter frames not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2933
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    check-cast v0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/mozilla/javascript/Interpreter;->captureContinuation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Z)Lorg/mozilla/javascript/NativeContinuation;

    move-result-object v0

    return-object v0
.end method

.method private static captureContinuation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Z)Lorg/mozilla/javascript/NativeContinuation;
    .locals 7
    .parameter "cx"
    .parameter "frame"
    .parameter "requireContinuationsTopFrame"

    .prologue
    const/4 v6, 0x0

    .line 2939
    new-instance v0, Lorg/mozilla/javascript/NativeContinuation;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeContinuation;-><init>()V

    .line 2940
    .local v0, c:Lorg/mozilla/javascript/NativeContinuation;
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V

    .line 2944
    move-object v3, p1

    .line 2945
    .local v3, x:Lorg/mozilla/javascript/Interpreter$CallFrame;
    move-object v2, p1

    .line 2946
    .local v2, outermost:Lorg/mozilla/javascript/Interpreter$CallFrame;
    :goto_0
    if-eqz v3, :cond_3

    iget-boolean v4, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-nez v4, :cond_3

    .line 2947
    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    .line 2949
    iget v4, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    add-int/lit8 v1, v4, 0x1

    .local v1, i:I
    :goto_1
    iget-object v4, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    array-length v4, v4

    if-eq v1, v4, :cond_0

    .line 2951
    iget-object v4, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aput-object v6, v4, v1

    .line 2952
    iget-object v4, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    const/4 v5, 0x0

    aput v5, v4, v1

    .line 2949
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2954
    :cond_0
    iget v4, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    const/16 v5, 0x26

    if-ne v4, v5, :cond_2

    .line 2956
    iget-object v4, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget v5, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    aput-object v6, v4, v5

    .line 2963
    :cond_1
    :goto_2
    move-object v2, v3

    .line 2964
    iget-object v3, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    goto :goto_0

    .line 2958
    :cond_2
    iget v4, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    const/16 v5, 0x1e

    if-eq v4, v5, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_2

    .line 2967
    .end local v1           #i:I
    :cond_3
    if-eqz p2, :cond_5

    .line 2968
    :goto_3
    iget-object v4, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v4, :cond_4

    .line 2969
    iget-object v2, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    goto :goto_3

    .line 2971
    :cond_4
    iget-boolean v4, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->isContinuationsTopFrame:Z

    if-nez v4, :cond_5

    .line 2972
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot capture continuation from JavaScript code not called directly by executeScriptWithContinuations or callFunctionWithContinuations"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2979
    :cond_5
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/NativeContinuation;->initImplementation(Ljava/lang/Object;)V

    .line 2980
    return-object v0
.end method

.method private static captureFrameForGenerator(Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .locals 3
    .parameter "frame"

    .prologue
    const/4 v2, 0x0

    .line 201
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    .line 202
    invoke-virtual {p0}, Lorg/mozilla/javascript/Interpreter$CallFrame;->cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v0

    .line 203
    .local v0, result:Lorg/mozilla/javascript/Interpreter$CallFrame;
    iput-boolean v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    .line 206
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 207
    iput v2, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    .line 209
    return-object v0
.end method

.method private static do_add([Ljava/lang/Object;[DILorg/mozilla/javascript/Context;)V
    .locals 6
    .parameter "stack"
    .parameter "sDbl"
    .parameter "stackTop"
    .parameter "cx"

    .prologue
    .line 3030
    add-int/lit8 v1, p2, 0x1

    aget-object v3, p0, v1

    .line 3031
    .local v3, rhs:Ljava/lang/Object;
    aget-object v4, p0, p2

    .line 3034
    .local v4, lhs:Ljava/lang/Object;
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v3, v1, :cond_1

    .line 3035
    add-int/lit8 v1, p2, 0x1

    aget-wide v1, p1, v1

    .line 3036
    .local v1, d:D
    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .end local v3           #rhs:Ljava/lang/Object;
    if-ne v4, v3, :cond_0

    .line 3037
    aget-wide v3, p1, p2

    add-double/2addr v1, v3

    aput-wide v1, p1, p2

    .line 3092
    .end local v1           #d:D
    .end local v4           #lhs:Ljava/lang/Object;
    .end local p1
    .end local p3
    :goto_0
    return-void

    .line 3040
    .restart local v1       #d:D
    .restart local v4       #lhs:Ljava/lang/Object;
    .restart local p1
    .restart local p3
    :cond_0
    const/4 v3, 0x1

    .line 3070
    .local v3, leftRightOrder:Z
    :goto_1
    instance-of v5, v4, Lorg/mozilla/javascript/Scriptable;

    if-eqz v5, :cond_9

    .line 3071
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    .line 3072
    .local p1, rhs:Ljava/lang/Number;
    if-nez v3, :cond_d

    .line 3073
    move-object v1, v4

    .line 3074
    .local v1, tmp:Ljava/lang/Object;
    move-object p1, p1

    .line 3075
    .local p1, lhs:Ljava/lang/Number;
    move-object v1, v1

    .line 3077
    .end local v4           #lhs:Ljava/lang/Object;
    .end local p1           #lhs:Ljava/lang/Number;
    .local v1, rhs:Ljava/lang/Object;
    :goto_2
    invoke-static {p1, v1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p0, p2

    goto :goto_0

    .line 3042
    .end local v1           #rhs:Ljava/lang/Object;
    .local v3, rhs:Ljava/lang/Object;
    .restart local v4       #lhs:Ljava/lang/Object;
    .local p1, sDbl:[D
    :cond_1
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v4, v1, :cond_2

    .line 3043
    aget-wide v1, p1, p2

    .line 3044
    .local v1, d:D
    move-object v4, v3

    .line 3045
    const/4 v3, 0x0

    .local v3, leftRightOrder:Z
    goto :goto_1

    .line 3048
    .end local v1           #d:D
    .local v3, rhs:Ljava/lang/Object;
    :cond_2
    instance-of v1, v4, Lorg/mozilla/javascript/Scriptable;

    if-nez v1, :cond_3

    instance-of v1, v3, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_4

    .line 3049
    :cond_3
    invoke-static {v4, v3, p3}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p1

    .end local p1           #sDbl:[D
    aput-object p1, p0, p2

    goto :goto_0

    .line 3050
    .restart local p1       #sDbl:[D
    :cond_4
    instance-of p3, v4, Ljava/lang/String;

    .end local p3
    if-eqz p3, :cond_5

    .line 3051
    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object p1, v0

    .line 3052
    .local p1, lstr:Ljava/lang/String;
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 3053
    .local p3, rstr:Ljava/lang/String;
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1           #lstr:Ljava/lang/String;
    aput-object p1, p0, p2

    goto :goto_0

    .line 3054
    .end local p3           #rstr:Ljava/lang/String;
    .local p1, sDbl:[D
    :cond_5
    instance-of p3, v3, Ljava/lang/String;

    if-eqz p3, :cond_6

    .line 3055
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3056
    .local p1, lstr:Ljava/lang/String;
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object p3, v0

    .line 3057
    .restart local p3       #rstr:Ljava/lang/String;
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1           #lstr:Ljava/lang/String;
    aput-object p1, p0, p2

    goto :goto_0

    .line 3059
    .end local p3           #rstr:Ljava/lang/String;
    .local p1, sDbl:[D
    :cond_6
    instance-of p3, v4, Ljava/lang/Number;

    if-eqz p3, :cond_7

    check-cast v4, Ljava/lang/Number;

    .end local v4           #lhs:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 3061
    .local v1, lDbl:D
    :goto_3
    instance-of p3, v3, Ljava/lang/Number;

    if-eqz p3, :cond_8

    check-cast v3, Ljava/lang/Number;

    .end local v3           #rhs:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    .line 3063
    .local v3, rDbl:D
    :goto_4
    sget-object p3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    aput-object p3, p0, p2

    .line 3064
    add-double/2addr v1, v3

    aput-wide v1, p1, p2

    goto :goto_0

    .line 3059
    .end local v1           #lDbl:D
    .local v3, rhs:Ljava/lang/Object;
    .restart local v4       #lhs:Ljava/lang/Object;
    :cond_7
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v1

    goto :goto_3

    .line 3061
    .end local v4           #lhs:Ljava/lang/Object;
    .restart local v1       #lDbl:D
    :cond_8
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v3

    goto :goto_4

    .line 3078
    .local v1, d:D
    .local v3, leftRightOrder:Z
    .restart local v4       #lhs:Ljava/lang/Object;
    .local p3, cx:Lorg/mozilla/javascript/Context;
    :cond_9
    instance-of p3, v4, Ljava/lang/String;

    .end local p3           #cx:Lorg/mozilla/javascript/Context;
    if-eqz p3, :cond_b

    .line 3079
    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object p1, v0

    .line 3080
    .local p1, lstr:Ljava/lang/String;
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object p3

    .line 3081
    .local p3, rstr:Ljava/lang/String;
    if-eqz v3, :cond_a

    .line 3082
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1           #lstr:Ljava/lang/String;
    aput-object p1, p0, p2

    goto/16 :goto_0

    .line 3084
    .restart local p1       #lstr:Ljava/lang/String;
    :cond_a
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1           #lstr:Ljava/lang/String;
    aput-object p1, p0, p2

    goto/16 :goto_0

    .line 3087
    .end local p3           #rstr:Ljava/lang/String;
    .local p1, sDbl:[D
    :cond_b
    instance-of p3, v4, Ljava/lang/Number;

    if-eqz p3, :cond_c

    check-cast v4, Ljava/lang/Number;

    .end local v4           #lhs:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    .line 3089
    .local v3, lDbl:D
    :goto_5
    sget-object p3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    aput-object p3, p0, p2

    .line 3090
    add-double/2addr v1, v3

    aput-wide v1, p1, p2

    goto/16 :goto_0

    .line 3087
    .local v3, leftRightOrder:Z
    .restart local v4       #lhs:Ljava/lang/Object;
    :cond_c
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v3

    goto :goto_5

    .local p1, rhs:Ljava/lang/Number;
    .local p3, cx:Lorg/mozilla/javascript/Context;
    :cond_d
    move-object v1, p1

    .local v1, rhs:Ljava/lang/Object;
    move-object p1, v4

    .end local v4           #lhs:Ljava/lang/Object;
    .local p1, lhs:Ljava/lang/Object;
    goto/16 :goto_2
.end method

.method static dumpICode(Lorg/mozilla/javascript/InterpreterData;)V
    .locals 0
    .parameter "idata"

    .prologue
    .line 322
    return-void
.end method

.method private static enterFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;Z)V
    .locals 5
    .parameter "cx"
    .parameter "frame"
    .parameter "args"
    .parameter "continuationRestart"

    .prologue
    .line 2824
    iget-object v3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v2, v3, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    .line 2825
    .local v2, usesActivation:Z
    iget-object v3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    move v0, v3

    .line 2826
    .local v0, isDebugged:Z
    :goto_0
    if-nez v2, :cond_0

    if-eqz v0, :cond_3

    .line 2827
    :cond_0
    iget-object v1, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 2828
    .local v1, scope:Lorg/mozilla/javascript/Scriptable;
    if-nez v1, :cond_5

    .line 2829
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 2857
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 2858
    iget-object v3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    iget-object v4, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v3, p0, v1, v4, p2}, Lorg/mozilla/javascript/debug/DebugFrame;->onEnter(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    .line 2863
    :cond_2
    if-eqz v2, :cond_3

    .line 2864
    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->enterActivationFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    .line 2867
    .end local v1           #scope:Lorg/mozilla/javascript/Scriptable;
    :cond_3
    return-void

    .line 2825
    .end local v0           #isDebugged:Z
    :cond_4
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 2830
    .restart local v0       #isDebugged:Z
    .restart local v1       #scope:Lorg/mozilla/javascript/Scriptable;
    :cond_5
    if-eqz p3, :cond_1

    .line 2840
    :cond_6
    instance-of v3, v1, Lorg/mozilla/javascript/NativeWith;

    if-eqz v3, :cond_1

    .line 2841
    invoke-interface {v1}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    .line 2842
    if-eqz v1, :cond_7

    iget-object v3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz v3, :cond_6

    iget-object v3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object v3, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    if-ne v3, v1, :cond_6

    .line 2848
    :cond_7
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_1
.end method

.method private static exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V
    .locals 8
    .parameter "cx"
    .parameter "frame"
    .parameter "throwable"

    .prologue
    .line 2872
    iget-object v6, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v6, v6, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-eqz v6, :cond_0

    .line 2873
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->exitActivationFunction(Lorg/mozilla/javascript/Context;)V

    .line 2876
    :cond_0
    iget-object v6, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-eqz v6, :cond_1

    .line 2878
    :try_start_0
    instance-of v6, p2, Ljava/lang/Throwable;

    if-eqz v6, :cond_2

    .line 2879
    iget-object v6, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    const/4 v7, 0x1

    invoke-interface {v6, p0, v7, p2}, Lorg/mozilla/javascript/debug/DebugFrame;->onExit(Lorg/mozilla/javascript/Context;ZLjava/lang/Object;)V

    .line 2905
    :cond_1
    :goto_0
    return-void

    .line 2882
    :cond_2
    move-object v0, p2

    check-cast v0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    move-object v1, v0

    .line 2883
    .local v1, cjump:Lorg/mozilla/javascript/Interpreter$ContinuationJump;
    if-nez v1, :cond_4

    .line 2884
    iget-object v3, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    .line 2888
    .local v3, result:Ljava/lang/Object;
    :goto_1
    sget-object v6, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v3, v6, :cond_3

    .line 2890
    if-nez v1, :cond_5

    .line 2891
    iget-wide v4, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    .line 2895
    .local v4, resultDbl:D
    :goto_2
    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    .line 2897
    .end local v3           #result:Ljava/lang/Object;
    .end local v4           #resultDbl:D
    :cond_3
    iget-object v6, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    const/4 v7, 0x0

    invoke-interface {v6, p0, v7, v3}, Lorg/mozilla/javascript/debug/DebugFrame;->onExit(Lorg/mozilla/javascript/Context;ZLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2899
    .end local v1           #cjump:Lorg/mozilla/javascript/Interpreter$ContinuationJump;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 2900
    .local v2, ex:Ljava/lang/Throwable;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "RHINO USAGE WARNING: onExit terminated with exception"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2902
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v6}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 2886
    .end local v2           #ex:Ljava/lang/Throwable;
    .restart local v1       #cjump:Lorg/mozilla/javascript/Interpreter$ContinuationJump;
    :cond_4
    :try_start_1
    iget-object v3, v1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    .restart local v3       #result:Ljava/lang/Object;
    goto :goto_1

    .line 2893
    :cond_5
    iget-wide v4, v1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->resultDbl:D
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v4       #resultDbl:D
    goto :goto_2
.end method

.method private static freezeGenerator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;ILorg/mozilla/javascript/Interpreter$GeneratorState;)Ljava/lang/Object;
    .locals 3
    .parameter "cx"
    .parameter "frame"
    .parameter "stackTop"
    .parameter "generatorState"

    .prologue
    const/4 v2, 0x1

    .line 2569
    iget v0, p3, Lorg/mozilla/javascript/Interpreter$GeneratorState;->operation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2571
    const-string v0, "msg.yield.closing"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 2574
    :cond_0
    iput-boolean v2, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    .line 2575
    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v0, v0, p2

    iput-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    .line 2576
    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    aget-wide v0, v0, p2

    iput-wide v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    .line 2577
    iput p2, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    .line 2578
    iget v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    sub-int/2addr v0, v2

    iput v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .line 2579
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->exitActivationFunction(Lorg/mozilla/javascript/Context;)V

    .line 2580
    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_1
    iget-wide v0, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    goto :goto_0
.end method

.method private static getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;
    .locals 5
    .parameter "stack"
    .parameter "sDbl"
    .parameter "shift"
    .parameter "count"

    .prologue
    .line 3097
    if-nez p3, :cond_0

    .line 3098
    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    .line 3108
    :goto_0
    return-object v3

    .line 3100
    :cond_0
    new-array v0, p3, [Ljava/lang/Object;

    .line 3101
    .local v0, args:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-eq v1, p3, :cond_2

    .line 3102
    aget-object v2, p0, p2

    .line 3103
    .local v2, val:Ljava/lang/Object;
    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v2, v3, :cond_1

    .line 3104
    aget-wide v3, p1, p2

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    .line 3106
    .end local v2           #val:Ljava/lang/Object;
    :cond_1
    aput-object v2, v0, v1

    .line 3101
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    move-object v3, v0

    .line 3108
    goto :goto_0
.end method

.method static getEncodedSource(Lorg/mozilla/javascript/InterpreterData;)Ljava/lang/String;
    .locals 3
    .parameter "idata"

    .prologue
    .line 815
    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->encodedSource:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 816
    const/4 v0, 0x0

    .line 818
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/InterpreterData;->encodedSource:Ljava/lang/String;

    iget v1, p0, Lorg/mozilla/javascript/InterpreterData;->encodedSourceStart:I

    iget v2, p0, Lorg/mozilla/javascript/InterpreterData;->encodedSourceEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getExceptionHandler(Lorg/mozilla/javascript/Interpreter$CallFrame;Z)I
    .locals 10
    .parameter "frame"
    .parameter "onlyFinally"

    .prologue
    const/4 v9, 0x1

    .line 279
    iget-object v8, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v4, v8, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    .line 280
    .local v4, exceptionTable:[I
    if-nez v4, :cond_0

    .line 282
    const/4 v8, -0x1

    .line 316
    :goto_0
    return v8

    .line 288
    :cond_0
    iget v8, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    sub-int v6, v8, v9

    .line 291
    .local v6, pc:I
    const/4 v0, -0x1

    .local v0, best:I
    const/4 v2, 0x0

    .local v2, bestStart:I
    const/4 v1, 0x0

    .line 292
    .local v1, bestEnd:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v8, v4

    if-eq v5, v8, :cond_6

    .line 293
    add-int/lit8 v8, v5, 0x0

    aget v7, v4, v8

    .line 294
    .local v7, start:I
    add-int/lit8 v8, v5, 0x1

    aget v3, v4, v8

    .line 295
    .local v3, end:I
    if-gt v7, v6, :cond_1

    if-lt v6, v3, :cond_2

    .line 292
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x6

    goto :goto_1

    .line 298
    :cond_2
    if-eqz p1, :cond_3

    add-int/lit8 v8, v5, 0x3

    aget v8, v4, v8

    if-ne v8, v9, :cond_1

    .line 301
    :cond_3
    if-ltz v0, :cond_5

    .line 305
    if-lt v1, v3, :cond_1

    .line 309
    if-le v2, v7, :cond_4

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 310
    :cond_4
    if-ne v1, v3, :cond_5

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 312
    :cond_5
    move v0, v5

    .line 313
    move v2, v7

    .line 314
    move v1, v3

    goto :goto_2

    .end local v3           #end:I
    .end local v7           #start:I
    :cond_6
    move v8, v0

    .line 316
    goto :goto_0
.end method

.method private static getIndex([BI)I
    .locals 2
    .parameter "iCode"
    .parameter "pc"

    .prologue
    .line 268
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static getInt([BI)I
    .locals 2
    .parameter "iCode"
    .parameter "pc"

    .prologue
    .line 272
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static getLineNumbers(Lorg/mozilla/javascript/InterpreterData;)[I
    .locals 8
    .parameter "data"

    .prologue
    .line 615
    new-instance v5, Lorg/mozilla/javascript/UintMap;

    invoke-direct {v5}, Lorg/mozilla/javascript/UintMap;-><init>()V

    .line 617
    .local v5, presentLines:Lorg/mozilla/javascript/UintMap;
    iget-object v1, p0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    .line 618
    .local v1, iCode:[B
    array-length v2, v1

    .line 619
    .local v2, iCodeLength:I
    const/4 v4, 0x0

    .local v4, pc:I
    :goto_0
    if-eq v4, v2, :cond_2

    .line 620
    aget-byte v0, v1, v4

    .line 621
    .local v0, bytecode:I
    invoke-static {v0}, Lorg/mozilla/javascript/Interpreter;->bytecodeSpan(I)I

    move-result v6

    .line 622
    .local v6, span:I
    const/16 v7, -0x1a

    if-ne v0, v7, :cond_1

    .line 623
    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 624
    :cond_0
    add-int/lit8 v7, v4, 0x1

    invoke-static {v1, v7}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v3

    .line 625
    .local v3, line:I
    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7}, Lorg/mozilla/javascript/UintMap;->put(II)V

    .line 627
    .end local v3           #line:I
    :cond_1
    add-int/2addr v4, v6

    .line 628
    goto :goto_0

    .line 630
    .end local v0           #bytecode:I
    .end local v6           #span:I
    :cond_2
    invoke-virtual {v5}, Lorg/mozilla/javascript/UintMap;->getKeys()[I

    move-result-object v7

    return-object v7
.end method

.method private static getShort([BI)I
    .locals 2
    .parameter "iCode"
    .parameter "pc"

    .prologue
    .line 264
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/Interpreter$CallFrame;)V
    .locals 17
    .parameter "cx"
    .parameter "callerScope"
    .parameter "thisObj"
    .parameter "args"
    .parameter "argsDbl"
    .parameter "argShift"
    .parameter "argCount"
    .parameter "fnOrScript"
    .parameter "parentFrame"
    .parameter "frame"

    .prologue
    .line 2665
    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    move-object v7, v0

    .line 2667
    .local v7, idata:Lorg/mozilla/javascript/InterpreterData;
    iget-boolean v6, v7, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    .line 2668
    .local v6, useActivation:Z
    const/4 v5, 0x0

    .line 2669
    .local v5, debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Context;->debugger:Lorg/mozilla/javascript/debug/Debugger;

    move-object v8, v0

    if-eqz v8, :cond_14

    .line 2670
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Context;->debugger:Lorg/mozilla/javascript/debug/Debugger;

    move-object v5, v0

    .end local v5           #debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;
    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/mozilla/javascript/debug/Debugger;->getFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/debug/DebuggableScript;)Lorg/mozilla/javascript/debug/DebugFrame;

    move-result-object v5

    .line 2671
    .restart local v5       #debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;
    if-eqz v5, :cond_14

    .line 2672
    const/4 v6, 0x1

    move v14, v6

    .line 2676
    .end local v6           #useActivation:Z
    .local v14, useActivation:Z
    :goto_0
    if-eqz v14, :cond_1

    .line 2679
    if-eqz p4, :cond_0

    .line 2680
    invoke-static/range {p3 .. p6}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object p3

    .line 2682
    :cond_0
    const/16 p5, 0x0

    .line 2683
    const/16 p4, 0x0

    .line 2687
    :cond_1
    iget v6, v7, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    if-eqz v6, :cond_5

    .line 2688
    iget-boolean v6, v7, Lorg/mozilla/javascript/InterpreterData;->useDynamicScope:Z

    if-nez v6, :cond_4

    .line 2689
    invoke-virtual/range {p7 .. p7}, Lorg/mozilla/javascript/InterpretedFunction;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    .line 2694
    .local p1, scope:Lorg/mozilla/javascript/Scriptable;
    :goto_1
    if-eqz v14, :cond_6

    .line 2695
    move-object/from16 v0, p7

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->createFunctionActivation(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    move-object/from16 v9, p1

    .line 2704
    .end local p1           #scope:Lorg/mozilla/javascript/Scriptable;
    .local v9, scope:Lorg/mozilla/javascript/Scriptable;
    :goto_2
    move-object v0, v7

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNestedFunctions:[Lorg/mozilla/javascript/InterpreterData;

    move-object/from16 p1, v0

    if-eqz p1, :cond_7

    .line 2705
    move-object v0, v7

    iget v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    move/from16 p1, v0

    if-eqz p1, :cond_2

    move-object v0, v7

    iget-boolean v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    move/from16 p1, v0

    if-nez p1, :cond_2

    .line 2706
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 2707
    :cond_2
    const/16 p1, 0x0

    .local p1, i:I
    move/from16 v6, p1

    .end local p1           #i:I
    .local v6, i:I
    :goto_3
    move-object v0, v7

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNestedFunctions:[Lorg/mozilla/javascript/InterpreterData;

    move-object/from16 p1, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 p1, v0

    move v0, v6

    move/from16 v1, p1

    if-ge v0, v1, :cond_7

    .line 2708
    move-object v0, v7

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNestedFunctions:[Lorg/mozilla/javascript/InterpreterData;

    move-object/from16 p1, v0

    aget-object p1, p1, v6

    .line 2709
    .local p1, fdata:Lorg/mozilla/javascript/InterpreterData;
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    move/from16 p1, v0

    .end local p1           #fdata:Lorg/mozilla/javascript/InterpreterData;
    const/4 v8, 0x1

    move/from16 v0, p1

    move v1, v8

    if-ne v0, v1, :cond_3

    .line 2710
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p7

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/Interpreter;->initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)V

    .line 2707
    :cond_3
    add-int/lit8 p1, v6, 0x1

    .end local v6           #i:I
    .local p1, i:I
    move/from16 v6, p1

    .end local p1           #i:I
    .restart local v6       #i:I
    goto :goto_3

    .line 2691
    .end local v6           #i:I
    .end local v9           #scope:Lorg/mozilla/javascript/Scriptable;
    .local p1, callerScope:Lorg/mozilla/javascript/Scriptable;
    :cond_4
    move-object/from16 p1, p1

    .local p1, scope:Lorg/mozilla/javascript/Scriptable;
    goto :goto_1

    .line 2699
    .local p1, callerScope:Lorg/mozilla/javascript/Scriptable;
    :cond_5
    move-object/from16 p1, p1

    .line 2700
    .local p1, scope:Lorg/mozilla/javascript/Scriptable;
    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    move-object v6, v0

    iget-boolean v6, v6, Lorg/mozilla/javascript/InterpreterData;->evalScriptFlag:Z

    move-object/from16 v0, p7

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->initScript(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V

    :cond_6
    move-object/from16 v9, p1

    .end local p1           #scope:Lorg/mozilla/javascript/Scriptable;
    .restart local v9       #scope:Lorg/mozilla/javascript/Scriptable;
    goto :goto_2

    .line 2715
    :cond_7
    const/16 p1, 0x0

    .line 2716
    .local p1, scriptRegExps:[Lorg/mozilla/javascript/Scriptable;
    iget-object v6, v7, Lorg/mozilla/javascript/InterpreterData;->itsRegExpLiterals:[Ljava/lang/Object;

    if-eqz v6, :cond_13

    .line 2721
    move-object v0, v7

    iget v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    move/from16 p1, v0

    .end local p1           #scriptRegExps:[Lorg/mozilla/javascript/Scriptable;
    if-eqz p1, :cond_a

    .line 2722
    move-object/from16 v0, p7

    iget-object v0, v0, Lorg/mozilla/javascript/InterpretedFunction;->functionRegExps:[Lorg/mozilla/javascript/Scriptable;

    move-object/from16 p1, v0

    .restart local p1       #scriptRegExps:[Lorg/mozilla/javascript/Scriptable;
    move-object/from16 v10, p1

    .line 2730
    .end local p1           #scriptRegExps:[Lorg/mozilla/javascript/Scriptable;
    .local v10, scriptRegExps:[Lorg/mozilla/javascript/Scriptable;
    :goto_4
    move-object v0, v7

    iget v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsMaxVars:I

    move/from16 p1, v0

    iget v6, v7, Lorg/mozilla/javascript/InterpreterData;->itsMaxLocals:I

    add-int p1, p1, v6

    const/4 v6, 0x1

    sub-int v6, p1, v6

    .line 2731
    .local v6, emptyStackTop:I
    move-object v0, v7

    iget v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsMaxFrameArray:I

    move/from16 p1, v0

    .line 2732
    .local p1, maxFrameArray:I
    iget v8, v7, Lorg/mozilla/javascript/InterpreterData;->itsMaxStack:I

    add-int/2addr v8, v6

    add-int/lit8 v8, v8, 0x1

    move/from16 v0, p1

    move v1, v8

    if-eq v0, v1, :cond_8

    .line 2733
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 2739
    :cond_8
    move-object/from16 v0, p9

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    move-object v8, v0

    if-eqz v8, :cond_b

    move-object/from16 v0, p9

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    move-object v8, v0

    array-length v8, v8

    move/from16 v0, p1

    move v1, v8

    if-gt v0, v1, :cond_b

    .line 2741
    const/4 v12, 0x1

    .line 2742
    .local v12, stackReuse:Z
    move-object/from16 v0, p9

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    move-object v8, v0

    .line 2743
    .local v8, stack:[Ljava/lang/Object;
    move-object/from16 v0, p9

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    move-object v11, v0

    .line 2744
    .local v11, stackAttributes:[I
    move-object/from16 v0, p9

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    move-object/from16 p1, v0

    .local p1, sDbl:[D
    move v13, v12

    .end local v12           #stackReuse:Z
    .local v13, stackReuse:Z
    move-object v12, v11

    .end local v11           #stackAttributes:[I
    .local v12, stackAttributes:[I
    move-object v11, v8

    .end local v8           #stack:[Ljava/lang/Object;
    .local v11, stack:[Ljava/lang/Object;
    move-object/from16 v8, p1

    .line 2752
    .end local p1           #sDbl:[D
    .local v8, sDbl:[D
    :goto_5
    invoke-virtual {v7}, Lorg/mozilla/javascript/InterpreterData;->getParamAndVarCount()I

    move-result v15

    .line 2753
    .local v15, varCount:I
    const/16 p1, 0x0

    .local p1, i:I
    :goto_6
    move/from16 v0, p1

    move v1, v15

    if-ge v0, v1, :cond_c

    .line 2754
    move-object v0, v7

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/InterpreterData;->getParamOrVarConst(I)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 2755
    const/16 v16, 0xd

    aput v16, v12, p1

    .line 2753
    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 2724
    .end local v6           #emptyStackTop:I
    .end local v8           #sDbl:[D
    .end local v10           #scriptRegExps:[Lorg/mozilla/javascript/Scriptable;
    .end local v11           #stack:[Ljava/lang/Object;
    .end local v12           #stackAttributes:[I
    .end local v13           #stackReuse:Z
    .end local v15           #varCount:I
    .end local p1           #i:I
    :cond_a
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/InterpretedFunction;->createRegExpWraps(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)[Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    .local p1, scriptRegExps:[Lorg/mozilla/javascript/Scriptable;
    move-object/from16 v10, p1

    .end local p1           #scriptRegExps:[Lorg/mozilla/javascript/Scriptable;
    .restart local v10       #scriptRegExps:[Lorg/mozilla/javascript/Scriptable;
    goto :goto_4

    .line 2746
    .restart local v6       #emptyStackTop:I
    .local p1, maxFrameArray:I
    :cond_b
    const/4 v12, 0x0

    .line 2747
    .local v12, stackReuse:Z
    move/from16 v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    move-object v8, v0

    .line 2748
    .local v8, stack:[Ljava/lang/Object;
    move/from16 v0, p1

    new-array v0, v0, [I

    move-object v11, v0

    .line 2749
    .local v11, stackAttributes:[I
    move/from16 v0, p1

    new-array v0, v0, [D

    move-object/from16 p1, v0

    .local p1, sDbl:[D
    move v13, v12

    .end local v12           #stackReuse:Z
    .restart local v13       #stackReuse:Z
    move-object v12, v11

    .end local v11           #stackAttributes:[I
    .local v12, stackAttributes:[I
    move-object v11, v8

    .end local v8           #stack:[Ljava/lang/Object;
    .local v11, stack:[Ljava/lang/Object;
    move-object/from16 v8, p1

    .end local p1           #sDbl:[D
    .local v8, sDbl:[D
    goto :goto_5

    .line 2757
    .restart local v15       #varCount:I
    .local p1, i:I
    :cond_c
    move-object v0, v7

    iget v0, v0, Lorg/mozilla/javascript/InterpreterData;->argCount:I

    move/from16 p1, v0

    .line 2758
    .local p1, definedArgs:I
    move/from16 v0, p1

    move/from16 v1, p6

    if-le v0, v1, :cond_d

    move/from16 p1, p6

    .line 2762
    :cond_d
    move-object/from16 v0, p8

    move-object/from16 v1, p9

    iput-object v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 2763
    if-nez p8, :cond_e

    const/16 p6, 0x0

    .end local p6
    :goto_7
    move/from16 v0, p6

    move-object/from16 v1, p9

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    .line 2765
    move-object/from16 v0, p9

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    move/from16 p6, v0

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/Context;->getMaximumInterpreterStackDepth()I

    move-result p8

    .end local p8
    move/from16 v0, p6

    move/from16 v1, p8

    if-le v0, v1, :cond_f

    .line 2767
    const-string p0, "Exceeded maximum stack depth"

    .end local p0
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    .line 2763
    .restart local p0
    .restart local p6
    .restart local p8
    :cond_e
    move-object/from16 v0, p8

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    move/from16 p6, v0

    .end local p6
    add-int/lit8 p6, p6, 0x1

    goto :goto_7

    .line 2769
    .end local p8
    :cond_f
    const/16 p6, 0x0

    move/from16 v0, p6

    move-object/from16 v1, p9

    iput-boolean v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    .line 2771
    move-object/from16 v0, p7

    move-object/from16 v1, p9

    iput-object v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    .line 2772
    move-object v0, v7

    move-object/from16 v1, p9

    iput-object v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    .line 2774
    move-object v0, v11

    move-object/from16 v1, p9

    iput-object v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    .line 2775
    move-object v0, v12

    move-object/from16 v1, p9

    iput-object v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    .line 2776
    move-object v0, v8

    move-object/from16 v1, p9

    iput-object v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    .line 2777
    move-object/from16 v0, p9

    move-object/from16 v1, p9

    iput-object v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->varSource:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 2778
    move-object v0, v7

    iget v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsMaxVars:I

    move/from16 p6, v0

    move/from16 v0, p6

    move-object/from16 v1, p9

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    .line 2779
    move v0, v6

    move-object/from16 v1, p9

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->emptyStackTop:I

    .line 2781
    move-object v0, v5

    move-object/from16 v1, p9

    iput-object v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    .line 2782
    move v0, v14

    move-object/from16 v1, p9

    iput-boolean v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    .line 2784
    move-object/from16 v0, p2

    move-object/from16 v1, p9

    iput-object v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    .line 2785
    move-object v0, v10

    move-object/from16 v1, p9

    iput-object v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scriptRegExps:[Lorg/mozilla/javascript/Scriptable;

    .line 2789
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .end local p2
    move-object/from16 v0, p2

    move-object/from16 v1, p9

    iput-object v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    .line 2790
    const/16 p2, 0x0

    move/from16 v0, p2

    move-object/from16 v1, p9

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .line 2791
    const/16 p2, 0x0

    move/from16 v0, p2

    move-object/from16 v1, p9

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    .line 2792
    move-object v0, v7

    iget v0, v0, Lorg/mozilla/javascript/InterpreterData;->firstLinePC:I

    move/from16 p2, v0

    move/from16 v0, p2

    move-object/from16 v1, p9

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcSourceLineStart:I

    .line 2793
    move-object v0, v9

    move-object/from16 v1, p9

    iput-object v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 2795
    move v0, v6

    move-object/from16 v1, p9

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    .line 2796
    const/16 p2, 0x0

    move/from16 v0, p2

    move-object/from16 v1, p9

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    .line 2798
    const/16 p2, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p5

    move-object v2, v11

    move/from16 v3, p2

    move/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2799
    if-eqz p4, :cond_10

    .line 2800
    const/16 p2, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    move-object v2, v8

    move/from16 v3, p2

    move/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2802
    :cond_10
    move/from16 p1, p1

    .local p1, i:I
    :goto_8
    move-object v0, v7

    iget v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsMaxVars:I

    move/from16 p2, v0

    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_11

    .line 2803
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    aput-object p2, v11, p1

    .line 2802
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 2805
    :cond_11
    if-eqz v13, :cond_12

    .line 2808
    add-int/lit8 p1, v6, 0x1

    :goto_9
    move-object v0, v11

    array-length v0, v0

    move/from16 p2, v0

    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_12

    .line 2809
    const/16 p2, 0x0

    aput-object p2, v11, p1

    .line 2808
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    .line 2813
    :cond_12
    const/16 p1, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    move-object/from16 v2, p3

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/Interpreter;->enterFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;Z)V

    .line 2814
    .end local p1           #i:I
    return-void

    .end local v6           #emptyStackTop:I
    .end local v8           #sDbl:[D
    .end local v10           #scriptRegExps:[Lorg/mozilla/javascript/Scriptable;
    .end local v11           #stack:[Ljava/lang/Object;
    .end local v12           #stackAttributes:[I
    .end local v13           #stackReuse:Z
    .end local v15           #varCount:I
    .local p1, scriptRegExps:[Lorg/mozilla/javascript/Scriptable;
    .restart local p2
    .restart local p6
    .restart local p8
    :cond_13
    move-object/from16 v10, p1

    .end local p1           #scriptRegExps:[Lorg/mozilla/javascript/Scriptable;
    .restart local v10       #scriptRegExps:[Lorg/mozilla/javascript/Scriptable;
    goto/16 :goto_4

    .end local v9           #scope:Lorg/mozilla/javascript/Scriptable;
    .end local v10           #scriptRegExps:[Lorg/mozilla/javascript/Scriptable;
    .end local v14           #useActivation:Z
    .local v6, useActivation:Z
    .local p1, callerScope:Lorg/mozilla/javascript/Scriptable;
    :cond_14
    move v14, v6

    .end local v6           #useActivation:Z
    .restart local v14       #useActivation:Z
    goto/16 :goto_0
.end method

.method private static initFrameForApplyOrCall(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DIILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/InterpretedFunction;)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .locals 23
    .parameter "cx"
    .parameter "frame"
    .parameter "indexReg"
    .parameter "stack"
    .parameter "sDbl"
    .parameter "stackTop"
    .parameter "op"
    .parameter "calleeScope"
    .parameter "ifun"
    .parameter "iApplyCallable"

    .prologue
    .line 2615
    if-eqz p2, :cond_2

    .line 2616
    add-int/lit8 v3, p5, 0x2

    aget-object v3, p3, v3

    .line 2617
    .local v3, obj:Ljava/lang/Object;
    sget-object v4, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v3, v4, :cond_0

    .line 2618
    add-int/lit8 v3, p5, 0x2

    aget-wide v3, p4, v3

    .end local v3           #obj:Ljava/lang/Object;
    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v3

    .line 2619
    :cond_0
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    .line 2624
    .local v5, applyThis:Lorg/mozilla/javascript/Scriptable;
    :goto_0
    if-nez v5, :cond_1

    .line 2626
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/ScriptRuntime;->getTopCallScope(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    .line 2628
    :cond_1
    const/16 v3, -0x37

    move/from16 v0, p6

    move v1, v3

    if-ne v0, v1, :cond_3

    .line 2629
    const/16 p6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    .line 2630
    .end local p6
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-object/from16 p1, v0

    .line 2636
    :goto_1
    new-instance v12, Lorg/mozilla/javascript/Interpreter$CallFrame;

    const/16 p6, 0x0

    move-object v0, v12

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Interpreter$CallFrame;-><init>(Lorg/mozilla/javascript/Interpreter$1;)V

    .line 2637
    .local v12, calleeFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    invoke-static/range {p8 .. p8}, Lorg/mozilla/javascript/BaseFunction;->isApply(Lorg/mozilla/javascript/IdFunctionObject;)Z

    move-result p6

    if-eqz p6, :cond_5

    .line 2638
    const/16 p4, 0x2

    move/from16 v0, p2

    move/from16 v1, p4

    if-ge v0, v1, :cond_4

    .end local p4
    sget-object p2, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    .end local p2
    move-object/from16 v6, p2

    .line 2640
    .local v6, callArgs:[Ljava/lang/Object;
    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    array-length v9, v6

    move-object/from16 v3, p0

    move-object/from16 v4, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p1

    invoke-static/range {v3 .. v12}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    .line 2654
    .end local v6           #callArgs:[Ljava/lang/Object;
    .end local p8
    :goto_3
    move-object/from16 p1, v12

    .line 2655
    return-object p1

    .line 2622
    .end local v5           #applyThis:Lorg/mozilla/javascript/Scriptable;
    .end local v12           #calleeFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    .restart local p2
    .restart local p4
    .restart local p6
    .restart local p8
    :cond_2
    const/4 v5, 0x0

    .restart local v5       #applyThis:Lorg/mozilla/javascript/Scriptable;
    goto :goto_0

    .line 2633
    :cond_3
    move/from16 v0, p5

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    .line 2634
    move/from16 v0, p6

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    goto :goto_1

    .line 2638
    .end local p4
    .end local p6
    .restart local v12       #calleeFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    :cond_4
    add-int/lit8 p2, p5, 0x3

    aget-object p2, p3, p2

    .end local p2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getApplyArguments(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    move-object/from16 v6, p2

    goto :goto_2

    .line 2645
    .restart local p2
    .restart local p4
    :cond_5
    const/16 p6, 0x1

    .end local p8
    .local p6, i:I
    :goto_4
    move/from16 v0, p6

    move/from16 v1, p2

    if-ge v0, v1, :cond_6

    .line 2646
    add-int/lit8 p8, p5, 0x1

    add-int p8, p8, p6

    add-int/lit8 v3, p5, 0x2

    add-int v3, v3, p6

    aget-object v3, p3, v3

    aput-object v3, p3, p8

    .line 2647
    add-int/lit8 p8, p5, 0x1

    add-int p8, p8, p6

    add-int/lit8 v3, p5, 0x2

    add-int v3, v3, p6

    aget-wide v3, p4, v3

    aput-wide v3, p4, p8

    .line 2645
    add-int/lit8 p6, p6, 0x1

    goto :goto_4

    .line 2649
    :cond_6
    const/16 p6, 0x2

    move/from16 v0, p2

    move/from16 v1, p6

    if-ge v0, v1, :cond_7

    .end local p6           #i:I
    const/16 p2, 0x0

    move/from16 v19, p2

    .line 2650
    .end local p2
    .local v19, argCount:I
    :goto_5
    add-int/lit8 v18, p5, 0x2

    move-object/from16 v13, p0

    move-object/from16 v14, p7

    move-object v15, v5

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v20, p9

    move-object/from16 v21, p1

    move-object/from16 v22, v12

    invoke-static/range {v13 .. v22}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    goto :goto_3

    .line 2649
    .end local v19           #argCount:I
    .restart local p2
    :cond_7
    const/16 p6, 0x1

    sub-int p2, p2, p6

    move/from16 v19, p2

    goto :goto_5
.end method

.method private static initFrameForNoSuchMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DIILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;Lorg/mozilla/javascript/InterpretedFunction;)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .locals 13
    .parameter "cx"
    .parameter "frame"
    .parameter "indexReg"
    .parameter "stack"
    .parameter "sDbl"
    .parameter "stackTop"
    .parameter "op"
    .parameter "funThisObj"
    .parameter "calleeScope"
    .parameter "noSuchMethodShim"
    .parameter "ifun"

    .prologue
    .line 2404
    const/4 v6, 0x0

    .line 2407
    .local v6, argsArray:[Ljava/lang/Object;
    add-int/lit8 v5, p5, 0x2

    .line 2408
    .local v5, shift:I
    new-array v3, p2, [Ljava/lang/Object;

    .line 2409
    .local v3, elements:[Ljava/lang/Object;
    const/4 v4, 0x0

    .end local v6           #argsArray:[Ljava/lang/Object;
    .local v4, i:I
    :goto_0
    if-ge v4, p2, :cond_1

    .line 2410
    aget-object v6, p3, v5

    .line 2411
    .local v6, val:Ljava/lang/Object;
    sget-object v7, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v6, v7, :cond_0

    .line 2412
    aget-wide v6, p4, v5

    .end local v6           #val:Ljava/lang/Object;
    invoke-static {v6, v7}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v6

    .line 2414
    :cond_0
    aput-object v6, v3, v4

    .line 2409
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2416
    :cond_1
    const/4 p2, 0x2

    new-array v6, p2, [Ljava/lang/Object;

    .line 2417
    .end local p2
    .local v6, argsArray:[Ljava/lang/Object;
    const/4 p2, 0x0

    move-object/from16 v0, p9

    iget-object v0, v0, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;->methodName:Ljava/lang/String;

    move-object/from16 p3, v0

    .end local p3
    aput-object p3, v6, p2

    .line 2418
    const/4 p2, 0x1

    move-object v0, p0

    move-object/from16 v1, p8

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p3

    aput-object p3, v6, p2

    .line 2421
    move-object v11, p1

    .line 2422
    .local v11, callParentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    new-instance v12, Lorg/mozilla/javascript/Interpreter$CallFrame;

    const/4 p2, 0x0

    invoke-direct {v12, p2}, Lorg/mozilla/javascript/Interpreter$CallFrame;-><init>(Lorg/mozilla/javascript/Interpreter$1;)V

    .line 2423
    .local v12, calleeFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    const/16 p2, -0x37

    move/from16 v0, p6

    move v1, p2

    if-ne v0, v1, :cond_2

    .line 2424
    iget-object v11, p1, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 2425
    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    .line 2429
    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object v3, p0

    move-object/from16 v4, p8

    move-object/from16 v5, p7

    move-object/from16 v10, p10

    invoke-static/range {v3 .. v12}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    .line 2431
    .end local v3           #elements:[Ljava/lang/Object;
    .end local v4           #i:I
    .end local v5           #shift:I
    const/16 p0, -0x37

    move/from16 v0, p6

    move v1, p0

    if-eq v0, v1, :cond_3

    .line 2432
    .end local p0
    move/from16 v0, p5

    move-object v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    .line 2433
    move/from16 v0, p6

    move-object v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    .line 2435
    :cond_3
    return-object v12
.end method

.method private static initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)V
    .locals 3
    .parameter "cx"
    .parameter "scope"
    .parameter "parent"
    .parameter "index"

    .prologue
    .line 826
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/InterpretedFunction;->createFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)Lorg/mozilla/javascript/InterpretedFunction;

    move-result-object v0

    .line 827
    .local v0, fn:Lorg/mozilla/javascript/InterpretedFunction;
    iget-object v1, v0, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    iget-object v2, p2, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v2, v2, Lorg/mozilla/javascript/InterpreterData;->evalScriptFlag:Z

    invoke-static {p0, p1, v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeFunction;IZ)V

    .line 829
    return-void
.end method

.method static interpret(Lorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter "ifun"
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 835
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->hasTopCall(Lorg/mozilla/javascript/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 837
    :cond_0
    iget-object v0, p1, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    iget-object v1, p0, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    .line 838
    iget-object v10, p1, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    .line 839
    .local v10, savedDomain:Ljava/lang/Object;
    iget-object v0, p0, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    iput-object v0, p1, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    .line 841
    :try_start_0
    iget-object v0, p0, Lorg/mozilla/javascript/InterpretedFunction;->securityController:Lorg/mozilla/javascript/SecurityController;

    iget-object v1, p0, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/SecurityController;->callWithDomain(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 844
    iput-object v10, p1, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    .line 854
    .end local v10           #savedDomain:Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 844
    .restart local v10       #savedDomain:Ljava/lang/Object;
    :catchall_0
    move-exception v0

    iput-object v10, p1, Lorg/mozilla/javascript/Context;->interpreterSecurityDomain:Ljava/lang/Object;

    throw v0

    .line 848
    .end local v10           #savedDomain:Ljava/lang/Object;
    :cond_1
    new-instance v9, Lorg/mozilla/javascript/Interpreter$CallFrame;

    invoke-direct {v9, v4}, Lorg/mozilla/javascript/Interpreter$CallFrame;-><init>(Lorg/mozilla/javascript/Interpreter$1;)V

    .line 849
    .local v9, frame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    array-length v6, p4

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v7, p0

    move-object v8, v4

    invoke-static/range {v0 .. v9}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    .line 851
    iget-boolean v0, p1, Lorg/mozilla/javascript/Context;->isContinuationsTopCall:Z

    iput-boolean v0, v9, Lorg/mozilla/javascript/Interpreter$CallFrame;->isContinuationsTopFrame:Z

    .line 852
    iput-boolean v5, p1, Lorg/mozilla/javascript/Context;->isContinuationsTopCall:Z

    .line 854
    invoke-static {p1, v9, v4}, Lorg/mozilla/javascript/Interpreter;->interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private static interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 65
    .parameter "cx"
    .parameter "frame"
    .parameter "throwable"

    .prologue
    .line 924
    sget-object v54, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 925
    .local v54, DBL_MRK:Lorg/mozilla/javascript/UniqueTag;
    sget-object v60, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 927
    .local v60, undefined:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/Context;->instructionThreshold:I

    move v5, v0

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    move/from16 v56, v5

    .line 930
    .local v56, instructionCounting:Z
    :goto_0
    const/16 v5, 0x64

    .line 932
    .local v5, INVOCATION_COST:I
    const/16 v5, 0x64

    .line 934
    .local v5, EXCEPTION_COST:I
    const/4 v8, 0x0

    .line 935
    .local v8, stringReg:Ljava/lang/String;
    const/16 v20, -0x1

    .line 937
    .local v20, indexReg:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    move-object v5, v0

    .end local v5           #EXCEPTION_COST:I
    if-eqz v5, :cond_1

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    move-object v5, v0

    if-nez v5, :cond_0

    .line 941
    new-instance v5, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v5}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    .line 943
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lorg/mozilla/javascript/ObjArray;->push(Ljava/lang/Object;)V

    .line 953
    :cond_1
    const/4 v5, 0x0

    .line 954
    .local v5, generatorState:Lorg/mozilla/javascript/Interpreter$GeneratorState;
    if-eqz p2, :cond_5

    .line 955
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/mozilla/javascript/Interpreter$GeneratorState;

    move v6, v0

    if-eqz v6, :cond_4

    .line 956
    move-object/from16 v0, p2

    check-cast v0, Lorg/mozilla/javascript/Interpreter$GeneratorState;

    move-object v5, v0

    .line 959
    sget-object p2, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    .end local p2
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/Interpreter;->enterFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;Z)V

    .line 960
    const/16 p2, 0x0

    .restart local p2
    move-object/from16 v55, v5

    .line 967
    .end local v5           #generatorState:Lorg/mozilla/javascript/Interpreter$GeneratorState;
    .end local p2
    .local v55, generatorState:Lorg/mozilla/javascript/Interpreter$GeneratorState;
    :goto_1
    const/4 v5, 0x0

    .line 968
    .local v5, interpreterResult:Ljava/lang/Object;
    const-wide/16 v6, 0x0

    .local v6, interpreterResultDbl:D
    move-wide/from16 v57, v6

    .end local v6           #interpreterResultDbl:D
    .local v57, interpreterResultDbl:D
    move-object/from16 v61, v5

    move-object v5, v8

    .line 973
    .end local v8           #stringReg:Ljava/lang/String;
    .local v5, stringReg:Ljava/lang/String;
    :goto_2
    if-eqz p2, :cond_6

    .line 977
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move/from16 v3, v20

    move/from16 v4, v56

    invoke-static {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/Interpreter;->processThrowable(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Interpreter$CallFrame;IZ)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object p1

    .line 979
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->throwable:Ljava/lang/Object;

    move-object/from16 p2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6

    .line 980
    .restart local p2
    const/4 v6, 0x0

    :try_start_1
    move-object v0, v6

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->throwable:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7

    move-object/from16 v62, p2

    .line 987
    .end local p2
    :goto_3
    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 988
    .local v17, stack:[Ljava/lang/Object;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    move-object/from16 v18, v0

    .line 989
    .local v18, sDbl:[D
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->varSource:Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-object/from16 p2, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    move-object/from16 v24, v0

    .line 990
    .local v24, vars:[Ljava/lang/Object;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->varSource:Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-object/from16 p2, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    move-object/from16 v23, v0

    .line 991
    .local v23, varDbls:[D
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->varSource:Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-object/from16 p2, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stackAttributes:[I

    move-object/from16 v22, v0

    .line 992
    .local v22, varAttributes:[I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    move-object/from16 p2, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    move-object v14, v0

    .line 993
    .local v14, iCode:[B
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    move-object/from16 p2, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    move-object/from16 v19, v0

    .line 999
    .local v19, strings:[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    move/from16 v29, v0

    .line 1002
    .local v29, stackTop:I
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v9, v29

    .end local v29           #stackTop:I
    .local v9, stackTop:I
    move-object/from16 v59, v5

    .line 1009
    .end local v5           #stringReg:Ljava/lang/String;
    .local v59, stringReg:Ljava/lang/String;
    :cond_2
    :goto_4
    :try_start_3
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    add-int/lit8 v5, p2, 0x1

    move v0, v5

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v30, v14, p2

    .line 1013
    .local v30, op:I
    packed-switch v30, :pswitch_data_0

    .line 2196
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    move-object/from16 p2, v0

    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/Interpreter;->dumpICode(Lorg/mozilla/javascript/InterpreterData;)V

    .line 2197
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown icode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @ pc : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 2239
    .end local v9           #stackTop:I
    .end local v14           #iCode:[B
    .end local v19           #strings:[Ljava/lang/String;
    .end local v22           #varAttributes:[I
    .end local v23           #varDbls:[D
    .end local v24           #vars:[Ljava/lang/Object;
    .end local v30           #op:I
    :catch_0
    move-exception p2

    move-wide/from16 v5, v57

    .end local v57           #interpreterResultDbl:D
    .local v5, interpreterResultDbl:D
    move-object/from16 v8, v61

    move-object/from16 v7, v59

    .end local v59           #stringReg:Ljava/lang/String;
    .local v7, stringReg:Ljava/lang/String;
    move-object/from16 v9, v62

    .line 2240
    .end local v17           #stack:[Ljava/lang/Object;
    .end local v18           #sDbl:[D
    .local p2, ex:Ljava/lang/Throwable;
    :goto_5
    if-eqz v9, :cond_64

    .line 2242
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .end local p0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 2243
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct/range {p0 .. p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 927
    .end local v5           #interpreterResultDbl:D
    .end local v7           #stringReg:Ljava/lang/String;
    .end local v20           #indexReg:I
    .end local v55           #generatorState:Lorg/mozilla/javascript/Interpreter$GeneratorState;
    .end local v56           #instructionCounting:Z
    .restart local p0
    .local p2, throwable:Ljava/lang/Object;
    :cond_3
    const/4 v5, 0x0

    move/from16 v56, v5

    goto/16 :goto_0

    .line 961
    .local v5, generatorState:Lorg/mozilla/javascript/Interpreter$GeneratorState;
    .restart local v8       #stringReg:Ljava/lang/String;
    .restart local v20       #indexReg:I
    .restart local v56       #instructionCounting:Z
    :cond_4
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    move v6, v0

    if-nez v6, :cond_5

    .line 963
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    :cond_5
    move-object/from16 v55, v5

    .end local v5           #generatorState:Lorg/mozilla/javascript/Interpreter$GeneratorState;
    .restart local v55       #generatorState:Lorg/mozilla/javascript/Interpreter$GeneratorState;
    goto/16 :goto_1

    .line 982
    .end local v8           #stringReg:Ljava/lang/String;
    .end local p2           #throwable:Ljava/lang/Object;
    .local v5, stringReg:Ljava/lang/String;
    .restart local v57       #interpreterResultDbl:D
    :cond_6
    if-nez v55, :cond_7

    :try_start_4
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    move v6, v0

    if-eqz v6, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6

    :cond_7
    move-object/from16 v62, p2

    goto/16 :goto_3

    .line 1015
    .end local v5           #stringReg:Ljava/lang/String;
    .restart local v9       #stackTop:I
    .restart local v14       #iCode:[B
    .restart local v17       #stack:[Ljava/lang/Object;
    .restart local v18       #sDbl:[D
    .restart local v19       #strings:[Ljava/lang/String;
    .restart local v22       #varAttributes:[I
    .restart local v23       #varDbls:[D
    .restart local v24       #vars:[Ljava/lang/Object;
    .restart local v30       #op:I
    .restart local v59       #stringReg:Ljava/lang/String;
    :pswitch_1
    :try_start_5
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    move/from16 p2, v0

    if-nez p2, :cond_9

    .line 1018
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    const/4 v5, 0x1

    sub-int p2, p2, v5

    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .line 1019
    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/Interpreter;->captureFrameForGenerator(Lorg/mozilla/javascript/Interpreter$CallFrame;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object v5

    .line 1020
    .local v5, generatorFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    const/16 p2, 0x1

    move/from16 v0, p2

    move-object v1, v5

    iput-boolean v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    .line 1021
    new-instance p2, Lorg/mozilla/javascript/NativeGenerator;

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v6, v0

    iget-object v7, v5, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    move-object/from16 v0, p2

    move-object v1, v6

    move-object v2, v7

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeGenerator;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeFunction;Ljava/lang/Object;)V

    .line 1023
    .local p2, generator:Lorg/mozilla/javascript/NativeGenerator;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    move/from16 v29, v9

    .line 2223
    .end local v5           #generatorFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    .end local v9           #stackTop:I
    .end local p2           #generator:Lorg/mozilla/javascript/NativeGenerator;
    .restart local v29       #stackTop:I
    :goto_6
    const/16 p2, 0x0

    invoke-static/range {p0 .. p2}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    .line 2224
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    move-object/from16 p2, v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 2225
    .local p2, interpreterResult:Ljava/lang/Object;
    :try_start_6
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    move-wide v5, v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_9

    .line 2226
    .end local v57           #interpreterResultDbl:D
    .local v5, interpreterResultDbl:D
    :try_start_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-object v7, v0

    if-eqz v7, :cond_63

    .line 2227
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-object/from16 p1, v0

    .line 2228
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    move v7, v0

    if-eqz v7, :cond_8

    .line 2229
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Interpreter$CallFrame;->cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object p1

    .line 2231
    :cond_8
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-wide v2, v5

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/Interpreter;->setCallResult(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;D)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    .line 2233
    const/16 p2, 0x0

    move-wide/from16 v57, v5

    .end local v5           #interpreterResultDbl:D
    .restart local v57       #interpreterResultDbl:D
    move-object/from16 v61, p2

    move-object/from16 v5, v59

    .end local v59           #stringReg:Ljava/lang/String;
    .local v5, stringReg:Ljava/lang/String;
    move-object/from16 p2, v62

    .line 2234
    goto/16 :goto_2

    .line 1031
    .end local v5           #stringReg:Ljava/lang/String;
    .end local v29           #stackTop:I
    .end local p2           #interpreterResult:Ljava/lang/Object;
    .restart local v9       #stackTop:I
    .restart local v59       #stringReg:Ljava/lang/String;
    :cond_9
    :pswitch_2
    :try_start_8
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    move/from16 p2, v0

    if-nez p2, :cond_a

    .line 1032
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move-object/from16 v3, v55

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/Interpreter;->freezeGenerator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;ILorg/mozilla/javascript/Interpreter$GeneratorState;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    move-wide/from16 v5, v57

    .end local v57           #interpreterResultDbl:D
    .local v5, interpreterResultDbl:D
    move-object/from16 p2, p0

    move-object/from16 p0, v59

    .line 2390
    .end local v9           #stackTop:I
    .end local v14           #iCode:[B
    .end local v17           #stack:[Ljava/lang/Object;
    .end local v18           #sDbl:[D
    .end local v19           #strings:[Ljava/lang/String;
    .end local v22           #varAttributes:[I
    .end local v23           #varDbls:[D
    .end local v24           #vars:[Ljava/lang/Object;
    .end local v30           #op:I
    .end local v59           #stringReg:Ljava/lang/String;
    .local p0, stringReg:Ljava/lang/String;
    :goto_7
    return-object p2

    .line 1034
    .end local v5           #interpreterResultDbl:D
    .restart local v9       #stackTop:I
    .restart local v14       #iCode:[B
    .restart local v17       #stack:[Ljava/lang/Object;
    .restart local v18       #sDbl:[D
    .restart local v19       #strings:[Ljava/lang/String;
    .restart local v22       #varAttributes:[I
    .restart local v23       #varDbls:[D
    .restart local v24       #vars:[Ljava/lang/Object;
    .restart local v30       #op:I
    .restart local v57       #interpreterResultDbl:D
    .restart local v59       #stringReg:Ljava/lang/String;
    .local p0, cx:Lorg/mozilla/javascript/Context;
    :cond_a
    move-object/from16 v0, p1

    move v1, v9

    move-object/from16 v2, v55

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/Interpreter;->thawGenerator(Lorg/mozilla/javascript/Interpreter$CallFrame;ILorg/mozilla/javascript/Interpreter$GeneratorState;I)Ljava/lang/Object;

    move-result-object p2

    .line 1035
    .local p2, obj:Ljava/lang/Object;
    sget-object v5, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    move-object/from16 v0, p2

    move-object v1, v5

    if-eq v0, v1, :cond_2

    .line 1036
    move-object/from16 p2, p2

    .local p2, throwable:Ljava/lang/Object;
    move-wide/from16 v7, v57

    .end local v57           #interpreterResultDbl:D
    .local v7, interpreterResultDbl:D
    move-object/from16 v11, v61

    move-object/from16 v9, v59

    .line 2251
    .end local v14           #iCode:[B
    .end local v17           #stack:[Ljava/lang/Object;
    .end local v18           #sDbl:[D
    .end local v19           #strings:[Ljava/lang/String;
    .end local v22           #varAttributes:[I
    .end local v23           #varDbls:[D
    .end local v24           #vars:[Ljava/lang/Object;
    .end local v30           #op:I
    .end local v59           #stringReg:Ljava/lang/String;
    .end local p2           #throwable:Ljava/lang/Object;
    .local v9, stringReg:Ljava/lang/String;
    :goto_8
    if-nez p2, :cond_b

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 2254
    :cond_b
    const/4 v5, 0x2

    .line 2255
    .local v5, EX_CATCH_STATE:I
    const/4 v5, 0x1

    .line 2256
    .local v5, EX_FINALLY_STATE:I
    const/4 v5, 0x0

    .line 2259
    .local v5, EX_NO_JS_STATE:I
    const/4 v5, 0x0

    .line 2261
    .local v5, cjump:Lorg/mozilla/javascript/Interpreter$ContinuationJump;
    if-eqz v55, :cond_65

    move-object/from16 v0, v55

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$GeneratorState;->operation:I

    move v6, v0

    const/4 v10, 0x2

    if-ne v6, v10, :cond_65

    move-object/from16 v0, v55

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$GeneratorState;->value:Ljava/lang/Object;

    move-object v6, v0

    move-object/from16 v0, p2

    move-object v1, v6

    if-ne v0, v1, :cond_65

    .line 2265
    const/4 v6, 0x1

    .line 2291
    .local v6, exState:I
    :goto_9
    if-eqz v56, :cond_8b

    .line 2293
    const/16 v10, 0x64

    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/Interpreter;->addInstructionCount(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_3

    move-object/from16 v10, p2

    move-object/from16 p2, v5

    .end local v5           #cjump:Lorg/mozilla/javascript/Interpreter$ContinuationJump;
    .local p2, cjump:Lorg/mozilla/javascript/Interpreter$ContinuationJump;
    move v5, v6

    .line 2305
    .end local v6           #exState:I
    .local v5, exState:I
    :goto_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    move-object v6, v0

    if-eqz v6, :cond_c

    instance-of v6, v10, Ljava/lang/RuntimeException;

    if-eqz v6, :cond_c

    .line 2309
    move-object v0, v10

    check-cast v0, Ljava/lang/RuntimeException;

    move-object v6, v0

    .line 2311
    .local v6, rex:Ljava/lang/RuntimeException;
    :try_start_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    move-object v12, v0

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/mozilla/javascript/debug/DebugFrame;->onExceptionThrown(Lorg/mozilla/javascript/Context;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    .line 2322
    .end local v6           #rex:Ljava/lang/RuntimeException;
    :cond_c
    :goto_b
    if-eqz v5, :cond_70

    .line 2323
    const/4 v6, 0x2

    if-eq v5, v6, :cond_6f

    const/4 v6, 0x1

    .line 2324
    .local v6, onlyFinally:Z
    :goto_c
    move-object/from16 v0, p1

    move v1, v6

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->getExceptionHandler(Lorg/mozilla/javascript/Interpreter$CallFrame;Z)I

    move-result v20

    .line 2325
    if-ltz v20, :cond_70

    move-wide/from16 v57, v7

    .end local v7           #interpreterResultDbl:D
    .restart local v57       #interpreterResultDbl:D
    move-object/from16 v61, v11

    move-object v5, v9

    .end local v9           #stringReg:Ljava/lang/String;
    .local v5, stringReg:Ljava/lang/String;
    move-object/from16 p2, v10

    .line 2329
    goto/16 :goto_2

    .line 1044
    .end local v5           #stringReg:Ljava/lang/String;
    .end local v6           #onlyFinally:Z
    .end local p2           #cjump:Lorg/mozilla/javascript/Interpreter$ContinuationJump;
    .local v9, stackTop:I
    .restart local v14       #iCode:[B
    .restart local v17       #stack:[Ljava/lang/Object;
    .restart local v18       #sDbl:[D
    .restart local v19       #strings:[Ljava/lang/String;
    .restart local v22       #varAttributes:[I
    .restart local v23       #varDbls:[D
    .restart local v24       #vars:[Ljava/lang/Object;
    .restart local v30       #op:I
    .restart local v59       #stringReg:Ljava/lang/String;
    :pswitch_3
    const/16 p2, 0x1

    :try_start_b
    move/from16 v0, p2

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    .line 1045
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    move-object v0, v14

    move/from16 v1, p2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v13

    .line 1046
    .local v13, sourceLine:I
    new-instance p2, Lorg/mozilla/javascript/JavaScriptException;

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v5, v0

    invoke-static {v5}, Lorg/mozilla/javascript/NativeIterator;->getStopIterationObject(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    move-object v6, v0

    iget-object v6, v6, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object v1, v5

    move-object v2, v6

    move v3, v13

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    move-object/from16 v0, p2

    move-object/from16 v1, v55

    iput-object v0, v1, Lorg/mozilla/javascript/Interpreter$GeneratorState;->returnedException:Ljava/lang/RuntimeException;

    move/from16 v29, v9

    .line 1049
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    goto/16 :goto_6

    .line 1052
    .end local v13           #sourceLine:I
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    :pswitch_4
    aget-object p2, v17, v9

    .line 1053
    .local p2, rhs:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_8a

    aget-wide v5, v18, v9

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .local p2, rhs:Ljava/lang/Number;
    move-object/from16 v5, p2

    .line 1054
    .end local p2           #rhs:Ljava/lang/Number;
    .local v5, rhs:Ljava/lang/Object;
    :goto_d
    add-int/lit8 v29, v9, -0x1

    .line 1055
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    aget-object p2, v17, v29

    check-cast p2, Lorg/mozilla/javascript/Scriptable;

    .line 1056
    .local p2, lhs:Lorg/mozilla/javascript/Scriptable;
    if-eqz p2, :cond_d

    .line 1057
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v6, v0

    move-object/from16 v0, p2

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v3, v6

    move-object/from16 v4, v59

    invoke-static {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .end local p2           #lhs:Lorg/mozilla/javascript/Scriptable;
    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 1059
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1061
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    .restart local p2       #lhs:Lorg/mozilla/javascript/Scriptable;
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 p2, v0

    .end local p2           #lhs:Lorg/mozilla/javascript/Scriptable;
    const-string v5, "ReferenceError"

    .end local v5           #rhs:Ljava/lang/Object;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v59, v6, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    aput-object p2, v17, v29

    .line 1066
    :goto_e
    aget-object p2, v17, v29

    .line 1067
    .local p2, value:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_89

    aget-wide v5, v18, v29

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .local p2, value:Ljava/lang/Number;
    move-object/from16 v5, p2

    .line 1068
    .end local p2           #value:Ljava/lang/Number;
    .local v5, value:Ljava/lang/Object;
    :goto_f
    add-int/lit8 v29, v29, -0x1

    .line 1070
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    move-object v0, v14

    move/from16 v1, p2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v13

    .line 1071
    .restart local v13       #sourceLine:I
    new-instance p2, Lorg/mozilla/javascript/JavaScriptException;

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    move-object v6, v0

    iget-object v6, v6, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object v1, v5

    move-object v2, v6

    move v3, v13

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    .local p2, throwable:Lorg/mozilla/javascript/JavaScriptException;
    move-wide/from16 v7, v57

    .end local v57           #interpreterResultDbl:D
    .restart local v7       #interpreterResultDbl:D
    move-object/from16 v11, v61

    move-object/from16 v9, v59

    .line 1074
    .end local v59           #stringReg:Ljava/lang/String;
    .local v9, stringReg:Ljava/lang/String;
    goto/16 :goto_8

    .line 1077
    .end local v5           #value:Ljava/lang/Object;
    .end local v7           #interpreterResultDbl:D
    .end local v13           #sourceLine:I
    .end local v29           #stackTop:I
    .end local p2           #throwable:Lorg/mozilla/javascript/JavaScriptException;
    .local v9, stackTop:I
    .restart local v57       #interpreterResultDbl:D
    .restart local v59       #stringReg:Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    move/from16 p2, v0

    add-int v20, v20, p2

    .line 1078
    aget-object p2, v17, v20

    .local p2, throwable:Ljava/lang/Object;
    move-wide/from16 v7, v57

    .end local v57           #interpreterResultDbl:D
    .restart local v7       #interpreterResultDbl:D
    move-object/from16 v11, v61

    move-object/from16 v9, v59

    .line 1079
    .end local v59           #stringReg:Ljava/lang/String;
    .local v9, stringReg:Ljava/lang/String;
    goto/16 :goto_8

    .line 1085
    .end local v7           #interpreterResultDbl:D
    .end local p2           #throwable:Ljava/lang/Object;
    .local v9, stackTop:I
    .restart local v57       #interpreterResultDbl:D
    .restart local v59       #stringReg:Ljava/lang/String;
    :pswitch_6
    add-int/lit8 v29, v9, -0x1

    .line 1086
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    add-int/lit8 p2, v29, 0x1

    aget-object v5, v17, p2

    .line 1087
    .local v5, rhs:Ljava/lang/Object;
    aget-object p2, v17, v29

    .line 1094
    .local p2, lhs:Ljava/lang/Object;
    move-object v0, v5

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_e

    .line 1095
    add-int/lit8 p2, v29, 0x1

    aget-wide v7, v18, p2

    .line 1096
    .end local p2           #lhs:Ljava/lang/Object;
    .local v7, rDbl:D
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D

    move-result-wide v5

    .line 1103
    .local v5, lDbl:D
    :goto_10
    packed-switch v30, :pswitch_data_1

    .line 1117
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 1097
    .end local v7           #rDbl:D
    .local v5, rhs:Ljava/lang/Object;
    .restart local p2       #lhs:Ljava/lang/Object;
    :cond_e
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_13

    .line 1098
    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v7

    .line 1099
    .restart local v7       #rDbl:D
    aget-wide v5, v18, v29

    .local v5, lDbl:D
    goto :goto_10

    .line 1105
    .end local p2           #lhs:Ljava/lang/Object;
    :pswitch_7
    cmpl-double p2, v5, v7

    if-ltz p2, :cond_f

    const/16 p2, 0x1

    .line 1137
    .end local v5           #lDbl:D
    .end local v7           #rDbl:D
    .local p2, valBln:Z
    :goto_11
    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p2

    .end local p2           #valBln:Z
    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 1138
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1105
    .end local v9           #stackTop:I
    .restart local v5       #lDbl:D
    .restart local v7       #rDbl:D
    .restart local v29       #stackTop:I
    :cond_f
    const/16 p2, 0x0

    goto :goto_11

    .line 1108
    :pswitch_8
    cmpg-double p2, v5, v7

    if-gtz p2, :cond_10

    const/16 p2, 0x1

    .line 1109
    .restart local p2       #valBln:Z
    :goto_12
    goto :goto_11

    .line 1108
    .end local p2           #valBln:Z
    :cond_10
    const/16 p2, 0x0

    goto :goto_12

    .line 1111
    :pswitch_9
    cmpl-double p2, v5, v7

    if-lez p2, :cond_11

    const/16 p2, 0x1

    .line 1112
    .restart local p2       #valBln:Z
    :goto_13
    goto :goto_11

    .line 1111
    .end local p2           #valBln:Z
    :cond_11
    const/16 p2, 0x0

    goto :goto_13

    .line 1114
    :pswitch_a
    cmpg-double p2, v5, v7

    if-gez p2, :cond_12

    const/16 p2, 0x1

    .line 1115
    .restart local p2       #valBln:Z
    :goto_14
    goto :goto_11

    .line 1114
    .end local p2           #valBln:Z
    :cond_12
    const/16 p2, 0x0

    goto :goto_14

    .line 1120
    .end local v7           #rDbl:D
    .local v5, rhs:Ljava/lang/Object;
    .local p2, lhs:Ljava/lang/Object;
    :cond_13
    packed-switch v30, :pswitch_data_2

    .line 1134
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p2

    .end local p2           #lhs:Ljava/lang/Object;
    throw p2

    .line 1122
    .restart local p2       #lhs:Ljava/lang/Object;
    :pswitch_b
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    .line 1123
    .local p2, valBln:Z
    goto :goto_11

    .line 1125
    .local p2, lhs:Ljava/lang/Object;
    :pswitch_c
    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    .line 1126
    .local p2, valBln:Z
    goto :goto_11

    .line 1128
    .local p2, lhs:Ljava/lang/Object;
    :pswitch_d
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LT(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    .line 1129
    .local p2, valBln:Z
    goto :goto_11

    .line 1131
    .local p2, lhs:Ljava/lang/Object;
    :pswitch_e
    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LT(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    .line 1132
    .local p2, valBln:Z
    goto :goto_11

    .line 1142
    .end local v5           #rhs:Ljava/lang/Object;
    .end local v29           #stackTop:I
    .end local p2           #valBln:Z
    .restart local v9       #stackTop:I
    :pswitch_f
    aget-object p2, v17, v9

    .line 1143
    .local p2, rhs:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_88

    aget-wide v5, v18, v9

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .local p2, rhs:Ljava/lang/Number;
    move-object/from16 v5, p2

    .line 1144
    .end local p2           #rhs:Ljava/lang/Number;
    .restart local v5       #rhs:Ljava/lang/Object;
    :goto_15
    add-int/lit8 v29, v9, -0x1

    .line 1145
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    aget-object p2, v17, v29

    .line 1146
    .local p2, lhs:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_14

    aget-wide v6, v18, v29

    invoke-static {v6, v7}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .line 1148
    .end local p2           #lhs:Ljava/lang/Object;
    :cond_14
    const/16 v6, 0x34

    move/from16 v0, v30

    move v1, v6

    if-ne v0, v1, :cond_15

    .line 1149
    move-object/from16 v0, p2

    move-object v1, v5

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->in(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z

    move-result p2

    .line 1153
    .local p2, valBln:Z
    :goto_16
    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p2

    .end local p2           #valBln:Z
    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 1154
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1151
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    :cond_15
    move-object/from16 v0, p2

    move-object v1, v5

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->instanceOf(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z

    move-result p2

    .restart local p2       #valBln:Z
    goto :goto_16

    .line 1158
    .end local v5           #rhs:Ljava/lang/Object;
    .end local v29           #stackTop:I
    .end local p2           #valBln:Z
    .restart local v9       #stackTop:I
    :pswitch_10
    add-int/lit8 v29, v9, -0x1

    .line 1160
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    add-int/lit8 p2, v29, 0x1

    aget-object v5, v17, p2

    .line 1161
    .restart local v5       #rhs:Ljava/lang/Object;
    aget-object p2, v17, v29

    .line 1162
    .local p2, lhs:Ljava/lang/Object;
    move-object v0, v5

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_18

    .line 1163
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_17

    .line 1164
    aget-wide v5, v18, v29

    .end local v5           #rhs:Ljava/lang/Object;
    add-int/lit8 p2, v29, 0x1

    aget-wide v7, v18, p2

    .end local p2           #lhs:Ljava/lang/Object;
    cmpl-double p2, v5, v7

    if-nez p2, :cond_16

    const/16 p2, 0x1

    .line 1175
    .local p2, valBln:Z
    :goto_17
    const/16 v5, 0xd

    move/from16 v0, v30

    move v1, v5

    if-ne v0, v1, :cond_1a

    const/4 v5, 0x1

    :goto_18
    xor-int p2, p2, v5

    .line 1176
    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p2

    .end local p2           #valBln:Z
    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 1177
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1164
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    :cond_16
    const/16 p2, 0x0

    goto :goto_17

    .line 1166
    .restart local v5       #rhs:Ljava/lang/Object;
    .local p2, lhs:Ljava/lang/Object;
    :cond_17
    add-int/lit8 v5, v29, 0x1

    aget-wide v5, v18, v5

    .end local v5           #rhs:Ljava/lang/Object;
    move-wide v0, v5

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->eqNumber(DLjava/lang/Object;)Z

    move-result p2

    .local p2, valBln:Z
    goto :goto_17

    .line 1169
    .restart local v5       #rhs:Ljava/lang/Object;
    .local p2, lhs:Ljava/lang/Object;
    :cond_18
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_19

    .line 1170
    aget-wide v6, v18, v29

    invoke-static {v6, v7, v5}, Lorg/mozilla/javascript/ScriptRuntime;->eqNumber(DLjava/lang/Object;)Z

    move-result p2

    .local p2, valBln:Z
    goto :goto_17

    .line 1172
    .local p2, lhs:Ljava/lang/Object;
    :cond_19
    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    .local p2, valBln:Z
    goto :goto_17

    .line 1175
    .end local v5           #rhs:Ljava/lang/Object;
    :cond_1a
    const/4 v5, 0x0

    goto :goto_18

    .line 1181
    .end local v29           #stackTop:I
    .end local p2           #valBln:Z
    .restart local v9       #stackTop:I
    :pswitch_11
    add-int/lit8 v29, v9, -0x1

    .line 1182
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/Interpreter;->shallowEquals([Ljava/lang/Object;[DI)Z

    move-result p2

    .line 1183
    .restart local p2       #valBln:Z
    const/16 v5, 0x2f

    move/from16 v0, v30

    move v1, v5

    if-ne v0, v1, :cond_1b

    const/4 v5, 0x1

    :goto_19
    xor-int p2, p2, v5

    .line 1184
    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p2

    .end local p2           #valBln:Z
    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 1185
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1183
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    .restart local p2       #valBln:Z
    :cond_1b
    const/4 v5, 0x0

    goto :goto_19

    .line 1188
    .end local v29           #stackTop:I
    .end local p2           #valBln:Z
    .restart local v9       #stackTop:I
    :pswitch_12
    add-int/lit8 v29, v9, -0x1

    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    move-object/from16 v0, p1

    move v1, v9

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 1189
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    add-int/lit8 p2, p2, 0x2

    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 v9, v29

    .line 1190
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1194
    :pswitch_13
    add-int/lit8 v29, v9, -0x1

    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    move-object/from16 v0, p1

    move v1, v9

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result p2

    if-nez p2, :cond_1d

    .line 1195
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    add-int/lit8 p2, p2, 0x2

    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 v9, v29

    .line 1196
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1200
    :pswitch_14
    add-int/lit8 v29, v9, -0x1

    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    move-object/from16 v0, p1

    move v1, v9

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result p2

    if-nez p2, :cond_1c

    .line 1201
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    add-int/lit8 p2, p2, 0x2

    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 v9, v29

    .line 1202
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1204
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    :cond_1c
    add-int/lit8 p2, v29, -0x1

    .end local v29           #stackTop:I
    .local p2, stackTop:I
    const/4 v5, 0x0

    aput-object v5, v17, v29

    move/from16 v29, p2

    .line 2205
    .end local p2           #stackTop:I
    .restart local v29       #stackTop:I
    :cond_1d
    :goto_1a
    if-eqz v56, :cond_1e

    .line 2206
    const/16 p2, 0x2

    invoke-static/range {p0 .. p2}, Lorg/mozilla/javascript/Interpreter;->addInstructionCount(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I)V

    .line 2208
    :cond_1e
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    move-object v0, v14

    move/from16 v1, p2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->getShort([BI)I

    move-result p2

    .line 2209
    .local p2, offset:I
    if-eqz p2, :cond_62

    .line 2211
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move v5, v0

    const/4 v6, 0x1

    sub-int p2, p2, v6

    add-int p2, p2, v5

    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .line 2216
    .end local p2           #offset:I
    :goto_1b
    if-eqz v56, :cond_79

    .line 2217
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    move/from16 v9, v29

    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    :pswitch_15
    move/from16 v29, v9

    .line 1207
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    goto :goto_1a

    .line 1209
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    :pswitch_16
    add-int/lit8 v29, v9, 0x1

    .line 1210
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    aput-object v54, v17, v29

    .line 1211
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    add-int/lit8 p2, p2, 0x2

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide v5, v0

    aput-wide v5, v18, v29

    goto :goto_1a

    .line 1214
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    :pswitch_17
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->emptyStackTop:I

    move/from16 p2, v0

    add-int/lit8 p2, p2, 0x1

    move v0, v9

    move/from16 v1, p2

    if-ne v0, v1, :cond_1f

    .line 1216
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    move/from16 p2, v0

    add-int v20, v20, p2

    .line 1217
    aget-object p2, v17, v9

    aput-object p2, v17, v20

    .line 1218
    aget-wide v5, v18, v9

    aput-wide v5, v18, v20

    .line 1219
    add-int/lit8 v29, v9, -0x1

    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    move/from16 v9, v29

    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1223
    :cond_1f
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->emptyStackTop:I

    move/from16 p2, v0

    move v0, v9

    move/from16 v1, p2

    if-eq v0, v1, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto/16 :goto_4

    .line 1228
    :pswitch_18
    if-eqz v56, :cond_20

    .line 1229
    const/16 p2, 0x0

    invoke-static/range {p0 .. p2}, Lorg/mozilla/javascript/Interpreter;->addInstructionCount(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I)V

    .line 1231
    :cond_20
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    move/from16 p2, v0

    add-int v20, v20, p2

    .line 1232
    aget-object p2, v17, v20

    .line 1233
    .local p2, value:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_21

    .line 1235
    move-object/from16 p2, p2

    .local p2, throwable:Ljava/lang/Object;
    move-wide/from16 v7, v57

    .end local v57           #interpreterResultDbl:D
    .local v7, interpreterResultDbl:D
    move-object/from16 v11, v61

    move-object/from16 v9, v59

    .line 1236
    .end local v59           #stringReg:Ljava/lang/String;
    .local v9, stringReg:Ljava/lang/String;
    goto/16 :goto_8

    .line 1239
    .end local v7           #interpreterResultDbl:D
    .local v9, stackTop:I
    .restart local v57       #interpreterResultDbl:D
    .restart local v59       #stringReg:Ljava/lang/String;
    .local p2, value:Ljava/lang/Object;
    :cond_21
    aget-wide v5, v18, v20

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 p2, v0

    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .line 1240
    .end local p2           #value:Ljava/lang/Object;
    if-eqz v56, :cond_2

    .line 1241
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    goto/16 :goto_4

    .line 1246
    :pswitch_19
    const/16 p2, 0x0

    aput-object p2, v17, v9

    .line 1247
    add-int/lit8 v29, v9, -0x1

    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    move/from16 v9, v29

    .line 1248
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1250
    :pswitch_1a
    aget-object p2, v17, v9

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    .line 1251
    aget-wide v5, v18, v9

    move-wide v0, v5

    move-object/from16 v2, p1

    iput-wide v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    .line 1252
    const/16 p2, 0x0

    aput-object p2, v17, v9

    .line 1253
    add-int/lit8 v29, v9, -0x1

    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    move/from16 v9, v29

    .line 1254
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1256
    :pswitch_1b
    add-int/lit8 p2, v9, 0x1

    aget-object v5, v17, v9

    aput-object v5, v17, p2

    .line 1257
    add-int/lit8 p2, v9, 0x1

    aget-wide v5, v18, v9

    aput-wide v5, v18, p2

    .line 1258
    add-int/lit8 v29, v9, 0x1

    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    move/from16 v9, v29

    .line 1259
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1261
    :pswitch_1c
    add-int/lit8 p2, v9, 0x1

    const/4 v5, 0x1

    sub-int v5, v9, v5

    aget-object v5, v17, v5

    aput-object v5, v17, p2

    .line 1262
    add-int/lit8 p2, v9, 0x1

    const/4 v5, 0x1

    sub-int v5, v9, v5

    aget-wide v5, v18, v5

    aput-wide v5, v18, p2

    .line 1263
    add-int/lit8 p2, v9, 0x2

    aget-object v5, v17, v9

    aput-object v5, v17, p2

    .line 1264
    add-int/lit8 p2, v9, 0x2

    aget-wide v5, v18, v9

    aput-wide v5, v18, p2

    .line 1265
    add-int/lit8 v29, v9, 0x2

    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    move/from16 v9, v29

    .line 1266
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1268
    :pswitch_1d
    aget-object p2, v17, v9

    .line 1269
    .local p2, o:Ljava/lang/Object;
    const/4 v5, 0x1

    sub-int v5, v9, v5

    aget-object v5, v17, v5

    aput-object v5, v17, v9

    .line 1270
    const/4 v5, 0x1

    sub-int v5, v9, v5

    aput-object p2, v17, v5

    .line 1271
    aget-wide v5, v18, v9

    .line 1272
    .local v5, d:D
    const/16 p2, 0x1

    sub-int p2, v9, p2

    aget-wide v7, v18, p2

    .end local p2           #o:Ljava/lang/Object;
    aput-wide v7, v18, v9

    .line 1273
    const/16 p2, 0x1

    sub-int p2, v9, p2

    aput-wide v5, v18, p2

    goto/16 :goto_4

    .line 1277
    .end local v5           #d:D
    :pswitch_1e
    aget-object p2, v17, v9

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    .line 1278
    aget-wide v5, v18, v9

    move-wide v0, v5

    move-object/from16 v2, p1

    iput-wide v0, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->resultDbl:D

    .line 1279
    add-int/lit8 v29, v9, -0x1

    .line 1280
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    goto/16 :goto_6

    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    :pswitch_1f
    move/from16 v29, v9

    .line 1282
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    goto/16 :goto_6

    .line 1284
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    :pswitch_20
    move-object/from16 v0, v60

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->result:Ljava/lang/Object;

    move/from16 v29, v9

    .line 1285
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    goto/16 :goto_6

    .line 1287
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    :pswitch_21
    move-object/from16 v0, p1

    move v1, v9

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->stack_int32(Lorg/mozilla/javascript/Interpreter$CallFrame;I)I

    move-result p2

    .line 1288
    .local p2, rIntValue:I
    aput-object v54, v17, v9

    .line 1289
    xor-int/lit8 p2, p2, -0x1

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide v5, v0

    aput-wide v5, v18, v9

    goto/16 :goto_4

    .line 1297
    .end local p2           #rIntValue:I
    :pswitch_22
    const/16 p2, 0x1

    sub-int p2, v9, p2

    invoke-static/range {p1 .. p2}, Lorg/mozilla/javascript/Interpreter;->stack_int32(Lorg/mozilla/javascript/Interpreter$CallFrame;I)I

    move-result p2

    .line 1298
    .local p2, lIntValue:I
    move-object/from16 v0, p1

    move v1, v9

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->stack_int32(Lorg/mozilla/javascript/Interpreter$CallFrame;I)I

    move-result v5

    .line 1299
    .local v5, rIntValue:I
    add-int/lit8 v29, v9, -0x1

    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    aput-object v54, v17, v29

    .line 1300
    packed-switch v30, :pswitch_data_3

    .line 1317
    :goto_1c
    :pswitch_23
    move/from16 v0, p2

    int-to-double v0, v0

    move-wide v5, v0

    aput-wide v5, v18, v29

    .end local v5           #rIntValue:I
    move/from16 v9, v29

    .line 1318
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1302
    .end local v9           #stackTop:I
    .restart local v5       #rIntValue:I
    .restart local v29       #stackTop:I
    :pswitch_24
    and-int p2, p2, v5

    .line 1303
    goto :goto_1c

    .line 1305
    :pswitch_25
    or-int p2, p2, v5

    .line 1306
    goto :goto_1c

    .line 1308
    :pswitch_26
    xor-int p2, p2, v5

    .line 1309
    goto :goto_1c

    .line 1311
    :pswitch_27
    shl-int p2, p2, v5

    .line 1312
    goto :goto_1c

    .line 1314
    :pswitch_28
    shr-int p2, p2, v5

    goto :goto_1c

    .line 1321
    .end local v5           #rIntValue:I
    .end local v29           #stackTop:I
    .end local p2           #lIntValue:I
    .restart local v9       #stackTop:I
    :pswitch_29
    const/16 p2, 0x1

    sub-int p2, v9, p2

    invoke-static/range {p1 .. p2}, Lorg/mozilla/javascript/Interpreter;->stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D

    move-result-wide v5

    .line 1322
    .local v5, lDbl:D
    move-object/from16 v0, p1

    move v1, v9

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->stack_int32(Lorg/mozilla/javascript/Interpreter$CallFrame;I)I

    move-result p2

    and-int/lit8 p2, p2, 0x1f

    .line 1323
    .local p2, rIntValue:I
    add-int/lit8 v29, v9, -0x1

    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    aput-object v54, v17, v29

    .line 1324
    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(D)J

    move-result-wide v5

    .end local v5           #lDbl:D
    ushr-long v5, v5, p2

    long-to-double v5, v5

    aput-wide v5, v18, v29

    move/from16 v9, v29

    .line 1325
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1329
    .end local p2           #rIntValue:I
    :pswitch_2a
    move-object/from16 v0, p1

    move v1, v9

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D

    move-result-wide v5

    .line 1330
    .local v5, rDbl:D
    aput-object v54, v17, v9

    .line 1331
    const/16 p2, 0x1d

    move/from16 v0, v30

    move/from16 v1, p2

    if-ne v0, v1, :cond_22

    .line 1332
    neg-double v5, v5

    .line 1334
    :cond_22
    aput-wide v5, v18, v9

    goto/16 :goto_4

    .line 1338
    .end local v5           #rDbl:D
    :pswitch_2b
    add-int/lit8 v29, v9, -0x1

    .line 1339
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v29

    move-object/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/Interpreter;->do_add([Ljava/lang/Object;[DILorg/mozilla/javascript/Context;)V

    move/from16 v9, v29

    .line 1340
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1345
    :pswitch_2c
    move-object/from16 v0, p1

    move v1, v9

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D

    move-result-wide v7

    .line 1346
    .local v7, rDbl:D
    add-int/lit8 v29, v9, -0x1

    .line 1347
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D

    move-result-wide v5

    .line 1348
    .local v5, lDbl:D
    aput-object v54, v17, v29

    .line 1349
    packed-switch v30, :pswitch_data_4

    .line 1363
    :goto_1d
    aput-wide v5, v18, v29

    move/from16 v9, v29

    .line 1364
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1351
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    :pswitch_2d
    sub-double/2addr v5, v7

    .line 1352
    goto :goto_1d

    .line 1354
    :pswitch_2e
    mul-double/2addr v5, v7

    .line 1355
    goto :goto_1d

    .line 1357
    :pswitch_2f
    div-double/2addr v5, v7

    .line 1358
    goto :goto_1d

    .line 1360
    :pswitch_30
    rem-double/2addr v5, v7

    goto :goto_1d

    .line 1367
    .end local v5           #lDbl:D
    .end local v7           #rDbl:D
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    :pswitch_31
    move-object/from16 v0, p1

    move v1, v9

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result p2

    if-nez p2, :cond_23

    const/16 p2, 0x1

    :goto_1e
    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v17, v9

    goto/16 :goto_4

    :cond_23
    const/16 p2, 0x0

    goto :goto_1e

    .line 1371
    :pswitch_32
    add-int/lit8 v29, v9, 0x1

    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 p2, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v59

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 1372
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1374
    :pswitch_33
    aget-object p2, v17, v9

    .line 1375
    .local p2, rhs:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_87

    aget-wide v5, v18, v9

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .local p2, rhs:Ljava/lang/Number;
    move-object/from16 v5, p2

    .line 1376
    .end local p2           #rhs:Ljava/lang/Number;
    .local v5, rhs:Ljava/lang/Object;
    :goto_1f
    add-int/lit8 v29, v9, -0x1

    .line 1377
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    aget-object p2, v17, v29

    check-cast p2, Lorg/mozilla/javascript/Scriptable;

    .line 1378
    .local p2, lhs:Lorg/mozilla/javascript/Scriptable;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v6, v0

    move-object/from16 v0, p2

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v3, v6

    move-object/from16 v4, v59

    invoke-static {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .end local p2           #lhs:Lorg/mozilla/javascript/Scriptable;
    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 1380
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1383
    .end local v5           #rhs:Ljava/lang/Object;
    :pswitch_34
    aget-object p2, v17, v9

    .line 1384
    .local p2, rhs:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_86

    aget-wide v5, v18, v9

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .local p2, rhs:Ljava/lang/Number;
    move-object/from16 v5, p2

    .line 1385
    .end local p2           #rhs:Ljava/lang/Number;
    .restart local v5       #rhs:Ljava/lang/Object;
    :goto_20
    add-int/lit8 v29, v9, -0x1

    .line 1386
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    aget-object p2, v17, v29

    check-cast p2, Lorg/mozilla/javascript/Scriptable;

    .line 1387
    .local p2, lhs:Lorg/mozilla/javascript/Scriptable;
    move-object/from16 v0, p2

    move-object v1, v5

    move-object/from16 v2, p0

    move-object/from16 v3, v59

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->setConst(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .end local p2           #lhs:Lorg/mozilla/javascript/Scriptable;
    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 1388
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1391
    .end local v5           #rhs:Ljava/lang/Object;
    :pswitch_35
    aget-object p2, v17, v9

    .line 1392
    .local p2, rhs:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_85

    aget-wide v5, v18, v9

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .local p2, rhs:Ljava/lang/Number;
    move-object/from16 v5, p2

    .line 1393
    .end local p2           #rhs:Ljava/lang/Number;
    .restart local v5       #rhs:Ljava/lang/Object;
    :goto_21
    add-int/lit8 v29, v9, -0x1

    .line 1394
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    aget-object p2, v17, v29

    .line 1395
    .local p2, lhs:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_24

    aget-wide v6, v18, v29

    invoke-static {v6, v7}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .line 1396
    .end local p2           #lhs:Ljava/lang/Object;
    :cond_24
    move-object/from16 v0, p2

    move-object v1, v5

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->delete(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 1397
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1400
    .end local v5           #rhs:Ljava/lang/Object;
    :pswitch_36
    aget-object p2, v17, v9

    .line 1401
    .restart local p2       #lhs:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_25

    aget-wide v5, v18, v9

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .line 1402
    .end local p2           #lhs:Ljava/lang/Object;
    :cond_25
    move-object/from16 v0, p2

    move-object/from16 v1, v59

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectPropNoWarn(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v17, v9

    goto/16 :goto_4

    .line 1406
    :pswitch_37
    aget-object p2, v17, v9

    .line 1407
    .restart local p2       #lhs:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_26

    aget-wide v5, v18, v9

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .line 1408
    .end local p2           #lhs:Ljava/lang/Object;
    :cond_26
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v5, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v59

    move-object/from16 v2, p0

    move-object v3, v5

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v17, v9

    goto/16 :goto_4

    .line 1412
    :pswitch_38
    aget-object p2, v17, v9

    .line 1413
    .local p2, rhs:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_84

    aget-wide v5, v18, v9

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .local p2, rhs:Ljava/lang/Number;
    move-object/from16 v5, p2

    .line 1414
    .end local p2           #rhs:Ljava/lang/Number;
    .restart local v5       #rhs:Ljava/lang/Object;
    :goto_22
    add-int/lit8 v29, v9, -0x1

    .line 1415
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    aget-object p2, v17, v29

    .line 1416
    .local p2, lhs:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_27

    aget-wide v6, v18, v29

    invoke-static {v6, v7}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .line 1417
    .end local p2           #lhs:Ljava/lang/Object;
    :cond_27
    move-object/from16 v0, p2

    move-object/from16 v1, v59

    move-object v2, v5

    move-object/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 1419
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1422
    .end local v5           #rhs:Ljava/lang/Object;
    :pswitch_39
    aget-object p2, v17, v9

    .line 1423
    .restart local p2       #lhs:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_28

    aget-wide v5, v18, v9

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .line 1424
    .end local p2           #lhs:Ljava/lang/Object;
    :cond_28
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move v5, v0

    aget-byte v5, v14, v5

    move-object/from16 v0, p2

    move-object/from16 v1, v59

    move-object/from16 v2, p0

    move v3, v5

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->propIncrDecr(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v17, v9

    .line 1426
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    add-int/lit8 p2, p2, 0x1

    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_4

    .line 1430
    :pswitch_3a
    add-int/lit8 v29, v9, -0x1

    .line 1431
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    aget-object p2, v17, v29

    .line 1432
    .restart local p2       #lhs:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_83

    .line 1433
    aget-wide v5, v18, v29

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .local p2, lhs:Ljava/lang/Number;
    move-object/from16 v7, p2

    .line 1436
    .end local p2           #lhs:Ljava/lang/Number;
    .local v7, lhs:Ljava/lang/Object;
    :goto_23
    add-int/lit8 p2, v29, 0x1

    aget-object p2, v17, p2

    .line 1437
    .local p2, id:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_29

    .line 1438
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v5, v0

    move-object v0, v7

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move-object v3, v5

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectElem(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    .line 1443
    .local p2, value:Ljava/lang/Object;
    :goto_24
    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 1444
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1440
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    .local p2, id:Ljava/lang/Object;
    :cond_29
    add-int/lit8 p2, v29, 0x1

    aget-wide v5, v18, p2

    .line 1441
    .end local p2           #id:Ljava/lang/Object;
    .local v5, d:D
    move-object v0, v7

    move-wide v1, v5

    move-object/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectIndex(Ljava/lang/Object;DLorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p2

    .local p2, value:Ljava/lang/Object;
    goto :goto_24

    .line 1447
    .end local v5           #d:D
    .end local v7           #lhs:Ljava/lang/Object;
    .end local v29           #stackTop:I
    .end local p2           #value:Ljava/lang/Object;
    .restart local v9       #stackTop:I
    :pswitch_3b
    add-int/lit8 v29, v9, -0x2

    .line 1448
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    add-int/lit8 p2, v29, 0x2

    aget-object p2, v17, p2

    .line 1449
    .local p2, rhs:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_82

    .line 1450
    add-int/lit8 p2, v29, 0x2

    aget-wide v5, v18, p2

    .end local p2           #rhs:Ljava/lang/Object;
    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .local p2, rhs:Ljava/lang/Number;
    move-object/from16 v8, p2

    .line 1452
    .end local p2           #rhs:Ljava/lang/Number;
    .local v8, rhs:Ljava/lang/Object;
    :goto_25
    aget-object p2, v17, v29

    .line 1453
    .local p2, lhs:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_81

    .line 1454
    aget-wide v5, v18, v29

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .local p2, lhs:Ljava/lang/Number;
    move-object/from16 v7, p2

    .line 1457
    .end local p2           #lhs:Ljava/lang/Number;
    .restart local v7       #lhs:Ljava/lang/Object;
    :goto_26
    add-int/lit8 p2, v29, 0x1

    aget-object p2, v17, p2

    .line 1458
    .local p2, id:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_2a

    .line 1459
    move-object v0, v7

    move-object/from16 v1, p2

    move-object v2, v8

    move-object/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectElem(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p2

    .line 1464
    .local p2, value:Ljava/lang/Object;
    :goto_27
    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 1465
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1461
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    .local p2, id:Ljava/lang/Object;
    :cond_2a
    add-int/lit8 p2, v29, 0x1

    aget-wide v5, v18, p2

    .line 1462
    .end local p2           #id:Ljava/lang/Object;
    .restart local v5       #d:D
    move-object v0, v7

    move-wide v1, v5

    move-object v3, v8

    move-object/from16 v4, p0

    invoke-static {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectIndex(Ljava/lang/Object;DLjava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p2

    .local p2, value:Ljava/lang/Object;
    goto :goto_27

    .line 1468
    .end local v5           #d:D
    .end local v7           #lhs:Ljava/lang/Object;
    .end local v8           #rhs:Ljava/lang/Object;
    .end local v29           #stackTop:I
    .end local p2           #value:Ljava/lang/Object;
    .restart local v9       #stackTop:I
    :pswitch_3c
    aget-object p2, v17, v9

    .line 1469
    .local p2, rhs:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_80

    aget-wide v5, v18, v9

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .local p2, rhs:Ljava/lang/Number;
    move-object/from16 v5, p2

    .line 1470
    .end local p2           #rhs:Ljava/lang/Number;
    .local v5, rhs:Ljava/lang/Object;
    :goto_28
    add-int/lit8 v29, v9, -0x1

    .line 1471
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    aget-object p2, v17, v29

    .line 1472
    .local p2, lhs:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_2b

    aget-wide v6, v18, v29

    invoke-static {v6, v7}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .line 1473
    .end local p2           #lhs:Ljava/lang/Object;
    :cond_2b
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move v6, v0

    aget-byte v6, v14, v6

    move-object/from16 v0, p2

    move-object v1, v5

    move-object/from16 v2, p0

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->elemIncrDecr(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v17, v29

    .line 1475
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    add-int/lit8 p2, p2, 0x1

    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 v9, v29

    .line 1476
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1479
    .end local v5           #rhs:Ljava/lang/Object;
    :pswitch_3d
    aget-object p2, v17, v9

    check-cast p2, Lorg/mozilla/javascript/Ref;

    .line 1480
    .local p2, ref:Lorg/mozilla/javascript/Ref;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->refGet(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p2

    .end local p2           #ref:Lorg/mozilla/javascript/Ref;
    aput-object p2, v17, v9

    goto/16 :goto_4

    .line 1484
    :pswitch_3e
    aget-object p2, v17, v9

    .line 1485
    .local p2, value:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_7f

    aget-wide v5, v18, v9

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .local p2, value:Ljava/lang/Number;
    move-object/from16 v5, p2

    .line 1486
    .end local p2           #value:Ljava/lang/Number;
    .local v5, value:Ljava/lang/Object;
    :goto_29
    add-int/lit8 v29, v9, -0x1

    .line 1487
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    aget-object p2, v17, v29

    check-cast p2, Lorg/mozilla/javascript/Ref;

    .line 1488
    .local p2, ref:Lorg/mozilla/javascript/Ref;
    move-object/from16 v0, p2

    move-object v1, v5

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->refSet(Lorg/mozilla/javascript/Ref;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p2

    .end local p2           #ref:Lorg/mozilla/javascript/Ref;
    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 1489
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1492
    .end local v5           #value:Ljava/lang/Object;
    :pswitch_3f
    aget-object p2, v17, v9

    check-cast p2, Lorg/mozilla/javascript/Ref;

    .line 1493
    .restart local p2       #ref:Lorg/mozilla/javascript/Ref;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->refDel(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p2

    .end local p2           #ref:Lorg/mozilla/javascript/Ref;
    aput-object p2, v17, v9

    goto/16 :goto_4

    .line 1497
    :pswitch_40
    aget-object p2, v17, v9

    check-cast p2, Lorg/mozilla/javascript/Ref;

    .line 1498
    .restart local p2       #ref:Lorg/mozilla/javascript/Ref;
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move v5, v0

    aget-byte v5, v14, v5

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move v2, v5

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->refIncrDecr(Lorg/mozilla/javascript/Ref;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    move-result-object p2

    .end local p2           #ref:Lorg/mozilla/javascript/Ref;
    aput-object p2, v17, v9

    .line 1499
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    add-int/lit8 p2, p2, 0x1

    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_4

    .line 1503
    :pswitch_41
    add-int/lit8 v29, v9, 0x1

    .line 1504
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    move/from16 p2, v0

    add-int v20, v20, p2

    .line 1505
    aget-object p2, v17, v20

    aput-object p2, v17, v29

    .line 1506
    aget-wide v5, v18, v20

    aput-wide v5, v18, v29

    move/from16 v9, v29

    .line 1507
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1509
    :pswitch_42
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    move/from16 p2, v0

    add-int v20, v20, p2

    .line 1510
    const/16 p2, 0x0

    aput-object p2, v17, v20

    goto/16 :goto_4

    .line 1514
    :pswitch_43
    add-int/lit8 v29, v9, 0x1

    .line 1515
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 p2, v0

    move-object/from16 v0, v59

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->getNameFunctionAndThis(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p2

    aput-object p2, v17, v29

    .line 1517
    add-int/lit8 v29, v29, 0x1

    .line 1518
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 1519
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1521
    :pswitch_44
    aget-object p2, v17, v9

    .line 1522
    .local p2, obj:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_2c

    aget-wide v5, v18, v9

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .line 1524
    .end local p2           #obj:Ljava/lang/Object;
    :cond_2c
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v5, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v59

    move-object/from16 v2, p0

    move-object v3, v5

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p2

    aput-object p2, v17, v9

    .line 1526
    add-int/lit8 v29, v9, 0x1

    .line 1527
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 1528
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1531
    :pswitch_45
    const/16 p2, 0x1

    sub-int p2, v9, p2

    aget-object p2, v17, p2

    .line 1532
    .restart local p2       #obj:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_7e

    const/16 p2, 0x1

    sub-int p2, v9, p2

    aget-wide v5, v18, p2

    .end local p2           #obj:Ljava/lang/Object;
    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .local p2, obj:Ljava/lang/Number;
    move-object/from16 v5, p2

    .line 1533
    .end local p2           #obj:Ljava/lang/Number;
    .local v5, obj:Ljava/lang/Object;
    :goto_2a
    aget-object p2, v17, v9

    .line 1534
    .local p2, id:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_2d

    aget-wide v6, v18, v9

    invoke-static {v6, v7}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .line 1535
    .end local p2           #id:Ljava/lang/Object;
    :cond_2d
    const/4 v6, 0x1

    sub-int v6, v9, v6

    move-object v0, v5

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->getElemFunctionAndThis(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;

    move-result-object p2

    aput-object p2, v17, v6

    .line 1536
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    aput-object p2, v17, v9

    goto/16 :goto_4

    .line 1540
    .end local v5           #obj:Ljava/lang/Object;
    :pswitch_46
    aget-object p2, v17, v9

    .line 1541
    .local p2, value:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_2e

    aget-wide v5, v18, v9

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .line 1542
    .end local p2           #value:Ljava/lang/Object;
    :cond_2e
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->getValueFunctionAndThis(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;

    move-result-object p2

    aput-object p2, v17, v9

    .line 1543
    add-int/lit8 v29, v9, 0x1

    .line 1544
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 1545
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1548
    :pswitch_47
    if-eqz v56, :cond_2f

    .line 1549
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/Context;->instructionCount:I

    move/from16 p2, v0

    add-int/lit8 p2, p2, 0x64

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/Context;->instructionCount:I

    .line 1551
    :cond_2f
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    aget-byte p2, v14, p2

    move/from16 v0, p2

    and-int/lit16 v0, v0, 0xff

    move v11, v0

    .line 1552
    .local v11, callType:I
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    add-int/lit8 p2, p2, 0x1

    aget-byte p2, v14, p2

    if-eqz p2, :cond_31

    const/16 p2, 0x1

    .line 1553
    .local p2, isNew:Z
    :goto_2b
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move v5, v0

    add-int/lit8 v5, v5, 0x2

    invoke-static {v14, v5}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v13

    .line 1556
    .restart local v13       #sourceLine:I
    if-eqz p2, :cond_32

    .line 1558
    sub-int v29, v9, v20

    .line 1560
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    aget-object v6, v17, v29

    .line 1561
    .local v6, function:Ljava/lang/Object;
    move-object v0, v6

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_30

    .line 1562
    aget-wide v5, v18, v29

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v6

    .line 1563
    .end local v6           #function:Ljava/lang/Object;
    :cond_30
    add-int/lit8 p2, v29, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, p2

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    .end local p2           #isNew:Z
    move-result-object v8

    .line 1565
    .local v8, outArgs:[Ljava/lang/Object;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 p2, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v8

    move-object/from16 v3, p2

    move v4, v11

    invoke-static {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->newSpecial(Lorg/mozilla/javascript/Context;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v17, v29

    .line 1582
    :goto_2c
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    add-int/lit8 p2, p2, 0x4

    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 v9, v29

    .line 1583
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1552
    .end local v8           #outArgs:[Ljava/lang/Object;
    .end local v13           #sourceLine:I
    :cond_31
    const/16 p2, 0x0

    goto :goto_2b

    .line 1569
    .restart local v13       #sourceLine:I
    .restart local p2       #isNew:Z
    :cond_32
    add-int/lit8 p2, v20, 0x1

    sub-int v29, v9, p2

    .line 1573
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    add-int/lit8 p2, v29, 0x1

    aget-object v7, v17, p2

    .end local p2           #isNew:Z
    check-cast v7, Lorg/mozilla/javascript/Scriptable;

    .line 1574
    .local v7, functionThis:Lorg/mozilla/javascript/Scriptable;
    aget-object v6, v17, v29

    check-cast v6, Lorg/mozilla/javascript/Callable;

    .line 1575
    .local v6, function:Lorg/mozilla/javascript/Callable;
    add-int/lit8 p2, v29, 0x2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, p2

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v8

    .line 1577
    .restart local v8       #outArgs:[Ljava/lang/Object;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v9, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    move-object v10, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    move-object/from16 p2, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v13}, Lorg/mozilla/javascript/ScriptRuntime;->callSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;ILjava/lang/String;I)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v17, v29

    goto :goto_2c

    .line 1588
    .end local v6           #function:Lorg/mozilla/javascript/Callable;
    .end local v7           #functionThis:Lorg/mozilla/javascript/Scriptable;
    .end local v8           #outArgs:[Ljava/lang/Object;
    .end local v11           #callType:I
    .end local v13           #sourceLine:I
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    :pswitch_48
    if-eqz v56, :cond_33

    .line 1589
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/Context;->instructionCount:I

    move/from16 p2, v0

    add-int/lit8 p2, p2, 0x64

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/Context;->instructionCount:I

    .line 1593
    :cond_33
    add-int/lit8 p2, v20, 0x1

    sub-int v29, v9, p2

    .line 1597
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    aget-object v5, v17, v29

    check-cast v5, Lorg/mozilla/javascript/Callable;

    .line 1598
    .local v5, fun:Lorg/mozilla/javascript/Callable;
    add-int/lit8 p2, v29, 0x1

    aget-object v16, v17, p2

    check-cast v16, Lorg/mozilla/javascript/Scriptable;

    .line 1599
    .local v16, funThisObj:Lorg/mozilla/javascript/Scriptable;
    const/16 p2, 0x46

    move/from16 v0, v30

    move/from16 v1, p2

    if-ne v0, v1, :cond_34

    .line 1600
    add-int/lit8 p2, v29, 0x2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, p2

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v8

    .line 1602
    .restart local v8       #outArgs:[Ljava/lang/Object;
    move-object v0, v5

    move-object/from16 v1, v16

    move-object v2, v8

    move-object/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->callRef(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Ref;

    move-result-object p2

    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 1604
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1606
    .end local v8           #outArgs:[Ljava/lang/Object;
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    :cond_34
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v15, v0

    .line 1607
    .local v15, calleeScope:Lorg/mozilla/javascript/Scriptable;
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    move/from16 p2, v0

    if-eqz p2, :cond_35

    .line 1608
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 p2, v0

    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v15

    .line 1610
    :cond_35
    move-object v0, v5

    instance-of v0, v0, Lorg/mozilla/javascript/InterpretedFunction;

    move/from16 p2, v0

    if-eqz p2, :cond_38

    .line 1611
    move-object v0, v5

    check-cast v0, Lorg/mozilla/javascript/InterpretedFunction;

    move-object/from16 v21, v0

    .line 1612
    .local v21, ifun:Lorg/mozilla/javascript/InterpretedFunction;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    move-object/from16 p2, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    move-object/from16 p2, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    move-object v6, v0

    move-object/from16 v0, p2

    move-object v1, v6

    if-ne v0, v1, :cond_38

    .line 1613
    move-object/from16 v22, p1

    .line 1614
    .local v22, callParentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    new-instance v23, Lorg/mozilla/javascript/Interpreter$CallFrame;

    .end local v23           #varDbls:[D
    const/16 p2, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Interpreter$CallFrame;-><init>(Lorg/mozilla/javascript/Interpreter$1;)V

    .line 1615
    .local v23, calleeFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    const/16 p2, -0x37

    move/from16 v0, v30

    move/from16 v1, p2

    if-ne v0, v1, :cond_36

    .line 1631
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-object/from16 v22, v0

    .line 1634
    const/16 p2, 0x0

    invoke-static/range {p0 .. p2}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    .line 1636
    :cond_36
    add-int/lit8 v19, v29, 0x2

    move-object/from16 v14, p0

    invoke-static/range {v14 .. v23}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    .line 1639
    .end local v14           #iCode:[B
    .end local v19           #strings:[Ljava/lang/String;
    const/16 p2, -0x37

    move/from16 v0, v30

    move/from16 v1, p2

    if-eq v0, v1, :cond_37

    .line 1640
    move/from16 v0, v29

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    .line 1641
    move/from16 v0, v30

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    .line 1643
    :cond_37
    move-object/from16 p1, v23

    move-object/from16 v5, v59

    .end local v59           #stringReg:Ljava/lang/String;
    .local v5, stringReg:Ljava/lang/String;
    move-object/from16 p2, v62

    .line 1644
    goto/16 :goto_2

    .line 1648
    .end local v21           #ifun:Lorg/mozilla/javascript/InterpretedFunction;
    .local v5, fun:Lorg/mozilla/javascript/Callable;
    .restart local v14       #iCode:[B
    .restart local v19       #strings:[Ljava/lang/String;
    .local v22, varAttributes:[I
    .local v23, varDbls:[D
    .restart local v59       #stringReg:Ljava/lang/String;
    :cond_38
    move-object v0, v5

    instance-of v0, v0, Lorg/mozilla/javascript/NativeContinuation;

    move/from16 p2, v0

    if-eqz p2, :cond_3a

    .line 1651
    new-instance p2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    check-cast v5, Lorg/mozilla/javascript/NativeContinuation;

    .end local v5           #fun:Lorg/mozilla/javascript/Callable;
    move-object/from16 v0, p2

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Interpreter$ContinuationJump;-><init>(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    .line 1655
    .local p2, cjump:Lorg/mozilla/javascript/Interpreter$ContinuationJump;
    if-nez v20, :cond_39

    .line 1656
    move-object/from16 v0, v60

    move-object/from16 v1, p2

    iput-object v0, v1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    .line 1663
    :goto_2d
    move-object/from16 p2, p2

    .local p2, throwable:Lorg/mozilla/javascript/Interpreter$ContinuationJump;
    move-wide/from16 v7, v57

    .end local v57           #interpreterResultDbl:D
    .local v7, interpreterResultDbl:D
    move-object/from16 v11, v61

    move-object/from16 v9, v59

    .line 1664
    .end local v59           #stringReg:Ljava/lang/String;
    .local v9, stringReg:Ljava/lang/String;
    goto/16 :goto_8

    .line 1658
    .end local v7           #interpreterResultDbl:D
    .end local v9           #stringReg:Ljava/lang/String;
    .restart local v57       #interpreterResultDbl:D
    .restart local v59       #stringReg:Ljava/lang/String;
    .local p2, cjump:Lorg/mozilla/javascript/Interpreter$ContinuationJump;
    :cond_39
    add-int/lit8 v5, v29, 0x2

    aget-object v5, v17, v5

    move-object v0, v5

    move-object/from16 v1, p2

    iput-object v0, v1, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    .line 1659
    add-int/lit8 v5, v29, 0x2

    aget-wide v5, v18, v5

    move-wide v0, v5

    move-object/from16 v2, p2

    iput-wide v0, v2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->resultDbl:D

    goto :goto_2d

    .line 1667
    .end local p2           #cjump:Lorg/mozilla/javascript/Interpreter$ContinuationJump;
    .restart local v5       #fun:Lorg/mozilla/javascript/Callable;
    :cond_3a
    move-object v0, v5

    instance-of v0, v0, Lorg/mozilla/javascript/IdFunctionObject;

    move/from16 p2, v0

    if-eqz p2, :cond_3c

    .line 1668
    move-object v0, v5

    check-cast v0, Lorg/mozilla/javascript/IdFunctionObject;

    move-object/from16 v21, v0

    .line 1669
    .local v21, ifun:Lorg/mozilla/javascript/IdFunctionObject;
    invoke-static/range {v21 .. v21}, Lorg/mozilla/javascript/NativeContinuation;->isContinuationConstructor(Lorg/mozilla/javascript/IdFunctionObject;)Z

    move-result p2

    if-eqz p2, :cond_3b

    .line 1670
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    move-object/from16 p2, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-object v5, v0

    .end local v5           #fun:Lorg/mozilla/javascript/Callable;
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/Interpreter;->captureContinuation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Z)Lorg/mozilla/javascript/NativeContinuation;

    move-result-object v5

    aput-object v5, p2, v29

    move/from16 v9, v29

    .line 1672
    .end local v29           #stackTop:I
    .local v9, stackTop:I
    goto/16 :goto_4

    .line 1676
    .end local v9           #stackTop:I
    .restart local v5       #fun:Lorg/mozilla/javascript/Callable;
    .restart local v29       #stackTop:I
    :cond_3b
    invoke-static/range {v21 .. v21}, Lorg/mozilla/javascript/BaseFunction;->isApplyOrCall(Lorg/mozilla/javascript/IdFunctionObject;)Z

    move-result p2

    if-eqz p2, :cond_3c

    .line 1677
    invoke-static/range {v16 .. v16}, Lorg/mozilla/javascript/ScriptRuntime;->getCallable(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p2

    .line 1678
    .local p2, applyCallable:Lorg/mozilla/javascript/Callable;
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/mozilla/javascript/InterpretedFunction;

    move v6, v0

    if-eqz v6, :cond_3c

    .line 1679
    move-object/from16 v0, p2

    check-cast v0, Lorg/mozilla/javascript/InterpretedFunction;

    move-object/from16 v33, v0

    .line 1680
    .local v33, iApplyCallable:Lorg/mozilla/javascript/InterpretedFunction;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    move-object/from16 p2, v0

    .end local p2           #applyCallable:Lorg/mozilla/javascript/Callable;
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    move-object/from16 p2, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    move-object v6, v0

    move-object/from16 v0, p2

    move-object v1, v6

    if-ne v0, v1, :cond_3c

    move-object/from16 v24, p0

    move-object/from16 v25, p1

    move/from16 v26, v20

    move-object/from16 v27, v17

    move-object/from16 v28, v18

    move-object/from16 v31, v15

    move-object/from16 v32, v21

    .line 1681
    invoke-static/range {v24 .. v33}, Lorg/mozilla/javascript/Interpreter;->initFrameForApplyOrCall(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DIILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/InterpretedFunction;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    .end local v24           #vars:[Ljava/lang/Object;
    move-result-object p1

    move-object/from16 v5, v59

    .end local v59           #stringReg:Ljava/lang/String;
    .local v5, stringReg:Ljava/lang/String;
    move-object/from16 p2, v62

    .line 1684
    goto/16 :goto_2

    .line 1692
    .end local v21           #ifun:Lorg/mozilla/javascript/IdFunctionObject;
    .end local v33           #iApplyCallable:Lorg/mozilla/javascript/InterpretedFunction;
    .local v5, fun:Lorg/mozilla/javascript/Callable;
    .restart local v24       #vars:[Ljava/lang/Object;
    .restart local v59       #stringReg:Ljava/lang/String;
    :cond_3c
    move-object v0, v5

    instance-of v0, v0, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;

    move/from16 p2, v0

    if-eqz p2, :cond_3d

    .line 1694
    move-object v0, v5

    check-cast v0, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;

    move-object/from16 v43, v0

    .line 1695
    .local v43, noSuchMethodShim:Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;
    move-object/from16 v0, v43

    iget-object v0, v0, Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;->noSuchMethodMethod:Lorg/mozilla/javascript/Callable;

    move-object/from16 p2, v0

    .line 1697
    .local p2, noSuchMethodMethod:Lorg/mozilla/javascript/Callable;
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/mozilla/javascript/InterpretedFunction;

    move v6, v0

    if-eqz v6, :cond_3d

    .line 1698
    move-object/from16 v0, p2

    check-cast v0, Lorg/mozilla/javascript/InterpretedFunction;

    move-object/from16 v21, v0

    .line 1699
    .local v21, ifun:Lorg/mozilla/javascript/InterpretedFunction;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    move-object/from16 p2, v0

    .end local p2           #noSuchMethodMethod:Lorg/mozilla/javascript/Callable;
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    move-object/from16 p2, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    move-object v6, v0

    move-object/from16 v0, p2

    move-object v1, v6

    if-ne v0, v1, :cond_3d

    move-object/from16 v34, p0

    move-object/from16 v35, p1

    move/from16 v36, v20

    move-object/from16 v37, v17

    move-object/from16 v38, v18

    move/from16 v39, v29

    move/from16 v40, v30

    move-object/from16 v41, v16

    move-object/from16 v42, v15

    move-object/from16 v44, v21

    .line 1700
    invoke-static/range {v34 .. v44}, Lorg/mozilla/javascript/Interpreter;->initFrameForNoSuchMethod(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;I[Ljava/lang/Object;[DIILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;Lorg/mozilla/javascript/InterpretedFunction;)Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object p1

    move-object/from16 v5, v59

    .end local v59           #stringReg:Ljava/lang/String;
    .local v5, stringReg:Ljava/lang/String;
    move-object/from16 p2, v62

    .line 1703
    goto/16 :goto_2

    .line 1708
    .end local v21           #ifun:Lorg/mozilla/javascript/InterpretedFunction;
    .end local v43           #noSuchMethodShim:Lorg/mozilla/javascript/ScriptRuntime$NoSuchMethodShim;
    .local v5, fun:Lorg/mozilla/javascript/Callable;
    .restart local v59       #stringReg:Ljava/lang/String;
    :cond_3d
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    .line 1709
    move/from16 v0, v30

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    .line 1710
    move/from16 v0, v29

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    .line 1711
    add-int/lit8 p2, v29, 0x2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, p2

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object p2

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, p2

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 1714
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1717
    .end local v5           #fun:Lorg/mozilla/javascript/Callable;
    .end local v15           #calleeScope:Lorg/mozilla/javascript/Scriptable;
    .end local v16           #funThisObj:Lorg/mozilla/javascript/Scriptable;
    :pswitch_49
    if-eqz v56, :cond_3e

    .line 1718
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/Context;->instructionCount:I

    move/from16 p2, v0

    add-int/lit8 p2, p2, 0x64

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/Context;->instructionCount:I

    .line 1722
    :cond_3e
    sub-int v29, v9, v20

    .line 1724
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    aget-object p2, v17, v29

    .line 1725
    .local p2, lhs:Ljava/lang/Object;
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/mozilla/javascript/InterpretedFunction;

    move v5, v0

    if-eqz v5, :cond_3f

    .line 1726
    move-object/from16 v0, p2

    check-cast v0, Lorg/mozilla/javascript/InterpretedFunction;

    move-object/from16 v51, v0

    .line 1727
    .local v51, f:Lorg/mozilla/javascript/InterpretedFunction;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    move-object v5, v0

    iget-object v5, v5, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    move-object/from16 v0, v51

    iget-object v0, v0, Lorg/mozilla/javascript/InterpretedFunction;->securityDomain:Ljava/lang/Object;

    move-object v6, v0

    if-ne v5, v6, :cond_3f

    .line 1728
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 p2, v0

    .end local p2           #lhs:Ljava/lang/Object;
    move-object/from16 v0, v51

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/InterpretedFunction;->createObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v46

    .line 1729
    .local v46, newInstance:Lorg/mozilla/javascript/Scriptable;
    new-instance v23, Lorg/mozilla/javascript/Interpreter$CallFrame;

    .end local v23           #varDbls:[D
    const/16 p2, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/Interpreter$CallFrame;-><init>(Lorg/mozilla/javascript/Interpreter$1;)V

    .line 1730
    .local v23, calleeFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v45, v0

    add-int/lit8 v49, v29, 0x1

    move-object/from16 v44, p0

    move-object/from16 v47, v17

    move-object/from16 v48, v18

    move/from16 v50, v20

    move-object/from16 v52, p1

    move-object/from16 v53, v23

    invoke-static/range {v44 .. v53}, Lorg/mozilla/javascript/Interpreter;->initFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;[DIILorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/Interpreter$CallFrame;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    .line 1734
    aput-object v46, v17, v29

    .line 1735
    move/from16 v0, v29

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    .line 1736
    move/from16 v0, v30

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    .line 1737
    move-object/from16 p1, v23

    move-object/from16 v5, v59

    .end local v59           #stringReg:Ljava/lang/String;
    .local v5, stringReg:Ljava/lang/String;
    move-object/from16 p2, v62

    .line 1738
    goto/16 :goto_2

    .line 1741
    .end local v5           #stringReg:Ljava/lang/String;
    .end local v46           #newInstance:Lorg/mozilla/javascript/Scriptable;
    .end local v51           #f:Lorg/mozilla/javascript/InterpretedFunction;
    .local v23, varDbls:[D
    .restart local v59       #stringReg:Ljava/lang/String;
    .restart local p2       #lhs:Ljava/lang/Object;
    :cond_3f
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/mozilla/javascript/Function;

    move v5, v0

    if-nez v5, :cond_41

    .line 1742
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_40

    aget-wide v5, v18, v29

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .line 1743
    .end local p2           #lhs:Ljava/lang/Object;
    :cond_40
    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 1745
    .restart local p2       #lhs:Ljava/lang/Object;
    :cond_41
    check-cast p2, Lorg/mozilla/javascript/Function;

    .line 1747
    .local p2, fun:Lorg/mozilla/javascript/Function;
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/mozilla/javascript/IdFunctionObject;

    move v5, v0

    if-eqz v5, :cond_42

    .line 1748
    move-object/from16 v0, p2

    check-cast v0, Lorg/mozilla/javascript/IdFunctionObject;

    move-object/from16 v21, v0

    .line 1749
    .local v21, ifun:Lorg/mozilla/javascript/IdFunctionObject;
    invoke-static/range {v21 .. v21}, Lorg/mozilla/javascript/NativeContinuation;->isContinuationConstructor(Lorg/mozilla/javascript/IdFunctionObject;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 1750
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    move-object/from16 p2, v0

    .end local p2           #fun:Lorg/mozilla/javascript/Function;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/Interpreter;->captureContinuation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Z)Lorg/mozilla/javascript/NativeContinuation;

    move-result-object v5

    aput-object v5, p2, v29

    move/from16 v9, v29

    .line 1752
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1756
    .end local v9           #stackTop:I
    .end local v21           #ifun:Lorg/mozilla/javascript/IdFunctionObject;
    .restart local v29       #stackTop:I
    .restart local p2       #fun:Lorg/mozilla/javascript/Function;
    :cond_42
    add-int/lit8 v5, v29, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move v2, v5

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/Interpreter;->getArgsArray([Ljava/lang/Object;[DII)[Ljava/lang/Object;

    move-result-object v8

    .line 1757
    .restart local v8       #outArgs:[Ljava/lang/Object;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v5, v0

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v8

    invoke-interface {v0, v1, v2, v3}, Lorg/mozilla/javascript/Function;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    .end local p2           #fun:Lorg/mozilla/javascript/Function;
    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 1758
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1761
    .end local v8           #outArgs:[Ljava/lang/Object;
    :pswitch_4a
    aget-object p2, v17, v9

    .line 1762
    .local p2, lhs:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_43

    aget-wide v5, v18, v9

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .line 1763
    .end local p2           #lhs:Ljava/lang/Object;
    :cond_43
    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->typeof(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v17, v9

    goto/16 :goto_4

    .line 1767
    :pswitch_4b
    add-int/lit8 v29, v9, 0x1

    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 p2, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v59

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->typeofName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 1768
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1770
    :pswitch_4c
    add-int/lit8 v29, v9, 0x1

    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    aput-object v59, v17, v29

    move/from16 v9, v29

    .line 1771
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1773
    :pswitch_4d
    add-int/lit8 v29, v9, 0x1

    .line 1774
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    aput-object v54, v17, v29

    .line 1775
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    move-object v0, v14

    move/from16 v1, p2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->getShort([BI)I

    move-result p2

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide v5, v0

    aput-wide v5, v18, v29

    .line 1776
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    add-int/lit8 p2, p2, 0x2

    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 v9, v29

    .line 1777
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1779
    :pswitch_4e
    add-int/lit8 v29, v9, 0x1

    .line 1780
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    aput-object v54, v17, v29

    .line 1781
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    move-object v0, v14

    move/from16 v1, p2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->getInt([BI)I

    move-result p2

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide v5, v0

    aput-wide v5, v18, v29

    .line 1782
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    add-int/lit8 p2, p2, 0x4

    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 v9, v29

    .line 1783
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1785
    :pswitch_4f
    add-int/lit8 v29, v9, 0x1

    .line 1786
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    aput-object v54, v17, v29

    .line 1787
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    move-object/from16 p2, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    move-object/from16 p2, v0

    aget-wide v5, p2, v20

    aput-wide v5, v18, v29

    move/from16 v9, v29

    .line 1788
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1790
    :pswitch_50
    add-int/lit8 v29, v9, 0x1

    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 p2, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v59

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 1791
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1793
    :pswitch_51
    add-int/lit8 v29, v9, 0x1

    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 p2, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move v5, v0

    aget-byte v5, v14, v5

    move-object/from16 v0, p2

    move-object/from16 v1, v59

    move-object/from16 v2, p0

    move v3, v5

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->nameIncrDecr(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v17, v29

    .line 1795
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    add-int/lit8 p2, p2, 0x1

    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 v9, v29

    .line 1796
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1798
    :pswitch_52
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    add-int/lit8 v5, p2, 0x1

    move v0, v5

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v20, v14, p2

    .line 1801
    :pswitch_53
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    move/from16 p2, v0

    if-nez p2, :cond_45

    .line 1802
    aget p2, v22, v20

    and-int/lit8 p2, p2, 0x1

    if-nez p2, :cond_44

    .line 1803
    const-string p2, "msg.var.redecl"

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    move-object v5, v0

    iget-object v5, v5, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object v5, v5, v20

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p2

    throw p2

    .line 1806
    :cond_44
    aget p2, v22, v20

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_2

    .line 1809
    aget-object p2, v17, v9

    aput-object p2, v24, v20

    .line 1810
    aget p2, v22, v20

    and-int/lit8 p2, p2, -0x9

    aput p2, v22, v20

    .line 1811
    aget-wide v5, v18, v9

    aput-wide v5, v23, v20

    goto/16 :goto_4

    .line 1814
    :cond_45
    aget-object p2, v17, v9

    .line 1815
    .local p2, val:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_7d

    aget-wide v5, v18, v9

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .local p2, val:Ljava/lang/Number;
    move-object/from16 v6, p2

    .line 1816
    .end local p2           #val:Ljava/lang/Number;
    .local v6, val:Ljava/lang/Object;
    :goto_2e
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    move-object/from16 p2, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    move-object/from16 p2, v0

    aget-object v5, p2, v20
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    .line 1817
    .end local v59           #stringReg:Ljava/lang/String;
    .restart local v5       #stringReg:Ljava/lang/String;
    :try_start_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 p2, v0

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/mozilla/javascript/ConstProperties;

    move/from16 p2, v0

    if-eqz p2, :cond_46

    .line 1818
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 p2, v0

    check-cast p2, Lorg/mozilla/javascript/ConstProperties;

    .line 1819
    .local p2, cp:Lorg/mozilla/javascript/ConstProperties;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v7, v0

    move-object/from16 v0, p2

    move-object v1, v5

    move-object v2, v7

    move-object v3, v6

    invoke-interface {v0, v1, v2, v3}, Lorg/mozilla/javascript/ConstProperties;->putConst(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    move-object/from16 v59, v5

    .line 1823
    .end local v5           #stringReg:Ljava/lang/String;
    .restart local v59       #stringReg:Ljava/lang/String;
    goto/16 :goto_4

    .line 1821
    .end local v59           #stringReg:Ljava/lang/String;
    .end local p2           #cp:Lorg/mozilla/javascript/ConstProperties;
    .restart local v5       #stringReg:Ljava/lang/String;
    :cond_46
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    .line 2239
    .end local v6           #val:Ljava/lang/Object;
    .end local v9           #stackTop:I
    .end local v14           #iCode:[B
    .end local v17           #stack:[Ljava/lang/Object;
    .end local v18           #sDbl:[D
    .end local v19           #strings:[Ljava/lang/String;
    .end local v22           #varAttributes:[I
    .end local v23           #varDbls:[D
    .end local v24           #vars:[Ljava/lang/Object;
    .end local v30           #op:I
    :catch_1
    move-exception p2

    move-object/from16 v8, v61

    move-object v7, v5

    .end local v5           #stringReg:Ljava/lang/String;
    .local v7, stringReg:Ljava/lang/String;
    move-object/from16 v9, v62

    move-wide/from16 v5, v57

    .end local v57           #interpreterResultDbl:D
    .local v5, interpreterResultDbl:D
    goto/16 :goto_5

    .line 1825
    .end local v5           #interpreterResultDbl:D
    .end local v7           #stringReg:Ljava/lang/String;
    .restart local v9       #stackTop:I
    .restart local v14       #iCode:[B
    .restart local v17       #stack:[Ljava/lang/Object;
    .restart local v18       #sDbl:[D
    .restart local v19       #strings:[Ljava/lang/String;
    .restart local v22       #varAttributes:[I
    .restart local v23       #varDbls:[D
    .restart local v24       #vars:[Ljava/lang/Object;
    .restart local v30       #op:I
    .restart local v57       #interpreterResultDbl:D
    .restart local v59       #stringReg:Ljava/lang/String;
    :pswitch_54
    :try_start_d
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    add-int/lit8 v5, p2, 0x1

    move v0, v5

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v20, v14, p2

    .line 1828
    :pswitch_55
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    move/from16 p2, v0

    if-nez p2, :cond_47

    .line 1829
    aget p2, v22, v20

    and-int/lit8 p2, p2, 0x1

    if-nez p2, :cond_2

    .line 1830
    aget-object p2, v17, v9

    aput-object p2, v24, v20

    .line 1831
    aget-wide v5, v18, v9

    aput-wide v5, v23, v20

    goto/16 :goto_4

    .line 1834
    :cond_47
    aget-object p2, v17, v9

    .line 1835
    .local p2, val:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_7c

    aget-wide v5, v18, v9

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .local p2, val:Ljava/lang/Number;
    move-object/from16 v5, p2

    .line 1836
    .end local p2           #val:Ljava/lang/Number;
    .local v5, val:Ljava/lang/Object;
    :goto_2f
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    move-object/from16 p2, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    move-object/from16 p2, v0

    aget-object p2, p2, v20
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    .line 1837
    .end local v59           #stringReg:Ljava/lang/String;
    .local p2, stringReg:Ljava/lang/String;
    :try_start_e
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v7, v0

    move-object v0, v6

    move-object/from16 v1, p2

    move-object v2, v7

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8

    move-object/from16 v59, p2

    .line 1839
    .end local p2           #stringReg:Ljava/lang/String;
    .restart local v59       #stringReg:Ljava/lang/String;
    goto/16 :goto_4

    .line 1841
    .end local v5           #val:Ljava/lang/Object;
    :pswitch_56
    :try_start_f
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    add-int/lit8 v5, p2, 0x1

    move v0, v5

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    aget-byte v20, v14, p2

    .line 1844
    :pswitch_57
    add-int/lit8 v29, v9, 0x1

    .line 1845
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    move/from16 p2, v0

    if-nez p2, :cond_48

    .line 1846
    aget-object p2, v24, v20

    aput-object p2, v17, v29

    .line 1847
    aget-wide v5, v23, v20

    aput-wide v5, v18, v29

    move/from16 v9, v29

    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1849
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    :cond_48
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    move-object/from16 p2, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    move-object/from16 p2, v0

    aget-object p2, p2, v20
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0

    .line 1850
    .end local v59           #stringReg:Ljava/lang/String;
    .restart local p2       #stringReg:Ljava/lang/String;
    :try_start_10
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v6, v0

    move-object v0, v5

    move-object/from16 v1, p2

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v17, v29
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_8

    move/from16 v9, v29

    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    move-object/from16 v59, p2

    .line 1852
    .end local p2           #stringReg:Ljava/lang/String;
    .restart local v59       #stringReg:Ljava/lang/String;
    goto/16 :goto_4

    .line 1855
    :pswitch_58
    add-int/lit8 v29, v9, 0x1

    .line 1856
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    :try_start_11
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    aget-byte p2, v14, p2

    .line 1857
    .local p2, incrDecrMask:I
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->useActivation:Z

    move v5, v0

    if-nez v5, :cond_4c

    .line 1858
    aput-object v54, v17, v29

    .line 1859
    aget-object v5, v24, v20

    .line 1861
    .local v5, varValue:Ljava/lang/Object;
    move-object v0, v5

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_4a

    .line 1862
    aget-wide v5, v23, v20

    .line 1867
    .local v5, d:D
    :goto_30
    and-int/lit8 v7, p2, 0x1

    if-nez v7, :cond_4b

    const-wide/high16 v7, 0x3ff0

    add-double/2addr v7, v5

    .line 1869
    .local v7, d2:D
    :goto_31
    aput-wide v7, v23, v20

    .line 1870
    and-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_49

    .end local p2           #incrDecrMask:I
    move-wide v5, v7

    .end local v5           #d:D
    :cond_49
    aput-wide v5, v18, v29

    .line 1876
    .end local v7           #d2:D
    :goto_32
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    add-int/lit8 p2, p2, 0x1

    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 v9, v29

    .line 1877
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1864
    .end local v9           #stackTop:I
    .local v5, varValue:Ljava/lang/Object;
    .restart local v29       #stackTop:I
    .restart local p2       #incrDecrMask:I
    :cond_4a
    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v5

    .line 1865
    .local v5, d:D
    aput-object v54, v24, v20

    goto :goto_30

    .line 1867
    :cond_4b
    const-wide/high16 v7, 0x3ff0

    sub-double v7, v5, v7

    goto :goto_31

    .line 1872
    .end local v5           #d:D
    :cond_4c
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    move-object v5, v0

    iget-object v5, v5, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    aget-object v5, v5, v20

    .line 1873
    .local v5, varName:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v5

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->nameIncrDecr(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    move-result-object p2

    .end local p2           #incrDecrMask:I
    aput-object p2, v17, v29

    goto :goto_32

    .line 1880
    .end local v5           #varName:Ljava/lang/String;
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    :pswitch_59
    add-int/lit8 v29, v9, 0x1

    .line 1881
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    aput-object v54, v17, v29

    .line 1882
    const-wide/16 v5, 0x0

    aput-wide v5, v18, v29

    move/from16 v9, v29

    .line 1883
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1885
    :pswitch_5a
    add-int/lit8 v29, v9, 0x1

    .line 1886
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    aput-object v54, v17, v29

    .line 1887
    const-wide/high16 v5, 0x3ff0

    aput-wide v5, v18, v29

    move/from16 v9, v29

    .line 1888
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1890
    :pswitch_5b
    add-int/lit8 v29, v9, 0x1

    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    const/16 p2, 0x0

    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 1891
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1893
    :pswitch_5c
    add-int/lit8 v29, v9, 0x1

    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->thisObj:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 p2, v0

    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 1894
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1896
    :pswitch_5d
    add-int/lit8 v29, v9, 0x1

    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    move-object/from16 p2, v0

    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 1897
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1899
    :pswitch_5e
    add-int/lit8 v29, v9, 0x1

    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 1900
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1902
    :pswitch_5f
    add-int/lit8 v29, v9, 0x1

    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 1903
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1905
    :pswitch_60
    add-int/lit8 v29, v9, 0x1

    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    aput-object v60, v17, v29

    move/from16 v9, v29

    .line 1906
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1908
    :pswitch_61
    aget-object p2, v17, v9

    .line 1909
    .local p2, lhs:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_4d

    aget-wide v5, v18, v9

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .line 1910
    .end local p2           #lhs:Ljava/lang/Object;
    :cond_4d
    add-int/lit8 v29, v9, -0x1

    .line 1911
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v5, v0

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->enterWith(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move/from16 v9, v29

    .line 1912
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1915
    :pswitch_62
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 p2, v0

    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->leaveWith(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    goto/16 :goto_4

    .line 1921
    :pswitch_63
    add-int/lit8 v29, v9, -0x1

    .line 1922
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    move/from16 p2, v0

    add-int v20, v20, p2

    .line 1924
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    move-object/from16 p2, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    move-object/from16 p2, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move v5, v0

    aget-byte p2, p2, v5

    if-eqz p2, :cond_4e

    const/16 p2, 0x1

    .line 1925
    .local p2, afterFirstScope:Z
    :goto_33
    add-int/lit8 v5, v29, 0x1

    aget-object v5, v17, v5

    check-cast v5, Ljava/lang/Throwable;

    .line 1927
    .local v5, caughtException:Ljava/lang/Throwable;
    if-nez p2, :cond_4f

    .line 1928
    const/16 p2, 0x0

    .line 1932
    .local p2, lastCatchScope:Lorg/mozilla/javascript/Scriptable;
    :goto_34
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v6, v0

    move-object v0, v5

    move-object/from16 v1, p2

    move-object/from16 v2, v59

    move-object/from16 v3, p0

    move-object v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->newCatchScope(Ljava/lang/Throwable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    .end local p2           #lastCatchScope:Lorg/mozilla/javascript/Scriptable;
    aput-object p2, v17, v20

    .line 1935
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    add-int/lit8 p2, p2, 0x1

    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 v9, v29

    .line 1936
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1924
    .end local v5           #caughtException:Ljava/lang/Throwable;
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    :cond_4e
    const/16 p2, 0x0

    goto :goto_33

    .line 1930
    .restart local v5       #caughtException:Ljava/lang/Throwable;
    .local p2, afterFirstScope:Z
    :cond_4f
    aget-object p2, v17, v20

    .end local p2           #afterFirstScope:Z
    check-cast p2, Lorg/mozilla/javascript/Scriptable;

    .local p2, lastCatchScope:Lorg/mozilla/javascript/Scriptable;
    goto :goto_34

    .line 1941
    .end local v5           #caughtException:Ljava/lang/Throwable;
    .end local v29           #stackTop:I
    .end local p2           #lastCatchScope:Lorg/mozilla/javascript/Scriptable;
    .restart local v9       #stackTop:I
    :pswitch_64
    aget-object p2, v17, v9

    .line 1942
    .local p2, lhs:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_7b

    aget-wide v5, v18, v9

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .local p2, lhs:Ljava/lang/Number;
    move-object/from16 v5, p2

    .line 1943
    .end local p2           #lhs:Ljava/lang/Number;
    .local v5, lhs:Ljava/lang/Object;
    :goto_35
    add-int/lit8 v29, v9, -0x1

    .line 1944
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    move/from16 p2, v0

    add-int v20, v20, p2

    .line 1945
    const/16 p2, 0x3a

    move/from16 v0, v30

    move/from16 v1, p2

    if-ne v0, v1, :cond_50

    const/16 p2, 0x0

    .line 1950
    .local p2, enumType:I
    :goto_36
    move-object v0, v5

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->enumInit(Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    move-result-object p2

    .end local p2           #enumType:I
    aput-object p2, v17, v20

    move/from16 v9, v29

    .line 1951
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1945
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    :cond_50
    const/16 p2, 0x3b

    move/from16 v0, v30

    move/from16 v1, p2

    if-ne v0, v1, :cond_51

    const/16 p2, 0x1

    goto :goto_36

    :cond_51
    const/16 p2, 0x2

    goto :goto_36

    .line 1955
    .end local v5           #lhs:Ljava/lang/Object;
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    :pswitch_65
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    move/from16 p2, v0

    add-int v20, v20, p2

    .line 1956
    aget-object p2, v17, v20

    .line 1957
    .local p2, val:Ljava/lang/Object;
    add-int/lit8 v29, v9, 0x1

    .line 1958
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    const/16 v5, 0x3d

    move/from16 v0, v30

    move v1, v5

    if-ne v0, v1, :cond_52

    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->enumNext(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p2

    .end local p2           #val:Ljava/lang/Object;
    :goto_37
    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 1961
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1958
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    .restart local p2       #val:Ljava/lang/Object;
    :cond_52
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->enumId(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_37

    .line 1965
    .end local v29           #stackTop:I
    .end local p2           #val:Ljava/lang/Object;
    .restart local v9       #stackTop:I
    :pswitch_66
    aget-object p2, v17, v9

    .line 1966
    .local p2, obj:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_53

    aget-wide v5, v18, v9

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .line 1967
    .end local p2           #obj:Ljava/lang/Object;
    :cond_53
    move-object/from16 v0, p2

    move-object/from16 v1, v59

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->specialRef(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Ref;

    move-result-object p2

    aput-object p2, v17, v9

    goto/16 :goto_4

    .line 1972
    :pswitch_67
    aget-object p2, v17, v9

    .line 1973
    .local p2, elem:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_54

    aget-wide v5, v18, v9

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .line 1974
    .end local p2           #elem:Ljava/lang/Object;
    :cond_54
    add-int/lit8 v29, v9, -0x1

    .line 1975
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    aget-object v5, v17, v29

    .line 1976
    .local v5, obj:Ljava/lang/Object;
    move-object v0, v5

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_55

    aget-wide v5, v18, v29

    .end local v5           #obj:Ljava/lang/Object;
    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v5

    .line 1977
    :cond_55
    move-object v0, v5

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->memberRef(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Lorg/mozilla/javascript/Ref;

    move-result-object p2

    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 1978
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1982
    :pswitch_68
    aget-object p2, v17, v9

    .line 1983
    .restart local p2       #elem:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_56

    aget-wide v5, v18, v9

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .line 1984
    .end local p2           #elem:Ljava/lang/Object;
    :cond_56
    add-int/lit8 v29, v9, -0x1

    .line 1985
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    aget-object v5, v17, v29

    .line 1986
    .local v5, ns:Ljava/lang/Object;
    move-object v0, v5

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_57

    aget-wide v5, v18, v29

    .end local v5           #ns:Ljava/lang/Object;
    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v5

    .line 1987
    :cond_57
    add-int/lit8 v29, v29, -0x1

    .line 1988
    aget-object v6, v17, v29

    .line 1989
    .local v6, obj:Ljava/lang/Object;
    move-object v0, v6

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_58

    aget-wide v6, v18, v29

    .end local v6           #obj:Ljava/lang/Object;
    invoke-static {v6, v7}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v6

    .line 1990
    :cond_58
    move-object v0, v6

    move-object v1, v5

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->memberRef(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Lorg/mozilla/javascript/Ref;

    move-result-object p2

    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 1991
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 1995
    :pswitch_69
    aget-object p2, v17, v9

    .line 1996
    .local p2, name:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_59

    aget-wide v5, v18, v9

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .line 1997
    .end local p2           #name:Ljava/lang/Object;
    :cond_59
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v5, v0

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object v2, v5

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->nameRef(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;

    move-result-object p2

    aput-object p2, v17, v9

    goto/16 :goto_4

    .line 2003
    :pswitch_6a
    aget-object p2, v17, v9

    .line 2004
    .restart local p2       #name:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_5a

    aget-wide v5, v18, v9

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .line 2005
    .end local p2           #name:Ljava/lang/Object;
    :cond_5a
    add-int/lit8 v29, v9, -0x1

    .line 2006
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    aget-object v5, v17, v29

    .line 2007
    .restart local v5       #ns:Ljava/lang/Object;
    move-object v0, v5

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_5b

    aget-wide v5, v18, v29

    .end local v5           #ns:Ljava/lang/Object;
    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v5

    .line 2008
    :cond_5b
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v6, v0

    move-object v0, v5

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move-object v3, v6

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->nameRef(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;I)Lorg/mozilla/javascript/Ref;

    move-result-object p2

    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 2010
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 2013
    :pswitch_6b
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    move/from16 p2, v0

    add-int v20, v20, p2

    .line 2014
    aget-object p2, v17, v20

    check-cast p2, Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    goto/16 :goto_4

    .line 2017
    :pswitch_6c
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    move/from16 p2, v0

    add-int v20, v20, p2

    .line 2018
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 p2, v0

    aput-object p2, v17, v20

    goto/16 :goto_4

    .line 2021
    :pswitch_6d
    add-int/lit8 v29, v9, 0x1

    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 p2, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v5

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/InterpretedFunction;->createFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)Lorg/mozilla/javascript/InterpretedFunction;

    move-result-object p2

    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 2024
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 2026
    :pswitch_6e
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 p2, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->fnOrScript:Lorg/mozilla/javascript/InterpretedFunction;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v5

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/Interpreter;->initFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpretedFunction;I)V

    goto/16 :goto_4

    .line 2029
    :pswitch_6f
    add-int/lit8 v29, v9, 0x1

    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scriptRegExps:[Lorg/mozilla/javascript/Scriptable;

    move-object/from16 p2, v0

    aget-object p2, p2, v20

    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 2030
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 2033
    :pswitch_70
    add-int/lit8 v29, v9, 0x1

    .line 2034
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 p2, v0

    aput-object p2, v17, v29

    .line 2035
    add-int/lit8 v29, v29, 0x1

    .line 2036
    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p2, v0

    aput-object p2, v17, v29

    .line 2037
    const-wide/16 v5, 0x0

    aput-wide v5, v18, v29

    move/from16 v9, v29

    .line 2038
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 2040
    :pswitch_71
    aget-object p2, v17, v9

    .line 2041
    .local p2, value:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_7a

    aget-wide v5, v18, v9

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .local p2, value:Ljava/lang/Number;
    move-object/from16 v5, p2

    .line 2042
    .end local p2           #value:Ljava/lang/Number;
    .local v5, value:Ljava/lang/Object;
    :goto_38
    add-int/lit8 v29, v9, -0x1

    .line 2043
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    aget-wide v6, v18, v29

    move-wide v0, v6

    double-to-int v0, v0

    move/from16 p2, v0

    .line 2044
    .local p2, i:I
    aget-object v6, v17, v29

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    aput-object v5, v6, p2

    .line 2045
    add-int/lit8 p2, p2, 0x1

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide v5, v0

    aput-wide v5, v18, v29

    .end local v5           #value:Ljava/lang/Object;
    .end local p2           #i:I
    move/from16 v9, v29

    .line 2046
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 2049
    :pswitch_72
    aget-object v5, v17, v9

    .line 2050
    .restart local v5       #value:Ljava/lang/Object;
    add-int/lit8 v29, v9, -0x1

    .line 2051
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    aget-wide v6, v18, v29

    move-wide v0, v6

    double-to-int v0, v0

    move/from16 p2, v0

    .line 2052
    .restart local p2       #i:I
    aget-object v6, v17, v29

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    aput-object v5, v6, p2

    .line 2053
    const/4 v5, 0x1

    sub-int v5, v29, v5

    aget-object v5, v17, v5

    .end local v5           #value:Ljava/lang/Object;
    check-cast v5, [I

    check-cast v5, [I

    const/4 v6, -0x1

    aput v6, v5, p2

    .line 2054
    add-int/lit8 p2, p2, 0x1

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide v5, v0

    aput-wide v5, v18, v29

    .end local p2           #i:I
    move/from16 v9, v29

    .line 2055
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 2058
    :pswitch_73
    aget-object v5, v17, v9

    .line 2059
    .restart local v5       #value:Ljava/lang/Object;
    add-int/lit8 v29, v9, -0x1

    .line 2060
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    aget-wide v6, v18, v29

    move-wide v0, v6

    double-to-int v0, v0

    move/from16 p2, v0

    .line 2061
    .restart local p2       #i:I
    aget-object v6, v17, v29

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    aput-object v5, v6, p2

    .line 2062
    const/4 v5, 0x1

    sub-int v5, v29, v5

    aget-object v5, v17, v5

    .end local v5           #value:Ljava/lang/Object;
    check-cast v5, [I

    check-cast v5, [I

    const/4 v6, 0x1

    aput v6, v5, p2

    .line 2063
    add-int/lit8 p2, p2, 0x1

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide v5, v0

    aput-wide v5, v18, v29

    .end local p2           #i:I
    move/from16 v9, v29

    .line 2064
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 2069
    :pswitch_74
    aget-object p2, v17, v9

    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    .line 2070
    .local p2, data:[Ljava/lang/Object;
    add-int/lit8 v29, v9, -0x1

    .line 2071
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    aget-object v5, v17, v29

    check-cast v5, [I

    check-cast v5, [I

    .line 2073
    .local v5, getterSetters:[I
    const/16 v6, 0x42

    move/from16 v0, v30

    move v1, v6

    if-ne v0, v1, :cond_5c

    .line 2074
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    move-object v6, v0

    iget-object v6, v6, Lorg/mozilla/javascript/InterpreterData;->literalIds:[Ljava/lang/Object;

    aget-object v6, v6, v20

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    .line 2075
    .local v6, ids:[Ljava/lang/Object;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v7, v0

    move-object v0, v6

    move-object/from16 v1, p2

    move-object v2, v5

    move-object/from16 v3, p0

    move-object v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->newObjectLiteral([Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    .line 2085
    .end local v5           #getterSetters:[I
    .end local v6           #ids:[Ljava/lang/Object;
    .local p2, val:Lorg/mozilla/javascript/Scriptable;
    :goto_39
    aput-object p2, v17, v29

    move/from16 v9, v29

    .line 2086
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 2078
    .end local v9           #stackTop:I
    .restart local v5       #getterSetters:[I
    .restart local v29       #stackTop:I
    .local p2, data:[Ljava/lang/Object;
    :cond_5c
    const/4 v5, 0x0

    .line 2079
    .local v5, skipIndexces:[I
    const/16 v6, -0x1f

    move/from16 v0, v30

    move v1, v6

    if-ne v0, v1, :cond_5d

    .line 2080
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    move-object v5, v0

    .end local v5           #skipIndexces:[I
    iget-object v5, v5, Lorg/mozilla/javascript/InterpreterData;->literalIds:[Ljava/lang/Object;

    aget-object v5, v5, v20

    check-cast v5, [I

    check-cast v5, [I

    .line 2082
    .restart local v5       #skipIndexces:[I
    :cond_5d
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v6, v0

    move-object/from16 v0, p2

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v3, v6

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->newArrayLiteral([Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    .local p2, val:Lorg/mozilla/javascript/Scriptable;
    goto :goto_39

    .line 2089
    .end local v5           #skipIndexces:[I
    .end local v29           #stackTop:I
    .end local p2           #val:Lorg/mozilla/javascript/Scriptable;
    .restart local v9       #stackTop:I
    :pswitch_75
    aget-object p2, v17, v9

    .line 2090
    .local p2, lhs:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_5e

    aget-wide v5, v18, v9

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .line 2091
    .end local p2           #lhs:Ljava/lang/Object;
    :cond_5e
    add-int/lit8 v29, v9, -0x1

    .line 2092
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v5, v0

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->enterDotQuery(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move/from16 v9, v29

    .line 2093
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    goto/16 :goto_4

    .line 2096
    :pswitch_76
    move-object/from16 v0, p1

    move v1, v9

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z

    move-result p2

    .line 2097
    .local p2, valBln:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object v5, v0

    move/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->updateDotQuery(ZLorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    .line 2098
    .local p2, x:Ljava/lang/Object;
    if-eqz p2, :cond_5f

    .line 2099
    aput-object p2, v17, v9

    .line 2100
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    move-object/from16 p2, v0

    .end local p2           #x:Ljava/lang/Object;
    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->leaveDotQuery(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 2101
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    add-int/lit8 p2, p2, 0x2

    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_4

    .line 2105
    .restart local p2       #x:Ljava/lang/Object;
    :cond_5f
    add-int/lit8 v29, v9, -0x1

    .line 2106
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    goto/16 :goto_1a

    .line 2109
    .end local v29           #stackTop:I
    .end local p2           #x:Ljava/lang/Object;
    .restart local v9       #stackTop:I
    :pswitch_77
    aget-object p2, v17, v9

    .line 2110
    .local p2, value:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-ne v0, v1, :cond_60

    aget-wide v5, v18, v9

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p2

    .line 2111
    .end local p2           #value:Ljava/lang/Object;
    :cond_60
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->setDefaultNamespace(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v17, v9

    goto/16 :goto_4

    .line 2115
    :pswitch_78
    aget-object p2, v17, v9

    .line 2116
    .restart local p2       #value:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_2

    .line 2117
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->escapeAttributeValue(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/String;

    move-result-object p2

    .end local p2           #value:Ljava/lang/Object;
    aput-object p2, v17, v9

    goto/16 :goto_4

    .line 2122
    :pswitch_79
    aget-object p2, v17, v9

    .line 2123
    .restart local p2       #value:Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_2

    .line 2124
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->escapeTextValue(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/String;

    move-result-object p2

    .end local p2           #value:Ljava/lang/Object;
    aput-object p2, v17, v9

    goto/16 :goto_4

    .line 2129
    :pswitch_7a
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    move-object/from16 p2, v0

    if-eqz p2, :cond_2

    .line 2130
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    move-object/from16 p2, v0

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lorg/mozilla/javascript/debug/DebugFrame;->onDebuggerStatement(Lorg/mozilla/javascript/Context;)V

    goto/16 :goto_4

    .line 2134
    :pswitch_7b
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcSourceLineStart:I

    .line 2135
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    move-object/from16 p2, v0

    if-eqz p2, :cond_61

    .line 2136
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    move-object v0, v14

    move/from16 v1, p2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result p2

    .line 2137
    .local p2, line:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/mozilla/javascript/debug/DebugFrame;->onLineChange(Lorg/mozilla/javascript/Context;I)V

    .line 2139
    .end local p2           #line:I
    :cond_61
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    add-int/lit8 p2, p2, 0x2

    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_4

    .line 2142
    :pswitch_7c
    const/16 v20, 0x0

    .line 2143
    goto/16 :goto_4

    .line 2145
    :pswitch_7d
    const/16 v20, 0x1

    .line 2146
    goto/16 :goto_4

    .line 2148
    :pswitch_7e
    const/16 v20, 0x2

    .line 2149
    goto/16 :goto_4

    .line 2151
    :pswitch_7f
    const/16 v20, 0x3

    .line 2152
    goto/16 :goto_4

    .line 2154
    :pswitch_80
    const/16 v20, 0x4

    .line 2155
    goto/16 :goto_4

    .line 2157
    :pswitch_81
    const/16 v20, 0x5

    .line 2158
    goto/16 :goto_4

    .line 2160
    :pswitch_82
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    aget-byte p2, v14, p2

    move/from16 v0, p2

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    .line 2161
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    add-int/lit8 p2, p2, 0x1

    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_4

    .line 2164
    :pswitch_83
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    move-object v0, v14

    move/from16 v1, p2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v20

    .line 2165
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    add-int/lit8 p2, p2, 0x2

    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_4

    .line 2168
    :pswitch_84
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    move-object v0, v14

    move/from16 v1, p2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->getInt([BI)I

    move-result v20

    .line 2169
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    add-int/lit8 p2, p2, 0x4

    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    goto/16 :goto_4

    .line 2172
    :pswitch_85
    const/16 p2, 0x0

    aget-object p2, v19, p2

    .end local v59           #stringReg:Ljava/lang/String;
    .local p2, stringReg:Ljava/lang/String;
    move-object/from16 v59, p2

    .line 2173
    .end local p2           #stringReg:Ljava/lang/String;
    .restart local v59       #stringReg:Ljava/lang/String;
    goto/16 :goto_4

    .line 2175
    :pswitch_86
    const/16 p2, 0x1

    aget-object p2, v19, p2

    .end local v59           #stringReg:Ljava/lang/String;
    .restart local p2       #stringReg:Ljava/lang/String;
    move-object/from16 v59, p2

    .line 2176
    .end local p2           #stringReg:Ljava/lang/String;
    .restart local v59       #stringReg:Ljava/lang/String;
    goto/16 :goto_4

    .line 2178
    :pswitch_87
    const/16 p2, 0x2

    aget-object p2, v19, p2

    .end local v59           #stringReg:Ljava/lang/String;
    .restart local p2       #stringReg:Ljava/lang/String;
    move-object/from16 v59, p2

    .line 2179
    .end local p2           #stringReg:Ljava/lang/String;
    .restart local v59       #stringReg:Ljava/lang/String;
    goto/16 :goto_4

    .line 2181
    :pswitch_88
    const/16 p2, 0x3

    aget-object p2, v19, p2

    .end local v59           #stringReg:Ljava/lang/String;
    .restart local p2       #stringReg:Ljava/lang/String;
    move-object/from16 v59, p2

    .line 2182
    .end local p2           #stringReg:Ljava/lang/String;
    .restart local v59       #stringReg:Ljava/lang/String;
    goto/16 :goto_4

    .line 2184
    :pswitch_89
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    aget-byte p2, v14, p2

    move/from16 v0, p2

    and-int/lit16 v0, v0, 0xff

    move/from16 p2, v0

    aget-object p2, v19, p2
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_0

    .line 2185
    .end local v59           #stringReg:Ljava/lang/String;
    .restart local p2       #stringReg:Ljava/lang/String;
    :try_start_12
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8

    move-object/from16 v59, p2

    .line 2186
    .end local p2           #stringReg:Ljava/lang/String;
    .restart local v59       #stringReg:Ljava/lang/String;
    goto/16 :goto_4

    .line 2188
    :pswitch_8a
    :try_start_13
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    move-object v0, v14

    move/from16 v1, p2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result p2

    aget-object p2, v19, p2
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_0

    .line 2189
    .end local v59           #stringReg:Ljava/lang/String;
    .restart local p2       #stringReg:Ljava/lang/String;
    :try_start_14
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move v5, v0

    add-int/lit8 v5, v5, 0x2

    move v0, v5

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_8

    move-object/from16 v59, p2

    .line 2190
    .end local p2           #stringReg:Ljava/lang/String;
    .restart local v59       #stringReg:Ljava/lang/String;
    goto/16 :goto_4

    .line 2192
    :pswitch_8b
    :try_start_15
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move/from16 p2, v0

    move-object v0, v14

    move/from16 v1, p2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->getInt([BI)I

    move-result p2

    aget-object p2, v19, p2
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_0

    .line 2193
    .end local v59           #stringReg:Ljava/lang/String;
    .restart local p2       #stringReg:Ljava/lang/String;
    :try_start_16
    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move v5, v0

    add-int/lit8 v5, v5, 0x4

    move v0, v5

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_8

    move-object/from16 v59, p2

    .line 2194
    .end local p2           #stringReg:Ljava/lang/String;
    .restart local v59       #stringReg:Ljava/lang/String;
    goto/16 :goto_4

    .line 2213
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    .local p2, offset:I
    :cond_62
    :try_start_17
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    move-object/from16 p2, v0

    .end local p2           #offset:I
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->longJumps:Lorg/mozilla/javascript/UintMap;

    move-object/from16 p2, v0

    move-object/from16 v0, p1

    iget v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    move v5, v0

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/UintMap;->getExistingInt(I)I

    move-result p2

    move/from16 v0, p2

    move-object/from16 v1, p1

    iput v0, v1, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_0

    goto/16 :goto_1b

    .end local v57           #interpreterResultDbl:D
    .local v5, interpreterResultDbl:D
    .local p2, interpreterResult:Ljava/lang/Object;
    :cond_63
    move-object/from16 v8, p2

    move-object/from16 v7, v62

    move-object/from16 p2, v59

    .line 2369
    .end local v14           #iCode:[B
    .end local v17           #stack:[Ljava/lang/Object;
    .end local v18           #sDbl:[D
    .end local v19           #strings:[Ljava/lang/String;
    .end local v22           #varAttributes:[I
    .end local v23           #varDbls:[D
    .end local v24           #vars:[Ljava/lang/Object;
    .end local v29           #stackTop:I
    .end local v30           #op:I
    .end local v59           #stringReg:Ljava/lang/String;
    .local p2, stringReg:Ljava/lang/String;
    :goto_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    move-object v9, v0

    if-eqz v9, :cond_74

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    move-object v9, v0

    invoke-virtual {v9}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v9

    if-eqz v9, :cond_74

    .line 2372
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    move-object v9, v0

    invoke-virtual {v9}, Lorg/mozilla/javascript/ObjArray;->pop()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    .line 2381
    :goto_3b
    if-eqz v7, :cond_76

    .line 2382
    move-object v0, v7

    instance-of v0, v0, Ljava/lang/RuntimeException;

    move/from16 p0, v0

    .end local p0           #cx:Lorg/mozilla/javascript/Context;
    if-eqz p0, :cond_75

    .line 2383
    move-object v0, v7

    check-cast v0, Ljava/lang/RuntimeException;

    move-object/from16 p0, v0

    throw p0

    .line 2245
    .local v7, stringReg:Ljava/lang/String;
    .restart local p0       #cx:Lorg/mozilla/javascript/Context;
    .local p2, ex:Ljava/lang/Throwable;
    :cond_64
    move-object/from16 p2, p2

    .local p2, throwable:Ljava/lang/Throwable;
    move-object v11, v8

    move-object v9, v7

    .end local v7           #stringReg:Ljava/lang/String;
    .local v9, stringReg:Ljava/lang/String;
    move-wide v7, v5

    .end local v5           #interpreterResultDbl:D
    .local v7, interpreterResultDbl:D
    goto/16 :goto_8

    .line 2266
    .end local p2           #throwable:Ljava/lang/Throwable;
    .local v5, cjump:Lorg/mozilla/javascript/Interpreter$ContinuationJump;
    :cond_65
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/mozilla/javascript/JavaScriptException;

    move v6, v0

    if-eqz v6, :cond_66

    .line 2267
    const/4 v6, 0x2

    .local v6, exState:I
    goto/16 :goto_9

    .line 2268
    .end local v6           #exState:I
    :cond_66
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/mozilla/javascript/EcmaError;

    move v6, v0

    if-eqz v6, :cond_67

    .line 2270
    const/4 v6, 0x2

    .restart local v6       #exState:I
    goto/16 :goto_9

    .line 2271
    .end local v6           #exState:I
    :cond_67
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/mozilla/javascript/EvaluatorException;

    move v6, v0

    if-eqz v6, :cond_68

    .line 2272
    const/4 v6, 0x2

    .restart local v6       #exState:I
    goto/16 :goto_9

    .line 2273
    .end local v6           #exState:I
    :cond_68
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/RuntimeException;

    move v6, v0

    if-eqz v6, :cond_6a

    .line 2274
    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v6

    if-eqz v6, :cond_69

    const/4 v6, 0x2

    .restart local v6       #exState:I
    :goto_3c
    goto/16 :goto_9

    .end local v6           #exState:I
    :cond_69
    const/4 v6, 0x1

    goto :goto_3c

    .line 2277
    :cond_6a
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Error;

    move v6, v0

    if-eqz v6, :cond_6c

    .line 2278
    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v6

    if-eqz v6, :cond_6b

    const/4 v6, 0x2

    .restart local v6       #exState:I
    :goto_3d
    goto/16 :goto_9

    .end local v6           #exState:I
    :cond_6b
    const/4 v6, 0x0

    goto :goto_3d

    .line 2281
    :cond_6c
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    move v6, v0

    if-eqz v6, :cond_6d

    .line 2283
    const/4 v6, 0x1

    .line 2284
    .restart local v6       #exState:I
    move-object/from16 v0, p2

    check-cast v0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    move-object v5, v0

    goto/16 :goto_9

    .line 2286
    .end local v6           #exState:I
    :cond_6d
    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v6

    if-eqz v6, :cond_6e

    const/4 v6, 0x2

    .restart local v6       #exState:I
    :goto_3e
    goto/16 :goto_9

    .end local v6           #exState:I
    :cond_6e
    const/4 v6, 0x1

    goto :goto_3e

    .line 2294
    .restart local v6       #exState:I
    :catch_2
    move-exception p2

    .line 2295
    .local p2, ex:Ljava/lang/RuntimeException;
    move-object/from16 p2, p2

    .line 2296
    .local p2, throwable:Ljava/lang/RuntimeException;
    const/4 v6, 0x1

    move-object/from16 v10, p2

    move-object/from16 p2, v5

    .end local v5           #cjump:Lorg/mozilla/javascript/Interpreter$ContinuationJump;
    .local p2, cjump:Lorg/mozilla/javascript/Interpreter$ContinuationJump;
    move v5, v6

    .line 2303
    .end local v6           #exState:I
    .local v5, exState:I
    goto/16 :goto_a

    .line 2297
    .end local p2           #cjump:Lorg/mozilla/javascript/Interpreter$ContinuationJump;
    .local v5, cjump:Lorg/mozilla/javascript/Interpreter$ContinuationJump;
    .restart local v6       #exState:I
    :catch_3
    move-exception p2

    .line 2300
    .local p2, ex:Ljava/lang/Error;
    move-object/from16 p2, p2

    .line 2301
    .local p2, throwable:Ljava/lang/Error;
    const/4 v5, 0x0

    .line 2302
    const/4 v6, 0x0

    move-object/from16 v10, p2

    move-object/from16 p2, v5

    .end local v5           #cjump:Lorg/mozilla/javascript/Interpreter$ContinuationJump;
    .local p2, cjump:Lorg/mozilla/javascript/Interpreter$ContinuationJump;
    move v5, v6

    .end local v6           #exState:I
    .local v5, exState:I
    goto/16 :goto_a

    .line 2312
    .local v6, rex:Ljava/lang/RuntimeException;
    :catch_4
    move-exception p2

    .line 2315
    .local p2, ex:Ljava/lang/Throwable;
    move-object/from16 p2, p2

    .line 2316
    .local p2, throwable:Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 2317
    .local v5, cjump:Lorg/mozilla/javascript/Interpreter$ContinuationJump;
    const/4 v6, 0x0

    .local v6, exState:I
    move-object/from16 v10, p2

    move-object/from16 p2, v5

    .end local v5           #cjump:Lorg/mozilla/javascript/Interpreter$ContinuationJump;
    .local p2, cjump:Lorg/mozilla/javascript/Interpreter$ContinuationJump;
    move v5, v6

    .end local v6           #exState:I
    .local v5, exState:I
    goto/16 :goto_b

    .line 2323
    :cond_6f
    const/4 v6, 0x0

    goto/16 :goto_c

    .line 2335
    :cond_70
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/Interpreter;->exitFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V

    .line 2337
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-object/from16 p1, v0

    .line 2338
    if-nez p1, :cond_72

    .line 2348
    if-eqz p2, :cond_78

    .line 2349
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-object v5, v0

    .end local v5           #exState:I
    if-eqz v5, :cond_71

    .line 2351
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 2353
    :cond_71
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-object v5, v0

    if-eqz v5, :cond_73

    .line 2355
    const/16 v20, -0x1

    move-wide/from16 v57, v7

    .end local v7           #interpreterResultDbl:D
    .restart local v57       #interpreterResultDbl:D
    move-object/from16 v61, v11

    move-object v5, v9

    .end local v9           #stringReg:Ljava/lang/String;
    .local v5, stringReg:Ljava/lang/String;
    move-object/from16 p2, v10

    .line 2356
    goto/16 :goto_2

    .line 2339
    .end local v57           #interpreterResultDbl:D
    .local v5, exState:I
    .restart local v7       #interpreterResultDbl:D
    .restart local v9       #stringReg:Ljava/lang/String;
    :cond_72
    if-eqz p2, :cond_c

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_c

    .line 2342
    const/16 v20, -0x1

    move-wide/from16 v57, v7

    .end local v7           #interpreterResultDbl:D
    .restart local v57       #interpreterResultDbl:D
    move-object/from16 v61, v11

    move-object v5, v9

    .end local v9           #stringReg:Ljava/lang/String;
    .local v5, stringReg:Ljava/lang/String;
    move-object/from16 p2, v10

    .line 2343
    goto/16 :goto_2

    .line 2359
    .end local v5           #stringReg:Ljava/lang/String;
    .end local v57           #interpreterResultDbl:D
    .restart local v7       #interpreterResultDbl:D
    .restart local v9       #stringReg:Ljava/lang/String;
    :cond_73
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    move-object v5, v0

    .line 2360
    .local v5, interpreterResult:Ljava/lang/Object;
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->resultDbl:D

    move-wide v6, v0

    .line 2361
    .end local v7           #interpreterResultDbl:D
    .local v6, interpreterResultDbl:D
    const/16 p2, 0x0

    .local p2, throwable:Ljava/lang/Object;
    move-object v8, v5

    move-wide/from16 v63, v6

    .end local v6           #interpreterResultDbl:D
    .local v63, interpreterResultDbl:D
    move-wide/from16 v5, v63

    .end local v63           #interpreterResultDbl:D
    .local v5, interpreterResultDbl:D
    move-object/from16 v7, p2

    move-object/from16 p2, v9

    .end local v9           #stringReg:Ljava/lang/String;
    .local p2, stringReg:Ljava/lang/String;
    goto/16 :goto_3a

    .line 2376
    :cond_74
    const/4 v9, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    .line 2378
    const/4 v9, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    goto/16 :goto_3b

    .line 2386
    .end local p0           #cx:Lorg/mozilla/javascript/Context;
    :cond_75
    check-cast v7, Ljava/lang/Error;

    throw v7

    .line 2390
    .restart local p0       #cx:Lorg/mozilla/javascript/Context;
    :cond_76
    move-object v0, v8

    move-object/from16 v1, v54

    if-eq v0, v1, :cond_77

    move-object/from16 p0, v8

    .end local p0           #cx:Lorg/mozilla/javascript/Context;
    :goto_3f
    move-object/from16 v63, p2

    .end local p2           #stringReg:Ljava/lang/String;
    .local v63, stringReg:Ljava/lang/String;
    move-object/from16 p2, p0

    move-object/from16 p0, v63

    .end local v63           #stringReg:Ljava/lang/String;
    .local p0, stringReg:Ljava/lang/String;
    goto/16 :goto_7

    .local p0, cx:Lorg/mozilla/javascript/Context;
    .restart local p2       #stringReg:Ljava/lang/String;
    :cond_77
    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p0

    goto :goto_3f

    .line 2239
    .restart local v14       #iCode:[B
    .restart local v17       #stack:[Ljava/lang/Object;
    .restart local v18       #sDbl:[D
    .restart local v19       #strings:[Ljava/lang/String;
    .restart local v22       #varAttributes:[I
    .restart local v23       #varDbls:[D
    .restart local v24       #vars:[Ljava/lang/Object;
    .restart local v29       #stackTop:I
    .restart local v30       #op:I
    .restart local v59       #stringReg:Ljava/lang/String;
    .local p2, interpreterResult:Ljava/lang/Object;
    :catch_5
    move-exception v7

    move-object/from16 v8, p2

    move-object/from16 v9, v62

    move-object/from16 p2, v7

    move-object/from16 v7, v59

    .end local v59           #stringReg:Ljava/lang/String;
    .local v7, stringReg:Ljava/lang/String;
    goto/16 :goto_5

    .end local v7           #stringReg:Ljava/lang/String;
    .end local v14           #iCode:[B
    .end local v17           #stack:[Ljava/lang/Object;
    .end local v18           #sDbl:[D
    .end local v19           #strings:[Ljava/lang/String;
    .end local v22           #varAttributes:[I
    .end local v23           #varDbls:[D
    .end local v24           #vars:[Ljava/lang/Object;
    .end local v29           #stackTop:I
    .end local v30           #op:I
    .end local p2           #interpreterResult:Ljava/lang/Object;
    .local v5, stringReg:Ljava/lang/String;
    .restart local v57       #interpreterResultDbl:D
    :catch_6
    move-exception v6

    move-object/from16 v8, v61

    move-object v7, v5

    .end local v5           #stringReg:Ljava/lang/String;
    .restart local v7       #stringReg:Ljava/lang/String;
    move-object/from16 v9, p2

    move-object/from16 p2, v6

    move-wide/from16 v5, v57

    .end local v57           #interpreterResultDbl:D
    .local v5, interpreterResultDbl:D
    goto/16 :goto_5

    .end local v7           #stringReg:Ljava/lang/String;
    .local v5, stringReg:Ljava/lang/String;
    .restart local v57       #interpreterResultDbl:D
    .local p2, throwable:Ljava/lang/Object;
    :catch_7
    move-exception v6

    move-object/from16 v8, v61

    move-object v7, v5

    .end local v5           #stringReg:Ljava/lang/String;
    .restart local v7       #stringReg:Ljava/lang/String;
    move-object/from16 v9, p2

    move-object/from16 p2, v6

    move-wide/from16 v5, v57

    .end local v57           #interpreterResultDbl:D
    .local v5, interpreterResultDbl:D
    goto/16 :goto_5

    .end local v5           #interpreterResultDbl:D
    .end local v7           #stringReg:Ljava/lang/String;
    .restart local v14       #iCode:[B
    .restart local v17       #stack:[Ljava/lang/Object;
    .restart local v18       #sDbl:[D
    .restart local v19       #strings:[Ljava/lang/String;
    .restart local v22       #varAttributes:[I
    .restart local v23       #varDbls:[D
    .restart local v24       #vars:[Ljava/lang/Object;
    .restart local v30       #op:I
    .restart local v57       #interpreterResultDbl:D
    .local p2, stringReg:Ljava/lang/String;
    :catch_8
    move-exception v5

    move-object/from16 v8, v61

    move-object/from16 v7, p2

    .end local p2           #stringReg:Ljava/lang/String;
    .restart local v7       #stringReg:Ljava/lang/String;
    move-object/from16 v9, v62

    move-object/from16 p2, v5

    move-wide/from16 v5, v57

    .end local v57           #interpreterResultDbl:D
    .restart local v5       #interpreterResultDbl:D
    goto/16 :goto_5

    .end local v5           #interpreterResultDbl:D
    .end local v7           #stringReg:Ljava/lang/String;
    .restart local v29       #stackTop:I
    .restart local v57       #interpreterResultDbl:D
    .restart local v59       #stringReg:Ljava/lang/String;
    .local p2, interpreterResult:Ljava/lang/Object;
    :catch_9
    move-exception v5

    move-object/from16 v8, p2

    move-object/from16 v7, v59

    .end local v59           #stringReg:Ljava/lang/String;
    .restart local v7       #stringReg:Ljava/lang/String;
    move-object/from16 v9, v62

    move-object/from16 p2, v5

    move-wide/from16 v5, v57

    .end local v57           #interpreterResultDbl:D
    .restart local v5       #interpreterResultDbl:D
    goto/16 :goto_5

    .end local v14           #iCode:[B
    .end local v17           #stack:[Ljava/lang/Object;
    .end local v18           #sDbl:[D
    .end local v19           #strings:[Ljava/lang/String;
    .end local v22           #varAttributes:[I
    .end local v23           #varDbls:[D
    .end local v24           #vars:[Ljava/lang/Object;
    .end local v29           #stackTop:I
    .end local v30           #op:I
    .local v5, exState:I
    .local v7, interpreterResultDbl:D
    .restart local v9       #stringReg:Ljava/lang/String;
    .local p2, cjump:Lorg/mozilla/javascript/Interpreter$ContinuationJump;
    :cond_78
    move-wide v5, v7

    .end local v7           #interpreterResultDbl:D
    .local v5, interpreterResultDbl:D
    move-object/from16 p2, v9

    .end local v9           #stringReg:Ljava/lang/String;
    .local p2, stringReg:Ljava/lang/String;
    move-object v8, v11

    move-object v7, v10

    goto/16 :goto_3a

    .end local v5           #interpreterResultDbl:D
    .end local p2           #stringReg:Ljava/lang/String;
    .restart local v14       #iCode:[B
    .restart local v17       #stack:[Ljava/lang/Object;
    .restart local v18       #sDbl:[D
    .restart local v19       #strings:[Ljava/lang/String;
    .restart local v22       #varAttributes:[I
    .restart local v23       #varDbls:[D
    .restart local v24       #vars:[Ljava/lang/Object;
    .restart local v29       #stackTop:I
    .restart local v30       #op:I
    .restart local v57       #interpreterResultDbl:D
    .restart local v59       #stringReg:Ljava/lang/String;
    :cond_79
    move/from16 v9, v29

    .end local v29           #stackTop:I
    .local v9, stackTop:I
    goto/16 :goto_4

    .local p2, value:Ljava/lang/Object;
    :cond_7a
    move-object/from16 v5, p2

    .end local p2           #value:Ljava/lang/Object;
    .local v5, value:Ljava/lang/Object;
    goto/16 :goto_38

    .end local v5           #value:Ljava/lang/Object;
    .local p2, lhs:Ljava/lang/Object;
    :cond_7b
    move-object/from16 v5, p2

    .end local p2           #lhs:Ljava/lang/Object;
    .local v5, lhs:Ljava/lang/Object;
    goto/16 :goto_35

    .end local v5           #lhs:Ljava/lang/Object;
    .local p2, val:Ljava/lang/Object;
    :cond_7c
    move-object/from16 v5, p2

    .end local p2           #val:Ljava/lang/Object;
    .local v5, val:Ljava/lang/Object;
    goto/16 :goto_2f

    .end local v5           #val:Ljava/lang/Object;
    .restart local p2       #val:Ljava/lang/Object;
    :cond_7d
    move-object/from16 v6, p2

    .end local p2           #val:Ljava/lang/Object;
    .local v6, val:Ljava/lang/Object;
    goto/16 :goto_2e

    .end local v6           #val:Ljava/lang/Object;
    .local p2, obj:Ljava/lang/Object;
    :cond_7e
    move-object/from16 v5, p2

    .end local p2           #obj:Ljava/lang/Object;
    .local v5, obj:Ljava/lang/Object;
    goto/16 :goto_2a

    .end local v5           #obj:Ljava/lang/Object;
    .local p2, value:Ljava/lang/Object;
    :cond_7f
    move-object/from16 v5, p2

    .end local p2           #value:Ljava/lang/Object;
    .local v5, value:Ljava/lang/Object;
    goto/16 :goto_29

    .end local v5           #value:Ljava/lang/Object;
    .local p2, rhs:Ljava/lang/Object;
    :cond_80
    move-object/from16 v5, p2

    .end local p2           #rhs:Ljava/lang/Object;
    .local v5, rhs:Ljava/lang/Object;
    goto/16 :goto_28

    .end local v5           #rhs:Ljava/lang/Object;
    .end local v9           #stackTop:I
    .local v8, rhs:Ljava/lang/Object;
    .restart local v29       #stackTop:I
    .local p2, lhs:Ljava/lang/Object;
    :cond_81
    move-object/from16 v7, p2

    .end local p2           #lhs:Ljava/lang/Object;
    .local v7, lhs:Ljava/lang/Object;
    goto/16 :goto_26

    .end local v7           #lhs:Ljava/lang/Object;
    .end local v8           #rhs:Ljava/lang/Object;
    .local p2, rhs:Ljava/lang/Object;
    :cond_82
    move-object/from16 v8, p2

    .end local p2           #rhs:Ljava/lang/Object;
    .restart local v8       #rhs:Ljava/lang/Object;
    goto/16 :goto_25

    .end local v8           #rhs:Ljava/lang/Object;
    .local p2, lhs:Ljava/lang/Object;
    :cond_83
    move-object/from16 v7, p2

    .end local p2           #lhs:Ljava/lang/Object;
    .restart local v7       #lhs:Ljava/lang/Object;
    goto/16 :goto_23

    .end local v7           #lhs:Ljava/lang/Object;
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    .local p2, rhs:Ljava/lang/Object;
    :cond_84
    move-object/from16 v5, p2

    .end local p2           #rhs:Ljava/lang/Object;
    .restart local v5       #rhs:Ljava/lang/Object;
    goto/16 :goto_22

    .end local v5           #rhs:Ljava/lang/Object;
    .restart local p2       #rhs:Ljava/lang/Object;
    :cond_85
    move-object/from16 v5, p2

    .end local p2           #rhs:Ljava/lang/Object;
    .restart local v5       #rhs:Ljava/lang/Object;
    goto/16 :goto_21

    .end local v5           #rhs:Ljava/lang/Object;
    .restart local p2       #rhs:Ljava/lang/Object;
    :cond_86
    move-object/from16 v5, p2

    .end local p2           #rhs:Ljava/lang/Object;
    .restart local v5       #rhs:Ljava/lang/Object;
    goto/16 :goto_20

    .end local v5           #rhs:Ljava/lang/Object;
    .restart local p2       #rhs:Ljava/lang/Object;
    :cond_87
    move-object/from16 v5, p2

    .end local p2           #rhs:Ljava/lang/Object;
    .restart local v5       #rhs:Ljava/lang/Object;
    goto/16 :goto_1f

    .end local v5           #rhs:Ljava/lang/Object;
    .restart local p2       #rhs:Ljava/lang/Object;
    :cond_88
    move-object/from16 v5, p2

    .end local p2           #rhs:Ljava/lang/Object;
    .restart local v5       #rhs:Ljava/lang/Object;
    goto/16 :goto_15

    .end local v5           #rhs:Ljava/lang/Object;
    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    .local p2, value:Ljava/lang/Object;
    :cond_89
    move-object/from16 v5, p2

    .end local p2           #value:Ljava/lang/Object;
    .local v5, value:Ljava/lang/Object;
    goto/16 :goto_f

    .end local v5           #value:Ljava/lang/Object;
    .end local v29           #stackTop:I
    .restart local v9       #stackTop:I
    .local p2, rhs:Ljava/lang/Object;
    :cond_8a
    move-object/from16 v5, p2

    .end local p2           #rhs:Ljava/lang/Object;
    .local v5, rhs:Ljava/lang/Object;
    goto/16 :goto_d

    .end local v5           #rhs:Ljava/lang/Object;
    :pswitch_8c
    move/from16 v29, v9

    .end local v9           #stackTop:I
    .restart local v29       #stackTop:I
    goto/16 :goto_e

    .end local v14           #iCode:[B
    .end local v17           #stack:[Ljava/lang/Object;
    .end local v18           #sDbl:[D
    .end local v19           #strings:[Ljava/lang/String;
    .end local v22           #varAttributes:[I
    .end local v23           #varDbls:[D
    .end local v24           #vars:[Ljava/lang/Object;
    .end local v29           #stackTop:I
    .end local v30           #op:I
    .end local v57           #interpreterResultDbl:D
    .end local v59           #stringReg:Ljava/lang/String;
    .local v5, cjump:Lorg/mozilla/javascript/Interpreter$ContinuationJump;
    .local v6, exState:I
    .local v7, interpreterResultDbl:D
    .local v9, stringReg:Ljava/lang/String;
    :cond_8b
    move-object/from16 v10, p2

    move-object/from16 p2, v5

    .end local v5           #cjump:Lorg/mozilla/javascript/Interpreter$ContinuationJump;
    .local p2, cjump:Lorg/mozilla/javascript/Interpreter$ContinuationJump;
    move v5, v6

    .end local v6           #exState:I
    .local v5, exState:I
    goto/16 :goto_a

    .line 1013
    nop

    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_7a
        :pswitch_3
        :pswitch_1
        :pswitch_52
        :pswitch_0
        :pswitch_34
        :pswitch_73
        :pswitch_72
        :pswitch_42
        :pswitch_48
        :pswitch_76
        :pswitch_75
        :pswitch_5a
        :pswitch_59
        :pswitch_60
        :pswitch_54
        :pswitch_56
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_74
        :pswitch_71
        :pswitch_70
        :pswitch_4e
        :pswitch_4d
        :pswitch_7b
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_20
        :pswitch_47
        :pswitch_6e
        :pswitch_6d
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_4b
        :pswitch_6c
        :pswitch_6b
        :pswitch_40
        :pswitch_3c
        :pswitch_39
        :pswitch_51
        :pswitch_58
        :pswitch_14
        :pswitch_1a
        :pswitch_19
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_61
        :pswitch_62
        :pswitch_1e
        :pswitch_15
        :pswitch_13
        :pswitch_12
        :pswitch_33
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_10
        :pswitch_10
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_22
        :pswitch_22
        :pswitch_29
        :pswitch_2b
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_31
        :pswitch_21
        :pswitch_2a
        :pswitch_2a
        :pswitch_49
        :pswitch_35
        :pswitch_4a
        :pswitch_37
        :pswitch_36
        :pswitch_38
        :pswitch_3a
        :pswitch_3b
        :pswitch_48
        :pswitch_50
        :pswitch_4f
        :pswitch_4c
        :pswitch_5b
        :pswitch_5c
        :pswitch_5e
        :pswitch_5f
        :pswitch_11
        :pswitch_11
        :pswitch_6f
        :pswitch_32
        :pswitch_8c
        :pswitch_5
        :pswitch_f
        :pswitch_f
        :pswitch_41
        :pswitch_57
        :pswitch_55
        :pswitch_63
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_65
        :pswitch_65
        :pswitch_5d
        :pswitch_1f
        :pswitch_74
        :pswitch_74
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_48
        :pswitch_66
        :pswitch_2
        :pswitch_4
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_53
    .end packed-switch

    .line 1103
    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_7
    .end packed-switch

    .line 1120
    :pswitch_data_2
    .packed-switch 0xe
        :pswitch_e
        :pswitch_c
        :pswitch_d
        :pswitch_b
    .end packed-switch

    .line 1300
    :pswitch_data_3
    .packed-switch 0x9
        :pswitch_25
        :pswitch_26
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_27
        :pswitch_28
    .end packed-switch

    .line 1349
    :pswitch_data_4
    .packed-switch 0x16
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
    .end packed-switch
.end method

.method private static isFrameEnterExitRequired(Lorg/mozilla/javascript/Interpreter$CallFrame;)Z
    .locals 1
    .parameter "frame"

    .prologue
    .line 2818
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->debuggerFrame:Lorg/mozilla/javascript/debug/DebugFrame;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static processThrowable(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Interpreter$CallFrame;IZ)Lorg/mozilla/javascript/Interpreter$CallFrame;
    .locals 5
    .parameter "cx"
    .parameter "throwable"
    .parameter "frame"
    .parameter "indexReg"
    .parameter "instructionCounting"

    .prologue
    .line 2476
    if-ltz p3, :cond_2

    .line 2480
    iget-boolean p0, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    .end local p0
    if-eqz p0, :cond_0

    .line 2482
    invoke-virtual {p2}, Lorg/mozilla/javascript/Interpreter$CallFrame;->cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object p2

    .line 2485
    :cond_0
    iget-object p0, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object p0, p0, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    .line 2487
    .local p0, table:[I
    add-int/lit8 v1, p3, 0x2

    aget v1, p0, v1

    iput v1, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .line 2488
    if-eqz p4, :cond_1

    .line 2489
    iget p4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .end local p4
    iput p4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcPrevBranch:I

    .line 2492
    :cond_1
    iget p4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->emptyStackTop:I

    iput p4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    .line 2493
    iget p4, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/lit8 v1, p3, 0x5

    aget v1, p0, v1

    add-int/2addr p4, v1

    .line 2496
    .local p4, scopeLocal:I
    iget v1, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->localShift:I

    add-int/lit8 p3, p3, 0x4

    aget p0, p0, p3

    .end local p0           #table:[I
    .end local p3
    add-int/2addr p0, v1

    .line 2499
    .local p0, exLocal:I
    iget-object p3, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object p3, p3, p4

    check-cast p3, Lorg/mozilla/javascript/Scriptable;

    iput-object p3, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 2500
    iget-object p3, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aput-object p1, p3, p0

    .line 2502
    const/4 p1, 0x0

    .line 2561
    .end local p0           #exLocal:I
    .end local p4           #scopeLocal:I
    :goto_0
    iput-object p1, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->throwable:Ljava/lang/Object;

    .line 2562
    return-object p2

    .line 2505
    .local p0, cx:Lorg/mozilla/javascript/Context;
    .restart local p3
    .local p4, instructionCounting:Z
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    move-object p3, v0

    .line 2508
    .local p3, cjump:Lorg/mozilla/javascript/Interpreter$ContinuationJump;
    const/4 p1, 0x0

    .line 2510
    iget-object p4, p3, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .end local p4           #instructionCounting:Z
    if-eq p4, p2, :cond_3

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 2515
    :cond_3
    iget-object p2, p3, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .end local p2
    if-nez p2, :cond_4

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 2519
    :cond_4
    iget-object p2, p3, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget p2, p2, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    add-int/lit8 p2, p2, 0x1

    .line 2520
    .local p2, rewindCount:I
    iget-object p4, p3, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    if-eqz p4, :cond_a

    .line 2521
    iget-object p4, p3, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->branchFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget p4, p4, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    sub-int/2addr p2, p4

    move v2, p2

    .line 2524
    .end local p2           #rewindCount:I
    .local v2, rewindCount:I
    :goto_1
    const/4 p2, 0x0

    .line 2525
    .local p2, enterCount:I
    const/4 p4, 0x0

    .line 2527
    .local p4, enterFrames:[Lorg/mozilla/javascript/Interpreter$CallFrame;
    iget-object v3, p3, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 2528
    .local v3, x:Lorg/mozilla/javascript/Interpreter$CallFrame;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-eq v1, v2, :cond_9

    .line 2529
    iget-boolean v4, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    if-nez v4, :cond_5

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 2530
    :cond_5
    invoke-static {v3}, Lorg/mozilla/javascript/Interpreter;->isFrameEnterExitRequired(Lorg/mozilla/javascript/Interpreter$CallFrame;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2531
    if-nez p4, :cond_6

    .line 2535
    sub-int p4, v2, v1

    new-array p4, p4, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 2538
    :cond_6
    aput-object v3, p4, p2

    .line 2539
    add-int/lit8 p2, p2, 0x1

    .line 2541
    :cond_7
    iget-object v3, v3, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 2528
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2544
    .end local v2           #rewindCount:I
    .end local v3           #x:Lorg/mozilla/javascript/Interpreter$CallFrame;
    .local v1, x:Lorg/mozilla/javascript/Interpreter$CallFrame;
    :goto_3
    if-eqz p2, :cond_8

    .line 2548
    add-int/lit8 p2, p2, -0x1

    .line 2549
    aget-object v1, p4, p2

    .line 2550
    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lorg/mozilla/javascript/Interpreter;->enterFrame(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;[Ljava/lang/Object;Z)V

    goto :goto_3

    .line 2557
    :cond_8
    iget-object p0, p3, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .end local p0           #cx:Lorg/mozilla/javascript/Context;
    invoke-virtual {p0}, Lorg/mozilla/javascript/Interpreter$CallFrame;->cloneFrozen()Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-result-object p2

    .line 2558
    .local p2, frame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    iget-object p0, p3, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    iget-wide p3, p3, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->resultDbl:D

    .end local p3           #cjump:Lorg/mozilla/javascript/Interpreter$ContinuationJump;
    invoke-static {p2, p0, p3, p4}, Lorg/mozilla/javascript/Interpreter;->setCallResult(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;D)V

    goto :goto_0

    .local v1, i:I
    .restart local v2       #rewindCount:I
    .restart local v3       #x:Lorg/mozilla/javascript/Interpreter$CallFrame;
    .restart local p0       #cx:Lorg/mozilla/javascript/Context;
    .local p2, enterCount:I
    .restart local p3       #cjump:Lorg/mozilla/javascript/Interpreter$ContinuationJump;
    :cond_9
    move-object v1, v3

    .end local v3           #x:Lorg/mozilla/javascript/Interpreter$CallFrame;
    .local v1, x:Lorg/mozilla/javascript/Interpreter$CallFrame;
    goto :goto_3

    .end local v1           #x:Lorg/mozilla/javascript/Interpreter$CallFrame;
    .end local v2           #rewindCount:I
    .end local p4           #enterFrames:[Lorg/mozilla/javascript/Interpreter$CallFrame;
    .local p2, rewindCount:I
    :cond_a
    move v2, p2

    .end local p2           #rewindCount:I
    .restart local v2       #rewindCount:I
    goto :goto_1
.end method

.method public static restartContinuation(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "c"
    .parameter "cx"
    .parameter "scope"
    .parameter "args"

    .prologue
    const/4 v4, 0x0

    .line 894
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->hasTopCall(Lorg/mozilla/javascript/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 895
    invoke-static {p0, p1, p2, v4, p3}, Lorg/mozilla/javascript/ScriptRuntime;->doTopCall(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 914
    :goto_0
    return-object v3

    .line 899
    :cond_0
    array-length v3, p3

    if-nez v3, :cond_1

    .line 900
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 905
    .local v0, arg:Ljava/lang/Object;
    :goto_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeContinuation;->getImplementation()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 906
    .local v1, capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    if-nez v1, :cond_2

    move-object v3, v0

    .line 908
    goto :goto_0

    .line 902
    .end local v0           #arg:Ljava/lang/Object;
    .end local v1           #capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    :cond_1
    const/4 v3, 0x0

    aget-object v0, p3, v3

    .restart local v0       #arg:Ljava/lang/Object;
    goto :goto_1

    .line 911
    .restart local v1       #capturedFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    :cond_2
    new-instance v2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;

    invoke-direct {v2, p0, v4}, Lorg/mozilla/javascript/Interpreter$ContinuationJump;-><init>(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/Interpreter$CallFrame;)V

    .line 913
    .local v2, cjump:Lorg/mozilla/javascript/Interpreter$ContinuationJump;
    iput-object v0, v2, Lorg/mozilla/javascript/Interpreter$ContinuationJump;->result:Ljava/lang/Object;

    .line 914
    invoke-static {p1, v4, v2}, Lorg/mozilla/javascript/Interpreter;->interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public static resumeGenerator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "cx"
    .parameter "scope"
    .parameter "operation"
    .parameter "savedState"
    .parameter "value"

    .prologue
    .line 873
    move-object v0, p3

    check-cast v0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-object v2, v0

    .line 874
    .local v2, frame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    new-instance v3, Lorg/mozilla/javascript/Interpreter$GeneratorState;

    invoke-direct {v3, p2, p4}, Lorg/mozilla/javascript/Interpreter$GeneratorState;-><init>(ILjava/lang/Object;)V

    .line 875
    .local v3, generatorState:Lorg/mozilla/javascript/Interpreter$GeneratorState;
    const/4 v5, 0x2

    if-ne p2, v5, :cond_1

    .line 877
    :try_start_0
    invoke-static {p0, v2, v3}, Lorg/mozilla/javascript/Interpreter;->interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 888
    :goto_0
    return-object v5

    .line 878
    :catch_0
    move-exception v1

    .line 880
    .local v1, e:Ljava/lang/RuntimeException;
    if-eq v1, p4, :cond_0

    .line 881
    throw v1

    .line 883
    :cond_0
    sget-object v5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_0

    .line 885
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_1
    invoke-static {p0, v2, v3}, Lorg/mozilla/javascript/Interpreter;->interpretLoop(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 886
    .local v4, result:Ljava/lang/Object;
    iget-object v5, v3, Lorg/mozilla/javascript/Interpreter$GeneratorState;->returnedException:Ljava/lang/RuntimeException;

    if-eqz v5, :cond_2

    .line 887
    iget-object v5, v3, Lorg/mozilla/javascript/Interpreter$GeneratorState;->returnedException:Ljava/lang/RuntimeException;

    throw v5

    :cond_2
    move-object v5, v4

    .line 888
    goto :goto_0
.end method

.method private static setCallResult(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;D)V
    .locals 2
    .parameter "frame"
    .parameter "callResult"
    .parameter "callResultDbl"

    .prologue
    .line 2911
    iget v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    .line 2912
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    aput-object p1, v0, v1

    .line 2913
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    iget v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    aput-wide p2, v0, v1

    .line 2924
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    .line 2925
    return-void

    .line 2914
    :cond_1
    iget v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedCallOp:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_2

    .line 2918
    instance-of v0, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_0

    .line 2919
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->savedStackTop:I

    aput-object p1, v0, v1

    goto :goto_0

    .line 2922
    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method private static shallowEquals([Ljava/lang/Object;[DI)Z
    .locals 9
    .parameter "stack"
    .parameter "sDbl"
    .parameter "stackTop"

    .prologue
    const/4 v8, 0x0

    .line 2441
    add-int/lit8 v7, p2, 0x1

    aget-object v6, p0, v7

    .line 2442
    .local v6, rhs:Ljava/lang/Object;
    aget-object v3, p0, p2

    .line 2443
    .local v3, lhs:Ljava/lang/Object;
    sget-object v0, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    .line 2445
    .local v0, DBL_MRK:Lorg/mozilla/javascript/UniqueTag;
    if-ne v6, v0, :cond_2

    .line 2446
    add-int/lit8 v7, p2, 0x1

    aget-wide v4, p1, v7

    .line 2447
    .local v4, rdbl:D
    if-ne v3, v0, :cond_0

    .line 2448
    aget-wide v1, p1, p2

    .line 2466
    .end local v3           #lhs:Ljava/lang/Object;
    .end local v6           #rhs:Ljava/lang/Object;
    .local v1, ldbl:D
    :goto_0
    cmpl-double v7, v1, v4

    if-nez v7, :cond_6

    const/4 v7, 0x1

    .end local v1           #ldbl:D
    .end local v4           #rdbl:D
    :goto_1
    return v7

    .line 2449
    .restart local v3       #lhs:Ljava/lang/Object;
    .restart local v4       #rdbl:D
    .restart local v6       #rhs:Ljava/lang/Object;
    :cond_0
    instance-of v7, v3, Ljava/lang/Number;

    if-eqz v7, :cond_1

    .line 2450
    check-cast v3, Ljava/lang/Number;

    .end local v3           #lhs:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .restart local v1       #ldbl:D
    goto :goto_0

    .end local v1           #ldbl:D
    .restart local v3       #lhs:Ljava/lang/Object;
    :cond_1
    move v7, v8

    .line 2452
    goto :goto_1

    .line 2454
    .end local v4           #rdbl:D
    :cond_2
    if-ne v3, v0, :cond_5

    .line 2455
    aget-wide v1, p1, p2

    .line 2456
    .restart local v1       #ldbl:D
    if-ne v6, v0, :cond_3

    .line 2457
    add-int/lit8 v7, p2, 0x1

    aget-wide v4, p1, v7

    .restart local v4       #rdbl:D
    goto :goto_0

    .line 2458
    .end local v4           #rdbl:D
    :cond_3
    instance-of v7, v6, Ljava/lang/Number;

    if-eqz v7, :cond_4

    .line 2459
    check-cast v6, Ljava/lang/Number;

    .end local v6           #rhs:Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .restart local v4       #rdbl:D
    goto :goto_0

    .end local v4           #rdbl:D
    .restart local v6       #rhs:Ljava/lang/Object;
    :cond_4
    move v7, v8

    .line 2461
    goto :goto_1

    .line 2464
    .end local v1           #ldbl:D
    :cond_5
    invoke-static {v3, v6}, Lorg/mozilla/javascript/ScriptRuntime;->shallowEq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    goto :goto_1

    .end local v3           #lhs:Ljava/lang/Object;
    .end local v6           #rhs:Ljava/lang/Object;
    .restart local v1       #ldbl:D
    .restart local v4       #rdbl:D
    :cond_6
    move v7, v8

    .line 2466
    goto :goto_1
.end method

.method private static stack_boolean(Lorg/mozilla/javascript/Interpreter$CallFrame;I)Z
    .locals 8
    .parameter "frame"
    .parameter "i"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3007
    iget-object v3, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v2, v3, p1

    .line 3008
    .local v2, x:Ljava/lang/Object;
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_0

    move v3, v5

    .line 3023
    .end local v2           #x:Ljava/lang/Object;
    :goto_0
    return v3

    .line 3010
    .restart local v2       #x:Ljava/lang/Object;
    :cond_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_1

    move v3, v4

    .line 3011
    goto :goto_0

    .line 3012
    :cond_1
    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v2, v3, :cond_3

    .line 3013
    iget-object v3, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    aget-wide v0, v3, p1

    .line 3014
    .local v0, d:D
    cmpl-double v3, v0, v0

    if-nez v3, :cond_2

    cmpl-double v3, v0, v6

    if-eqz v3, :cond_2

    move v3, v5

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_0

    .line 3015
    .end local v0           #d:D
    :cond_3
    if-eqz v2, :cond_4

    sget-object v3, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v2, v3, :cond_5

    :cond_4
    move v3, v4

    .line 3016
    goto :goto_0

    .line 3017
    :cond_5
    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_7

    .line 3018
    check-cast v2, Ljava/lang/Number;

    .end local v2           #x:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 3019
    .restart local v0       #d:D
    cmpl-double v3, v0, v0

    if-nez v3, :cond_6

    cmpl-double v3, v0, v6

    if-eqz v3, :cond_6

    move v3, v5

    goto :goto_0

    :cond_6
    move v3, v4

    goto :goto_0

    .line 3020
    .end local v0           #d:D
    .restart local v2       #x:Ljava/lang/Object;
    :cond_7
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_8

    .line 3021
    check-cast v2, Ljava/lang/Boolean;

    .end local v2           #x:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 3023
    .restart local v2       #x:Ljava/lang/Object;
    :cond_8
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method private static stack_double(Lorg/mozilla/javascript/Interpreter$CallFrame;I)D
    .locals 3
    .parameter "frame"
    .parameter "i"

    .prologue
    .line 2997
    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 2998
    .local v0, x:Ljava/lang/Object;
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-eq v0, v1, :cond_0

    .line 2999
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v1

    .line 3001
    :goto_0
    return-wide v1

    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    aget-wide v1, v1, p1

    goto :goto_0
.end method

.method private static stack_int32(Lorg/mozilla/javascript/Interpreter$CallFrame;I)I
    .locals 4
    .parameter "frame"
    .parameter "i"

    .prologue
    .line 2985
    iget-object v3, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    aget-object v2, v3, p1

    .line 2987
    .local v2, x:Ljava/lang/Object;
    sget-object v3, Lorg/mozilla/javascript/UniqueTag;->DOUBLE_MARK:Lorg/mozilla/javascript/UniqueTag;

    if-ne v2, v3, :cond_0

    .line 2988
    iget-object v3, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->sDbl:[D

    aget-wide v0, v3, p1

    .line 2992
    .local v0, value:D
    :goto_0
    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(D)I

    move-result v3

    return v3

    .line 2990
    .end local v0           #value:D
    :cond_0
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    .restart local v0       #value:D
    goto :goto_0
.end method

.method private static thawGenerator(Lorg/mozilla/javascript/Interpreter$CallFrame;ILorg/mozilla/javascript/Interpreter$GeneratorState;I)Ljava/lang/Object;
    .locals 4
    .parameter "frame"
    .parameter "stackTop"
    .parameter "generatorState"
    .parameter "op"

    .prologue
    .line 2589
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->frozen:Z

    .line 2590
    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget v2, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    invoke-static {v1, v2}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v0

    .line 2591
    .local v0, sourceLine:I
    iget v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pc:I

    .line 2592
    iget v1, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->operation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2595
    new-instance v1, Lorg/mozilla/javascript/JavaScriptException;

    iget-object v2, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->value:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    iget-object v3, v3, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 2606
    :goto_0
    return-object v1

    .line 2599
    :cond_0
    iget v1, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->operation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2600
    iget-object v1, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->value:Ljava/lang/Object;

    goto :goto_0

    .line 2602
    :cond_1
    iget v1, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->operation:I

    if-eqz v1, :cond_2

    .line 2603
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2604
    :cond_2
    const/16 v1, 0x48

    if-ne p3, v1, :cond_3

    .line 2605
    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter$CallFrame;->stack:[Ljava/lang/Object;

    iget-object v2, p2, Lorg/mozilla/javascript/Interpreter$GeneratorState;->value:Ljava/lang/Object;

    aput-object v2, v1, p1

    .line 2606
    :cond_3
    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public captureStackInfo(Lorg/mozilla/javascript/RhinoException;)V
    .locals 11
    .parameter "ex"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 635
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    .line 636
    .local v1, cx:Lorg/mozilla/javascript/Context;
    if-eqz v1, :cond_0

    iget-object v8, v1, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    if-nez v8, :cond_1

    .line 638
    :cond_0
    iput-object v9, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    .line 639
    iput-object v9, p1, Lorg/mozilla/javascript/RhinoException;->interpreterLineData:[I

    .line 686
    .end local p0
    :goto_0
    return-void

    .line 644
    .restart local p0
    :cond_1
    iget-object v8, v1, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    if-eqz v8, :cond_2

    iget-object v8, v1, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 647
    :cond_2
    new-array v0, v10, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 662
    .local v0, array:[Lorg/mozilla/javascript/Interpreter$CallFrame;
    :goto_1
    array-length v8, v0

    sub-int/2addr v8, v10

    iget-object p0, v1, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    aput-object p0, v0, v8

    .line 664
    const/4 v4, 0x0

    .line 665
    .local v4, interpreterFrameCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v8, v0

    if-eq v3, v8, :cond_5

    .line 666
    aget-object v8, v0, v3

    iget v8, v8, Lorg/mozilla/javascript/Interpreter$CallFrame;->frameIndex:I

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v4, v8

    .line 665
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 649
    .end local v0           #array:[Lorg/mozilla/javascript/Interpreter$CallFrame;
    .end local v3           #i:I
    .end local v4           #interpreterFrameCount:I
    .restart local p0
    :cond_3
    iget-object v8, v1, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v7

    .line 650
    .local v7, previousCount:I
    iget-object v8, v1, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8}, Lorg/mozilla/javascript/ObjArray;->peek()Ljava/lang/Object;

    move-result-object v8

    iget-object v9, v1, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    if-ne v8, v9, :cond_4

    .line 657
    add-int/lit8 v7, v7, -0x1

    .line 659
    :cond_4
    add-int/lit8 v8, v7, 0x1

    new-array v0, v8, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 660
    .restart local v0       #array:[Lorg/mozilla/javascript/Interpreter$CallFrame;
    iget-object v8, v1, Lorg/mozilla/javascript/Context;->previousInterpreterInvocations:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8, v0}, Lorg/mozilla/javascript/ObjArray;->toArray([Ljava/lang/Object;)V

    goto :goto_1

    .line 669
    .end local v7           #previousCount:I
    .end local p0
    .restart local v3       #i:I
    .restart local v4       #interpreterFrameCount:I
    :cond_5
    new-array v5, v4, [I

    .line 672
    .local v5, linePC:[I
    move v6, v4

    .line 673
    .local v6, linePCIndex:I
    array-length v3, v0

    :cond_6
    if-eqz v3, :cond_7

    .line 674
    add-int/lit8 v3, v3, -0x1

    .line 675
    aget-object v2, v0, v3

    .line 676
    .local v2, frame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    :goto_3
    if-eqz v2, :cond_6

    .line 677
    add-int/lit8 v6, v6, -0x1

    .line 678
    iget v8, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcSourceLineStart:I

    aput v8, v5, v6

    .line 679
    iget-object v2, v2, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    goto :goto_3

    .line 682
    .end local v2           #frame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    :cond_7
    if-eqz v6, :cond_8

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 684
    :cond_8
    iput-object v0, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    .line 685
    iput-object v5, p1, Lorg/mozilla/javascript/RhinoException;->interpreterLineData:[I

    goto :goto_0
.end method

.method public compile(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 2
    .parameter "compilerEnv"
    .parameter "tree"
    .parameter "encodedSource"
    .parameter "returnFunction"

    .prologue
    .line 232
    new-instance v0, Lorg/mozilla/javascript/CodeGenerator;

    invoke-direct {v0}, Lorg/mozilla/javascript/CodeGenerator;-><init>()V

    .line 233
    .local v0, cgen:Lorg/mozilla/javascript/CodeGenerator;
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mozilla/javascript/CodeGenerator;->compile(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)Lorg/mozilla/javascript/InterpreterData;

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    .line 234
    iget-object v1, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    return-object v1
.end method

.method public createFunctionObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/Function;
    .locals 1
    .parameter "cx"
    .parameter "scope"
    .parameter "bytecode"
    .parameter "staticSecurityDomain"

    .prologue
    .line 255
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    if-eq p3, v0, :cond_0

    .line 257
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 259
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-static {p1, p2, v0, p4}, Lorg/mozilla/javascript/InterpretedFunction;->createFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/InterpreterData;Ljava/lang/Object;)Lorg/mozilla/javascript/InterpretedFunction;

    move-result-object v0

    return-object v0
.end method

.method public createScriptObject(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/Script;
    .locals 1
    .parameter "bytecode"
    .parameter "staticSecurityDomain"

    .prologue
    .line 239
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    if-eq p1, v0, :cond_0

    .line 241
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 243
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Interpreter;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-static {v0, p2}, Lorg/mozilla/javascript/InterpretedFunction;->createScript(Lorg/mozilla/javascript/InterpreterData;Ljava/lang/Object;)Lorg/mozilla/javascript/InterpretedFunction;

    move-result-object v0

    return-object v0
.end method

.method public getPatchedStack(Lorg/mozilla/javascript/RhinoException;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .parameter "ex"
    .parameter "nativeStackTrace"

    .prologue
    .line 703
    const-string v15, "org.mozilla.javascript.Interpreter.interpretLoop"

    .line 704
    .local v15, tag:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v16, v0

    move-object v0, v14

    move/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 705
    .local v14, sb:Ljava/lang/StringBuffer;
    const-string v16, "line.separator"

    invoke-static/range {v16 .. v16}, Lorg/mozilla/javascript/SecurityUtilities;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 707
    .local v10, lineSeparator:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-object/from16 v0, p0

    check-cast v0, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-object v3, v0

    .line 708
    .local v3, array:[Lorg/mozilla/javascript/Interpreter$CallFrame;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/RhinoException;->interpreterLineData:[I

    move-object v8, v0

    .line 709
    .local v8, linePC:[I
    array-length v4, v3

    .line 710
    .local v4, arrayIndex:I
    array-length v9, v8

    .line 711
    .local v9, linePCIndex:I
    const/4 v11, 0x0

    .line 712
    .local v11, offset:I
    :cond_0
    if-eqz v4, :cond_1

    .line 713
    add-int/lit8 v4, v4, -0x1

    .line 714
    move-object/from16 v0, p2

    move-object v1, v15

    move v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    .line 715
    .local v13, pos:I
    if-gez v13, :cond_2

    .line 754
    .end local v13           #pos:I
    :cond_1
    move-object/from16 v0, p2

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 756
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    return-object v16

    .line 720
    .restart local v13       #pos:I
    :cond_2
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    add-int v13, v13, v16

    .line 722
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v16

    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_3

    .line 723
    move-object/from16 v0, p2

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 724
    .local v5, c:C
    const/16 v16, 0xa

    move v0, v5

    move/from16 v1, v16

    if-eq v0, v1, :cond_3

    const/16 v16, 0xd

    move v0, v5

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    .line 728
    .end local v5           #c:C
    :cond_3
    move-object/from16 v0, p2

    move v1, v11

    move v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 729
    move v11, v13

    .line 731
    aget-object v6, v3, v4

    .line 732
    .local v6, frame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    :goto_1
    if-eqz v6, :cond_0

    .line 733
    if-nez v9, :cond_4

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 734
    :cond_4
    add-int/lit8 v9, v9, -0x1

    .line 735
    iget-object v7, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    .line 736
    .local v7, idata:Lorg/mozilla/javascript/InterpreterData;
    invoke-virtual {v14, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 737
    const-string v16, "\tat script"

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 738
    move-object v0, v7

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    move-object v0, v7

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_5

    .line 739
    const/16 v16, 0x2e

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 740
    move-object v0, v7

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 742
    :cond_5
    const/16 v16, 0x28

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 743
    move-object v0, v7

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 744
    aget v12, v8, v9

    .line 745
    .local v12, pc:I
    if-ltz v12, :cond_6

    .line 747
    const/16 v16, 0x3a

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 748
    move-object v0, v7

    iget-object v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v12

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v16

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 750
    :cond_6
    const/16 v16, 0x29

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 751
    iget-object v6, v6, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 752
    goto :goto_1

    .line 722
    .end local v6           #frame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    .end local v7           #idata:Lorg/mozilla/javascript/InterpreterData;
    .end local v12           #pc:I
    .restart local v5       #c:C
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0
.end method

.method public getScriptStack(Lorg/mozilla/javascript/RhinoException;)Ljava/util/List;
    .locals 13
    .parameter "ex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/RhinoException;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 760
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/Interpreter;->getScriptStackElements(Lorg/mozilla/javascript/RhinoException;)[[Lorg/mozilla/javascript/ScriptStackElement;

    move-result-object v11

    .line 761
    .local v11, stack:[[Lorg/mozilla/javascript/ScriptStackElement;
    new-instance v9, Ljava/util/ArrayList;

    array-length v12, v11

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 762
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v12, "line.separator"

    invoke-static {v12}, Lorg/mozilla/javascript/SecurityUtilities;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 764
    .local v8, lineSeparator:Ljava/lang/String;
    move-object v0, v11

    .local v0, arr$:[[Lorg/mozilla/javascript/ScriptStackElement;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v0           #arr$:[[Lorg/mozilla/javascript/ScriptStackElement;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v3, v0, v5

    .line 765
    .local v3, group:[Lorg/mozilla/javascript/ScriptStackElement;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 766
    .local v10, sb:Ljava/lang/StringBuilder;
    move-object v1, v3

    .local v1, arr$:[Lorg/mozilla/javascript/ScriptStackElement;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_1
    if-ge v4, v7, :cond_0

    aget-object v2, v1, v4

    .line 767
    .local v2, elem:Lorg/mozilla/javascript/ScriptStackElement;
    invoke-virtual {v2, v10}, Lorg/mozilla/javascript/ScriptStackElement;->renderJavaStyle(Ljava/lang/StringBuilder;)V

    .line 768
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 770
    .end local v2           #elem:Lorg/mozilla/javascript/ScriptStackElement;
    :cond_0
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_0

    .line 772
    .end local v1           #arr$:[Lorg/mozilla/javascript/ScriptStackElement;
    .end local v3           #group:[Lorg/mozilla/javascript/ScriptStackElement;
    .end local v7           #len$:I
    .end local v10           #sb:Ljava/lang/StringBuilder;
    :cond_1
    return-object v9
.end method

.method public getScriptStackElements(Lorg/mozilla/javascript/RhinoException;)[[Lorg/mozilla/javascript/ScriptStackElement;
    .locals 14
    .parameter "ex"

    .prologue
    .line 777
    iget-object v13, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    if-nez v13, :cond_0

    .line 778
    const/4 p0, 0x0

    check-cast p0, [[Lorg/mozilla/javascript/ScriptStackElement;

    .end local p0
    move-object v13, p0

    .line 810
    :goto_0
    return-object v13

    .line 781
    .restart local p0
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 783
    .local v11, list:Ljava/util/List;,"Ljava/util/List<[Lorg/mozilla/javascript/ScriptStackElement;>;"
    iget-object p0, p1, Lorg/mozilla/javascript/RhinoException;->interpreterStackInfo:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-object v0, p0

    check-cast v0, [Lorg/mozilla/javascript/Interpreter$CallFrame;

    move-object v1, v0

    .line 784
    .local v1, array:[Lorg/mozilla/javascript/Interpreter$CallFrame;
    iget-object v9, p1, Lorg/mozilla/javascript/RhinoException;->interpreterLineData:[I

    .line 785
    .local v9, linePC:[I
    array-length v2, v1

    .line 786
    .local v2, arrayIndex:I
    array-length v10, v9

    .line 787
    .local v10, linePCIndex:I
    :goto_1
    if-eqz v2, :cond_5

    .line 788
    add-int/lit8 v2, v2, -0x1

    .line 789
    aget-object v4, v1, v2

    .line 790
    .local v4, frame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 791
    .local v6, group:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ScriptStackElement;>;"
    :goto_2
    if-eqz v4, :cond_4

    .line 792
    if-nez v10, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 793
    :cond_1
    add-int/lit8 v10, v10, -0x1

    .line 794
    iget-object v7, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    .line 795
    .local v7, idata:Lorg/mozilla/javascript/InterpreterData;
    iget-object v3, v7, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    .line 796
    .local v3, fileName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 797
    .local v5, functionName:Ljava/lang/String;
    const/4 v8, -0x1

    .line 798
    .local v8, lineNumber:I
    aget v12, v9, v10

    .line 799
    .local v12, pc:I
    if-ltz v12, :cond_2

    .line 800
    iget-object v13, v7, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    invoke-static {v13, v12}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v8

    .line 802
    :cond_2
    iget-object v13, v7, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    if-eqz v13, :cond_3

    iget-object v13, v7, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_3

    .line 803
    iget-object v5, v7, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    .line 805
    :cond_3
    iget-object v4, v4, Lorg/mozilla/javascript/Interpreter$CallFrame;->parentFrame:Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 806
    new-instance v13, Lorg/mozilla/javascript/ScriptStackElement;

    invoke-direct {v13, v3, v5, v8}, Lorg/mozilla/javascript/ScriptStackElement;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 808
    .end local v3           #fileName:Ljava/lang/String;
    .end local v5           #functionName:Ljava/lang/String;
    .end local v7           #idata:Lorg/mozilla/javascript/InterpreterData;
    .end local v8           #lineNumber:I
    .end local v12           #pc:I
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Lorg/mozilla/javascript/ScriptStackElement;

    invoke-interface {v6, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 810
    .end local v4           #frame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    .end local v6           #group:Ljava/util/List;,"Ljava/util/List<Lorg/mozilla/javascript/ScriptStackElement;>;"
    :cond_5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [[Lorg/mozilla/javascript/ScriptStackElement;

    invoke-interface {v11, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[Lorg/mozilla/javascript/ScriptStackElement;

    move-object v13, p0

    goto :goto_0
.end method

.method public getSourcePositionFromStack(Lorg/mozilla/javascript/Context;[I)Ljava/lang/String;
    .locals 5
    .parameter "cx"
    .parameter "linep"

    .prologue
    const/4 v4, 0x0

    .line 690
    iget-object v0, p1, Lorg/mozilla/javascript/Context;->lastInterpreterFrame:Ljava/lang/Object;

    check-cast v0, Lorg/mozilla/javascript/Interpreter$CallFrame;

    .line 691
    .local v0, frame:Lorg/mozilla/javascript/Interpreter$CallFrame;
    iget-object v1, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->idata:Lorg/mozilla/javascript/InterpreterData;

    .line 692
    .local v1, idata:Lorg/mozilla/javascript/InterpreterData;
    iget v2, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcSourceLineStart:I

    if-ltz v2, :cond_0

    .line 693
    iget-object v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget v3, v0, Lorg/mozilla/javascript/Interpreter$CallFrame;->pcSourceLineStart:I

    invoke-static {v2, v3}, Lorg/mozilla/javascript/Interpreter;->getIndex([BI)I

    move-result v2

    aput v2, p2, v4

    .line 697
    :goto_0
    iget-object v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsSourceFile:Ljava/lang/String;

    return-object v2

    .line 695
    :cond_0
    aput v4, p2, v4

    goto :goto_0
.end method

.method public setEvalScriptFlag(Lorg/mozilla/javascript/Script;)V
    .locals 2
    .parameter "script"

    .prologue
    .line 248
    check-cast p1, Lorg/mozilla/javascript/InterpretedFunction;

    .end local p1
    iget-object v0, p1, Lorg/mozilla/javascript/InterpretedFunction;->idata:Lorg/mozilla/javascript/InterpreterData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/mozilla/javascript/InterpreterData;->evalScriptFlag:Z

    .line 249
    return-void
.end method
