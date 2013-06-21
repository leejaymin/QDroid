.class public final Lorg/mozilla/javascript/NativeIterator;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/NativeIterator$WrappedJavaIterator;,
        Lorg/mozilla/javascript/NativeIterator$StopIteration;
    }
.end annotation


# static fields
.field public static final ITERATOR_PROPERTY_NAME:Ljava/lang/String; = "__iterator__"

.field private static final ITERATOR_TAG:Ljava/lang/Object; = null

.field private static final Id___iterator__:I = 0x3

.field private static final Id_constructor:I = 0x1

.field private static final Id_next:I = 0x2

.field private static final MAX_PROTOTYPE_ID:I = 0x3

.field private static final STOP_ITERATION:Ljava/lang/String; = "StopIteration"

.field private static final serialVersionUID:J = -0x396976a99d923961L


# instance fields
.field private objectIterator:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "Iterator"

    sput-object v0, Lorg/mozilla/javascript/NativeIterator;->ITERATOR_TAG:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    .line 70
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "objectIterator"

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/mozilla/javascript/NativeIterator;->objectIterator:Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public static getStopIterationObject(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 2
    .parameter "scope"

    .prologue
    .line 85
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 86
    .local v0, top:Lorg/mozilla/javascript/Scriptable;
    sget-object v1, Lorg/mozilla/javascript/NativeIterator;->ITERATOR_TAG:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getTopScopeValue(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method static init(Lorg/mozilla/javascript/ScriptableObject;Z)V
    .locals 4
    .parameter "scope"
    .parameter "sealed"

    .prologue
    .line 47
    new-instance v0, Lorg/mozilla/javascript/NativeIterator;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeIterator;-><init>()V

    .line 48
    .local v0, iterator:Lorg/mozilla/javascript/NativeIterator;
    const/4 v2, 0x3

    invoke-virtual {v0, v2, p0, p1}, Lorg/mozilla/javascript/NativeIterator;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    .line 51
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeGenerator;->init(Lorg/mozilla/javascript/ScriptableObject;Z)Lorg/mozilla/javascript/NativeGenerator;

    .line 54
    new-instance v1, Lorg/mozilla/javascript/NativeIterator$StopIteration;

    invoke-direct {v1}, Lorg/mozilla/javascript/NativeIterator$StopIteration;-><init>()V

    .line 55
    .local v1, obj:Lorg/mozilla/javascript/NativeObject;
    invoke-static {p0}, Lorg/mozilla/javascript/NativeIterator;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/NativeObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 56
    invoke-virtual {v1, p0}, Lorg/mozilla/javascript/NativeObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 57
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lorg/mozilla/javascript/NativeObject;->sealObject()V

    .line 58
    :cond_0
    const-string v2, "StopIteration"

    const/4 v3, 0x2

    invoke-static {p0, v2, v1, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 63
    sget-object v2, Lorg/mozilla/javascript/NativeIterator;->ITERATOR_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, v1}, Lorg/mozilla/javascript/ScriptableObject;->associateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method private static jsConstructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 163
    array-length v7, p3

    if-eqz v7, :cond_0

    aget-object v7, p3, v9

    if-eqz v7, :cond_0

    aget-object v7, p3, v9

    sget-object v8, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v7, v8, :cond_2

    .line 166
    :cond_0
    array-length v7, p3

    if-nez v7, :cond_1

    sget-object v7, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object v0, v7

    .line 167
    .local v0, argument:Ljava/lang/Object;
    :goto_0
    const-string v7, "msg.no.properties"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v7

    throw v7

    .line 166
    .end local v0           #argument:Ljava/lang/Object;
    :cond_1
    aget-object v7, p3, v9

    move-object v0, v7

    goto :goto_0

    .line 170
    :cond_2
    aget-object v7, p3, v9

    invoke-static {p1, v7}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    .line 171
    .local v4, obj:Lorg/mozilla/javascript/Scriptable;
    array-length v7, p3

    if-le v7, v10, :cond_3

    aget-object v7, p3, v10

    invoke-static {v7}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v3, v10

    .line 172
    .local v3, keyOnly:Z
    :goto_1
    if-eqz p2, :cond_5

    .line 178
    sget-object v7, Lorg/mozilla/javascript/VMBridge;->instance:Lorg/mozilla/javascript/VMBridge;

    invoke-virtual {v7, p0, p1, v4}, Lorg/mozilla/javascript/VMBridge;->getJavaIterator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    .line 180
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    if-eqz v1, :cond_4

    .line 181
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    .line 182
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v7

    new-instance v8, Lorg/mozilla/javascript/NativeIterator$WrappedJavaIterator;

    invoke-direct {v8, v1, p1}, Lorg/mozilla/javascript/NativeIterator$WrappedJavaIterator;-><init>(Ljava/util/Iterator;Lorg/mozilla/javascript/Scriptable;)V

    const-class v9, Lorg/mozilla/javascript/NativeIterator$WrappedJavaIterator;

    invoke-virtual {v7, p0, p1, v8, v9}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    .line 205
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_2
    return-object v7

    .end local v3           #keyOnly:Z
    :cond_3
    move v3, v9

    .line 171
    goto :goto_1

    .line 188
    .restart local v1       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .restart local v3       #keyOnly:Z
    :cond_4
    invoke-static {p0, p1, v4, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toIterator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    .line 190
    .local v2, jsIterator:Lorg/mozilla/javascript/Scriptable;
    if-eqz v2, :cond_5

    move-object v7, v2

    .line 191
    goto :goto_2

    .line 197
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v2           #jsIterator:Lorg/mozilla/javascript/Scriptable;
    :cond_5
    if-eqz v3, :cond_6

    const/4 v7, 0x3

    :goto_3
    invoke-static {v4, p0, v7}, Lorg/mozilla/javascript/ScriptRuntime;->enumInit(Ljava/lang/Object;Lorg/mozilla/javascript/Context;I)Ljava/lang/Object;

    move-result-object v5

    .line 200
    .local v5, objectIterator:Ljava/lang/Object;
    invoke-static {v5, v10}, Lorg/mozilla/javascript/ScriptRuntime;->setEnumNumbers(Ljava/lang/Object;Z)V

    .line 201
    new-instance v6, Lorg/mozilla/javascript/NativeIterator;

    invoke-direct {v6, v5}, Lorg/mozilla/javascript/NativeIterator;-><init>(Ljava/lang/Object;)V

    .line 202
    .local v6, result:Lorg/mozilla/javascript/NativeIterator;
    invoke-virtual {v6}, Lorg/mozilla/javascript/NativeIterator;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lorg/mozilla/javascript/ScriptableObject;->getClassPrototype(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/mozilla/javascript/NativeIterator;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 204
    invoke-virtual {v6, p1}, Lorg/mozilla/javascript/NativeIterator;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    move-object v7, v6

    .line 205
    goto :goto_2

    .line 197
    .end local v5           #objectIterator:Ljava/lang/Object;
    .end local v6           #result:Lorg/mozilla/javascript/NativeIterator;
    :cond_6
    const/4 v7, 0x5

    goto :goto_3
.end method

.method private next(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 5
    .parameter "cx"
    .parameter "scope"

    .prologue
    .line 209
    iget-object v1, p0, Lorg/mozilla/javascript/NativeIterator;->objectIterator:Ljava/lang/Object;

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->enumNext(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    .line 210
    .local v0, b:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    new-instance v1, Lorg/mozilla/javascript/JavaScriptException;

    invoke-static {p2}, Lorg/mozilla/javascript/NativeIterator;->getStopIterationObject(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    throw v1

    .line 215
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/NativeIterator;->objectIterator:Ljava/lang/Object;

    invoke-static {v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->enumId(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "f"
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 131
    sget-object v3, Lorg/mozilla/javascript/NativeIterator;->ITERATOR_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 152
    :goto_0
    return-object v3

    .line 134
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v1

    .line 136
    .local v1, id:I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 137
    invoke-static {p2, p3, p4, p5}, Lorg/mozilla/javascript/NativeIterator;->jsConstructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 140
    :cond_1
    instance-of v3, p4, Lorg/mozilla/javascript/NativeIterator;

    if-nez v3, :cond_2

    .line 141
    invoke-static {p1}, Lorg/mozilla/javascript/NativeIterator;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v3

    throw v3

    .line 143
    :cond_2
    move-object v0, p4

    check-cast v0, Lorg/mozilla/javascript/NativeIterator;

    move-object v2, v0

    .line 145
    .local v2, iterator:Lorg/mozilla/javascript/NativeIterator;
    packed-switch v1, :pswitch_data_0

    .line 155
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 148
    :pswitch_0
    invoke-direct {v2, p2, p3}, Lorg/mozilla/javascript/NativeIterator;->next(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :pswitch_1
    move-object v3, p4

    .line 152
    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 4
    .parameter "s"

    .prologue
    .line 248
    const/4 v1, 0x0

    .local v1, id:I
    const/4 v0, 0x0

    .line 249
    .local v0, X:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 250
    .local v2, s_length:I
    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    const-string v0, "next"

    const/4 v1, 0x2

    .line 253
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 257
    :cond_1
    return v1

    .line 251
    :cond_2
    const/16 v3, 0xb

    if-ne v2, v3, :cond_3

    const-string v0, "constructor"

    const/4 v1, 0x1

    goto :goto_0

    .line 252
    :cond_3
    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    const-string v0, "__iterator__"

    const/4 v1, 0x3

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string v0, "Iterator"

    return-object v0
.end method

.method protected initPrototypeId(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 118
    packed-switch p1, :pswitch_data_0

    .line 122
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :pswitch_0
    const/4 v0, 0x2

    .local v0, arity:I
    const-string v1, "constructor"

    .line 124
    .local v1, s:Ljava/lang/String;
    :goto_0
    sget-object v2, Lorg/mozilla/javascript/NativeIterator;->ITERATOR_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/NativeIterator;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)V

    .line 125
    return-void

    .line 120
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "next"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 121
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_2
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "__iterator__"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
