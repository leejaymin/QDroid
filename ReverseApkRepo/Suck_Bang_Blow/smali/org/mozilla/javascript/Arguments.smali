.class final Lorg/mozilla/javascript/Arguments;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "Arguments.java"


# static fields
.field private static final FTAG:Ljava/lang/String; = "Arguments"

.field private static final Id_callee:I = 0x1

.field private static final Id_caller:I = 0x3

.field private static final Id_constructor:I = 0x4

.field private static final Id_length:I = 0x2

.field private static final MAX_INSTANCE_ID:I = 0x4

.field static final serialVersionUID:J = 0x3b55a7e02ae0c5a1L


# instance fields
.field private activation:Lorg/mozilla/javascript/NativeCall;

.field private args:[Ljava/lang/Object;

.field private calleeObj:Ljava/lang/Object;

.field private callerObj:Ljava/lang/Object;

.field private constructor:Ljava/lang/Object;

.field private lengthObj:Ljava/lang/Object;

.field private objectCtor:Lorg/mozilla/javascript/BaseFunction;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/NativeCall;)V
    .locals 5
    .parameter "activation"

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/mozilla/javascript/Arguments;->activation:Lorg/mozilla/javascript/NativeCall;

    .line 60
    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeCall;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    .line 61
    .local v1, parent:Lorg/mozilla/javascript/Scriptable;
    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Arguments;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 62
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/mozilla/javascript/Arguments;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 64
    iget-object v4, p1, Lorg/mozilla/javascript/NativeCall;->originalArgs:[Ljava/lang/Object;

    iput-object v4, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    .line 65
    iget-object v4, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lorg/mozilla/javascript/Arguments;->lengthObj:Ljava/lang/Object;

    .line 67
    iget-object v0, p1, Lorg/mozilla/javascript/NativeCall;->function:Lorg/mozilla/javascript/NativeFunction;

    .line 68
    .local v0, f:Lorg/mozilla/javascript/NativeFunction;
    iput-object v0, p0, Lorg/mozilla/javascript/Arguments;->calleeObj:Ljava/lang/Object;

    .line 70
    invoke-static {v1}, Lorg/mozilla/javascript/Arguments;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    .line 71
    .local v2, topLevel:Lorg/mozilla/javascript/Scriptable;
    const-string v4, "Object"

    invoke-static {v2, v4}, Lorg/mozilla/javascript/Arguments;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mozilla/javascript/BaseFunction;

    iput-object v4, p0, Lorg/mozilla/javascript/Arguments;->objectCtor:Lorg/mozilla/javascript/BaseFunction;

    .line 73
    iget-object v4, p0, Lorg/mozilla/javascript/Arguments;->objectCtor:Lorg/mozilla/javascript/BaseFunction;

    iput-object v4, p0, Lorg/mozilla/javascript/Arguments;->constructor:Ljava/lang/Object;

    .line 75
    invoke-virtual {v0}, Lorg/mozilla/javascript/NativeFunction;->getLanguageVersion()I

    move-result v3

    .line 76
    .local v3, version:I
    const/16 v4, 0x82

    if-gt v3, v4, :cond_0

    if-eqz v3, :cond_0

    .line 79
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/mozilla/javascript/Arguments;->callerObj:Ljava/lang/Object;

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    sget-object v4, Lorg/mozilla/javascript/Arguments;->NOT_FOUND:Ljava/lang/Object;

    iput-object v4, p0, Lorg/mozilla/javascript/Arguments;->callerObj:Ljava/lang/Object;

    goto :goto_0
.end method

.method private arg(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 92
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    array-length v0, v0

    if-gt v0, p1, :cond_1

    :cond_0
    sget-object v0, Lorg/mozilla/javascript/Arguments;->NOT_FOUND:Ljava/lang/Object;

    .line 93
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method private getFromActivation(I)Ljava/lang/Object;
    .locals 3
    .parameter "index"

    .prologue
    .line 104
    iget-object v1, p0, Lorg/mozilla/javascript/Arguments;->activation:Lorg/mozilla/javascript/NativeCall;

    iget-object v1, v1, Lorg/mozilla/javascript/NativeCall;->function:Lorg/mozilla/javascript/NativeFunction;

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/NativeFunction;->getParamOrVarName(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, argName:Ljava/lang/String;
    iget-object v1, p0, Lorg/mozilla/javascript/Arguments;->activation:Lorg/mozilla/javascript/NativeCall;

    iget-object v2, p0, Lorg/mozilla/javascript/Arguments;->activation:Lorg/mozilla/javascript/NativeCall;

    invoke-virtual {v1, v0, v2}, Lorg/mozilla/javascript/NativeCall;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private putIntoActivation(ILjava/lang/Object;)V
    .locals 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 99
    iget-object v1, p0, Lorg/mozilla/javascript/Arguments;->activation:Lorg/mozilla/javascript/NativeCall;

    iget-object v1, v1, Lorg/mozilla/javascript/NativeCall;->function:Lorg/mozilla/javascript/NativeFunction;

    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/NativeFunction;->getParamOrVarName(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, argName:Ljava/lang/String;
    iget-object v1, p0, Lorg/mozilla/javascript/Arguments;->activation:Lorg/mozilla/javascript/NativeCall;

    iget-object v2, p0, Lorg/mozilla/javascript/Arguments;->activation:Lorg/mozilla/javascript/NativeCall;

    invoke-virtual {v1, v0, v2, p2}, Lorg/mozilla/javascript/NativeCall;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method private removeArg(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Lorg/mozilla/javascript/Arguments;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    .line 123
    iget-object v0, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/mozilla/javascript/Arguments;->activation:Lorg/mozilla/javascript/NativeCall;

    iget-object v1, v1, Lorg/mozilla/javascript/NativeCall;->originalArgs:[Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    sget-object v1, Lorg/mozilla/javascript/Arguments;->NOT_FOUND:Ljava/lang/Object;

    aput-object v1, v0, p1

    .line 128
    :cond_1
    monitor-exit p0

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private replaceArg(ILjava/lang/Object;)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Arguments;->sharedWithActivation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/Arguments;->putIntoActivation(ILjava/lang/Object;)V

    .line 112
    :cond_0
    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    iget-object v1, p0, Lorg/mozilla/javascript/Arguments;->activation:Lorg/mozilla/javascript/NativeCall;

    iget-object v1, v1, Lorg/mozilla/javascript/NativeCall;->originalArgs:[Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 114
    iget-object v0, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    .line 116
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 117
    monitor-exit p0

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sharedWithActivation(I)Z
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 159
    iget-object v4, p0, Lorg/mozilla/javascript/Arguments;->activation:Lorg/mozilla/javascript/NativeCall;

    iget-object v2, v4, Lorg/mozilla/javascript/NativeCall;->function:Lorg/mozilla/javascript/NativeFunction;

    .line 160
    .local v2, f:Lorg/mozilla/javascript/NativeFunction;
    invoke-virtual {v2}, Lorg/mozilla/javascript/NativeFunction;->getParamCount()I

    move-result v1

    .line 161
    .local v1, definedCount:I
    if-ge p1, v1, :cond_2

    .line 164
    sub-int v4, v1, v6

    if-ge p1, v4, :cond_1

    .line 165
    invoke-virtual {v2, p1}, Lorg/mozilla/javascript/NativeFunction;->getParamOrVarName(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, argName:Ljava/lang/String;
    add-int/lit8 v3, p1, 0x1

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 167
    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/NativeFunction;->getParamOrVarName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 174
    .end local v0           #argName:Ljava/lang/String;
    .end local v3           #i:I
    :goto_1
    return v4

    .line 166
    .restart local v0       #argName:Ljava/lang/String;
    .restart local v3       #i:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0           #argName:Ljava/lang/String;
    .end local v3           #i:I
    :cond_1
    move v4, v6

    .line 172
    goto :goto_1

    :cond_2
    move v4, v5

    .line 174
    goto :goto_1
.end method


# virtual methods
.method public defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;)V
    .locals 7
    .parameter "cx"
    .parameter "id"
    .parameter "desc"

    .prologue
    .line 368
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/IdScriptableObject;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;)V

    .line 370
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    .line 371
    .local v0, d:D
    double-to-int v2, v0

    .line 372
    .local v2, index:I
    int-to-double v5, v2

    cmpl-double v5, v0, v5

    if-eqz v5, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Arguments;->arg(I)Ljava/lang/Object;

    move-result-object v4

    .line 375
    .local v4, value:Ljava/lang/Object;
    sget-object v5, Lorg/mozilla/javascript/Arguments;->NOT_FOUND:Ljava/lang/Object;

    if-eq v4, v5, :cond_0

    .line 377
    invoke-virtual {p0, p3}, Lorg/mozilla/javascript/Arguments;->isAccessorDescriptor(Lorg/mozilla/javascript/ScriptableObject;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 378
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Arguments;->removeArg(I)V

    goto :goto_0

    .line 382
    :cond_2
    const-string v5, "value"

    invoke-static {p3, v5}, Lorg/mozilla/javascript/Arguments;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 383
    .local v3, newValue:Ljava/lang/Object;
    sget-object v5, Lorg/mozilla/javascript/Arguments;->NOT_FOUND:Ljava/lang/Object;

    if-eq v3, v5, :cond_0

    .line 385
    invoke-direct {p0, v2, v3}, Lorg/mozilla/javascript/Arguments;->replaceArg(ILjava/lang/Object;)V

    .line 387
    const-string v5, "writable"

    invoke-static {p3, v5}, Lorg/mozilla/javascript/Arguments;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/mozilla/javascript/Arguments;->isFalse(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 388
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Arguments;->removeArg(I)V

    goto :goto_0
.end method

.method public delete(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 190
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 191
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Arguments;->removeArg(I)V

    .line 193
    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->delete(I)V

    .line 194
    return-void
.end method

.method protected findInstanceIdInfo(Ljava/lang/String;)I
    .locals 6
    .parameter "s"

    .prologue
    .line 217
    const/4 v3, 0x0

    .local v3, id:I
    const/4 v0, 0x0

    .line 218
    .local v0, X:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 219
    .local v4, s_length:I
    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    .line 220
    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 221
    .local v2, c:I
    const/16 v5, 0x65

    if-ne v2, v5, :cond_2

    const-string v0, "callee"

    const/4 v3, 0x1

    .line 226
    .end local v2           #c:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v3, 0x0

    .line 231
    :cond_1
    if-nez v3, :cond_5

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result v5

    .line 243
    :goto_1
    return v5

    .line 222
    .restart local v2       #c:I
    :cond_2
    const/16 v5, 0x68

    if-ne v2, v5, :cond_3

    const-string v0, "length"

    const/4 v3, 0x2

    goto :goto_0

    .line 223
    :cond_3
    const/16 v5, 0x72

    if-ne v2, v5, :cond_0

    const-string v0, "caller"

    const/4 v3, 0x3

    goto :goto_0

    .line 225
    .end local v2           #c:I
    :cond_4
    const/16 v5, 0xb

    if-ne v4, v5, :cond_0

    const-string v0, "constructor"

    const/4 v3, 0x4

    goto :goto_0

    .line 234
    :cond_5
    packed-switch v3, :pswitch_data_0

    .line 241
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 239
    :pswitch_0
    const/4 v1, 0x2

    .line 243
    .local v1, attr:I
    invoke-static {v1, v3}, Lorg/mozilla/javascript/Arguments;->instanceIdInfo(II)I

    move-result v5

    goto :goto_1

    .line 234
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .parameter "start"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Arguments;->arg(I)Ljava/lang/Object;

    move-result-object v0

    .line 146
    .local v0, value:Ljava/lang/Object;
    sget-object v1, Lorg/mozilla/javascript/Arguments;->NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 147
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    .line 152
    :goto_0
    return-object v1

    .line 149
    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Arguments;->sharedWithActivation(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Arguments;->getFromActivation(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 152
    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "Arguments"

    return-object v0
.end method

.method getIds(Z)[Ljava/lang/Object;
    .locals 10
    .parameter "getAll"

    .prologue
    const/4 v9, 0x1

    .line 300
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getIds(Z)[Ljava/lang/Object;

    move-result-object v3

    .line 301
    .local v3, ids:[Ljava/lang/Object;
    iget-object v8, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    array-length v8, v8

    if-eqz v8, :cond_7

    .line 302
    iget-object v8, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    array-length v8, v8

    new-array v6, v8, [Z

    .line 303
    .local v6, present:[Z
    iget-object v8, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    array-length v0, v8

    .line 304
    .local v0, extraCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v8, v3

    if-eq v1, v8, :cond_1

    .line 305
    aget-object v2, v3, v1

    .line 306
    .local v2, id:Ljava/lang/Object;
    instance-of v8, v2, Ljava/lang/Integer;

    if-eqz v8, :cond_0

    .line 307
    check-cast v2, Ljava/lang/Integer;

    .end local v2           #id:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 308
    .local v4, index:I
    if-ltz v4, :cond_0

    iget-object v8, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    array-length v8, v8

    if-ge v4, v8, :cond_0

    .line 309
    aget-boolean v8, v6, v4

    if-nez v8, :cond_0

    .line 310
    aput-boolean v9, v6, v4

    .line 311
    add-int/lit8 v0, v0, -0x1

    .line 304
    .end local v4           #index:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    :cond_1
    if-nez p1, :cond_3

    .line 317
    const/4 v1, 0x0

    :goto_1
    array-length v8, v6

    if-ge v1, v8, :cond_3

    .line 318
    aget-boolean v8, v6, v1

    if-nez v8, :cond_2

    invoke-super {p0, v1, p0}, Lorg/mozilla/javascript/IdScriptableObject;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 319
    aput-boolean v9, v6, v1

    .line 320
    add-int/lit8 v0, v0, -0x1

    .line 317
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 324
    :cond_3
    if-eqz v0, :cond_7

    .line 325
    array-length v8, v3

    add-int/2addr v8, v0

    new-array v7, v8, [Ljava/lang/Object;

    .line 326
    .local v7, tmp:[Ljava/lang/Object;
    const/4 v8, 0x0

    array-length v9, v3

    invoke-static {v3, v8, v7, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    move-object v3, v7

    .line 328
    const/4 v5, 0x0

    .line 329
    .local v5, offset:I
    const/4 v1, 0x0

    :goto_2
    iget-object v8, p0, Lorg/mozilla/javascript/Arguments;->args:[Ljava/lang/Object;

    array-length v8, v8

    if-eq v1, v8, :cond_6

    .line 330
    if-eqz v6, :cond_4

    aget-boolean v8, v6, v1

    if-nez v8, :cond_5

    .line 331
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v5

    .line 332
    add-int/lit8 v5, v5, 0x1

    .line 329
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 335
    :cond_6
    if-eq v5, v0, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 338
    .end local v0           #extraCount:I
    .end local v1           #i:I
    .end local v5           #offset:I
    .end local v6           #present:[Z
    .end local v7           #tmp:[Ljava/lang/Object;
    :cond_7
    return-object v3
.end method

.method protected getInstanceIdName(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 251
    packed-switch p1, :pswitch_data_0

    .line 257
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 252
    :pswitch_0
    const-string v0, "callee"

    goto :goto_0

    .line 253
    :pswitch_1
    const-string v0, "length"

    goto :goto_0

    .line 254
    :pswitch_2
    const-string v0, "caller"

    goto :goto_0

    .line 255
    :pswitch_3
    const-string v0, "constructor"

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected getInstanceIdValue(I)Ljava/lang/Object;
    .locals 3
    .parameter "id"

    .prologue
    .line 263
    packed-switch p1, :pswitch_data_0

    .line 280
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    return-object v2

    .line 264
    :pswitch_0
    iget-object v2, p0, Lorg/mozilla/javascript/Arguments;->calleeObj:Ljava/lang/Object;

    goto :goto_0

    .line 265
    :pswitch_1
    iget-object v2, p0, Lorg/mozilla/javascript/Arguments;->lengthObj:Ljava/lang/Object;

    goto :goto_0

    .line 267
    :pswitch_2
    iget-object v1, p0, Lorg/mozilla/javascript/Arguments;->callerObj:Ljava/lang/Object;

    .line 268
    .local v1, value:Ljava/lang/Object;
    sget-object v2, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .end local v1           #value:Ljava/lang/Object;
    :cond_0
    :goto_1
    move-object v2, v1

    .line 275
    goto :goto_0

    .line 269
    .restart local v1       #value:Ljava/lang/Object;
    :cond_1
    if-nez v1, :cond_0

    .line 270
    iget-object v2, p0, Lorg/mozilla/javascript/Arguments;->activation:Lorg/mozilla/javascript/NativeCall;

    iget-object v0, v2, Lorg/mozilla/javascript/NativeCall;->parentActivationCall:Lorg/mozilla/javascript/NativeCall;

    .line 271
    .local v0, caller:Lorg/mozilla/javascript/NativeCall;
    if-eqz v0, :cond_0

    .line 272
    const-string v2, "arguments"

    invoke-virtual {v0, v2, v0}, Lorg/mozilla/javascript/NativeCall;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 278
    .end local v0           #caller:Lorg/mozilla/javascript/NativeCall;
    .end local v1           #value:Ljava/lang/Object;
    :pswitch_3
    iget-object v2, p0, Lorg/mozilla/javascript/Arguments;->constructor:Ljava/lang/Object;

    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected getMaxInstanceId()I
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x4

    return v0
.end method

.method protected getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 8
    .parameter "cx"
    .parameter "id"

    .prologue
    .line 343
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    .line 344
    .local v0, d:D
    double-to-int v3, v0

    .line 345
    .local v3, index:I
    int-to-double v6, v3

    cmpl-double v6, v0, v6

    if-eqz v6, :cond_0

    .line 346
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v6

    .line 362
    :goto_0
    return-object v6

    .line 348
    :cond_0
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/Arguments;->arg(I)Ljava/lang/Object;

    move-result-object v5

    .line 349
    .local v5, value:Ljava/lang/Object;
    sget-object v6, Lorg/mozilla/javascript/Arguments;->NOT_FOUND:Ljava/lang/Object;

    if-ne v5, v6, :cond_1

    .line 350
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v6

    goto :goto_0

    .line 352
    :cond_1
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/Arguments;->sharedWithActivation(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 353
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/Arguments;->getFromActivation(I)Ljava/lang/Object;

    move-result-object v5

    .line 355
    :cond_2
    invoke-super {p0, v3, p0}, Lorg/mozilla/javascript/IdScriptableObject;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 356
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->getOwnPropertyDescriptor(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v2

    .line 357
    .local v2, desc:Lorg/mozilla/javascript/ScriptableObject;
    const-string v6, "value"

    invoke-virtual {v2, v6, v2, v5}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    move-object v6, v2

    .line 358
    goto :goto_0

    .line 360
    .end local v2           #desc:Lorg/mozilla/javascript/ScriptableObject;
    :cond_3
    invoke-virtual {p0}, Lorg/mozilla/javascript/Arguments;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    .line 361
    .local v4, scope:Lorg/mozilla/javascript/Scriptable;
    if-nez v4, :cond_4

    move-object v4, p0

    .line 362
    :cond_4
    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/mozilla/javascript/Arguments;->buildDataDescriptor(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v6

    goto :goto_0
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .locals 2
    .parameter "index"
    .parameter "start"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Arguments;->arg(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/Arguments;->NOT_FOUND:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 137
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    goto :goto_0
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 2
    .parameter "index"
    .parameter "start"
    .parameter "value"

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Arguments;->arg(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/Arguments;->NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 181
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/IdScriptableObject;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-direct {p0, p1, p3}, Lorg/mozilla/javascript/Arguments;->replaceArg(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected setInstanceIdValue(ILjava/lang/Object;)V
    .locals 1
    .parameter "id"
    .parameter "value"

    .prologue
    .line 286
    packed-switch p1, :pswitch_data_0

    .line 294
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->setInstanceIdValue(ILjava/lang/Object;)V

    .line 295
    :goto_0
    return-void

    .line 287
    :pswitch_0
    iput-object p2, p0, Lorg/mozilla/javascript/Arguments;->calleeObj:Ljava/lang/Object;

    goto :goto_0

    .line 288
    :pswitch_1
    iput-object p2, p0, Lorg/mozilla/javascript/Arguments;->lengthObj:Ljava/lang/Object;

    goto :goto_0

    .line 290
    :pswitch_2
    if-eqz p2, :cond_0

    move-object v0, p2

    :goto_1
    iput-object v0, p0, Lorg/mozilla/javascript/Arguments;->callerObj:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/mozilla/javascript/UniqueTag;->NULL_VALUE:Lorg/mozilla/javascript/UniqueTag;

    goto :goto_1

    .line 292
    :pswitch_3
    iput-object p2, p0, Lorg/mozilla/javascript/Arguments;->constructor:Ljava/lang/Object;

    goto :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
