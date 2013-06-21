.class public final Lorg/mozilla/javascript/NativeContinuation;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeContinuation.java"

# interfaces
.implements Lorg/mozilla/javascript/Function;


# static fields
.field private static final FTAG:Ljava/lang/Object; = null

.field private static final Id_constructor:I = 0x1

.field private static final MAX_PROTOTYPE_ID:I = 0x1

.field static final serialVersionUID:J = 0x18e62980934d85f7L


# instance fields
.field private implementation:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "Continuation"

    sput-object v0, Lorg/mozilla/javascript/NativeContinuation;->FTAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    return-void
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 2
    .parameter "cx"
    .parameter "scope"
    .parameter "sealed"

    .prologue
    .line 52
    new-instance v0, Lorg/mozilla/javascript/NativeContinuation;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeContinuation;-><init>()V

    .line 53
    .local v0, obj:Lorg/mozilla/javascript/NativeContinuation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lorg/mozilla/javascript/NativeContinuation;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    .line 54
    return-void
.end method

.method public static isContinuationConstructor(Lorg/mozilla/javascript/IdFunctionObject;)Z
    .locals 2
    .parameter "f"

    .prologue
    const/4 v1, 0x1

    .line 85
    sget-object v0, Lorg/mozilla/javascript/NativeContinuation;->FTAG:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 80
    invoke-static {p0, p1, p2, p4}, Lorg/mozilla/javascript/Interpreter;->restartContinuation(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 1
    .parameter "cx"
    .parameter "scope"
    .parameter "args"

    .prologue
    .line 74
    const-string v0, "Direct call is not supported"

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "f"
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 107
    sget-object v1, Lorg/mozilla/javascript/NativeContinuation;->FTAG:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 110
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    .line 111
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 115
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :pswitch_0
    const-string v1, "Direct call is not supported"

    invoke-static {v1}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v1

    throw v1

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 4
    .parameter "s"

    .prologue
    .line 125
    const/4 v1, 0x0

    .local v1, id:I
    const/4 v0, 0x0

    .line 126
    .local v0, X:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    const-string v0, "constructor"

    const/4 v1, 0x1

    .line 127
    :cond_0
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 131
    :cond_1
    return v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "Continuation"

    return-object v0
.end method

.method public getImplementation()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/mozilla/javascript/NativeContinuation;->implementation:Ljava/lang/Object;

    return-object v0
.end method

.method public initImplementation(Ljava/lang/Object;)V
    .locals 0
    .parameter "implementation"

    .prologue
    .line 63
    iput-object p1, p0, Lorg/mozilla/javascript/NativeContinuation;->implementation:Ljava/lang/Object;

    .line 64
    return-void
.end method

.method protected initPrototypeId(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 96
    packed-switch p1, :pswitch_data_0

    .line 98
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :pswitch_0
    const/4 v0, 0x0

    .local v0, arity:I
    const-string v1, "constructor"

    .line 100
    .local v1, s:Ljava/lang/String;
    sget-object v2, Lorg/mozilla/javascript/NativeContinuation;->FTAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/NativeContinuation;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)V

    .line 101
    return-void

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
