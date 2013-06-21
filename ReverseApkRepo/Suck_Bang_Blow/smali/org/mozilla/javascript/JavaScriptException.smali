.class public Lorg/mozilla/javascript/JavaScriptException;
.super Lorg/mozilla/javascript/RhinoException;
.source "JavaScriptException.java"


# static fields
.field static final serialVersionUID:J = -0x6a639115d68db9edL


# instance fields
.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 62
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/mozilla/javascript/JavaScriptException;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 6
    .parameter "value"
    .parameter "sourceName"
    .parameter "lineNumber"

    .prologue
    const-string v5, "lineNumber"

    const-string v4, "fileName"

    .line 71
    invoke-direct {p0}, Lorg/mozilla/javascript/RhinoException;-><init>()V

    .line 72
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, p2, p3, v2, v3}, Lorg/mozilla/javascript/JavaScriptException;->recordErrorOrigin(Ljava/lang/String;ILjava/lang/String;I)V

    .line 73
    iput-object p1, p0, Lorg/mozilla/javascript/JavaScriptException;->value:Ljava/lang/Object;

    .line 76
    instance-of v2, p1, Lorg/mozilla/javascript/NativeError;

    if-eqz v2, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    move-object v0, p1

    check-cast v0, Lorg/mozilla/javascript/NativeError;

    move-object v1, v0

    .line 79
    .local v1, error:Lorg/mozilla/javascript/NativeError;
    const-string v2, "fileName"

    invoke-virtual {v1, v4, v1}, Lorg/mozilla/javascript/NativeError;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    const-string v2, "fileName"

    invoke-virtual {v1, v4, v1, p2}, Lorg/mozilla/javascript/NativeError;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 82
    :cond_0
    const-string v2, "lineNumber"

    invoke-virtual {v1, v5, v1}, Lorg/mozilla/javascript/NativeError;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 83
    const-string v2, "lineNumber"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v1, v2}, Lorg/mozilla/javascript/NativeError;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 86
    :cond_1
    invoke-virtual {v1, p0}, Lorg/mozilla/javascript/NativeError;->setStackProvider(Lorg/mozilla/javascript/RhinoException;)V

    .line 88
    .end local v1           #error:Lorg/mozilla/javascript/NativeError;
    :cond_2
    return-void
.end method


# virtual methods
.method public details()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    iget-object v1, p0, Lorg/mozilla/javascript/JavaScriptException;->value:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 94
    const-string v1, "null"

    .line 105
    .end local p0
    :goto_0
    return-object v1

    .line 95
    .restart local p0
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/JavaScriptException;->value:Ljava/lang/Object;

    instance-of v1, v1, Lorg/mozilla/javascript/NativeError;

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lorg/mozilla/javascript/JavaScriptException;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 99
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/mozilla/javascript/JavaScriptException;->value:Ljava/lang/Object;

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 102
    .local v0, rte:Ljava/lang/RuntimeException;
    iget-object v1, p0, Lorg/mozilla/javascript/JavaScriptException;->value:Ljava/lang/Object;

    instance-of v1, v1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_2

    .line 103
    iget-object p0, p0, Lorg/mozilla/javascript/JavaScriptException;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->defaultObjectToString(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 105
    .restart local p0
    :cond_2
    iget-object v1, p0, Lorg/mozilla/javascript/JavaScriptException;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lorg/mozilla/javascript/JavaScriptException;->lineNumber()I

    move-result v0

    return v0
.end method

.method public getSourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lorg/mozilla/javascript/JavaScriptException;->sourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/mozilla/javascript/JavaScriptException;->value:Ljava/lang/Object;

    return-object v0
.end method
