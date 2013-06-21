.class public Lkawa/standard/callcc;
.super Lgnu/mapping/MethodProc;
.source "callcc.java"

# interfaces
.implements Lgnu/expr/CanInline;
.implements Lgnu/expr/Inlineable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkawa/standard/callcc$ExitThroughFinallyChecker;
    }
.end annotation


# static fields
.field public static final callcc:Lkawa/standard/callcc;

.field public static final typeContinuation:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lkawa/standard/callcc;

    invoke-direct {v0}, Lkawa/standard/callcc;-><init>()V

    sput-object v0, Lkawa/standard/callcc;->callcc:Lkawa/standard/callcc;

    .line 72
    const-string v0, "kawa.lang.Continuation"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lkawa/standard/callcc;->typeContinuation:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 163
    return-void
.end method

.method private canInline(Lgnu/expr/ApplyExp;)Lgnu/expr/LambdaExp;
    .locals 6
    .parameter "exp"

    .prologue
    const/4 v5, 0x1

    .line 58
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v2

    .line 60
    .local v2, args:[Lgnu/expr/Expression;
    array-length v4, v2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    aget-object v1, v2, v4

    .local v1, arg0:Lgnu/expr/Expression;
    instance-of v4, v1, Lgnu/expr/LambdaExp;

    if-eqz v4, :cond_0

    .line 62
    move-object v0, v1

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v3, v0

    .line 63
    .local v3, lexp:Lgnu/expr/LambdaExp;
    iget v4, v3, Lgnu/expr/LambdaExp;->min_args:I

    if-ne v4, v5, :cond_0

    iget v4, v3, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v3

    .line 69
    .end local v1           #arg0:Lgnu/expr/Expression;
    .end local v3           #lexp:Lgnu/expr/LambdaExp;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 4
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v2, p1, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    check-cast v2, Lgnu/mapping/Procedure;

    .line 29
    .local v2, proc:Lgnu/mapping/Procedure;
    new-instance v0, Lkawa/lang/Continuation;

    invoke-direct {v0, p1}, Lkawa/lang/Continuation;-><init>(Lgnu/mapping/CallContext;)V

    .line 30
    .local v0, cont:Lkawa/lang/Continuation;
    invoke-virtual {v2, v0, p1}, Lgnu/mapping/Procedure;->check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 31
    iget-object v2, p1, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 32
    const/4 v3, 0x0

    iput-object v3, p1, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 35
    :try_start_0
    invoke-virtual {v2, p1}, Lgnu/mapping/Procedure;->apply(Lgnu/mapping/CallContext;)V

    .line 36
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 37
    const/4 v3, 0x1

    iput-boolean v3, v0, Lkawa/lang/Continuation;->invoked:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 41
    .local v1, ex:Ljava/lang/Throwable;
    invoke-static {v1, v0, p1}, Lkawa/lang/Continuation;->handleException$X(Ljava/lang/Throwable;Lkawa/lang/Continuation;Lgnu/mapping/CallContext;)V

    goto :goto_0
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 19
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 93
    invoke-direct/range {p0 .. p1}, Lkawa/standard/callcc;->canInline(Lgnu/expr/ApplyExp;)Lgnu/expr/LambdaExp;

    move-result-object v11

    .line 94
    .local v11, lambda:Lgnu/expr/LambdaExp;
    if-nez v11, :cond_0

    .line 96
    invoke-static/range {p1 .. p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 155
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v6

    .line 100
    .local v6, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {v11}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v12

    .line 101
    .local v12, param:Lgnu/expr/Declaration;
    invoke-virtual {v12}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-virtual {v12}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v16

    if-nez v16, :cond_2

    invoke-virtual {v12}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v16

    if-nez v16, :cond_2

    .line 103
    new-instance v8, Lkawa/standard/CompileTimeContinuation;

    invoke-direct {v8}, Lkawa/standard/CompileTimeContinuation;-><init>()V

    .line 104
    .local v8, contProxy:Lkawa/standard/CompileTimeContinuation;
    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/expr/StackTarget;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    invoke-virtual/range {p3 .. p3}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v16

    move-object/from16 v13, v16

    .line 105
    .local v13, rtype:Lgnu/bytecode/Type;
    :goto_1
    move-object v0, v11

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v16, v0

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lkawa/standard/callcc$ExitThroughFinallyChecker;->check(Lgnu/expr/Declaration;Lgnu/expr/Expression;)Z

    move-result v14

    .line 107
    .local v14, runFinallyBlocks:Z
    invoke-virtual {v6, v13, v14}, Lgnu/bytecode/CodeAttr;->startExitableBlock(Lgnu/bytecode/Type;Z)Lgnu/bytecode/ExitableBlock;

    move-result-object v5

    .line 108
    .local v5, bl:Lgnu/bytecode/ExitableBlock;
    iput-object v5, v8, Lkawa/standard/CompileTimeContinuation;->exitableBlock:Lgnu/bytecode/ExitableBlock;

    .line 109
    move-object/from16 v0, p3

    move-object v1, v8

    iput-object v0, v1, Lkawa/standard/CompileTimeContinuation;->blockTarget:Lgnu/expr/Target;

    .line 110
    new-instance v16, Lgnu/expr/QuoteExp;

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    .line 111
    move-object v0, v11

    iget-object v0, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 112
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->endExitableBlock()V

    goto :goto_0

    .line 104
    .end local v5           #bl:Lgnu/bytecode/ExitableBlock;
    .end local v13           #rtype:Lgnu/bytecode/Type;
    .end local v14           #runFinallyBlocks:Z
    :cond_1
    const/16 v16, 0x0

    move-object/from16 v13, v16

    goto :goto_1

    .line 116
    .end local v8           #contProxy:Lkawa/standard/CompileTimeContinuation;
    :cond_2
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v15

    .line 117
    .local v15, sc:Lgnu/bytecode/Scope;
    sget-object v16, Lkawa/standard/callcc;->typeContinuation:Lgnu/bytecode/ClassType;

    const/16 v17, 0x0

    move-object v0, v15

    move-object v1, v6

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v9

    .line 118
    .local v9, contVar:Lgnu/bytecode/Variable;
    new-instance v7, Lgnu/expr/Declaration;

    invoke-direct {v7, v9}, Lgnu/expr/Declaration;-><init>(Lgnu/bytecode/Variable;)V

    .line 119
    .local v7, contDecl:Lgnu/expr/Declaration;
    sget-object v16, Lkawa/standard/callcc;->typeContinuation:Lgnu/bytecode/ClassType;

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 120
    sget-object v16, Lkawa/standard/callcc;->typeContinuation:Lgnu/bytecode/ClassType;

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 122
    sget-object v16, Lkawa/standard/callcc;->typeContinuation:Lgnu/bytecode/ClassType;

    const-string v17, "<init>"

    const/16 v18, 0x1

    invoke-virtual/range {v16 .. v18}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v16

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 123
    invoke-virtual {v6, v9}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 124
    const/16 v16, 0x0

    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/expr/IgnoreTarget;

    move/from16 v17, v0

    if-nez v17, :cond_3

    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/expr/ConsumerTarget;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    :cond_3
    const/16 v17, 0x0

    :goto_2
    move-object v0, v6

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 125
    new-instance v4, Lgnu/expr/ApplyExp;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Lgnu/expr/ReferenceExp;

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-direct {v0, v1}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v18, v16, v17

    move-object v0, v4

    move-object v1, v11

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 126
    .local v4, app:Lgnu/expr/ApplyExp;
    move-object v0, v4

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 128
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 130
    invoke-virtual {v6, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 131
    const/16 v16, 0x1

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 132
    sget-object v16, Lkawa/standard/callcc;->typeContinuation:Lgnu/bytecode/ClassType;

    const-string v17, "invoked"

    invoke-virtual/range {v16 .. v17}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v16

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 134
    :cond_4
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitTryEnd()V

    .line 137
    const/16 v16, 0x0

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitCatchStart(Lgnu/bytecode/Variable;)V

    .line 138
    invoke-virtual {v6, v9}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 139
    move-object/from16 v0, p3

    instance-of v0, v0, Lgnu/expr/ConsumerTarget;

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 141
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 142
    sget-object v16, Lkawa/standard/callcc;->typeContinuation:Lgnu/bytecode/ClassType;

    const-string v17, "handleException$X"

    const/16 v18, 0x3

    invoke-virtual/range {v16 .. v18}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v10

    .line 143
    .local v10, handleMethod:Lgnu/bytecode/Method;
    invoke-virtual {v6, v10}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 151
    :goto_3
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitCatchEnd()V

    .line 153
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    .line 154
    invoke-virtual {v6}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    goto/16 :goto_0

    .line 124
    .end local v4           #app:Lgnu/expr/ApplyExp;
    .end local v10           #handleMethod:Lgnu/bytecode/Method;
    :cond_5
    sget-object v17, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    goto :goto_2

    .line 147
    .restart local v4       #app:Lgnu/expr/ApplyExp;
    :cond_6
    sget-object v16, Lkawa/standard/callcc;->typeContinuation:Lgnu/bytecode/ClassType;

    const-string v17, "handleException"

    const/16 v18, 0x2

    invoke-virtual/range {v16 .. v18}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v10

    .line 148
    .restart local v10       #handleMethod:Lgnu/bytecode/Method;
    invoke-virtual {v6, v10}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 149
    sget-object v16, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_3
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .parameter "args"

    .prologue
    .line 159
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Z)Lgnu/expr/Expression;
    .locals 3
    .parameter "exp"
    .parameter "walker"
    .parameter "argsInlined"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lkawa/standard/callcc;->canInline(Lgnu/expr/ApplyExp;)Lgnu/expr/LambdaExp;

    move-result-object v1

    .line 79
    .local v1, lexp:Lgnu/expr/LambdaExp;
    if-eqz v1, :cond_0

    .line 81
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgnu/expr/LambdaExp;->setInlineOnly(Z)V

    .line 82
    iput-object p1, v1, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/ApplyExp;

    .line 83
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 84
    .local v0, contDecl:Lgnu/expr/Declaration;
    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->getFlag(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    sget-object v2, Lkawa/standard/callcc;->typeContinuation:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 87
    .end local v0           #contDecl:Lgnu/expr/Declaration;
    :cond_0
    invoke-virtual {p1, p2, p3}, Lgnu/expr/ApplyExp;->walkArgs(Lgnu/expr/ExpWalker;Z)V

    .line 88
    return-object p1
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 1
    .parameter "proc"
    .parameter "ctx"

    .prologue
    .line 21
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-nez v0, :cond_0

    .line 22
    const/high16 v0, -0xc

    .line 23
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/mapping/MethodProc;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public numArgs()I
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0x1001

    return v0
.end method
