.class public Lorg/mozilla/javascript/BaseFunction;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "BaseFunction.java"

# interfaces
.implements Lorg/mozilla/javascript/Function;


# static fields
.field private static final FUNCTION_TAG:Ljava/lang/Object; = null

.field private static final Id_apply:I = 0x4

.field private static final Id_arguments:I = 0x5

.field private static final Id_arity:I = 0x2

.field private static final Id_bind:I = 0x6

.field private static final Id_call:I = 0x5

.field private static final Id_constructor:I = 0x1

.field private static final Id_length:I = 0x1

.field private static final Id_name:I = 0x3

.field private static final Id_prototype:I = 0x4

.field private static final Id_toSource:I = 0x3

.field private static final Id_toString:I = 0x2

.field private static final MAX_INSTANCE_ID:I = 0x5

.field private static final MAX_PROTOTYPE_ID:I = 0x6

.field static final serialVersionUID:J = 0x49b5dd1bb05c2ae3L


# instance fields
.field private prototypeProperty:Ljava/lang/Object;

.field private prototypePropertyAttributes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "Function"

    sput-object v0, Lorg/mozilla/javascript/BaseFunction;->FUNCTION_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    .line 604
    const/4 v0, 0x6

    iput v0, p0, Lorg/mozilla/javascript/BaseFunction;->prototypePropertyAttributes:I

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V
    .locals 1
    .parameter "scope"
    .parameter "prototype"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V

    .line 604
    const/4 v0, 0x6

    iput v0, p0, Lorg/mozilla/javascript/BaseFunction;->prototypePropertyAttributes:I

    .line 71
    return-void
.end method

.method private getArguments()Ljava/lang/Object;
    .locals 5

    .prologue
    const-string v4, "arguments"

    .line 485
    const-string v3, "arguments"

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/BaseFunction;->defaultGet(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 486
    .local v2, value:Ljava/lang/Object;
    sget-object v3, Lorg/mozilla/javascript/BaseFunction;->NOT_FOUND:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    move-object v3, v2

    .line 496
    :goto_0
    return-object v3

    .line 494
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    .line 495
    .local v1, cx:Lorg/mozilla/javascript/Context;
    invoke-static {v1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->findFunctionActivation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Function;)Lorg/mozilla/javascript/NativeCall;

    move-result-object v0

    .line 496
    .local v0, activation:Lorg/mozilla/javascript/NativeCall;
    if-nez v0, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const-string v3, "arguments"

    invoke-virtual {v0, v4, v0}, Lorg/mozilla/javascript/NativeCall;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 2
    .parameter "scope"
    .parameter "sealed"

    .prologue
    .line 58
    new-instance v0, Lorg/mozilla/javascript/BaseFunction;

    invoke-direct {v0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    .line 60
    .local v0, obj:Lorg/mozilla/javascript/BaseFunction;
    const/4 v1, 0x7

    iput v1, v0, Lorg/mozilla/javascript/BaseFunction;->prototypePropertyAttributes:I

    .line 61
    const/4 v1, 0x6

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/BaseFunction;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    .line 62
    return-void
.end method

.method static isApply(Lorg/mozilla/javascript/IdFunctionObject;)Z
    .locals 2
    .parameter "f"

    .prologue
    .line 251
    sget-object v0, Lorg/mozilla/javascript/BaseFunction;->FUNCTION_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isApplyOrCall(Lorg/mozilla/javascript/IdFunctionObject;)Z
    .locals 1
    .parameter "f"

    .prologue
    .line 255
    sget-object v0, Lorg/mozilla/javascript/BaseFunction;->FUNCTION_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 262
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 259
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static jsConstructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "cx"
    .parameter "scope"
    .parameter "args"

    .prologue
    .line 504
    array-length v0, p2

    .line 505
    .local v0, arglen:I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 507
    .local v2, sourceBuf:Ljava/lang/StringBuffer;
    const-string v1, "function "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 514
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v1

    const/16 v3, 0x78

    if-eq v1, v3, :cond_0

    .line 515
    const-string v1, "anonymous"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 517
    :cond_0
    const/16 v1, 0x28

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 520
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x1

    sub-int v3, v0, v3

    if-ge v1, v3, :cond_2

    .line 521
    if-lez v1, :cond_1

    .line 522
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 524
    :cond_1
    aget-object v3, p2, v1

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 526
    :cond_2
    const-string v1, ") {"

    .end local v1           #i:I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 527
    if-eqz v0, :cond_3

    .line 529
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object p2, p2, v0

    .end local v0           #arglen:I
    .end local p2
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 530
    .local p2, funBody:Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 532
    .end local p2           #funBody:Ljava/lang/String;
    :cond_3
    const/16 p2, 0x7d

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 533
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, source:Ljava/lang/String;
    const/4 p2, 0x1

    new-array v0, p2, [I

    .line 536
    .local v0, linep:[I
    invoke-static {v0}, Lorg/mozilla/javascript/Context;->getSourcePositionFromStack([I)Ljava/lang/String;

    move-result-object p2

    .line 537
    .local p2, filename:Ljava/lang/String;
    if-nez p2, :cond_4

    .line 538
    const-string p2, "<eval\'ed string>"

    .line 539
    const/4 v1, 0x0

    const/4 v3, 0x1

    aput v3, v0, v1

    .line 542
    :cond_4
    const/4 v1, 0x0

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v1, p2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->makeUrlForGeneratedScript(ZLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 545
    .local v5, sourceURI:Ljava/lang/String;
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    .line 548
    .local v1, global:Lorg/mozilla/javascript/Scriptable;
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getErrorReporter()Lorg/mozilla/javascript/ErrorReporter;

    move-result-object p1

    .end local p1
    invoke-static {p1}, Lorg/mozilla/javascript/DefaultErrorReporter;->forEval(Lorg/mozilla/javascript/ErrorReporter;)Lorg/mozilla/javascript/ErrorReporter;

    move-result-object v4

    .line 550
    .local v4, reporter:Lorg/mozilla/javascript/ErrorReporter;
    invoke-static {}, Lorg/mozilla/javascript/Context;->createInterpreter()Lorg/mozilla/javascript/Evaluator;

    move-result-object v3

    .line 551
    .local v3, evaluator:Lorg/mozilla/javascript/Evaluator;
    if-nez v3, :cond_5

    .line 552
    new-instance p0, Lorg/mozilla/javascript/JavaScriptException;

    .end local p0
    const-string p1, "Interpreter not present"

    const/4 v1, 0x0

    aget v0, v0, v1

    .end local v0           #linep:[I
    .end local v1           #global:Lorg/mozilla/javascript/Scriptable;
    invoke-direct {p0, p1, p2, v0}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    throw p0

    .line 558
    .restart local v0       #linep:[I
    .restart local v1       #global:Lorg/mozilla/javascript/Scriptable;
    .restart local p0
    :cond_5
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lorg/mozilla/javascript/Context;->compileFunction(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Evaluator;Lorg/mozilla/javascript/ErrorReporter;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Function;

    .end local v0           #linep:[I
    move-result-object p0

    .end local p0
    return-object p0
.end method

.method private realFunction(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/BaseFunction;
    .locals 3
    .parameter "thisObj"
    .parameter "f"

    .prologue
    .line 326
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->FunctionClass:Ljava/lang/Class;

    invoke-interface {p1, v1}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 327
    .local v0, x:Ljava/lang/Object;
    instance-of v1, v0, Lorg/mozilla/javascript/BaseFunction;

    if-eqz v1, :cond_0

    .line 328
    check-cast v0, Lorg/mozilla/javascript/BaseFunction;

    .end local v0           #x:Ljava/lang/Object;
    return-object v0

    .line 330
    .restart local v0       #x:Ljava/lang/Object;
    :cond_0
    const-string v1, "msg.incompat.call"

    invoke-virtual {p2}, Lorg/mozilla/javascript/IdFunctionObject;->getFunctionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v1

    throw v1
.end method

.method private setupDefaultPrototype()V
    .locals 5

    .prologue
    .line 466
    new-instance v1, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {v1}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    .line 467
    .local v1, obj:Lorg/mozilla/javascript/NativeObject;
    const/4 v0, 0x2

    .line 468
    .local v0, attr:I
    const-string v3, "constructor"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, p0, v4}, Lorg/mozilla/javascript/NativeObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 472
    iput-object v1, p0, Lorg/mozilla/javascript/BaseFunction;->prototypeProperty:Ljava/lang/Object;

    .line 473
    invoke-static {p0}, Lorg/mozilla/javascript/BaseFunction;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    .line 474
    .local v2, proto:Lorg/mozilla/javascript/Scriptable;
    if-eq v2, v1, :cond_0

    .line 476
    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/NativeObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 478
    :cond_0
    return-void
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 362
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 7
    .parameter "cx"
    .parameter "scope"
    .parameter "args"

    .prologue
    .line 367
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/BaseFunction;->createObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    .line 368
    .local v2, result:Lorg/mozilla/javascript/Scriptable;
    if-eqz v2, :cond_1

    .line 369
    invoke-virtual {p0, p1, p2, v2, p3}, Lorg/mozilla/javascript/BaseFunction;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 370
    .local v3, val:Ljava/lang/Object;
    instance-of v4, v3, Lorg/mozilla/javascript/Scriptable;

    if-eqz v4, :cond_0

    .line 371
    move-object v0, v3

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    move-object v2, v0

    .line 393
    :cond_0
    :goto_0
    return-object v2

    .line 374
    .end local v3           #val:Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, p1, p2, v4, p3}, Lorg/mozilla/javascript/BaseFunction;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 375
    .restart local v3       #val:Ljava/lang/Object;
    instance-of v4, v3, Lorg/mozilla/javascript/Scriptable;

    if-nez v4, :cond_2

    .line 378
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad implementaion of call as constructor, name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getFunctionName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 382
    :cond_2
    move-object v0, v3

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    move-object v2, v0

    .line 383
    invoke-interface {v2}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    if-nez v4, :cond_3

    .line 384
    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getClassPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/mozilla/javascript/Scriptable;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 386
    :cond_3
    invoke-interface {v2}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    if-nez v4, :cond_0

    .line 387
    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    .line 388
    .local v1, parent:Lorg/mozilla/javascript/Scriptable;
    if-eq v2, v1, :cond_0

    .line 389
    invoke-interface {v2, v1}, Lorg/mozilla/javascript/Scriptable;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0
.end method

.method public createObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .locals 2
    .parameter "cx"
    .parameter "scope"

    .prologue
    .line 408
    new-instance v0, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    .line 409
    .local v0, newInstance:Lorg/mozilla/javascript/Scriptable;
    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getClassPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mozilla/javascript/Scriptable;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 410
    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mozilla/javascript/Scriptable;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 411
    return-object v0
.end method

.method decompile(II)Ljava/lang/String;
    .locals 3
    .parameter "indent"
    .parameter "flags"

    .prologue
    .line 424
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 425
    .local v1, sb:Ljava/lang/StringBuffer;
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move v0, v2

    .line 426
    .local v0, justbody:Z
    :goto_0
    if-nez v0, :cond_0

    .line 427
    const-string v2, "function "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getFunctionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    const-string v2, "() {\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    :cond_0
    const-string v2, "[native code, arity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getArity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 433
    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 434
    if-nez v0, :cond_1

    .line 435
    const-string v2, "}\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 425
    .end local v0           #justbody:Z
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .parameter "f"
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 269
    sget-object v5, Lorg/mozilla/javascript/BaseFunction;->FUNCTION_TAG:Ljava/lang/Object;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 270
    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 319
    :goto_0
    return-object v5

    .line 272
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v13

    .line 273
    .local v13, id:I
    packed-switch v13, :pswitch_data_0

    .line 321
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 275
    :pswitch_0
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/BaseFunction;->jsConstructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 278
    :pswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/BaseFunction;->realFunction(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/BaseFunction;

    move-result-object v15

    .line 279
    .local v15, realf:Lorg/mozilla/javascript/BaseFunction;
    const/4 v5, 0x0

    move-object/from16 v0, p5

    move v1, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32([Ljava/lang/Object;I)I

    move-result v14

    .line 280
    .local v14, indent:I
    const/4 v5, 0x0

    invoke-virtual {v15, v14, v5}, Lorg/mozilla/javascript/BaseFunction;->decompile(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 284
    .end local v14           #indent:I
    .end local v15           #realf:Lorg/mozilla/javascript/BaseFunction;
    :pswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/BaseFunction;->realFunction(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/BaseFunction;

    move-result-object v15

    .line 285
    .restart local v15       #realf:Lorg/mozilla/javascript/BaseFunction;
    const/4 v14, 0x0

    .line 286
    .restart local v14       #indent:I
    const/4 v12, 0x2

    .line 287
    .local v12, flags:I
    move-object/from16 v0, p5

    array-length v0, v0

    move v5, v0

    if-eqz v5, :cond_1

    .line 288
    const/4 v5, 0x0

    aget-object v5, p5, v5

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result v14

    .line 289
    if-ltz v14, :cond_2

    .line 290
    const/4 v12, 0x0

    .line 295
    :cond_1
    :goto_1
    invoke-virtual {v15, v14, v12}, Lorg/mozilla/javascript/BaseFunction;->decompile(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 292
    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    .line 300
    .end local v12           #flags:I
    .end local v14           #indent:I
    .end local v15           #realf:Lorg/mozilla/javascript/BaseFunction;
    :pswitch_3
    const/4 v5, 0x4

    if-ne v13, v5, :cond_3

    const/4 v5, 0x1

    :goto_2
    move v0, v5

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->applyOrCall(ZLorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 304
    :pswitch_4
    move-object/from16 v0, p4

    instance-of v0, v0, Lorg/mozilla/javascript/Callable;

    move v5, v0

    if-nez v5, :cond_4

    .line 305
    invoke-static/range {p4 .. p4}, Lorg/mozilla/javascript/ScriptRuntime;->notFunctionError(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 307
    :cond_4
    move-object/from16 v0, p4

    check-cast v0, Lorg/mozilla/javascript/Callable;

    move-object v8, v0

    .line 308
    .local v8, targetFunction:Lorg/mozilla/javascript/Callable;
    move-object/from16 v0, p5

    array-length v0, v0

    move v11, v0

    .line 311
    .local v11, argc:I
    if-lez v11, :cond_5

    .line 312
    const/4 v5, 0x0

    aget-object v5, p5, v5

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v9

    .line 313
    .local v9, boundThis:Lorg/mozilla/javascript/Scriptable;
    const/4 v5, 0x1

    sub-int v5, v11, v5

    new-array v10, v5, [Ljava/lang/Object;

    .line 314
    .local v10, boundArgs:[Ljava/lang/Object;
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    sub-int v7, v11, v7

    move-object/from16 v0, p5

    move v1, v5

    move-object v2, v10

    move v3, v6

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    :goto_3
    new-instance v5, Lorg/mozilla/javascript/BoundFunction;

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v5 .. v10}, Lorg/mozilla/javascript/BoundFunction;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 316
    .end local v9           #boundThis:Lorg/mozilla/javascript/Scriptable;
    .end local v10           #boundArgs:[Ljava/lang/Object;
    :cond_5
    sget-object v5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v9

    .line 317
    .restart local v9       #boundThis:Lorg/mozilla/javascript/Scriptable;
    sget-object v10, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    .restart local v10       #boundArgs:[Ljava/lang/Object;
    goto :goto_3

    .line 273
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .locals 0
    .parameter "ctor"

    .prologue
    .line 229
    invoke-virtual {p1, p0}, Lorg/mozilla/javascript/IdFunctionObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 230
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    .line 231
    return-void
.end method

.method protected findInstanceIdInfo(Ljava/lang/String;)I
    .locals 5
    .parameter "s"

    .prologue
    .line 136
    const/4 v3, 0x0

    .local v3, id:I
    const/4 v0, 0x0

    .line 137
    .local v0, X:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 146
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x0

    .line 152
    :cond_1
    if-nez v3, :cond_3

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result v4

    .line 169
    :goto_1
    return v4

    .line 138
    :pswitch_1
    const-string v0, "name"

    const/4 v3, 0x3

    goto :goto_0

    .line 139
    :pswitch_2
    const-string v0, "arity"

    const/4 v3, 0x2

    goto :goto_0

    .line 140
    :pswitch_3
    const-string v0, "length"

    const/4 v3, 0x1

    goto :goto_0

    .line 141
    :pswitch_4
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 142
    .local v2, c:I
    const/16 v4, 0x61

    if-ne v2, v4, :cond_2

    const-string v0, "arguments"

    const/4 v3, 0x5

    goto :goto_0

    .line 143
    :cond_2
    const/16 v4, 0x70

    if-ne v2, v4, :cond_0

    const-string v0, "prototype"

    const/4 v3, 0x4

    goto :goto_0

    .line 155
    .end local v2           #c:I
    :cond_3
    packed-switch v3, :pswitch_data_1

    .line 167
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 159
    :pswitch_5
    const/4 v1, 0x7

    .line 169
    .local v1, attr:I
    :goto_2
    invoke-static {v1, v3}, Lorg/mozilla/javascript/BaseFunction;->instanceIdInfo(II)I

    move-result v4

    goto :goto_1

    .line 162
    .end local v1           #attr:I
    :pswitch_6
    iget v1, p0, Lorg/mozilla/javascript/BaseFunction;->prototypePropertyAttributes:I

    .line 163
    .restart local v1       #attr:I
    goto :goto_2

    .line 165
    .end local v1           #attr:I
    :pswitch_7
    const/4 v1, 0x6

    .line 166
    .restart local v1       #attr:I
    goto :goto_2

    .line 137
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 155
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 4
    .parameter "s"

    .prologue
    .line 568
    const/4 v2, 0x0

    .local v2, id:I
    const/4 v0, 0x0

    .line 569
    .local v0, X:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 581
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 585
    :cond_1
    return v2

    .line 570
    :pswitch_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 571
    .local v1, c:I
    const/16 v3, 0x62

    if-ne v1, v3, :cond_2

    const-string v0, "bind"

    const/4 v2, 0x6

    goto :goto_0

    .line 572
    :cond_2
    const/16 v3, 0x63

    if-ne v1, v3, :cond_0

    const-string v0, "call"

    const/4 v2, 0x5

    goto :goto_0

    .line 574
    .end local v1           #c:I
    :pswitch_2
    const-string v0, "apply"

    const/4 v2, 0x4

    goto :goto_0

    .line 575
    :pswitch_3
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 576
    .restart local v1       #c:I
    const/16 v3, 0x6f

    if-ne v1, v3, :cond_3

    const-string v0, "toSource"

    const/4 v2, 0x3

    goto :goto_0

    .line 577
    :cond_3
    const/16 v3, 0x74

    if-ne v1, v3, :cond_0

    const-string v0, "toString"

    const/4 v2, 0x2

    goto :goto_0

    .line 579
    .end local v1           #c:I
    :pswitch_4
    const-string v0, "constructor"

    const/4 v2, 0x1

    goto :goto_0

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getArity()I
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "Function"

    return-object v0
.end method

.method protected getClassPrototype()Lorg/mozilla/javascript/Scriptable;
    .locals 2

    .prologue
    .line 349
    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getPrototypeProperty()Ljava/lang/Object;

    move-result-object v0

    .line 350
    .local v0, protoVal:Ljava/lang/Object;
    instance-of v1, v0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_0

    .line 351
    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    .end local v0           #protoVal:Ljava/lang/Object;
    move-object v1, v0

    .line 353
    :goto_0
    return-object v1

    .restart local v0       #protoVal:Ljava/lang/Object;
    :cond_0
    const-string v1, "Object"

    invoke-static {p0, v1}, Lorg/mozilla/javascript/BaseFunction;->getClassPrototype(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    goto :goto_0
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    const-string v0, ""

    return-object v0
.end method

.method protected getInstanceIdName(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 175
    packed-switch p1, :pswitch_data_0

    .line 182
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdName(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 176
    :pswitch_0
    const-string v0, "length"

    goto :goto_0

    .line 177
    :pswitch_1
    const-string v0, "arity"

    goto :goto_0

    .line 178
    :pswitch_2
    const-string v0, "name"

    goto :goto_0

    .line 179
    :pswitch_3
    const-string v0, "prototype"

    goto :goto_0

    .line 180
    :pswitch_4
    const-string v0, "arguments"

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected getInstanceIdValue(I)Ljava/lang/Object;
    .locals 1
    .parameter "id"

    .prologue
    .line 188
    packed-switch p1, :pswitch_data_0

    .line 195
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 189
    :pswitch_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getLength()I

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 190
    :pswitch_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getArity()I

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 191
    :pswitch_2
    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 192
    :pswitch_3
    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getPrototypeProperty()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 193
    :pswitch_4
    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;->getArguments()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method protected getMaxInstanceId()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x5

    return v0
.end method

.method final getPrototypeProperty()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lorg/mozilla/javascript/BaseFunction;->prototypeProperty:Ljava/lang/Object;

    .line 451
    .local v0, result:Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 452
    monitor-enter p0

    .line 453
    :try_start_0
    iget-object v0, p0, Lorg/mozilla/javascript/BaseFunction;->prototypeProperty:Ljava/lang/Object;

    .line 454
    if-nez v0, :cond_0

    .line 455
    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;->setupDefaultPrototype()V

    .line 456
    iget-object v0, p0, Lorg/mozilla/javascript/BaseFunction;->prototypeProperty:Ljava/lang/Object;

    .line 458
    :cond_0
    monitor-exit p0

    .line 461
    .end local v0           #result:Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v0

    .line 458
    .restart local v0       #result:Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 460
    :cond_2
    sget-object v1, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTypeOf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->avoidObjectDetection()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "undefined"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "function"

    goto :goto_0
.end method

.method public hasInstance(Lorg/mozilla/javascript/Scriptable;)Z
    .locals 3
    .parameter "instance"

    .prologue
    .line 106
    const-string v1, "prototype"

    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 107
    .local v0, protoProp:Ljava/lang/Object;
    instance-of v1, v0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_0

    .line 108
    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    .end local v0           #protoProp:Ljava/lang/Object;
    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->jsDelegatesTo(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v1

    return v1

    .line 110
    .restart local v0       #protoProp:Ljava/lang/Object;
    :cond_0
    const-string v1, "msg.instanceof.bad.prototype"

    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getFunctionName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v1

    throw v1
.end method

.method protected initPrototypeId(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 238
    packed-switch p1, :pswitch_data_0

    .line 245
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 239
    :pswitch_0
    const/4 v0, 0x1

    .local v0, arity:I
    const-string v1, "constructor"

    .line 247
    .local v1, s:Ljava/lang/String;
    :goto_0
    sget-object v2, Lorg/mozilla/javascript/BaseFunction;->FUNCTION_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/BaseFunction;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)V

    .line 248
    return-void

    .line 240
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_1
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "toString"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 241
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_2
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "toSource"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 242
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_3
    const/4 v0, 0x2

    .restart local v0       #arity:I
    const-string v1, "apply"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 243
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_4
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "call"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 244
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_5
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "bind"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setImmunePrototypeProperty(Ljava/lang/Object;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 340
    iget v0, p0, Lorg/mozilla/javascript/BaseFunction;->prototypePropertyAttributes:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 341
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 343
    :cond_0
    if-eqz p1, :cond_1

    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/mozilla/javascript/BaseFunction;->prototypeProperty:Ljava/lang/Object;

    .line 344
    const/4 v0, 0x7

    iput v0, p0, Lorg/mozilla/javascript/BaseFunction;->prototypePropertyAttributes:I

    .line 345
    return-void

    .line 343
    :cond_1
    sget-object v0, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    goto :goto_0
.end method

.method protected setInstanceIdValue(ILjava/lang/Object;)V
    .locals 1
    .parameter "id"
    .parameter "value"

    .prologue
    .line 201
    packed-switch p1, :pswitch_data_0

    .line 220
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->setInstanceIdValue(ILjava/lang/Object;)V

    .line 221
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 203
    :pswitch_1
    iget v0, p0, Lorg/mozilla/javascript/BaseFunction;->prototypePropertyAttributes:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 204
    if-eqz p2, :cond_1

    move-object v0, p2

    :goto_1
    iput-object v0, p0, Lorg/mozilla/javascript/BaseFunction;->prototypeProperty:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    goto :goto_1

    .line 209
    :pswitch_2
    sget-object v0, Lorg/mozilla/javascript/BaseFunction;->NOT_FOUND:Ljava/lang/Object;

    if-ne p2, v0, :cond_2

    .line 211
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 213
    :cond_2
    const-string v0, "arguments"

    invoke-virtual {p0, v0, p2}, Lorg/mozilla/javascript/BaseFunction;->defaultPut(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method