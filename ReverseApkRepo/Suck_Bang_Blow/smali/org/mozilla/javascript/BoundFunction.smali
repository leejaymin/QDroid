.class public Lorg/mozilla/javascript/BoundFunction;
.super Lorg/mozilla/javascript/BaseFunction;
.source "BoundFunction.java"


# instance fields
.field private final boundArgs:[Ljava/lang/Object;

.field private final boundThis:Lorg/mozilla/javascript/Scriptable;

.field private final length:I

.field private final targetFunction:Lorg/mozilla/javascript/Callable;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)V
    .locals 5
    .parameter "cx"
    .parameter "scope"
    .parameter "targetFunction"
    .parameter "boundThis"
    .parameter "boundArgs"

    .prologue
    const/4 v4, 0x0

    .line 55
    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    .line 56
    iput-object p3, p0, Lorg/mozilla/javascript/BoundFunction;->targetFunction:Lorg/mozilla/javascript/Callable;

    .line 57
    iput-object p4, p0, Lorg/mozilla/javascript/BoundFunction;->boundThis:Lorg/mozilla/javascript/Scriptable;

    .line 58
    iput-object p5, p0, Lorg/mozilla/javascript/BoundFunction;->boundArgs:[Ljava/lang/Object;

    .line 59
    instance-of v2, p3, Lorg/mozilla/javascript/BaseFunction;

    if-eqz v2, :cond_0

    .line 60
    check-cast p3, Lorg/mozilla/javascript/BaseFunction;

    .end local p3
    invoke-virtual {p3}, Lorg/mozilla/javascript/BaseFunction;->getLength()I

    move-result v2

    array-length v3, p5

    sub-int/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/mozilla/javascript/BoundFunction;->length:I

    .line 65
    :goto_0
    invoke-static {p0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->setFunctionProtoAndParent(Lorg/mozilla/javascript/BaseFunction;Lorg/mozilla/javascript/Scriptable;)V

    .line 67
    invoke-static {}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorThrower()Lorg/mozilla/javascript/BaseFunction;

    move-result-object v0

    .line 68
    .local v0, thrower:Lorg/mozilla/javascript/Function;
    new-instance v1, Lorg/mozilla/javascript/NativeObject;

    invoke-direct {v1}, Lorg/mozilla/javascript/NativeObject;-><init>()V

    .line 69
    .local v1, throwing:Lorg/mozilla/javascript/NativeObject;
    const-string v2, "get"

    invoke-virtual {v1, v2, v1, v0}, Lorg/mozilla/javascript/NativeObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 70
    const-string v2, "set"

    invoke-virtual {v1, v2, v1, v0}, Lorg/mozilla/javascript/NativeObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 71
    const-string v2, "enumerable"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v1, v3}, Lorg/mozilla/javascript/NativeObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 72
    const-string v2, "configurable"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v1, v3}, Lorg/mozilla/javascript/NativeObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 73
    invoke-virtual {v1}, Lorg/mozilla/javascript/NativeObject;->preventExtensions()V

    .line 75
    const-string v2, "caller"

    invoke-virtual {p0, p1, v2, v1}, Lorg/mozilla/javascript/BoundFunction;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;)V

    .line 76
    const-string v2, "arguments"

    invoke-virtual {p0, p1, v2, v1}, Lorg/mozilla/javascript/BoundFunction;->defineOwnProperty(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;)V

    .line 77
    return-void

    .line 62
    .end local v0           #thrower:Lorg/mozilla/javascript/Function;
    .end local v1           #throwing:Lorg/mozilla/javascript/NativeObject;
    .restart local p3
    :cond_0
    iput v4, p0, Lorg/mozilla/javascript/BoundFunction;->length:I

    goto :goto_0
.end method

.method private concat([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .parameter "first"
    .parameter "second"

    .prologue
    const/4 v3, 0x0

    .line 107
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [Ljava/lang/Object;

    .line 108
    .local v0, args:[Ljava/lang/Object;
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    array-length v1, p1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    return-object v0
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "extraArgs"

    .prologue
    .line 82
    iget-object v0, p0, Lorg/mozilla/javascript/BoundFunction;->targetFunction:Lorg/mozilla/javascript/Callable;

    iget-object v1, p0, Lorg/mozilla/javascript/BoundFunction;->boundThis:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, p0, Lorg/mozilla/javascript/BoundFunction;->boundArgs:[Ljava/lang/Object;

    invoke-direct {p0, v2, p4}, Lorg/mozilla/javascript/BoundFunction;->concat([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 2
    .parameter "cx"
    .parameter "scope"
    .parameter "extraArgs"

    .prologue
    .line 87
    iget-object v0, p0, Lorg/mozilla/javascript/BoundFunction;->targetFunction:Lorg/mozilla/javascript/Callable;

    instance-of v0, v0, Lorg/mozilla/javascript/Function;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lorg/mozilla/javascript/BoundFunction;->targetFunction:Lorg/mozilla/javascript/Callable;

    check-cast v0, Lorg/mozilla/javascript/Function;

    iget-object v1, p0, Lorg/mozilla/javascript/BoundFunction;->boundArgs:[Ljava/lang/Object;

    invoke-direct {p0, v1, p3}, Lorg/mozilla/javascript/BoundFunction;->concat([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lorg/mozilla/javascript/Function;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    return-object v0

    .line 90
    :cond_0
    const-string v0, "msg.not.ctor"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lorg/mozilla/javascript/BoundFunction;->length:I

    return v0
.end method

.method public hasInstance(Lorg/mozilla/javascript/Scriptable;)Z
    .locals 1
    .parameter "instance"

    .prologue
    .line 95
    iget-object v0, p0, Lorg/mozilla/javascript/BoundFunction;->targetFunction:Lorg/mozilla/javascript/Callable;

    instance-of v0, v0, Lorg/mozilla/javascript/Function;

    if-eqz v0, :cond_0

    .line 96
    iget-object p0, p0, Lorg/mozilla/javascript/BoundFunction;->targetFunction:Lorg/mozilla/javascript/Callable;

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/Function;

    invoke-interface {p0, p1}, Lorg/mozilla/javascript/Function;->hasInstance(Lorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    return v0

    .line 98
    .restart local p0
    :cond_0
    const-string v0, "msg.not.ctor"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0
.end method
