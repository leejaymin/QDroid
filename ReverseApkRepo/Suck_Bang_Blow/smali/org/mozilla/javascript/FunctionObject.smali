.class public Lorg/mozilla/javascript/FunctionObject;
.super Lorg/mozilla/javascript/BaseFunction;
.source "FunctionObject.java"


# static fields
.field public static final JAVA_BOOLEAN_TYPE:I = 0x3

.field public static final JAVA_DOUBLE_TYPE:I = 0x4

.field public static final JAVA_INT_TYPE:I = 0x2

.field public static final JAVA_OBJECT_TYPE:I = 0x6

.field public static final JAVA_SCRIPTABLE_TYPE:I = 0x5

.field public static final JAVA_STRING_TYPE:I = 0x1

.field public static final JAVA_UNSUPPORTED_TYPE:I = 0x0

.field private static final VARARGS_CTOR:S = -0x2s

.field private static final VARARGS_METHOD:S = -0x1s

.field private static sawSecurityException:Z = false

.field static final serialVersionUID:J = -0x4a002e39945f012bL


# instance fields
.field private functionName:Ljava/lang/String;

.field private transient hasVoidReturn:Z

.field private isStatic:Z

.field member:Lorg/mozilla/javascript/MemberBox;

.field private parmsLength:I

.field private transient returnTypeTag:I

.field private transient typeTags:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Member;Lorg/mozilla/javascript/Scriptable;)V
    .locals 10
    .parameter "name"
    .parameter "methodOrConstructor"
    .parameter "scope"

    .prologue
    .line 119
    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    .line 120
    instance-of v8, p2, Ljava/lang/reflect/Constructor;

    if-eqz v8, :cond_2

    .line 121
    new-instance v8, Lorg/mozilla/javascript/MemberBox;

    check-cast p2, Ljava/lang/reflect/Constructor;

    .end local p2
    invoke-direct {v8, p2}, Lorg/mozilla/javascript/MemberBox;-><init>(Ljava/lang/reflect/Constructor;)V

    iput-object v8, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    .line 122
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/mozilla/javascript/FunctionObject;->isStatic:Z

    .line 127
    :goto_0
    iget-object v8, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {v8}, Lorg/mozilla/javascript/MemberBox;->getName()Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, methodName:Ljava/lang/String;
    iput-object p1, p0, Lorg/mozilla/javascript/FunctionObject;->functionName:Ljava/lang/String;

    .line 129
    iget-object v8, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    iget-object v7, v8, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    .line 130
    .local v7, types:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v0, v7

    .line 131
    .local v0, arity:I
    const/4 v8, 0x4

    if-ne v0, v8, :cond_9

    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x2

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 133
    :cond_0
    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 134
    iget-boolean v8, p0, Lorg/mozilla/javascript/FunctionObject;->isStatic:Z

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    aget-object v8, v7, v8

    sget-object v9, Lorg/mozilla/javascript/ScriptRuntime;->ContextClass:Ljava/lang/Class;

    if-ne v8, v9, :cond_1

    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne v8, v9, :cond_1

    const/4 v8, 0x2

    aget-object v8, v7, v8

    sget-object v9, Lorg/mozilla/javascript/ScriptRuntime;->FunctionClass:Ljava/lang/Class;

    if-ne v8, v9, :cond_1

    const/4 v8, 0x3

    aget-object v8, v7, v8

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v8, v9, :cond_3

    .line 140
    :cond_1
    const-string v8, "msg.varargs.ctor"

    invoke-static {v8, v4}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v8

    throw v8

    .line 124
    .end local v0           #arity:I
    .end local v4           #methodName:Ljava/lang/String;
    .end local v7           #types:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .restart local p2
    :cond_2
    new-instance v8, Lorg/mozilla/javascript/MemberBox;

    check-cast p2, Ljava/lang/reflect/Method;

    .end local p2
    invoke-direct {v8, p2}, Lorg/mozilla/javascript/MemberBox;-><init>(Ljava/lang/reflect/Method;)V

    iput-object v8, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    .line 125
    iget-object v8, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {v8}, Lorg/mozilla/javascript/MemberBox;->isStatic()Z

    move-result v8

    iput-boolean v8, p0, Lorg/mozilla/javascript/FunctionObject;->isStatic:Z

    goto :goto_0

    .line 143
    .restart local v0       #arity:I
    .restart local v4       #methodName:Ljava/lang/String;
    .restart local v7       #types:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_3
    const/4 v8, -0x2

    iput v8, p0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    .line 171
    :cond_4
    :goto_1
    iget-object v8, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {v8}, Lorg/mozilla/javascript/MemberBox;->isMethod()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 172
    iget-object v8, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {v8}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object v3

    .line 173
    .local v3, method:Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    .line 174
    .local v5, returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v5, v8, :cond_b

    .line 175
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/mozilla/javascript/FunctionObject;->hasVoidReturn:Z

    .line 187
    .end local v3           #method:Ljava/lang/reflect/Method;
    .end local v5           #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_5
    :goto_2
    invoke-static {p0, p3}, Lorg/mozilla/javascript/ScriptRuntime;->setFunctionProtoAndParent(Lorg/mozilla/javascript/BaseFunction;Lorg/mozilla/javascript/Scriptable;)V

    .line 188
    return-void

    .line 145
    :cond_6
    iget-boolean v8, p0, Lorg/mozilla/javascript/FunctionObject;->isStatic:Z

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    aget-object v8, v7, v8

    sget-object v9, Lorg/mozilla/javascript/ScriptRuntime;->ContextClass:Ljava/lang/Class;

    if-ne v8, v9, :cond_7

    const/4 v8, 0x1

    aget-object v8, v7, v8

    sget-object v9, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    if-ne v8, v9, :cond_7

    const/4 v8, 0x2

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    sget-object v9, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne v8, v9, :cond_7

    const/4 v8, 0x3

    aget-object v8, v7, v8

    sget-object v9, Lorg/mozilla/javascript/ScriptRuntime;->FunctionClass:Ljava/lang/Class;

    if-eq v8, v9, :cond_8

    .line 151
    :cond_7
    const-string v8, "msg.varargs.fun"

    invoke-static {v8, v4}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v8

    throw v8

    .line 154
    :cond_8
    const/4 v8, -0x1

    iput v8, p0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    goto :goto_1

    .line 157
    :cond_9
    iput v0, p0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    .line 158
    if-lez v0, :cond_4

    .line 159
    new-array v8, v0, [B

    iput-object v8, p0, Lorg/mozilla/javascript/FunctionObject;->typeTags:[B

    .line 160
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    if-eq v2, v0, :cond_4

    .line 161
    aget-object v8, v7, v2

    invoke-static {v8}, Lorg/mozilla/javascript/FunctionObject;->getTypeTag(Ljava/lang/Class;)I

    move-result v6

    .line 162
    .local v6, tag:I
    if-nez v6, :cond_a

    .line 163
    const-string v8, "msg.bad.parms"

    aget-object v9, v7, v2

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Lorg/mozilla/javascript/Context;->reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v8

    throw v8

    .line 166
    :cond_a
    iget-object v8, p0, Lorg/mozilla/javascript/FunctionObject;->typeTags:[B

    int-to-byte v9, v6

    aput-byte v9, v8, v2

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 177
    .end local v2           #i:I
    .end local v6           #tag:I
    .restart local v3       #method:Ljava/lang/reflect/Method;
    .restart local v5       #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_b
    invoke-static {v5}, Lorg/mozilla/javascript/FunctionObject;->getTypeTag(Ljava/lang/Class;)I

    move-result v8

    iput v8, p0, Lorg/mozilla/javascript/FunctionObject;->returnTypeTag:I

    goto :goto_2

    .line 180
    .end local v3           #method:Ljava/lang/reflect/Method;
    .end local v5           #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_c
    iget-object v8, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {v8}, Lorg/mozilla/javascript/MemberBox;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 181
    .local v1, ctorType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v8, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    invoke-virtual {v8, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 182
    const-string v8, "msg.bad.ctor.return"

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v8

    throw v8
.end method

.method public static convertArg(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .parameter "cx"
    .parameter "scope"
    .parameter "arg"
    .parameter "typeTag"

    .prologue
    .line 219
    packed-switch p3, :pswitch_data_0

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 221
    :pswitch_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 240
    :goto_0
    return-object v0

    .line 223
    :cond_0
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 225
    :pswitch_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 226
    goto :goto_0

    .line 227
    :cond_1
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 229
    :pswitch_2
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 230
    goto :goto_0

    .line 231
    :cond_2
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 234
    :pswitch_3
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_4

    move-object v0, p2

    .line 235
    goto :goto_0

    .line 236
    :cond_4
    new-instance v0, Ljava/lang/Double;

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0

    .line 238
    :pswitch_4
    invoke-static {p0, p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    move-object v0, p2

    .line 240
    goto :goto_0

    .line 219
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

.method public static convertArg(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .parameter "cx"
    .parameter "scope"
    .parameter "arg"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Context;",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 386
    .local p3, desired:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p3}, Lorg/mozilla/javascript/FunctionObject;->getTypeTag(Ljava/lang/Class;)I

    move-result v0

    .line 387
    .local v0, tag:I
    if-nez v0, :cond_0

    .line 388
    const-string v1, "msg.cant.convert"

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v1

    throw v1

    .line 391
    :cond_0
    invoke-static {p0, p1, p2, v0}, Lorg/mozilla/javascript/FunctionObject;->convertArg(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method static findSingleMethod([Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 6
    .parameter "methods"
    .parameter "name"

    .prologue
    .line 284
    const/4 v1, 0x0

    .line 285
    .local v1, found:Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .local v2, i:I
    array-length v0, p0

    .local v0, N:I
    :goto_0
    if-eq v2, v0, :cond_2

    .line 286
    aget-object v3, p0, v2

    .line 287
    .local v3, method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 288
    if-eqz v1, :cond_0

    .line 289
    const-string v4, "msg.no.overload"

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, p1, v5}, Lorg/mozilla/javascript/Context;->reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v4

    throw v4

    .line 293
    :cond_0
    move-object v1, v3

    .line 285
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 296
    .end local v3           #method:Ljava/lang/reflect/Method;
    :cond_2
    return-object v1
.end method

.method static getMethodList(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 312
    .local v5, methods:[Ljava/lang/reflect/Method;
    :try_start_0
    sget-boolean v7, Lorg/mozilla/javascript/FunctionObject;->sawSecurityException:Z

    if-nez v7, :cond_0

    .line 313
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 318
    :cond_0
    :goto_0
    if-nez v5, :cond_1

    .line 319
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 321
    :cond_1
    const/4 v0, 0x0

    .line 322
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, v5

    if-ge v2, v7, :cond_5

    .line 323
    sget-boolean v7, Lorg/mozilla/javascript/FunctionObject;->sawSecurityException:Z

    if-eqz v7, :cond_3

    aget-object v7, v5, v2

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    if-eq v7, p0, :cond_4

    .line 327
    :cond_2
    const/4 v7, 0x0

    aput-object v7, v5, v2

    .line 322
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 314
    .end local v0           #count:I
    .end local v2           #i:I
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 316
    .local v1, e:Ljava/lang/SecurityException;
    const/4 v7, 0x1

    sput-boolean v7, Lorg/mozilla/javascript/FunctionObject;->sawSecurityException:Z

    goto :goto_0

    .line 323
    .end local v1           #e:Ljava/lang/SecurityException;
    .restart local v0       #count:I
    .restart local v2       #i:I
    :cond_3
    aget-object v7, v5, v2

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 329
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 332
    :cond_5
    new-array v6, v0, [Ljava/lang/reflect/Method;

    .line 333
    .local v6, result:[Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .line 334
    .local v3, j:I
    const/4 v2, 0x0

    :goto_3
    array-length v7, v5

    if-ge v2, v7, :cond_7

    .line 335
    aget-object v7, v5, v2

    if-eqz v7, :cond_6

    .line 336
    add-int/lit8 v4, v3, 0x1

    .end local v3           #j:I
    .local v4, j:I
    aget-object v7, v5, v2

    aput-object v7, v6, v3

    move v3, v4

    .line 334
    .end local v4           #j:I
    .restart local v3       #j:I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 338
    :cond_7
    return-object v6
.end method

.method public static getTypeTag(Ljava/lang/Class;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 198
    const/4 v0, 0x1

    .line 213
    :goto_0
    return v0

    .line 199
    :cond_0
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->IntegerClass:Ljava/lang/Class;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    .line 200
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 201
    :cond_2
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    if-eq p0, v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    .line 202
    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    .line 203
    :cond_4
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->DoubleClass:Ljava/lang/Class;

    if-eq p0, v0, :cond_5

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    .line 204
    :cond_5
    const/4 v0, 0x4

    goto :goto_0

    .line 205
    :cond_6
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ScriptableClass:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 206
    const/4 v0, 0x5

    goto :goto_0

    .line 207
    :cond_7
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    .line 208
    const/4 v0, 0x6

    goto :goto_0

    .line 213
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 533
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 534
    iget v4, p0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    if-lez v4, :cond_0

    .line 535
    iget-object v4, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    iget-object v3, v4, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    .line 536
    .local v3, types:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    iget v4, p0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/mozilla/javascript/FunctionObject;->typeTags:[B

    .line 537
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v4, p0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    if-eq v0, v4, :cond_0

    .line 538
    iget-object v4, p0, Lorg/mozilla/javascript/FunctionObject;->typeTags:[B

    aget-object v5, v3, v0

    invoke-static {v5}, Lorg/mozilla/javascript/FunctionObject;->getTypeTag(Ljava/lang/Class;)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    .line 537
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 541
    .end local v0           #i:I
    .end local v3           #types:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_0
    iget-object v4, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {v4}, Lorg/mozilla/javascript/MemberBox;->isMethod()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 542
    iget-object v4, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {v4}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 543
    .local v1, method:Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    .line 544
    .local v2, returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_2

    .line 545
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/mozilla/javascript/FunctionObject;->hasVoidReturn:Z

    .line 550
    .end local v1           #method:Ljava/lang/reflect/Method;
    .end local v2           #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    :goto_1
    return-void

    .line 547
    .restart local v1       #method:Ljava/lang/reflect/Method;
    .restart local v2       #returnType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    invoke-static {v2}, Lorg/mozilla/javascript/FunctionObject;->getTypeTag(Ljava/lang/Class;)I

    move-result v4

    iput v4, p0, Lorg/mozilla/javascript/FunctionObject;->returnTypeTag:I

    goto :goto_1
.end method


# virtual methods
.method public addAsConstructor(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V
    .locals 2
    .parameter "scope"
    .parameter "prototype"

    .prologue
    .line 359
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/FunctionObject;->initAsConstructor(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V

    .line 360
    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p1, v0, p0, v1}, Lorg/mozilla/javascript/FunctionObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 362
    return-void
.end method

.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 408
    const/4 v7, 0x0

    .line 410
    .local v7, checkMethodResult:Z
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    move/from16 v16, v0

    if-gez v16, :cond_5

    .line 411
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 412
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object v13, v0

    const/16 v16, 0x0

    aput-object p1, v13, v16

    const/16 v16, 0x1

    aput-object p3, v13, v16

    const/16 v16, 0x2

    aput-object p4, v13, v16

    const/16 v16, 0x3

    aput-object p0, v13, v16

    .line 413
    .local v13, invokeArgs:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/MemberBox;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 414
    .local v15, result:Ljava/lang/Object;
    const/4 v7, 0x1

    .line 484
    :goto_0
    if-eqz v7, :cond_0

    .line 485
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/FunctionObject;->hasVoidReturn:Z

    move/from16 v16, v0

    if-eqz v16, :cond_f

    .line 486
    sget-object v15, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 496
    :cond_0
    :goto_1
    return-object v15

    .line 416
    .end local v13           #invokeArgs:[Ljava/lang/Object;
    .end local v15           #result:Ljava/lang/Object;
    :cond_1
    if-nez p3, :cond_2

    const/16 v16, 0x1

    move/from16 v12, v16

    .line 417
    .local v12, inNewExpr:Z
    :goto_2
    if-eqz v12, :cond_3

    sget-object v16, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v6, v16

    .line 418
    .local v6, b:Ljava/lang/Boolean;
    :goto_3
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object v13, v0

    const/16 v16, 0x0

    aput-object p1, v13, v16

    const/16 v16, 0x1

    aput-object p4, v13, v16

    const/16 v16, 0x2

    aput-object p0, v13, v16

    const/16 v16, 0x3

    aput-object v6, v13, v16

    .line 419
    .restart local v13       #invokeArgs:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/mozilla/javascript/MemberBox;->isCtor()Z

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/MemberBox;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    .line 422
    .restart local v15       #result:Ljava/lang/Object;
    :goto_4
    goto :goto_0

    .line 416
    .end local v6           #b:Ljava/lang/Boolean;
    .end local v12           #inNewExpr:Z
    .end local v13           #invokeArgs:[Ljava/lang/Object;
    .end local v15           #result:Ljava/lang/Object;
    :cond_2
    const/16 v16, 0x0

    move/from16 v12, v16

    goto :goto_2

    .line 417
    .restart local v12       #inNewExpr:Z
    :cond_3
    sget-object v16, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v6, v16

    goto :goto_3

    .line 419
    .restart local v6       #b:Ljava/lang/Boolean;
    .restart local v13       #invokeArgs:[Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/MemberBox;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    goto :goto_4

    .line 425
    .end local v6           #b:Ljava/lang/Boolean;
    .end local v12           #inNewExpr:Z
    .end local v13           #invokeArgs:[Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/FunctionObject;->isStatic:Z

    move/from16 v16, v0

    if-nez v16, :cond_7

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/mozilla/javascript/MemberBox;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    .line 427
    .local v8, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object v0, v8

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 428
    const/4 v9, 0x0

    .line 429
    .local v9, compatible:Z
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_6

    .line 430
    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/javascript/FunctionObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v14

    .line 431
    .local v14, parentScope:Lorg/mozilla/javascript/Scriptable;
    move-object/from16 v0, p2

    move-object v1, v14

    if-eq v0, v1, :cond_6

    .line 434
    invoke-virtual {v8, v14}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    .line 435
    if-eqz v9, :cond_6

    .line 436
    move-object/from16 p3, v14

    .line 440
    .end local v14           #parentScope:Lorg/mozilla/javascript/Scriptable;
    :cond_6
    if-nez v9, :cond_7

    .line 442
    const-string v16, "msg.incompat.call"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/FunctionObject;->functionName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v16

    throw v16

    .line 449
    .end local v8           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v9           #compatible:Z
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    move/from16 v16, v0

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 452
    move-object/from16 v13, p4

    .line 453
    .restart local v13       #invokeArgs:[Ljava/lang/Object;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    move/from16 v16, v0

    move v0, v11

    move/from16 v1, v16

    if-eq v0, v1, :cond_b

    .line 454
    aget-object v5, p4, v11

    .line 455
    .local v5, arg:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/FunctionObject;->typeTags:[B

    move-object/from16 v16, v0

    aget-byte v16, v16, v11

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v2, v5

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/FunctionObject;->convertArg(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    .line 456
    .local v10, converted:Ljava/lang/Object;
    if-eq v5, v10, :cond_9

    .line 457
    move-object v0, v13

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_8

    .line 458
    invoke-virtual/range {p4 .. p4}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v13

    .end local v13           #invokeArgs:[Ljava/lang/Object;
    check-cast v13, [Ljava/lang/Object;

    .line 460
    .restart local v13       #invokeArgs:[Ljava/lang/Object;
    :cond_8
    aput-object v10, v13, v11

    .line 453
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 463
    .end local v5           #arg:Ljava/lang/Object;
    .end local v10           #converted:Ljava/lang/Object;
    .end local v11           #i:I
    .end local v13           #invokeArgs:[Ljava/lang/Object;
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    move/from16 v16, v0

    if-nez v16, :cond_c

    .line 464
    sget-object v13, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    .line 475
    .restart local v13       #invokeArgs:[Ljava/lang/Object;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/mozilla/javascript/MemberBox;->isMethod()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/MemberBox;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 477
    .restart local v15       #result:Ljava/lang/Object;
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 466
    .end local v13           #invokeArgs:[Ljava/lang/Object;
    .end local v15           #result:Ljava/lang/Object;
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object v13, v0

    .line 467
    .restart local v13       #invokeArgs:[Ljava/lang/Object;
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    move/from16 v16, v0

    move v0, v11

    move/from16 v1, v16

    if-eq v0, v1, :cond_b

    .line 468
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v16, v0

    move v0, v11

    move/from16 v1, v16

    if-ge v0, v1, :cond_d

    aget-object v16, p4, v11

    move-object/from16 v5, v16

    .line 471
    .restart local v5       #arg:Ljava/lang/Object;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/FunctionObject;->typeTags:[B

    move-object/from16 v16, v0

    aget-byte v16, v16, v11

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v2, v5

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/FunctionObject;->convertArg(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v13, v11

    .line 467
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 468
    .end local v5           #arg:Ljava/lang/Object;
    :cond_d
    sget-object v16, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object/from16 v5, v16

    goto :goto_7

    .line 479
    .end local v11           #i:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/MemberBox;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .restart local v15       #result:Ljava/lang/Object;
    goto/16 :goto_0

    .line 487
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/FunctionObject;->returnTypeTag:I

    move/from16 v16, v0

    if-nez v16, :cond_0

    .line 488
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v15

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    goto/16 :goto_1
.end method

.method public createObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .locals 4
    .parameter "cx"
    .parameter "scope"

    .prologue
    .line 507
    iget-object v2, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {v2}, Lorg/mozilla/javascript/MemberBox;->isCtor()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    .line 508
    :cond_0
    const/4 v2, 0x0

    .line 519
    :goto_0
    return-object v2

    .line 512
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {v2}, Lorg/mozilla/javascript/MemberBox;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/Scriptable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    .local v1, result:Lorg/mozilla/javascript/Scriptable;
    invoke-virtual {p0}, Lorg/mozilla/javascript/FunctionObject;->getClassPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/mozilla/javascript/Scriptable;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 518
    invoke-virtual {p0}, Lorg/mozilla/javascript/FunctionObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/mozilla/javascript/Scriptable;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    move-object v2, v1

    .line 519
    goto :goto_0

    .line 513
    .end local v1           #result:Lorg/mozilla/javascript/Scriptable;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 514
    .local v0, ex:Ljava/lang/Exception;
    invoke-static {v0}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getArity()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    goto :goto_0
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lorg/mozilla/javascript/FunctionObject;->functionName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/FunctionObject;->functionName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 261
    invoke-virtual {p0}, Lorg/mozilla/javascript/FunctionObject;->getArity()I

    move-result v0

    return v0
.end method

.method public getMethodOrConstructor()Ljava/lang/reflect/Member;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {v0}, Lorg/mozilla/javascript/MemberBox;->isMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {v0}, Lorg/mozilla/javascript/MemberBox;->method()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 278
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/FunctionObject;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {v0}, Lorg/mozilla/javascript/MemberBox;->ctor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_0
.end method

.method initAsConstructor(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V
    .locals 2
    .parameter "scope"
    .parameter "prototype"

    .prologue
    .line 366
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setFunctionProtoAndParent(Lorg/mozilla/javascript/BaseFunction;Lorg/mozilla/javascript/Scriptable;)V

    .line 367
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/FunctionObject;->setImmunePrototypeProperty(Ljava/lang/Object;)V

    .line 369
    invoke-interface {p2, p0}, Lorg/mozilla/javascript/Scriptable;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 371
    const-string v0, "constructor"

    const/4 v1, 0x7

    invoke-static {p2, v0, p0, v1}, Lorg/mozilla/javascript/FunctionObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 375
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/FunctionObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 376
    return-void
.end method

.method isVarArgsConstructor()Z
    .locals 2

    .prologue
    .line 527
    iget v0, p0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVarArgsMethod()Z
    .locals 2

    .prologue
    .line 523
    iget v0, p0, Lorg/mozilla/javascript/FunctionObject;->parmsLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
