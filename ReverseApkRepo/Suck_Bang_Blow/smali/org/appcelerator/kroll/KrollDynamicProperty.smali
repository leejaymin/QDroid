.class public abstract Lorg/appcelerator/kroll/KrollDynamicProperty;
.super Ljava/lang/Object;
.source "KrollDynamicProperty.java"

# interfaces
.implements Lorg/appcelerator/kroll/KrollProperty;


# static fields
.field protected static final GET:Ljava/lang/String; = "get"

.field protected static final SET:Ljava/lang/String; = "set"

.field private static final TAG:Ljava/lang/String; = "KrollReflectionProperty"


# instance fields
.field protected get:Z

.field protected javascriptConverter:Lorg/appcelerator/kroll/KrollJavascriptConverter;

.field protected name:Ljava/lang/String;

.field protected nativeConverter:Lorg/appcelerator/kroll/KrollNativeConverter;

.field protected retain:Z

.field protected runOnUiThread:Z

.field protected set:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZ)V
    .locals 1
    .parameter "name"
    .parameter "get"
    .parameter "set"
    .parameter "retain"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/appcelerator/kroll/KrollDynamicProperty;->runOnUiThread:Z

    .line 31
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollDynamicProperty;->name:Ljava/lang/String;

    .line 32
    iput-boolean p2, p0, Lorg/appcelerator/kroll/KrollDynamicProperty;->get:Z

    .line 33
    iput-boolean p3, p0, Lorg/appcelerator/kroll/KrollDynamicProperty;->set:Z

    .line 34
    iput-boolean p4, p0, Lorg/appcelerator/kroll/KrollDynamicProperty;->retain:Z

    .line 35
    return-void
.end method


# virtual methods
.method public abstract dynamicGet(Lorg/appcelerator/kroll/KrollInvocation;)Ljava/lang/Object;
.end method

.method public abstract dynamicSet(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)V
.end method

.method public get(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "invocation"
    .parameter "name"

    .prologue
    .line 86
    invoke-virtual {p0, p2}, Lorg/appcelerator/kroll/KrollDynamicProperty;->supportsGet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "get"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->safeInvoke(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/appcelerator/kroll/KrollDynamicProperty;->nativeConverter:Lorg/appcelerator/kroll/KrollNativeConverter;

    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/appcelerator/kroll/KrollNativeConverter;->convertNative(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected safeInvoke(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "invocation"
    .parameter "method"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    const-string v0, "get"

    .line 39
    :try_start_0
    iget-boolean v0, p0, Lorg/appcelerator/kroll/KrollDynamicProperty;->runOnUiThread:Z

    if-nez v0, :cond_1

    .line 40
    const-string v0, "get"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->dynamicGet(Lorg/appcelerator/kroll/KrollInvocation;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    .line 43
    :cond_0
    invoke-virtual {p0, p1, p3}, Lorg/appcelerator/kroll/KrollDynamicProperty;->dynamicSet(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)V

    move-object v0, v1

    .line 44
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    const-string v0, "get"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->dynamicGet(Lorg/appcelerator/kroll/KrollInvocation;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0, p1, p3}, Lorg/appcelerator/kroll/KrollDynamicProperty;->dynamicSet(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;)V

    move-object v0, v1

    .line 52
    goto :goto_0

    .line 55
    :cond_3
    move-object v3, p1

    .line 56
    .local v3, fInv:Lorg/appcelerator/kroll/KrollInvocation;
    move-object v5, p3

    .line 57
    .local v5, fValue:Ljava/lang/Object;
    move-object v2, p2

    .line 58
    .local v2, fMethod:Ljava/lang/String;
    new-instance v4, Lorg/appcelerator/titanium/util/AsyncResult;

    invoke-direct {v4}, Lorg/appcelerator/titanium/util/AsyncResult;-><init>()V

    .line 59
    .local v4, result:Lorg/appcelerator/titanium/util/AsyncResult;
    invoke-static {}, Lorg/appcelerator/titanium/TiMessageQueue;->getMainMessageQueue()Lorg/appcelerator/titanium/TiMessageQueue;

    move-result-object v7

    new-instance v0, Lorg/appcelerator/kroll/KrollDynamicProperty$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/appcelerator/kroll/KrollDynamicProperty$1;-><init>(Lorg/appcelerator/kroll/KrollDynamicProperty;Ljava/lang/String;Lorg/appcelerator/kroll/KrollInvocation;Lorg/appcelerator/titanium/util/AsyncResult;Ljava/lang/Object;)V

    invoke-virtual {v7, v0}, Lorg/appcelerator/titanium/TiMessageQueue;->post(Ljava/lang/Runnable;)V

    .line 74
    invoke-virtual {v4}, Lorg/appcelerator/titanium/util/AsyncResult;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 77
    .end local v2           #fMethod:Ljava/lang/String;
    .end local v3           #fInv:Lorg/appcelerator/kroll/KrollInvocation;
    .end local v4           #result:Lorg/appcelerator/titanium/util/AsyncResult;
    .end local v5           #fValue:Ljava/lang/Object;
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 78
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "KrollReflectionProperty"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception getting/setting property: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lorg/appcelerator/kroll/KrollDynamicProperty;->name:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    invoke-static {v6}, Lorg/mozilla/javascript/Context;->throwAsScriptRuntimeEx(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 80
    sget-object v0, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    goto :goto_0
.end method

.method public set(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "invocation"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 97
    invoke-virtual {p0, p2}, Lorg/appcelerator/kroll/KrollDynamicProperty;->supportsSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    iget-boolean v1, p0, Lorg/appcelerator/kroll/KrollDynamicProperty;->retain:Z

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    :cond_0
    const-string v1, "set"

    invoke-virtual {p0, p1, v1, p3}, Lorg/appcelerator/kroll/KrollDynamicProperty;->safeInvoke(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/kroll/KrollDynamicProperty;->javascriptConverter:Lorg/appcelerator/kroll/KrollJavascriptConverter;

    const-class v2, Ljava/lang/Object;

    invoke-interface {v1, p1, p3, v2}, Lorg/appcelerator/kroll/KrollJavascriptConverter;->convertJavascript(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    .local v0, convertedValue:Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getProxy()Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V
    .locals 0
    .parameter "javascriptConverter"

    .prologue
    .line 129
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollDynamicProperty;->javascriptConverter:Lorg/appcelerator/kroll/KrollJavascriptConverter;

    .line 130
    return-void
.end method

.method public setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V
    .locals 0
    .parameter "nativeConverter"

    .prologue
    .line 125
    iput-object p1, p0, Lorg/appcelerator/kroll/KrollDynamicProperty;->nativeConverter:Lorg/appcelerator/kroll/KrollNativeConverter;

    .line 126
    return-void
.end method

.method public setRunOnUiThread(Z)V
    .locals 0
    .parameter "runOnUiThread"

    .prologue
    .line 121
    iput-boolean p1, p0, Lorg/appcelerator/kroll/KrollDynamicProperty;->runOnUiThread:Z

    .line 122
    return-void
.end method

.method public supportsGet(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 112
    iget-boolean v0, p0, Lorg/appcelerator/kroll/KrollDynamicProperty;->get:Z

    return v0
.end method

.method public supportsSet(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 117
    iget-boolean v0, p0, Lorg/appcelerator/kroll/KrollDynamicProperty;->set:Z

    return v0
.end method
