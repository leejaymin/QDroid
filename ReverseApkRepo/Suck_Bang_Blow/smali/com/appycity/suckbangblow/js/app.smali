.class public Lcom/appycity/suckbangblow/js/app;
.super Lorg/mozilla/javascript/NativeFunction;

# interfaces
.implements Lorg/mozilla/javascript/Script;


# instance fields
.field private _dcp:Lcom/appycity/suckbangblow/js/app;

.field private _id:I

.field private _re:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/NativeFunction;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/appycity/suckbangblow/js/app;->_id:I

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/NativeFunction;-><init>()V

    iput p3, p0, Lcom/appycity/suckbangblow/js/app;->_id:I

    packed-switch p3, :pswitch_data_0

    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/app;->_i1(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/app;->_i2(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/app;->_i3(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static _c_anonymous_1(Lcom/appycity/suckbangblow/js/app;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v0, "self"

    const-string v0, "_init"

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p0, v0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->createFunctionActivation(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->enterActivationFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    :try_start_0
    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    .line 5
    const-string v1, "debug"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p3, v1, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 8
    const-string v1, "window"

    invoke-static {p3, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 9
    const-string v1, "self"

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "self"

    invoke-static {v1, p3, p1, v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    const-string v1, "debugPrint"

    new-instance v2, Lcom/appycity/suckbangblow/js/app;

    const/4 v3, 0x2

    invoke-direct {v2, v0, p1, v3}, Lcom/appycity/suckbangblow/js/app;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v3, p0, Lcom/appycity/suckbangblow/js/app;->_dcp:Lcom/appycity/suckbangblow/js/app;

    iput-object v3, v2, Lcom/appycity/suckbangblow/js/app;->_dcp:Lcom/appycity/suckbangblow/js/app;

    invoke-static {p3, v1, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 24
    const-string v1, "_init"

    new-instance v2, Lcom/appycity/suckbangblow/js/app;

    const/4 v3, 0x3

    invoke-direct {v2, v0, p1, v3}, Lcom/appycity/suckbangblow/js/app;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v3, p0, Lcom/appycity/suckbangblow/js/app;->_dcp:Lcom/appycity/suckbangblow/js/app;

    iput-object v3, v2, Lcom/appycity/suckbangblow/js/app;->_dcp:Lcom/appycity/suckbangblow/js/app;

    invoke-static {p3, v1, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 45
    const-string v1, "_init"

    invoke-static {p3, v1, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->exitActivationFunction(Lorg/mozilla/javascript/Context;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->exitActivationFunction(Lorg/mozilla/javascript/Context;)V

    throw v0
.end method

.method private static _c_anonymous_2(Lcom/appycity/suckbangblow/js/app;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    array-length v1, p4

    if-ge v1, v2, :cond_1

    invoke-static {p4, v2}, Lorg/mozilla/javascript/ScriptRuntime;->padArguments([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 15
    const-string v2, "debug"

    invoke-static {p3, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectPropNoWarn(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 16
    :goto_1
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0

    :cond_0
    const-string v2, "Ti"

    invoke-static {p1, v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "API"

    invoke-static {v2, v3, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "info"

    invoke-static {v2, v3, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    invoke-static {v2, v3, v1, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v1, p4

    goto :goto_0
.end method

.method private static _c_anonymous_3(Lcom/appycity/suckbangblow/js/app;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x6

    const-string v9, "CONFIG"

    const-string v8, "window"

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 24
    const-string v1, "debugPrint"

    invoke-static {p3, v1, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const-string v3, "app._init.in"

    invoke-static {v1, v2, v3, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 29
    const-string v1, "window"

    const-string v1, "Titanium"

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "UI"

    invoke-static {v1, v2, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "createWindow"

    invoke-static {v1, v2, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "title"

    aput-object v4, v3, v6

    const-string v4, "url"

    aput-object v4, v3, v7

    const/4 v4, 0x2

    const-string v5, "backgroundImage"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "fullscreen"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "className"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "exitOnClose"

    aput-object v5, v3, v4

    new-array v4, v10, [Ljava/lang/Object;

    const-string v5, "SBB: Suck Bang Blow"

    aput-object v5, v4, v6

    const-string v5, "windows/main.js"

    aput-object v5, v4, v7

    const/4 v5, 0x2

    const-string v6, "CONFIG"

    invoke-static {p1, v0, v9}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "mainBGImageURL"

    invoke-static {v6, v7, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "window"

    aput-object v8, v4, v5

    const/4 v5, 0x5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v4, v5

    new-array v5, v10, [I

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->newObjectLiteral([Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    invoke-static {v1, v2, v3, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p3, v8, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 37
    const-string v1, "CONFIG"

    invoke-static {p1, v0, v9}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "isIPhone"

    invoke-static {v1, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectPropNoWarn(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    :goto_0
    const-string v1, "window"

    invoke-static {p3, v8, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "_navgroup"

    const-string v3, "CONFIG"

    invoke-static {p1, v0, v9}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "createNavGroup"

    invoke-static {v3, v4, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v3

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    const-string v5, "window"

    invoke-static {p3, v8, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 40
    const-string v1, "CONFIG"

    invoke-static {p1, v0, v9}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "openRootWindow"

    invoke-static {v1, v2, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const-string v3, "window"

    invoke-static {p3, v8, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0

    .line 37
    :cond_0
    const-string v1, "window"

    invoke-static {p3, v8, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "backgroundImage"

    const-string v3, "CONFIG"

    invoke-static {p1, v0, v9}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "mainBGImageURLR"

    invoke-static {v3, v4, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    goto :goto_0

    .line 29
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static _c_script_0(Lcom/appycity/suckbangblow/js/app;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v5, "app"

    const-string v4, "App"

    const/4 v0, 0x0

    invoke-static {p0, p3, p1, p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->initScript(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 48
    const-string v0, "Titanium"

    invoke-static {p1, p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "include"

    invoke-static {v0, v1, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "config.js"

    invoke-static {v0, v1, v2, p1, p2}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    const-string v1, "App"

    invoke-static {p1, p2, v4}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    new-instance v2, Lcom/appycity/suckbangblow/js/app;

    const/4 v3, 0x1

    invoke-direct {v2, p2, p1, v3}, Lcom/appycity/suckbangblow/js/app;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iput-object p0, v2, Lcom/appycity/suckbangblow/js/app;->_dcp:Lcom/appycity/suckbangblow/js/app;

    const-string v3, "App"

    invoke-static {v1, v2, p1, p2, v4}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    const-string v1, "app"

    invoke-static {p1, p2, v5}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "App"

    invoke-static {p1, p2, v4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-static {v2, p1, p2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->newObject(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const-string v3, "app"

    invoke-static {v1, v2, p1, p2, v5}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method private final _i1(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/NativeFunction;->initScriptFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method private final _i2(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/NativeFunction;->initScriptFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method private final _i3(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/NativeFunction;->initScriptFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/appycity/suckbangblow/js/app;

    invoke-direct {v0}, Lcom/appycity/suckbangblow/js/app;-><init>()V

    invoke-static {v0, p0}, Lorg/appcelerator/titanium/TiScriptRunner;->main(Lorg/mozilla/javascript/Script;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->hasTopCall(Lorg/mozilla/javascript/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->doTopCall(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/appycity/suckbangblow/js/app;->_id:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/app;->_c_script_0(Lcom/appycity/suckbangblow/js/app;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/app;->_c_anonymous_1(Lcom/appycity/suckbangblow/js/app;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/app;->_c_anonymous_2(Lcom/appycity/suckbangblow/js/app;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/app;->_c_anonymous_3(Lcom/appycity/suckbangblow/js/app;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p2, v0}, Lcom/appycity/suckbangblow/js/app;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedSource()Ljava/lang/String;
    .locals 3

    const-string v0, "\u0088\'\u0008Titaniuml\'\u0007includeW)\tconfig.jsXR\u0001z\'\u0003AppZm\u0002WXU\u0001+l\'\u0005debugZ-R\u0001+l\'\u0006windowR\u0001z\'\u0004selfZ+R\u0001+l\'\ndebugPrintZm\u0002W\'\u0006objectXU\u0001pW+l\'\u0005debugXU\u0001\'\u0002Til\'\u0003APIl\'\u0004infoW\'\u0006objectXR\u0001V\u0001V\u00a3R\u0001+l\'\u0005_initZm\u0002WXU\u0001+l\'\ndebugPrintW)\u000capp._init.inXR\u0001+l\'\u0006windowZ\'\u0008Titaniuml\'\u0002UIl\'\u000ccreateWindowWU\'\u0005titleB)\u0013SBB: Suck Bang BlowY\'\u0003urlB)\u000fwindows/main.jsY\'\u000fbackgroundImageB\'\u0006CONFIGl\'\u000emainBGImageURLY\'\nfullscreenB,Y\'\tclassNameB)\u0006windowY\'\u000bexitOnCloseB-VXR\u0001pW\'\u0006CONFIGl\'\u0008isIPhoneXU\u0001+l\'\u0006windowl\'\u000fbackgroundImageZ\'\u0006CONFIGl\'\u000fmainBGImageURLRR\u0001V\u0001+l\'\u0006windowl\'\t_navgroupZ\'\u0006CONFIGl\'\u000ecreateNavGroupW+l\'\u0006windowXR\u0001\'\u0006CONFIGl\'\u000eopenRootWindowW+l\'\u0006windowXR\u0001V\u00a3R\u0001+l\'\u0005_initWXR\u0001V\u00a3R\u0001z\'\u0003appZ\u001e\'\u0003AppWXR\u0001"

    iget v1, p0, Lcom/appycity/suckbangblow/js/app;->_id:I

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    const/16 v2, 0x275

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const/16 v1, 0x2b

    const/16 v2, 0x261

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x64

    const/16 v2, 0xa0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/16 v1, 0xad

    const/16 v2, 0x250

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 2

    const-string v1, ""

    iget v0, p0, Lcom/appycity/suckbangblow/js/app;->_id:I

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    move-object v0, v1

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, ""

    move-object v0, v1

    goto :goto_0

    :pswitch_1
    const-string v0, ""

    move-object v0, v1

    goto :goto_0

    :pswitch_2
    const-string v0, ""

    move-object v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getLanguageVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParamAndVarCount()I
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/appycity/suckbangblow/js/app;->_id:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getParamCount()I
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/appycity/suckbangblow/js/app;->_id:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getParamOrVarConst(I)Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/appycity/suckbangblow/js/app;->_id:I

    packed-switch v0, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getParamOrVarName(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/appycity/suckbangblow/js/app;->_id:I

    packed-switch v0, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const-string v0, "App"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "app"

    goto :goto_0

    :pswitch_1
    const-string v0, "self"

    goto :goto_0

    :pswitch_2
    const-string v0, "object"

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
