.class public final Lorg/mozilla/javascript/NativeGenerator;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/NativeGenerator$GeneratorClosedException;,
        Lorg/mozilla/javascript/NativeGenerator$CloseGeneratorAction;
    }
.end annotation


# static fields
.field public static final GENERATOR_CLOSE:I = 0x2

.field public static final GENERATOR_SEND:I = 0x0

.field private static final GENERATOR_TAG:Ljava/lang/Object; = null

.field public static final GENERATOR_THROW:I = 0x1

.field private static final Id___iterator__:I = 0x5

.field private static final Id_close:I = 0x1

.field private static final Id_next:I = 0x2

.field private static final Id_send:I = 0x3

.field private static final Id_throw:I = 0x4

.field private static final MAX_PROTOTYPE_ID:I = 0x5

.field private static final serialVersionUID:J = 0x16d762746ec522c9L


# instance fields
.field private firstTime:Z

.field private function:Lorg/mozilla/javascript/NativeFunction;

.field private lineNumber:I

.field private lineSource:Ljava/lang/String;

.field private locked:Z

.field private savedState:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "Generator"

    sput-object v0, Lorg/mozilla/javascript/NativeGenerator;->GENERATOR_TAG:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeGenerator;->firstTime:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/NativeFunction;Ljava/lang/Object;)V
    .locals 3
    .parameter "scope"
    .parameter "function"
    .parameter "savedState"

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    .line 282
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/mozilla/javascript/NativeGenerator;->firstTime:Z

    .line 78
    iput-object p2, p0, Lorg/mozilla/javascript/NativeGenerator;->function:Lorg/mozilla/javascript/NativeFunction;

    .line 79
    iput-object p3, p0, Lorg/mozilla/javascript/NativeGenerator;->savedState:Ljava/lang/Object;

    .line 83
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    .line 84
    .local v1, top:Lorg/mozilla/javascript/Scriptable;
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/NativeGenerator;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 85
    sget-object v2, Lorg/mozilla/javascript/NativeGenerator;->GENERATOR_TAG:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptableObject;->getTopScopeValue(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/NativeGenerator;

    .line 87
    .local v0, prototype:Lorg/mozilla/javascript/NativeGenerator;
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/NativeGenerator;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lorg/mozilla/javascript/NativeGenerator;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/NativeGenerator;->resume(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static init(Lorg/mozilla/javascript/ScriptableObject;Z)Lorg/mozilla/javascript/NativeGenerator;
    .locals 2
    .parameter "scope"
    .parameter "sealed"

    .prologue
    .line 49
    new-instance v0, Lorg/mozilla/javascript/NativeGenerator;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeGenerator;-><init>()V

    .line 50
    .local v0, prototype:Lorg/mozilla/javascript/NativeGenerator;
    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/NativeGenerator;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 52
    invoke-static {p0}, Lorg/mozilla/javascript/NativeGenerator;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeGenerator;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 54
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeGenerator;->activatePrototypeMap(I)V

    .line 55
    if-eqz p1, :cond_1

    .line 56
    invoke-virtual {v0}, Lorg/mozilla/javascript/NativeGenerator;->sealObject()V

    .line 63
    :cond_1
    if-eqz p0, :cond_2

    .line 64
    sget-object v1, Lorg/mozilla/javascript/NativeGenerator;->GENERATOR_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lorg/mozilla/javascript/ScriptableObject;->associateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_2
    return-object v0
.end method

.method private resume(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter "cx"
    .parameter "scope"
    .parameter "operation"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 202
    iget-object v0, p0, Lorg/mozilla/javascript/NativeGenerator;->savedState:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 203
    if-ne p3, v8, :cond_1

    .line 204
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 239
    :cond_0
    :goto_0
    return-object v0

    .line 206
    :cond_1
    if-ne p3, v1, :cond_2

    .line 207
    move-object v7, p4

    .line 211
    .local v7, thrown:Ljava/lang/Object;
    :goto_1
    new-instance v0, Lorg/mozilla/javascript/JavaScriptException;

    iget-object v1, p0, Lorg/mozilla/javascript/NativeGenerator;->lineSource:Ljava/lang/String;

    iget v2, p0, Lorg/mozilla/javascript/NativeGenerator;->lineNumber:I

    invoke-direct {v0, v7, v1, v2}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    throw v0

    .line 209
    .end local v7           #thrown:Ljava/lang/Object;
    :cond_2
    invoke-static {p2}, Lorg/mozilla/javascript/NativeIterator;->getStopIterationObject(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v7

    .restart local v7       #thrown:Ljava/lang/Object;
    goto :goto_1

    .line 214
    .end local v7           #thrown:Ljava/lang/Object;
    :cond_3
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3
    .catch Lorg/mozilla/javascript/NativeGenerator$GeneratorClosedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 218
    :try_start_1
    iget-boolean v0, p0, Lorg/mozilla/javascript/NativeGenerator;->locked:Z

    if-eqz v0, :cond_4

    .line 219
    const-string v0, "msg.already.exec.gen"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Lorg/mozilla/javascript/NativeGenerator$GeneratorClosedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_2 .. :try_end_2} :catch_1

    .line 224
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 228
    .local v6, e:Lorg/mozilla/javascript/NativeGenerator$GeneratorClosedException;
    :try_start_3
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 235
    monitor-enter p0

    .line 236
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lorg/mozilla/javascript/NativeGenerator;->locked:Z

    .line 237
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 238
    if-ne p3, v8, :cond_0

    .line 239
    iput-object v9, p0, Lorg/mozilla/javascript/NativeGenerator;->savedState:Ljava/lang/Object;

    goto :goto_0

    .line 220
    .end local v6           #e:Lorg/mozilla/javascript/NativeGenerator$GeneratorClosedException;
    :cond_4
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lorg/mozilla/javascript/NativeGenerator;->locked:Z

    .line 221
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 222
    :try_start_6
    iget-object v0, p0, Lorg/mozilla/javascript/NativeGenerator;->function:Lorg/mozilla/javascript/NativeFunction;

    iget-object v4, p0, Lorg/mozilla/javascript/NativeGenerator;->savedState:Ljava/lang/Object;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeFunction;->resumeGenerator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Lorg/mozilla/javascript/NativeGenerator$GeneratorClosedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/mozilla/javascript/RhinoException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v0

    .line 235
    monitor-enter p0

    .line 236
    const/4 v1, 0x0

    :try_start_7
    iput-boolean v1, p0, Lorg/mozilla/javascript/NativeGenerator;->locked:Z

    .line 237
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 238
    if-ne p3, v8, :cond_0

    .line 239
    iput-object v9, p0, Lorg/mozilla/javascript/NativeGenerator;->savedState:Ljava/lang/Object;

    goto :goto_0

    .line 237
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    .restart local v6       #e:Lorg/mozilla/javascript/NativeGenerator$GeneratorClosedException;
    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    .line 229
    .end local v6           #e:Lorg/mozilla/javascript/NativeGenerator$GeneratorClosedException;
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 230
    .local v6, e:Lorg/mozilla/javascript/RhinoException;
    :try_start_a
    invoke-virtual {v6}, Lorg/mozilla/javascript/RhinoException;->lineNumber()I

    move-result v0

    iput v0, p0, Lorg/mozilla/javascript/NativeGenerator;->lineNumber:I

    .line 231
    invoke-virtual {v6}, Lorg/mozilla/javascript/RhinoException;->lineSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/NativeGenerator;->lineSource:Ljava/lang/String;

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/javascript/NativeGenerator;->savedState:Ljava/lang/Object;

    .line 233
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 235
    .end local v6           #e:Lorg/mozilla/javascript/RhinoException;
    :catchall_3
    move-exception v0

    monitor-enter p0

    .line 236
    const/4 v1, 0x0

    :try_start_b
    iput-boolean v1, p0, Lorg/mozilla/javascript/NativeGenerator;->locked:Z

    .line 237
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 238
    if-ne p3, v8, :cond_5

    .line 239
    iput-object v9, p0, Lorg/mozilla/javascript/NativeGenerator;->savedState:Ljava/lang/Object;

    :cond_5
    throw v0

    .line 237
    :catchall_4
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "f"
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    const/4 v6, 0x0

    .line 156
    sget-object v4, Lorg/mozilla/javascript/NativeGenerator;->GENERATOR_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 157
    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 192
    :goto_0
    return-object v4

    .line 159
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v3

    .line 161
    .local v3, id:I
    instance-of v4, p4, Lorg/mozilla/javascript/NativeGenerator;

    if-nez v4, :cond_1

    .line 162
    invoke-static {p1}, Lorg/mozilla/javascript/NativeGenerator;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v4

    throw v4

    .line 164
    :cond_1
    move-object v0, p4

    check-cast v0, Lorg/mozilla/javascript/NativeGenerator;

    move-object v2, v0

    .line 166
    .local v2, generator:Lorg/mozilla/javascript/NativeGenerator;
    packed-switch v3, :pswitch_data_0

    .line 195
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 170
    :pswitch_0
    const/4 v4, 0x2

    new-instance v5, Lorg/mozilla/javascript/NativeGenerator$GeneratorClosedException;

    invoke-direct {v5}, Lorg/mozilla/javascript/NativeGenerator$GeneratorClosedException;-><init>()V

    invoke-direct {v2, p2, p3, v4, v5}, Lorg/mozilla/javascript/NativeGenerator;->resume(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 175
    :pswitch_1
    iput-boolean v6, v2, Lorg/mozilla/javascript/NativeGenerator;->firstTime:Z

    .line 176
    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-direct {v2, p2, p3, v6, v4}, Lorg/mozilla/javascript/NativeGenerator;->resume(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 180
    :pswitch_2
    array-length v4, p5

    if-lez v4, :cond_2

    aget-object v4, p5, v6

    move-object v1, v4

    .line 181
    .local v1, arg:Ljava/lang/Object;
    :goto_1
    iget-boolean v4, v2, Lorg/mozilla/javascript/NativeGenerator;->firstTime:Z

    if-eqz v4, :cond_3

    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 182
    const-string v4, "msg.send.newborn"

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v4

    throw v4

    .line 180
    .end local v1           #arg:Ljava/lang/Object;
    :cond_2
    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object v1, v4

    goto :goto_1

    .line 184
    .restart local v1       #arg:Ljava/lang/Object;
    :cond_3
    invoke-direct {v2, p2, p3, v6, v1}, Lorg/mozilla/javascript/NativeGenerator;->resume(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 188
    .end local v1           #arg:Ljava/lang/Object;
    :pswitch_3
    const/4 v4, 0x1

    array-length v5, p5

    if-lez v5, :cond_4

    aget-object v5, p5, v6

    :goto_2
    invoke-direct {v2, p2, p3, v4, v5}, Lorg/mozilla/javascript/NativeGenerator;->resume(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_4
    sget-object v5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_2

    :pswitch_4
    move-object v4, p4

    .line 192
    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v2, p0, Lorg/mozilla/javascript/NativeGenerator;->savedState:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 109
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 110
    .local v0, cx:Lorg/mozilla/javascript/Context;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getFactory()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v2

    move-object v1, v2

    .line 112
    .local v1, factory:Lorg/mozilla/javascript/ContextFactory;
    :goto_0
    new-instance v2, Lorg/mozilla/javascript/NativeGenerator$CloseGeneratorAction;

    invoke-direct {v2, p0}, Lorg/mozilla/javascript/NativeGenerator$CloseGeneratorAction;-><init>(Lorg/mozilla/javascript/NativeGenerator;)V

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/ContextFactory;->call(Lorg/mozilla/javascript/ContextAction;)Ljava/lang/Object;

    .line 114
    .end local v0           #cx:Lorg/mozilla/javascript/Context;
    .end local v1           #factory:Lorg/mozilla/javascript/ContextFactory;
    :cond_0
    return-void

    .line 110
    .restart local v0       #cx:Lorg/mozilla/javascript/Context;
    :cond_1
    invoke-static {}, Lorg/mozilla/javascript/ContextFactory;->getGlobal()Lorg/mozilla/javascript/ContextFactory;

    move-result-object v2

    move-object v1, v2

    goto :goto_0
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 6
    .parameter "s"

    .prologue
    const/4 v5, 0x0

    .line 249
    const/4 v2, 0x0

    .local v2, id:I
    const/4 v0, 0x0

    .line 250
    .local v0, X:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 251
    .local v3, s_length:I
    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 252
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 253
    .local v1, c:I
    const/16 v4, 0x6e

    if-ne v1, v4, :cond_2

    const-string v0, "next"

    const/4 v2, 0x2

    .line 262
    .end local v1           #c:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v2, 0x0

    .line 266
    :cond_1
    return v2

    .line 254
    .restart local v1       #c:I
    :cond_2
    const/16 v4, 0x73

    if-ne v1, v4, :cond_0

    const-string v0, "send"

    const/4 v2, 0x3

    goto :goto_0

    .line 256
    .end local v1           #c:I
    :cond_3
    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    .line 257
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 258
    .restart local v1       #c:I
    const/16 v4, 0x63

    if-ne v1, v4, :cond_4

    const-string v0, "close"

    const/4 v2, 0x1

    goto :goto_0

    .line 259
    :cond_4
    const/16 v4, 0x74

    if-ne v1, v4, :cond_0

    const-string v0, "throw"

    const/4 v2, 0x4

    goto :goto_0

    .line 261
    .end local v1           #c:I
    :cond_5
    const/16 v4, 0xc

    if-ne v3, v4, :cond_0

    const-string v0, "__iterator__"

    const/4 v2, 0x5

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "Generator"

    return-object v0
.end method

.method protected initPrototypeId(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 141
    packed-switch p1, :pswitch_data_0

    .line 147
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    :pswitch_0
    const/4 v0, 0x1

    .local v0, arity:I
    const-string v1, "close"

    .line 149
    .local v1, s:Ljava/lang/String;
    :goto_0
    sget-object v2, Lorg/mozilla/javascript/NativeGenerator;->GENERATOR_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/NativeGenerator;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)V

    .line 150
    return-void

    .line 143
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_1
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "next"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 144
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "send"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 145
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_3
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "throw"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 146
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_4
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "__iterator__"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
