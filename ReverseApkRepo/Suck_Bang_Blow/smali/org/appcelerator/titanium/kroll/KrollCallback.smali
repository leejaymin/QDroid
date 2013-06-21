.class public Lorg/appcelerator/titanium/kroll/KrollCallback;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "KrollCallback.java"

# interfaces
.implements Lorg/appcelerator/kroll/KrollConvertable;


# static fields
.field protected static final ANONYMOUS_METHOD_NAME:Ljava/lang/String; = "(anonymous)"

.field private static final LCAT:Ljava/lang/String; = "KrollCallback"


# instance fields
.field protected kroll:Lorg/appcelerator/titanium/kroll/KrollContext;

.field protected method:Lorg/mozilla/javascript/Function;

.field protected scope:Lorg/mozilla/javascript/Scriptable;

.field protected thisObj:Lorg/mozilla/javascript/Scriptable;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/kroll/KrollContext;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;)V
    .locals 1
    .parameter "context"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "method"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/appcelerator/kroll/KrollMethod;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lorg/appcelerator/titanium/kroll/KrollCallback;->kroll:Lorg/appcelerator/titanium/kroll/KrollContext;

    .line 40
    iput-object p2, p0, Lorg/appcelerator/titanium/kroll/KrollCallback;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 41
    iput-object p3, p0, Lorg/appcelerator/titanium/kroll/KrollCallback;->thisObj:Lorg/mozilla/javascript/Scriptable;

    .line 42
    iput-object p4, p0, Lorg/appcelerator/titanium/kroll/KrollCallback;->method:Lorg/mozilla/javascript/Function;

    .line 43
    return-void
.end method


# virtual methods
.method public callAsync()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callAsync([Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public callAsync(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "properties"

    .prologue
    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callAsync([Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public callAsync(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;Z)V
    .locals 3
    .parameter "invocation"
    .parameter "args"
    .parameter "recycleInvocation"

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/kroll/KrollCallback;->getKrollContext(Lorg/appcelerator/kroll/KrollInvocation;)Lorg/appcelerator/titanium/kroll/KrollContext;

    move-result-object v0

    .line 162
    .local v0, kroll:Lorg/appcelerator/titanium/kroll/KrollContext;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/kroll/KrollContext;->getMessageQueue()Lorg/appcelerator/titanium/TiMessageQueue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiMessageQueue;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lorg/appcelerator/titanium/kroll/KrollCallback$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/appcelerator/titanium/kroll/KrollCallback$1;-><init>(Lorg/appcelerator/titanium/kroll/KrollCallback;Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    return-void
.end method

.method public callAsync(Lorg/appcelerator/titanium/TiContext;[Ljava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "args"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/kroll/KrollCallback;->createInvocation(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollInvocation;

    move-result-object v0

    .line 96
    .local v0, invocation:Lorg/appcelerator/kroll/KrollInvocation;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callAsync(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;Z)V

    .line 97
    return-void
.end method

.method public callAsync([Ljava/lang/Object;)V
    .locals 1
    .parameter "args"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callAsync(Lorg/appcelerator/titanium/TiContext;[Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public callSync()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callSync([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public callSync(Lorg/appcelerator/kroll/KrollDict;)Ljava/lang/Object;
    .locals 2
    .parameter "properties"

    .prologue
    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callSync([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public callSync(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter "invocation"
    .parameter "args"

    .prologue
    const-string v6, "KrollCallback"

    const-string v6, ", message: "

    .line 130
    if-nez p2, :cond_0

    const/4 v6, 0x0

    new-array p2, v6, [Ljava/lang/Object;

    .line 131
    :cond_0
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/kroll/KrollCallback;->getKrollContext(Lorg/appcelerator/kroll/KrollInvocation;)Lorg/appcelerator/titanium/kroll/KrollContext;

    move-result-object v5

    .line 132
    .local v5, kroll:Lorg/appcelerator/titanium/kroll/KrollContext;
    invoke-virtual {v5}, Lorg/appcelerator/titanium/kroll/KrollContext;->enter()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 134
    .local v0, ctx:Lorg/mozilla/javascript/Context;
    :try_start_0
    array-length v6, p2

    new-array v4, v6, [Ljava/lang/Object;

    .line 135
    .local v4, jsArgs:[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, p2

    if-ge v2, v6, :cond_1

    .line 136
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    aget-object v7, p2, v2

    invoke-virtual {v6, p1, v7}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 137
    .local v3, jsArg:Ljava/lang/Object;
    aput-object v3, v4, v2

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v3           #jsArg:Ljava/lang/Object;
    :cond_1
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    iget-object v7, p0, Lorg/appcelerator/titanium/kroll/KrollCallback;->method:Lorg/mozilla/javascript/Function;

    iget-object v8, p0, Lorg/appcelerator/titanium/kroll/KrollCallback;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v9, p0, Lorg/appcelerator/titanium/kroll/KrollCallback;->thisObj:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v7, v0, v8, v9, v4}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-class v8, Ljava/lang/Object;

    invoke-virtual {v6, p1, v7, v8}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/mozilla/javascript/EcmaError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/mozilla/javascript/EvaluatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v6

    .line 154
    invoke-virtual {v5}, Lorg/appcelerator/titanium/kroll/KrollContext;->exit()V

    .line 156
    .end local v2           #i:I
    .end local v4           #jsArgs:[Ljava/lang/Object;
    :goto_1
    return-object v6

    .line 141
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 142
    .local v1, e:Lorg/mozilla/javascript/EcmaError;
    :try_start_1
    const-string v6, "KrollCallback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ECMA Error evaluating source, invocation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/mozilla/javascript/EcmaError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    invoke-virtual {v1}, Lorg/mozilla/javascript/EcmaError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lorg/mozilla/javascript/EcmaError;->sourceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lorg/mozilla/javascript/EcmaError;->lineNumber()I

    move-result v8

    invoke-virtual {v1}, Lorg/mozilla/javascript/EcmaError;->lineSource()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lorg/mozilla/javascript/EcmaError;->columnNumber()I

    move-result v10

    invoke-static {v6, v7, v8, v9, v10}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    invoke-virtual {v5}, Lorg/appcelerator/titanium/kroll/KrollContext;->exit()V

    .line 156
    .end local v1           #e:Lorg/mozilla/javascript/EcmaError;
    :goto_2
    sget-object v6, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    goto :goto_1

    .line 144
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 145
    .local v1, e:Lorg/mozilla/javascript/EvaluatorException;
    :try_start_2
    const-string v6, "KrollCallback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error evaluating source, invocation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/mozilla/javascript/EvaluatorException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    invoke-virtual {v1}, Lorg/mozilla/javascript/EvaluatorException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lorg/mozilla/javascript/EvaluatorException;->sourceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lorg/mozilla/javascript/EvaluatorException;->lineNumber()I

    move-result v8

    invoke-virtual {v1}, Lorg/mozilla/javascript/EvaluatorException;->lineSource()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lorg/mozilla/javascript/EvaluatorException;->columnNumber()I

    move-result v10

    invoke-static {v6, v7, v8, v9, v10}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EvaluatorException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    invoke-virtual {v5}, Lorg/appcelerator/titanium/kroll/KrollContext;->exit()V

    goto :goto_2

    .line 147
    .end local v1           #e:Lorg/mozilla/javascript/EvaluatorException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 148
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    const-string v6, "KrollCallback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error, invocation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    invoke-static {v1}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    invoke-virtual {v5}, Lorg/appcelerator/titanium/kroll/KrollContext;->exit()V

    goto :goto_2

    .line 150
    .end local v1           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v6

    move-object v1, v6

    .line 151
    .local v1, e:Ljava/lang/Throwable;
    :try_start_4
    const-string v6, "KrollCallback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unhandled throwable, invocation:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    invoke-static {v1}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 154
    invoke-virtual {v5}, Lorg/appcelerator/titanium/kroll/KrollContext;->exit()V

    goto/16 :goto_2

    .end local v1           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lorg/appcelerator/titanium/kroll/KrollContext;->exit()V

    throw v6
.end method

.method public callSync(Lorg/appcelerator/titanium/TiContext;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "context"
    .parameter "args"

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/kroll/KrollCallback;->createInvocation(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollInvocation;

    move-result-object v0

    .line 113
    .local v0, invocation:Lorg/appcelerator/kroll/KrollInvocation;
    invoke-virtual {p0, v0, p2}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callSync(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 114
    .local v1, result:Ljava/lang/Object;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollInvocation;->recycle()V

    .line 115
    return-object v1
.end method

.method public callSync([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "args"

    .prologue
    .line 108
    const/4 v0, 0x0

    check-cast v0, Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {p0, v0, p1}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callSync(Lorg/appcelerator/titanium/TiContext;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected createInvocation()Lorg/appcelerator/kroll/KrollInvocation;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/kroll/KrollCallback;->createInvocation(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollInvocation;

    move-result-object v0

    return-object v0
.end method

.method protected createInvocation(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollInvocation;
    .locals 10
    .parameter "context"

    .prologue
    .line 63
    const-string v4, "(anonymous)"

    .line 64
    .local v4, methodName:Ljava/lang/String;
    iget-object v1, p0, Lorg/appcelerator/titanium/kroll/KrollCallback;->method:Lorg/mozilla/javascript/Function;

    const-string v2, "name"

    iget-object v3, p0, Lorg/appcelerator/titanium/kroll/KrollCallback;->method:Lorg/mozilla/javascript/Function;

    invoke-interface {v1, v2, v3}, Lorg/mozilla/javascript/Function;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v9

    .line 65
    .local v9, methodNameObject:Ljava/lang/Object;
    if-eqz v9, :cond_0

    instance-of v1, v9, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 66
    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 67
    .local v8, m:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 68
    move-object v4, v8

    .line 71
    .end local v8           #m:Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    .line 72
    iget-object v1, p0, Lorg/appcelerator/titanium/kroll/KrollCallback;->kroll:Lorg/appcelerator/titanium/kroll/KrollContext;

    if-nez v1, :cond_2

    invoke-static {}, Lorg/appcelerator/titanium/TiContext;->getCurrentTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    move-object p1, v1

    .line 74
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/appcelerator/titanium/kroll/KrollCallback;->thisObj:Lorg/mozilla/javascript/Scriptable;

    instance-of v1, v1, Lorg/appcelerator/kroll/KrollObject;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/appcelerator/titanium/kroll/KrollCallback;->thisObj:Lorg/mozilla/javascript/Scriptable;

    check-cast v1, Lorg/appcelerator/kroll/KrollObject;

    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollObject;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v1

    move-object v6, v1

    .line 75
    .local v6, proxy:Lorg/appcelerator/kroll/KrollProxy;
    :goto_1
    iget-object v2, p0, Lorg/appcelerator/titanium/kroll/KrollCallback;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v3, p0, Lorg/appcelerator/titanium/kroll/KrollCallback;->thisObj:Lorg/mozilla/javascript/Scriptable;

    move-object v1, p1

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Lorg/appcelerator/kroll/KrollInvocation;->createMethodInvocation(Lorg/appcelerator/titanium/TiContext;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/appcelerator/kroll/KrollMethod;Lorg/appcelerator/kroll/KrollProxy;)Lorg/appcelerator/kroll/KrollInvocation;

    move-result-object v7

    .line 76
    .local v7, inv:Lorg/appcelerator/kroll/KrollInvocation;
    return-object v7

    .line 72
    .end local v6           #proxy:Lorg/appcelerator/kroll/KrollProxy;
    .end local v7           #inv:Lorg/appcelerator/kroll/KrollInvocation;
    :cond_2
    iget-object v1, p0, Lorg/appcelerator/titanium/kroll/KrollCallback;->kroll:Lorg/appcelerator/titanium/kroll/KrollContext;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/kroll/KrollContext;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    move-object p1, v1

    goto :goto_0

    .line 74
    :cond_3
    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .line 181
    instance-of v2, p1, Lorg/appcelerator/titanium/kroll/KrollCallback;

    if-nez v2, :cond_0

    .line 182
    const/4 v2, 0x0

    .line 185
    :goto_0
    return v2

    .line 184
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/appcelerator/titanium/kroll/KrollCallback;

    move-object v1, v0

    .line 185
    .local v1, kb:Lorg/appcelerator/titanium/kroll/KrollCallback;
    iget-object v2, p0, Lorg/appcelerator/titanium/kroll/KrollCallback;->method:Lorg/mozilla/javascript/Function;

    iget-object v3, v1, Lorg/appcelerator/titanium/kroll/KrollCallback;->method:Lorg/mozilla/javascript/Function;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public getJavascriptValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lorg/appcelerator/titanium/kroll/KrollCallback;->toJSFunction()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getKrollContext(Lorg/appcelerator/kroll/KrollInvocation;)Lorg/appcelerator/titanium/kroll/KrollContext;
    .locals 2
    .parameter "invocation"

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, kroll:Lorg/appcelerator/titanium/kroll/KrollContext;
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getKrollContext()Lorg/appcelerator/titanium/kroll/KrollContext;

    move-result-object v0

    .line 123
    :cond_0
    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollCallback;->kroll:Lorg/appcelerator/titanium/kroll/KrollContext;

    .line 126
    :cond_1
    return-object v0
.end method

.method public getMethod()Lorg/mozilla/javascript/Function;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollCallback;->method:Lorg/mozilla/javascript/Function;

    return-object v0
.end method

.method public getNativeValue()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 209
    return-object p0
.end method

.method public invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "invocation"
    .parameter "args"

    .prologue
    .line 174
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->copy()Lorg/appcelerator/kroll/KrollInvocation;

    move-result-object v0

    .line 175
    .local v0, invocationCopy:Lorg/appcelerator/kroll/KrollInvocation;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callAsync(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;Z)V

    .line 176
    sget-object v1, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    return-object v1
.end method

.method public isWithinTiContext(Lorg/appcelerator/titanium/TiContext;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 47
    iget-object v1, p0, Lorg/appcelerator/titanium/kroll/KrollCallback;->kroll:Lorg/appcelerator/titanium/kroll/KrollContext;

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lorg/appcelerator/titanium/kroll/KrollCallback;->kroll:Lorg/appcelerator/titanium/kroll/KrollContext;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/kroll/KrollContext;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    .line 49
    .local v0, krollTiContext:Lorg/appcelerator/titanium/TiContext;
    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 53
    .end local v0           #krollTiContext:Lorg/appcelerator/titanium/TiContext;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setThisObj(Lorg/mozilla/javascript/Scriptable;)V
    .locals 0
    .parameter "thisObj"

    .prologue
    .line 197
    iput-object p1, p0, Lorg/appcelerator/titanium/kroll/KrollCallback;->thisObj:Lorg/mozilla/javascript/Scriptable;

    .line 198
    return-void
.end method

.method public setThisProxy(Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 201
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/kroll/KrollCallback;->setThisObj(Lorg/mozilla/javascript/Scriptable;)V

    .line 202
    return-void
.end method

.method public toJSFunction()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lorg/appcelerator/titanium/kroll/KrollCallback;->method:Lorg/mozilla/javascript/Function;

    iget-object v1, p0, Lorg/appcelerator/titanium/kroll/KrollCallback;->kroll:Lorg/appcelerator/titanium/kroll/KrollContext;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/kroll/KrollContext;->getScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Context;->javaToJS(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
