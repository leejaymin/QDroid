.class public abstract Lorg/appcelerator/kroll/KrollMethod;
.super Lorg/mozilla/javascript/BaseFunction;
.source "KrollMethod.java"

# interfaces
.implements Lorg/mozilla/javascript/Function;


# static fields
.field private static final TAG:Ljava/lang/String; = "KrollMethod"


# instance fields
.field protected name:Ljava/lang/String;

.field protected runOnUiThread:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/appcelerator/kroll/KrollMethod;->runOnUiThread:Z

    .line 29
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollMethod;->name:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .parameter "context"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 41
    const/4 v11, 0x0

    .line 42
    .local v11, proxy:Lorg/appcelerator/kroll/KrollProxy;
    move-object/from16 v0, p3

    instance-of v0, v0, Lorg/appcelerator/kroll/KrollObject;

    move v14, v0

    if-eqz v14, :cond_0

    .line 43
    move-object/from16 v0, p3

    check-cast v0, Lorg/appcelerator/kroll/KrollObject;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/appcelerator/kroll/KrollObject;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v11

    .line 46
    :cond_0
    const/4 v10, 0x0

    .line 47
    .local v10, methodResult:Ljava/lang/Object;
    const/4 v6, 0x0

    .line 48
    .local v6, exception:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/kroll/KrollMethod;->name:Ljava/lang/String;

    move-object v14, v0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object v2, v14

    move-object/from16 v3, p0

    move-object v4, v11

    invoke-static {v0, v1, v2, v3, v4}, Lorg/appcelerator/kroll/KrollInvocation;->createMethodInvocation(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/appcelerator/kroll/KrollMethod;Lorg/appcelerator/kroll/KrollProxy;)Lorg/appcelerator/kroll/KrollInvocation;

    move-result-object v9

    .line 50
    .local v9, inv:Lorg/appcelerator/kroll/KrollInvocation;
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/appcelerator/kroll/KrollMethod;->runOnUiThread:Z

    move v14, v0

    if-nez v14, :cond_1

    .line 51
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollMethod;->invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 87
    .end local v10           #methodResult:Ljava/lang/Object;
    :goto_0
    return-object v14

    .line 53
    .restart local v10       #methodResult:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v9}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v14

    invoke-virtual {v14}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 54
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollMethod;->invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    goto :goto_0

    .line 56
    :cond_2
    move-object v8, v9

    .line 57
    .local v8, fInv:Lorg/appcelerator/kroll/KrollInvocation;
    move-object/from16 v7, p4

    .line 58
    .local v7, fArgs:[Ljava/lang/Object;
    new-instance v12, Lorg/appcelerator/titanium/util/AsyncResult;

    invoke-direct {v12}, Lorg/appcelerator/titanium/util/AsyncResult;-><init>()V

    .line 59
    .local v12, result:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-static {}, Lorg/appcelerator/titanium/TiMessageQueue;->getMainMessageQueue()Lorg/appcelerator/titanium/TiMessageQueue;

    move-result-object v14

    new-instance v15, Lorg/appcelerator/kroll/KrollMethod$1;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v7

    move-object v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/appcelerator/kroll/KrollMethod$1;-><init>(Lorg/appcelerator/kroll/KrollMethod;Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;Lorg/appcelerator/titanium/util/AsyncResult;)V

    invoke-virtual {v14, v15}, Lorg/appcelerator/titanium/TiMessageQueue;->post(Ljava/lang/Runnable;)V

    .line 69
    invoke-virtual {v12}, Lorg/appcelerator/titanium/util/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v13

    .line 70
    .local v13, retVal:Ljava/lang/Object;
    instance-of v14, v13, Ljava/lang/Exception;

    if-eqz v14, :cond_4

    .line 71
    move-object v0, v13

    check-cast v0, Ljava/lang/Exception;

    move-object v6, v0

    .line 72
    invoke-static {}, Lorg/mozilla/javascript/Context;->getUndefinedValue()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 82
    .end local v7           #fArgs:[Ljava/lang/Object;
    .end local v8           #fInv:Lorg/appcelerator/kroll/KrollInvocation;
    .end local v12           #result:Lorg/appcelerator/titanium/util/AsyncResult;
    .end local v13           #retVal:Ljava/lang/Object;
    :goto_1
    invoke-virtual {v9}, Lorg/appcelerator/kroll/KrollInvocation;->recycle()V

    .line 83
    if-eqz v6, :cond_3

    .line 84
    const-string v14, "KrollMethod"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception calling kroll method "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/kroll/KrollMethod;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", invocation: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v6}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    invoke-static {v6}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    :cond_3
    move-object v14, v10

    .line 87
    goto :goto_0

    .line 74
    .restart local v7       #fArgs:[Ljava/lang/Object;
    .restart local v8       #fInv:Lorg/appcelerator/kroll/KrollInvocation;
    .restart local v12       #result:Lorg/appcelerator/titanium/util/AsyncResult;
    .restart local v13       #retVal:Ljava/lang/Object;
    :cond_4
    move-object v10, v13

    goto :goto_1

    .line 78
    .end local v7           #fArgs:[Ljava/lang/Object;
    .end local v8           #fInv:Lorg/appcelerator/kroll/KrollInvocation;
    .end local v12           #result:Lorg/appcelerator/titanium/util/AsyncResult;
    .end local v13           #retVal:Ljava/lang/Object;
    :catch_0
    move-exception v14

    move-object v5, v14

    .line 79
    .local v5, e:Ljava/lang/Exception;
    move-object v6, v5

    .line 80
    invoke-static {}, Lorg/mozilla/javascript/Context;->getUndefinedValue()Ljava/lang/Object;

    move-result-object v10

    goto :goto_1
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method protected equivalentValues(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "value"

    .prologue
    .line 118
    instance-of v2, p1, Lorg/appcelerator/kroll/KrollProxy$ThisMethod;

    if-eqz v2, :cond_0

    .line 119
    move-object v0, p1

    check-cast v0, Lorg/appcelerator/kroll/KrollProxy$ThisMethod;

    move-object v1, v0

    .line 120
    .local v1, other:Lorg/appcelerator/kroll/KrollProxy$ThisMethod;
    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollProxy$ThisMethod;->getDelegate()Lorg/appcelerator/kroll/KrollMethod;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 122
    .end local v1           #other:Lorg/appcelerator/kroll/KrollProxy$ThisMethod;
    :goto_0
    return-object v2

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/BaseFunction;->equivalentValues(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "KrollMethod"

    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
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
    .line 112
    .local p1, typeHint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KrollMethod "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/appcelerator/kroll/KrollMethod;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollMethod;->name:Ljava/lang/String;

    return-object v0
.end method

.method public abstract invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public setRunOnUiThread(Z)V
    .locals 0
    .parameter "runOnUiThread"

    .prologue
    .line 101
    iput-boolean p1, p0, Lorg/appcelerator/kroll/KrollMethod;->runOnUiThread:Z

    .line 102
    return-void
.end method
