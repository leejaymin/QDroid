.class public Lorg/mozilla/javascript/NativeJavaArray;
.super Lorg/mozilla/javascript/NativeJavaObject;
.source "NativeJavaArray.java"


# static fields
.field static final serialVersionUID:J = -0xcd2c99e10870ec5L


# instance fields
.field array:Ljava/lang/Object;

.field cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field length:I


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 3
    .parameter "scope"
    .parameter "array"

    .prologue
    .line 75
    const/4 v1, 0x0

    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->ObjectClass:Ljava/lang/Class;

    invoke-direct {p0, p1, v1, v2}, Lorg/mozilla/javascript/NativeJavaObject;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 76
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 77
    .local v0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Array expected"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_0
    iput-object p2, p0, Lorg/mozilla/javascript/NativeJavaArray;->array:Ljava/lang/Object;

    .line 81
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lorg/mozilla/javascript/NativeJavaArray;->length:I

    .line 82
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/javascript/NativeJavaArray;->cls:Ljava/lang/Class;

    .line 83
    return-void
.end method

.method public static wrap(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/NativeJavaArray;
    .locals 1
    .parameter "scope"
    .parameter "array"

    .prologue
    .line 66
    new-instance v0, Lorg/mozilla/javascript/NativeJavaArray;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/javascript/NativeJavaArray;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 4
    .parameter "index"
    .parameter "start"

    .prologue
    .line 111
    if-ltz p1, :cond_0

    iget v2, p0, Lorg/mozilla/javascript/NativeJavaArray;->length:I

    if-ge p1, v2, :cond_0

    .line 112
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 113
    .local v0, cx:Lorg/mozilla/javascript/Context;
    iget-object v2, p0, Lorg/mozilla/javascript/NativeJavaArray;->array:Ljava/lang/Object;

    invoke-static {v2, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 114
    .local v1, obj:Ljava/lang/Object;
    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v2

    iget-object v3, p0, Lorg/mozilla/javascript/NativeJavaArray;->cls:Ljava/lang/Class;

    invoke-virtual {v2, v0, p0, v1, v3}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 116
    .end local v0           #cx:Lorg/mozilla/javascript/Context;
    .end local v1           #obj:Ljava/lang/Object;
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_0
.end method

.method public get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 3
    .parameter "id"
    .parameter "start"

    .prologue
    .line 97
    const-string v1, "length"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget v1, p0, Lorg/mozilla/javascript/NativeJavaArray;->length:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 106
    :goto_0
    return-object v1

    .line 99
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/NativeJavaObject;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    .line 100
    .local v0, result:Ljava/lang/Object;
    sget-object v1, Lorg/mozilla/javascript/NativeJavaArray;->NOT_FOUND:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaArray;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/mozilla/javascript/ScriptableObject;->hasProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    const-string v1, "msg.java.member.not.found"

    iget-object v2, p0, Lorg/mozilla/javascript/NativeJavaArray;->array:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v1

    throw v1

    :cond_1
    move-object v1, v0

    .line 106
    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "JavaArray"

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
    .line 141
    .local p1, hint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaArray;->array:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    .line 143
    :cond_1
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->BooleanClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    .line 144
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 145
    :cond_2
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    .line 146
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    goto :goto_0

    :cond_3
    move-object v0, p0

    .line 147
    goto :goto_0
.end method

.method public getIds()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 152
    iget v2, p0, Lorg/mozilla/javascript/NativeJavaArray;->length:I

    new-array v1, v2, [Ljava/lang/Object;

    .line 153
    .local v1, result:[Ljava/lang/Object;
    iget v0, p0, Lorg/mozilla/javascript/NativeJavaArray;->length:I

    .line 154
    .local v0, i:I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_0

    .line 156
    :cond_0
    return-object v1
.end method

.method public getPrototype()Lorg/mozilla/javascript/Scriptable;
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaArray;->prototype:Lorg/mozilla/javascript/Scriptable;

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeJavaArray;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const-string v1, "Array"

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->getClassPrototype(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/NativeJavaArray;->prototype:Lorg/mozilla/javascript/Scriptable;

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaArray;->prototype:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .locals 1
    .parameter "index"
    .parameter "start"

    .prologue
    .line 92
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/NativeJavaArray;->length:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 1
    .parameter "id"
    .parameter "start"

    .prologue
    .line 87
    const-string v0, "length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/NativeJavaObject;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInstance(Lorg/mozilla/javascript/Scriptable;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 161
    instance-of v1, p1, Lorg/mozilla/javascript/Wrapper;

    if-nez v1, :cond_0

    .line 162
    const/4 v1, 0x0

    .line 164
    .end local p1
    :goto_0
    return v1

    .line 163
    .restart local p1
    :cond_0
    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    .end local p1
    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object v0

    .line 164
    .local v0, instance:Ljava/lang/Object;
    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaArray;->cls:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 4
    .parameter "index"
    .parameter "start"
    .parameter "value"

    .prologue
    .line 129
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/NativeJavaArray;->length:I

    if-ge p1, v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaArray;->array:Ljava/lang/Object;

    iget-object v1, p0, Lorg/mozilla/javascript/NativeJavaArray;->cls:Ljava/lang/Class;

    invoke-static {p3, v1}, Lorg/mozilla/javascript/Context;->jsToJava(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 137
    return-void

    .line 133
    :cond_0
    const-string v0, "msg.java.array.index.out.of.bounds"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/mozilla/javascript/NativeJavaArray;->length:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/Context;->reportRuntimeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 1
    .parameter "id"
    .parameter "start"
    .parameter "value"

    .prologue
    .line 122
    const-string v0, "length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    const-string v0, "msg.java.array.member.not.found"

    invoke-static {v0, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    .line 125
    :cond_0
    return-void
.end method

.method public unwrap()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaArray;->array:Ljava/lang/Object;

    return-object v0
.end method
