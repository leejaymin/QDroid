.class public Lorg/mozilla/javascript/NativeWith;
.super Ljava/lang/Object;
.source "NativeWith.java"

# interfaces
.implements Lorg/mozilla/javascript/Scriptable;
.implements Lorg/mozilla/javascript/IdFunctionCall;
.implements Ljava/io/Serializable;


# static fields
.field private static final FTAG:Ljava/lang/Object; = null

.field private static final Id_constructor:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected parent:Lorg/mozilla/javascript/Scriptable;

.field protected prototype:Lorg/mozilla/javascript/Scriptable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 200
    const-string v0, "With"

    sput-object v0, Lorg/mozilla/javascript/NativeWith;->FTAG:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method protected constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0
    .parameter "parent"
    .parameter "prototype"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/mozilla/javascript/NativeWith;->parent:Lorg/mozilla/javascript/Scriptable;

    .line 75
    iput-object p2, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    .line 76
    return-void
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 7
    .parameter "scope"
    .parameter "sealed"

    .prologue
    .line 56
    new-instance v1, Lorg/mozilla/javascript/NativeWith;

    invoke-direct {v1}, Lorg/mozilla/javascript/NativeWith;-><init>()V

    .line 58
    .local v1, obj:Lorg/mozilla/javascript/NativeWith;
    invoke-virtual {v1, p0}, Lorg/mozilla/javascript/NativeWith;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 59
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/NativeWith;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 61
    new-instance v0, Lorg/mozilla/javascript/IdFunctionObject;

    sget-object v2, Lorg/mozilla/javascript/NativeWith;->FTAG:Ljava/lang/Object;

    const/4 v3, 0x1

    const-string v4, "With"

    const/4 v5, 0x0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/IdFunctionObject;-><init>(Lorg/mozilla/javascript/IdFunctionCall;Ljava/lang/Object;ILjava/lang/String;ILorg/mozilla/javascript/Scriptable;)V

    .line 63
    .local v0, ctor:Lorg/mozilla/javascript/IdFunctionObject;
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IdFunctionObject;->markAsConstructor(Lorg/mozilla/javascript/Scriptable;)V

    .line 64
    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {v0}, Lorg/mozilla/javascript/IdFunctionObject;->sealObject()V

    .line 67
    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/IdFunctionObject;->exportAsScopeProperty()V

    .line 68
    return-void
.end method

.method static isWithFunction(Ljava/lang/Object;)Z
    .locals 5
    .parameter "functionObj"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 180
    instance-of v2, p0, Lorg/mozilla/javascript/IdFunctionObject;

    if-eqz v2, :cond_1

    .line 181
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/IdFunctionObject;

    move-object v1, v0

    .line 182
    .local v1, f:Lorg/mozilla/javascript/IdFunctionObject;
    sget-object v2, Lorg/mozilla/javascript/NativeWith;->FTAG:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v2

    if-ne v2, v4, :cond_0

    move v2, v4

    .line 184
    .end local v1           #f:Lorg/mozilla/javascript/IdFunctionObject;
    :goto_0
    return v2

    .restart local v1       #f:Lorg/mozilla/javascript/IdFunctionObject;
    :cond_0
    move v2, v3

    .line 182
    goto :goto_0

    .end local v1           #f:Lorg/mozilla/javascript/IdFunctionObject;
    :cond_1
    move v2, v3

    .line 184
    goto :goto_0
.end method

.method static newWithSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "cx"
    .parameter "scope"
    .parameter "args"

    .prologue
    .line 189
    const-string v1, "With"

    invoke-static {p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->checkDeprecated(Lorg/mozilla/javascript/Context;Ljava/lang/String;)V

    .line 190
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    .line 191
    new-instance v0, Lorg/mozilla/javascript/NativeWith;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeWith;-><init>()V

    .line 192
    .local v0, thisObj:Lorg/mozilla/javascript/NativeWith;
    array-length v1, p2

    if-nez v1, :cond_0

    const-string v1, "Object"

    invoke-static {p1, v1}, Lorg/mozilla/javascript/ScriptableObject;->getClassPrototype(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/NativeWith;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 196
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/NativeWith;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 197
    return-object v0

    .line 192
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-static {p0, p1, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public delete(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 127
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0, p1}, Lorg/mozilla/javascript/Scriptable;->delete(I)V

    .line 128
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 122
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0, p1}, Lorg/mozilla/javascript/Scriptable;->delete(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "f"
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 170
    sget-object v0, Lorg/mozilla/javascript/NativeWith;->FTAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 172
    const-string v0, "msg.cant.call.indirect"

    const-string v1, "With"

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    .line 175
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->unknown()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .parameter "start"

    .prologue
    .line 101
    if-ne p2, p0, :cond_0

    .line 102
    iget-object p2, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 1
    .parameter "id"
    .parameter "start"

    .prologue
    .line 94
    if-ne p2, p0, :cond_0

    .line 95
    iget-object p2, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "With"

    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, typeHint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0, p1}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getIds()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParentScope()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWith;->parent:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method public getPrototype()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .locals 2
    .parameter "index"
    .parameter "start"

    .prologue
    .line 89
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    iget-object v1, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0, p1, v1}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    return v0
.end method

.method public has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 2
    .parameter "id"
    .parameter "start"

    .prologue
    .line 84
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    iget-object v1, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0, p1, v1}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    return v0
.end method

.method public hasInstance(Lorg/mozilla/javascript/Scriptable;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 155
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0, p1}, Lorg/mozilla/javascript/Scriptable;->hasInstance(Lorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    return v0
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 1
    .parameter "index"
    .parameter "start"
    .parameter "value"

    .prologue
    .line 115
    if-ne p2, p0, :cond_0

    .line 116
    iget-object p2, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 1
    .parameter "id"
    .parameter "start"
    .parameter "value"

    .prologue
    .line 108
    if-ne p2, p0, :cond_0

    .line 109
    iget-object p2, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public setParentScope(Lorg/mozilla/javascript/Scriptable;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 143
    iput-object p1, p0, Lorg/mozilla/javascript/NativeWith;->parent:Lorg/mozilla/javascript/Scriptable;

    .line 144
    return-void
.end method

.method public setPrototype(Lorg/mozilla/javascript/Scriptable;)V
    .locals 0
    .parameter "prototype"

    .prologue
    .line 135
    iput-object p1, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    .line 136
    return-void
.end method

.method protected updateDotQuery(Z)Ljava/lang/Object;
    .locals 1
    .parameter "value"

    .prologue
    .line 164
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
