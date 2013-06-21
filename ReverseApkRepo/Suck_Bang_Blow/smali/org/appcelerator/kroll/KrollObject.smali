.class public Lorg/appcelerator/kroll/KrollObject;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "KrollObject.java"

# interfaces
.implements Lorg/mozilla/javascript/Function;


# instance fields
.field protected proxy:Lorg/appcelerator/kroll/KrollProxy;


# direct methods
.method public constructor <init>(Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollObject;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    .line 23
    return-void
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 1
    .parameter "cx"
    .parameter "scope"
    .parameter "args"

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method protected equivalentValues(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "value"

    .prologue
    .line 133
    instance-of v2, p1, Lorg/appcelerator/kroll/KrollObject;

    if-eqz v2, :cond_1

    .line 134
    move-object v0, p1

    check-cast v0, Lorg/appcelerator/kroll/KrollObject;

    move-object v1, v0

    .line 135
    .local v1, other:Lorg/appcelerator/kroll/KrollObject;
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollObject;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollObject;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 137
    .end local v1           #other:Lorg/appcelerator/kroll/KrollObject;
    :goto_0
    return-object v2

    .line 135
    .restart local v1       #other:Lorg/appcelerator/kroll/KrollObject;
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 137
    .end local v1           #other:Lorg/appcelerator/kroll/KrollObject;
    :cond_1
    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->equivalentValues(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .parameter "start"

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 10
    .parameter "name"
    .parameter "start"

    .prologue
    .line 34
    const/4 v9, 0x0

    .line 36
    .local v9, value:Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollObject;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    invoke-virtual {v2, p2, p1}, Lorg/appcelerator/kroll/KrollProxy;->get(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 37
    if-eqz v9, :cond_0

    sget-object v2, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    sget-object v2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v9           #value:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 40
    :catch_0
    move-exception v2

    move-object v6, v2

    .line 41
    .local v6, e:Ljava/lang/NoSuchFieldException;
    sget-object v2, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    goto :goto_0

    .line 43
    .end local v6           #e:Ljava/lang/NoSuchFieldException;
    .restart local v9       #value:Ljava/lang/Object;
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiContext;->getCurrentTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    .line 44
    .local v0, context:Lorg/appcelerator/titanium/TiContext;
    move-object v1, p2

    .line 45
    .local v1, scope:Lorg/mozilla/javascript/Scriptable;
    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    .line 48
    :cond_1
    const/4 v4, 0x0

    iget-object v5, p0, Lorg/appcelerator/kroll/KrollObject;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    move-object v2, p2

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/appcelerator/kroll/KrollInvocation;->createPropertyGetInvocation(Lorg/appcelerator/titanium/TiContext;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProperty;Lorg/appcelerator/kroll/KrollProxy;)Lorg/appcelerator/kroll/KrollInvocation;

    move-result-object v7

    .line 49
    .local v7, invocation:Lorg/appcelerator/kroll/KrollInvocation;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v2

    invoke-virtual {v2, v7, v9}, Lorg/appcelerator/kroll/KrollConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 50
    .local v8, result:Ljava/lang/Object;
    invoke-virtual {v7}, Lorg/appcelerator/kroll/KrollInvocation;->recycle()V

    move-object v2, v8

    .line 51
    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ti."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/appcelerator/kroll/KrollObject;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollProxy;->getAPIName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/appcelerator/kroll/KrollObject;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    instance-of v1, v1, Lorg/appcelerator/kroll/KrollModule;

    if-eqz v1, :cond_0

    const-string v1, "Module"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, ""

    goto :goto_0
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
    .line 127
    .local p1, typeHint:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollObject;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    invoke-virtual {v0, p1}, Lorg/appcelerator/kroll/KrollProxy;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getProxy()Lorg/appcelerator/kroll/KrollProxy;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollObject;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    return-object v0
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .locals 1
    .parameter "index"
    .parameter "start"

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    return v0
.end method

.method public has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 1
    .parameter "name"
    .parameter "start"

    .prologue
    .line 101
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollObject;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    invoke-virtual {v0, p2, p1}, Lorg/appcelerator/kroll/KrollProxy;->has(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 0
    .parameter "index"
    .parameter "start"
    .parameter "value"

    .prologue
    .line 88
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 8
    .parameter "name"
    .parameter "start"
    .parameter "value"

    .prologue
    .line 64
    invoke-static {}, Lorg/appcelerator/titanium/TiContext;->getCurrentTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    .line 65
    .local v0, context:Lorg/appcelerator/titanium/TiContext;
    move-object v1, p2

    .line 66
    .local v1, scope:Lorg/mozilla/javascript/Scriptable;
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    .line 69
    :cond_0
    const/4 v4, 0x0

    iget-object v5, p0, Lorg/appcelerator/kroll/KrollObject;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    move-object v2, p2

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lorg/appcelerator/kroll/KrollInvocation;->createPropertyGetInvocation(Lorg/appcelerator/titanium/TiContext;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/appcelerator/kroll/KrollProperty;Lorg/appcelerator/kroll/KrollProxy;)Lorg/appcelerator/kroll/KrollInvocation;

    move-result-object v7

    .line 71
    .local v7, invocation:Lorg/appcelerator/kroll/KrollInvocation;
    :try_start_0
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v2, v7, p3, v3}, Lorg/appcelerator/kroll/KrollConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    .line 72
    iget-object v2, p0, Lorg/appcelerator/kroll/KrollObject;->proxy:Lorg/appcelerator/kroll/KrollProxy;

    invoke-virtual {v2, p2, p1, p3}, Lorg/appcelerator/kroll/KrollProxy;->set(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    invoke-virtual {v7}, Lorg/appcelerator/kroll/KrollInvocation;->recycle()V

    .line 77
    return-void

    .line 73
    :catch_0
    move-exception v2

    move-object v6, v2

    .line 74
    .local v6, e:Ljava/lang/NoSuchFieldException;
    invoke-static {v6}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method public superPut(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 0
    .parameter "name"
    .parameter "start"
    .parameter "value"

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 82
    return-void
.end method
