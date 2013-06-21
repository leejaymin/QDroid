.class public Lorg/mozilla/javascript/IdFunctionObject;
.super Lorg/mozilla/javascript/BaseFunction;
.source "IdFunctionObject.java"


# static fields
.field static final serialVersionUID:J = -0x4a002e39945f012bL


# instance fields
.field private arity:I

.field private functionName:Ljava/lang/String;

.field private final idcall:Lorg/mozilla/javascript/IdFunctionCall;

.field private final methodId:I

.field private final tag:Ljava/lang/Object;

.field private useCallAsConstructor:Z


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/IdFunctionCall;Ljava/lang/Object;II)V
    .locals 1
    .parameter "idcall"
    .parameter "tag"
    .parameter "id"
    .parameter "arity"

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    .line 50
    if-gez p4, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 53
    :cond_0
    iput-object p1, p0, Lorg/mozilla/javascript/IdFunctionObject;->idcall:Lorg/mozilla/javascript/IdFunctionCall;

    .line 54
    iput-object p2, p0, Lorg/mozilla/javascript/IdFunctionObject;->tag:Ljava/lang/Object;

    .line 55
    iput p3, p0, Lorg/mozilla/javascript/IdFunctionObject;->methodId:I

    .line 56
    iput p4, p0, Lorg/mozilla/javascript/IdFunctionObject;->arity:I

    .line 57
    if-gez p4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 58
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/IdFunctionCall;Ljava/lang/Object;ILjava/lang/String;ILorg/mozilla/javascript/Scriptable;)V
    .locals 1
    .parameter "idcall"
    .parameter "tag"
    .parameter "id"
    .parameter "name"
    .parameter "arity"
    .parameter "scope"

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p6, v0}, Lorg/mozilla/javascript/BaseFunction;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V

    .line 65
    if-gez p5, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 67
    :cond_0
    if-nez p4, :cond_1

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 70
    :cond_1
    iput-object p1, p0, Lorg/mozilla/javascript/IdFunctionObject;->idcall:Lorg/mozilla/javascript/IdFunctionCall;

    .line 71
    iput-object p2, p0, Lorg/mozilla/javascript/IdFunctionObject;->tag:Ljava/lang/Object;

    .line 72
    iput p3, p0, Lorg/mozilla/javascript/IdFunctionObject;->methodId:I

    .line 73
    iput p5, p0, Lorg/mozilla/javascript/IdFunctionObject;->arity:I

    .line 74
    iput-object p4, p0, Lorg/mozilla/javascript/IdFunctionObject;->functionName:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public final addAsProperty(Lorg/mozilla/javascript/Scriptable;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 103
    iget-object v0, p0, Lorg/mozilla/javascript/IdFunctionObject;->functionName:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v0, p0, v1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 105
    return-void
.end method

.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 129
    iget-object v0, p0, Lorg/mozilla/javascript/IdFunctionObject;->idcall:Lorg/mozilla/javascript/IdFunctionCall;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/mozilla/javascript/IdFunctionCall;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;
    .locals 2
    .parameter "cx"
    .parameter "scope"

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/mozilla/javascript/IdFunctionObject;->useCallAsConstructor:Z

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x0

    return-object v0

    .line 142
    :cond_0
    const-string v0, "msg.not.ctor"

    iget-object v1, p0, Lorg/mozilla/javascript/IdFunctionObject;->functionName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0
.end method

.method decompile(II)Ljava/lang/String;
    .locals 4
    .parameter "indent"
    .parameter "flags"

    .prologue
    .line 148
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 149
    .local v1, sb:Ljava/lang/StringBuffer;
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    move v0, v3

    .line 150
    .local v0, justbody:Z
    :goto_0
    if-nez v0, :cond_0

    .line 151
    const-string v3, "function "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    invoke-virtual {p0}, Lorg/mozilla/javascript/IdFunctionObject;->getFunctionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    const-string v3, "() { "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    :cond_0
    const-string v3, "[native code for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    iget-object v3, p0, Lorg/mozilla/javascript/IdFunctionObject;->idcall:Lorg/mozilla/javascript/IdFunctionCall;

    instance-of v3, v3, Lorg/mozilla/javascript/Scriptable;

    if-eqz v3, :cond_1

    .line 157
    iget-object v2, p0, Lorg/mozilla/javascript/IdFunctionObject;->idcall:Lorg/mozilla/javascript/IdFunctionCall;

    check-cast v2, Lorg/mozilla/javascript/Scriptable;

    .line 158
    .local v2, sobj:Lorg/mozilla/javascript/Scriptable;
    invoke-interface {v2}, Lorg/mozilla/javascript/Scriptable;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 161
    .end local v2           #sobj:Lorg/mozilla/javascript/Scriptable;
    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/IdFunctionObject;->getFunctionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    const-string v3, ", arity="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    invoke-virtual {p0}, Lorg/mozilla/javascript/IdFunctionObject;->getArity()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 164
    if-eqz v0, :cond_3

    const-string v3, "]\n"

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 149
    .end local v0           #justbody:Z
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 164
    .restart local v0       #justbody:Z
    :cond_3
    const-string v3, "] }\n"

    goto :goto_1
.end method

.method public exportAsScopeProperty()V
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lorg/mozilla/javascript/IdFunctionObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IdFunctionObject;->addAsProperty(Lorg/mozilla/javascript/Scriptable;)V

    .line 110
    return-void
.end method

.method public getArity()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lorg/mozilla/javascript/IdFunctionObject;->arity:I

    return v0
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/mozilla/javascript/IdFunctionObject;->functionName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/IdFunctionObject;->functionName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lorg/mozilla/javascript/IdFunctionObject;->getArity()I

    move-result v0

    return v0
.end method

.method public getPrototype()Lorg/mozilla/javascript/Scriptable;
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Lorg/mozilla/javascript/BaseFunction;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 118
    .local v0, proto:Lorg/mozilla/javascript/Scriptable;
    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lorg/mozilla/javascript/IdFunctionObject;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/IdFunctionObject;->getFunctionPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 120
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IdFunctionObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 122
    :cond_0
    return-object v0
.end method

.method public final hasTag(Ljava/lang/Object;)Z
    .locals 1
    .parameter "tag"

    .prologue
    .line 87
    iget-object v0, p0, Lorg/mozilla/javascript/IdFunctionObject;->tag:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initFunction(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)V
    .locals 1
    .parameter "name"
    .parameter "scope"

    .prologue
    .line 79
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 80
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 81
    :cond_1
    iput-object p1, p0, Lorg/mozilla/javascript/IdFunctionObject;->functionName:Ljava/lang/String;

    .line 82
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/IdFunctionObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 83
    return-void
.end method

.method public final markAsConstructor(Lorg/mozilla/javascript/Scriptable;)V
    .locals 1
    .parameter "prototypeProperty"

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/IdFunctionObject;->useCallAsConstructor:Z

    .line 98
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/IdFunctionObject;->setImmunePrototypeProperty(Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public final methodId()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lorg/mozilla/javascript/IdFunctionObject;->methodId:I

    return v0
.end method

.method public final unknown()Ljava/lang/RuntimeException;
    .locals 3

    .prologue
    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BAD FUNCTION ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/mozilla/javascript/IdFunctionObject;->methodId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MASTER="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/IdFunctionObject;->idcall:Lorg/mozilla/javascript/IdFunctionCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
