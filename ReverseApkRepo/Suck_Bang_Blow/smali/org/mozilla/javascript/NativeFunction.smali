.class public abstract Lorg/mozilla/javascript/NativeFunction;
.super Lorg/mozilla/javascript/BaseFunction;
.source "NativeFunction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    return-void
.end method


# virtual methods
.method final decompile(II)Ljava/lang/String;
    .locals 3
    .parameter "indent"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    .line 68
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeFunction;->getEncodedSource()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, encodedSource:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 70
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/BaseFunction;->decompile(II)Ljava/lang/String;

    move-result-object v2

    .line 74
    :goto_0
    return-object v2

    .line 72
    :cond_0
    new-instance v1, Lorg/mozilla/javascript/UintMap;

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/UintMap;-><init>(I)V

    .line 73
    .local v1, properties:Lorg/mozilla/javascript/UintMap;
    invoke-virtual {v1, v2, p1}, Lorg/mozilla/javascript/UintMap;->put(II)V

    .line 74
    invoke-static {v0, p2, v1}, Lorg/mozilla/javascript/Decompiler;->decompile(Ljava/lang/String;ILorg/mozilla/javascript/UintMap;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getArity()I
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeFunction;->getParamCount()I

    move-result v0

    return v0
.end method

.method public getDebuggableView()Lorg/mozilla/javascript/debug/DebuggableScript;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncodedSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getLanguageVersion()I
.end method

.method public getLength()I
    .locals 5

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeFunction;->getParamCount()I

    move-result v2

    .line 82
    .local v2, paramCount:I
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeFunction;->getLanguageVersion()I

    move-result v3

    const/16 v4, 0x78

    if-eq v3, v4, :cond_0

    move v3, v2

    .line 90
    :goto_0
    return v3

    .line 85
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v1

    .line 86
    .local v1, cx:Lorg/mozilla/javascript/Context;
    invoke-static {v1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->findFunctionActivation(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Function;)Lorg/mozilla/javascript/NativeCall;

    move-result-object v0

    .line 87
    .local v0, activation:Lorg/mozilla/javascript/NativeCall;
    if-nez v0, :cond_1

    move v3, v2

    .line 88
    goto :goto_0

    .line 90
    :cond_1
    iget-object v3, v0, Lorg/mozilla/javascript/NativeCall;->originalArgs:[Ljava/lang/Object;

    array-length v3, v3

    goto :goto_0
.end method

.method protected abstract getParamAndVarCount()I
.end method

.method protected abstract getParamCount()I
.end method

.method protected getParamOrVarConst(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getParamOrVarName(I)Ljava/lang/String;
.end method

.method public final initScriptFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0
    .parameter "cx"
    .parameter "scope"

    .prologue
    .line 57
    invoke-static {p0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->setFunctionProtoAndParent(Lorg/mozilla/javascript/BaseFunction;Lorg/mozilla/javascript/Scriptable;)V

    .line 58
    return-void
.end method

.method public jsGet_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeFunction;->getFunctionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resumeGenerator(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "cx"
    .parameter "scope"
    .parameter "operation"
    .parameter "state"
    .parameter "value"

    .prologue
    .line 134
    new-instance v0, Lorg/mozilla/javascript/EvaluatorException;

    const-string v1, "resumeGenerator() not implemented"

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/EvaluatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
