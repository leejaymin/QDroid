.class Lorg/mozilla/javascript/SpecialRef;
.super Lorg/mozilla/javascript/Ref;
.source "SpecialRef.java"


# static fields
.field private static final SPECIAL_NONE:I = 0x0

.field private static final SPECIAL_PARENT:I = 0x2

.field private static final SPECIAL_PROTO:I = 0x1

.field static final serialVersionUID:J = -0x686214493d5c9e97L


# instance fields
.field private name:Ljava/lang/String;

.field private target:Lorg/mozilla/javascript/Scriptable;

.field private type:I


# direct methods
.method private constructor <init>(Lorg/mozilla/javascript/Scriptable;ILjava/lang/String;)V
    .locals 0
    .parameter "target"
    .parameter "type"
    .parameter "name"

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/mozilla/javascript/Ref;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/mozilla/javascript/SpecialRef;->target:Lorg/mozilla/javascript/Scriptable;

    .line 56
    iput p2, p0, Lorg/mozilla/javascript/SpecialRef;->type:I

    .line 57
    iput-object p3, p0, Lorg/mozilla/javascript/SpecialRef;->name:Ljava/lang/String;

    .line 58
    return-void
.end method

.method static createSpecial(Lorg/mozilla/javascript/Context;Ljava/lang/Object;Ljava/lang/String;)Lorg/mozilla/javascript/Ref;
    .locals 3
    .parameter "cx"
    .parameter "object"
    .parameter "name"

    .prologue
    .line 62
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 63
    .local v0, target:Lorg/mozilla/javascript/Scriptable;
    if-nez v0, :cond_0

    .line 64
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->undefReadError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 68
    :cond_0
    const-string v2, "__proto__"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    const/4 v1, 0x1

    .line 76
    .local v1, type:I
    :goto_0
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    const/4 v1, 0x0

    .line 81
    :cond_1
    new-instance v2, Lorg/mozilla/javascript/SpecialRef;

    invoke-direct {v2, v0, v1, p2}, Lorg/mozilla/javascript/SpecialRef;-><init>(Lorg/mozilla/javascript/Scriptable;ILjava/lang/String;)V

    return-object v2

    .line 70
    .end local v1           #type:I
    :cond_2
    const-string v2, "__parent__"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 71
    const/4 v1, 0x2

    .restart local v1       #type:I
    goto :goto_0

    .line 73
    .end local v1           #type:I
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public delete(Lorg/mozilla/javascript/Context;)Z
    .locals 2
    .parameter "cx"

    .prologue
    .line 149
    iget v0, p0, Lorg/mozilla/javascript/SpecialRef;->type:I

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/mozilla/javascript/SpecialRef;->target:Lorg/mozilla/javascript/Scriptable;

    iget-object v1, p0, Lorg/mozilla/javascript/SpecialRef;->name:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->deleteObjectElem(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z

    move-result v0

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 2
    .parameter "cx"

    .prologue
    .line 87
    iget v0, p0, Lorg/mozilla/javascript/SpecialRef;->type:I

    packed-switch v0, :pswitch_data_0

    .line 95
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 89
    :pswitch_0
    iget-object v0, p0, Lorg/mozilla/javascript/SpecialRef;->target:Lorg/mozilla/javascript/Scriptable;

    iget-object v1, p0, Lorg/mozilla/javascript/SpecialRef;->name:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    .line 91
    :pswitch_1
    iget-object v0, p0, Lorg/mozilla/javascript/SpecialRef;->target:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto :goto_0

    .line 93
    :pswitch_2
    iget-object v0, p0, Lorg/mozilla/javascript/SpecialRef;->target:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public has(Lorg/mozilla/javascript/Context;)Z
    .locals 2
    .parameter "cx"

    .prologue
    .line 140
    iget v0, p0, Lorg/mozilla/javascript/SpecialRef;->type:I

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lorg/mozilla/javascript/SpecialRef;->target:Lorg/mozilla/javascript/Scriptable;

    iget-object v1, p0, Lorg/mozilla/javascript/SpecialRef;->name:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->hasObjectElem(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Z

    move-result v0

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public set(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "cx"
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    .line 102
    iget v2, p0, Lorg/mozilla/javascript/SpecialRef;->type:I

    packed-switch v2, :pswitch_data_0

    .line 133
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 104
    :pswitch_0
    iget-object v2, p0, Lorg/mozilla/javascript/SpecialRef;->target:Lorg/mozilla/javascript/Scriptable;

    iget-object v3, p0, Lorg/mozilla/javascript/SpecialRef;->name:Ljava/lang/String;

    invoke-static {v2, v3, p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v2

    .line 130
    :goto_0
    return-object v2

    .line 108
    :pswitch_1
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObjectOrNull(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 109
    .local v0, obj:Lorg/mozilla/javascript/Scriptable;
    if-eqz v0, :cond_2

    .line 112
    move-object v1, v0

    .line 114
    .local v1, search:Lorg/mozilla/javascript/Scriptable;
    :cond_0
    iget-object v2, p0, Lorg/mozilla/javascript/SpecialRef;->target:Lorg/mozilla/javascript/Scriptable;

    if-ne v1, v2, :cond_1

    .line 115
    const-string v2, "msg.cyclic.value"

    iget-object v3, p0, Lorg/mozilla/javascript/SpecialRef;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/mozilla/javascript/Context;->reportRuntimeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v2

    throw v2

    .line 118
    :cond_1
    iget v2, p0, Lorg/mozilla/javascript/SpecialRef;->type:I

    if-ne v2, v3, :cond_3

    .line 119
    invoke-interface {v1}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    .line 123
    :goto_1
    if-nez v1, :cond_0

    .line 125
    .end local v1           #search:Lorg/mozilla/javascript/Scriptable;
    :cond_2
    iget v2, p0, Lorg/mozilla/javascript/SpecialRef;->type:I

    if-ne v2, v3, :cond_4

    .line 126
    iget-object v2, p0, Lorg/mozilla/javascript/SpecialRef;->target:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v2, v0}, Lorg/mozilla/javascript/Scriptable;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    :goto_2
    move-object v2, v0

    .line 130
    goto :goto_0

    .line 121
    .restart local v1       #search:Lorg/mozilla/javascript/Scriptable;
    :cond_3
    invoke-interface {v1}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    goto :goto_1

    .line 128
    .end local v1           #search:Lorg/mozilla/javascript/Scriptable;
    :cond_4
    iget-object v2, p0, Lorg/mozilla/javascript/SpecialRef;->target:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v2, v0}, Lorg/mozilla/javascript/Scriptable;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_2

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
