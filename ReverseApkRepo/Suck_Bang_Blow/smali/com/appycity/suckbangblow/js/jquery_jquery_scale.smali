.class public Lcom/appycity/suckbangblow/js/jquery_jquery_scale;
.super Lorg/mozilla/javascript/NativeFunction;

# interfaces
.implements Lorg/mozilla/javascript/Script;


# static fields
.field private static _k0:Ljava/lang/Integer;


# instance fields
.field private _dcp:Lcom/appycity/suckbangblow/js/jquery_jquery_scale;

.field private _id:I

.field private _re:[Ljava/lang/Object;


# direct methods
.method static final constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_k0:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/NativeFunction;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_id:I

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/NativeFunction;-><init>()V

    iput p3, p0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_id:I

    packed-switch p3, :pswitch_data_0

    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_i1(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_i2(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_i3(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_i4(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_i5(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_i6(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_i7(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static _c_anonymous_1(Lcom/appycity/suckbangblow/js/jquery_jquery_scale;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p0, v0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->createFunctionActivation(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->enterActivationFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    .line 21
    :try_start_0
    const-string v1, "$"

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "fn"

    invoke-static {v1, v2, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "extend"

    invoke-static {v1, v2, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "scale"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;

    const/4 v7, 0x2

    invoke-direct {v6, v0, p1, v7}, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v7, p0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_dcp:Lcom/appycity/suckbangblow/js/jquery_jquery_scale;

    iput-object v7, v6, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_dcp:Lcom/appycity/suckbangblow/js/jquery_jquery_scale;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v3, v4, v5, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->newObjectLiteral([Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    invoke-static {v1, v2, v3, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

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

.method private static _c_anonymous_2(Lcom/appycity/suckbangblow/js/jquery_jquery_scale;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p0, v0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->createFunctionActivation(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->enterActivationFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    .line 25
    :try_start_0
    const-string v1, "each"

    invoke-static {p3, v1, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    new-instance v3, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;

    const/4 v4, 0x3

    invoke-direct {v3, v0, p1, v4}, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v4, p0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_dcp:Lcom/appycity/suckbangblow/js/jquery_jquery_scale;

    iput-object v4, v3, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_dcp:Lcom/appycity/suckbangblow/js/jquery_jquery_scale;

    invoke-static {v1, v2, v3, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->exitActivationFunction(Lorg/mozilla/javascript/Context;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->exitActivationFunction(Lorg/mozilla/javascript/Context;)V

    throw v0
.end method

.method private static _c_anonymous_3(Lcom/appycity/suckbangblow/js/jquery_jquery_scale;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v0, "stretch"

    const-string v0, "debug"

    const-string v0, "center"

    const-string v0, "newsrc"

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p0, v0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->createFunctionActivation(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    invoke-static {p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->enterActivationFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    :try_start_0
    new-instance v0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;

    const/4 v1, 0x4

    invoke-direct {v0, v5, p1, v1}, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v1, p0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_dcp:Lcom/appycity/suckbangblow/js/jquery_jquery_scale;

    iput-object v1, v0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_dcp:Lcom/appycity/suckbangblow/js/jquery_jquery_scale;

    const/4 v1, 0x1

    invoke-static {v0, v1, v5, p1}, Lorg/mozilla/javascript/optimizer/OptRuntime;->initFunction(Lorg/mozilla/javascript/NativeFunction;ILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;)V

    new-instance v0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;

    const/4 v1, 0x5

    invoke-direct {v0, v5, p1, v1}, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v1, p0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_dcp:Lcom/appycity/suckbangblow/js/jquery_jquery_scale;

    iput-object v1, v0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_dcp:Lcom/appycity/suckbangblow/js/jquery_jquery_scale;

    const/4 v1, 0x1

    invoke-static {v0, v1, v5, p1}, Lorg/mozilla/javascript/optimizer/OptRuntime;->initFunction(Lorg/mozilla/javascript/NativeFunction;ILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;)V

    new-instance v0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;

    const/4 v1, 0x6

    invoke-direct {v0, v5, p1, v1}, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v1, p0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_dcp:Lcom/appycity/suckbangblow/js/jquery_jquery_scale;

    iput-object v1, v0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_dcp:Lcom/appycity/suckbangblow/js/jquery_jquery_scale;

    const/4 v1, 0x1

    invoke-static {v0, v1, v5, p1}, Lorg/mozilla/javascript/optimizer/OptRuntime;->initFunction(Lorg/mozilla/javascript/NativeFunction;ILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;)V

    new-instance v0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;

    const/4 v1, 0x7

    invoke-direct {v0, v5, p1, v1}, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v1, p0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_dcp:Lcom/appycity/suckbangblow/js/jquery_jquery_scale;

    iput-object v1, v0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_dcp:Lcom/appycity/suckbangblow/js/jquery_jquery_scale;

    const/4 v1, 0x1

    invoke-static {v0, v1, v5, p1}, Lorg/mozilla/javascript/optimizer/OptRuntime;->initFunction(Lorg/mozilla/javascript/NativeFunction;ILorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;)V

    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    .line 29
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "jquery.scale is starting..."

    aput-object v3, v1, v2

    const-string v2, "safelog"

    invoke-static {v1, v2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 32
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "jquery.scale: Using browser \""

    const-string v4, "navigator"

    invoke-static {p1, v5, v4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "appName"

    invoke-static {v4, v6, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\" version \""

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "navigator"

    invoke-static {p1, v5, v4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "appVersion"

    invoke-static {v4, v6, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4, p1}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "\""

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "safelog"

    invoke-static {v1, v2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 36
    const-string v1, "center"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "center"

    invoke-static {v1, v2, p1, v5, v3}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    const-string v1, "stretch"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "stretch"

    invoke-static {v1, v2, p1, v5, v3}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    const-string v1, "debug"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "debug"

    invoke-static {v1, v2, p1, v5, v3}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    const-string v1, "arg1"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "center"

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "arg2"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "center"

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "arg3"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "center"

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 41
    :goto_0
    const-string v1, "arg1"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "stretch"

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "arg2"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "stretch"

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "arg3"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "stretch"

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 43
    :goto_1
    const-string v1, "arg1"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "debug"

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "arg2"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "debug"

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "arg3"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "debug"

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 47
    :goto_2
    const-string v1, "obj"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const-string v3, "$"

    invoke-static {v2, v3, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "obj"

    invoke-static {v1, v2, p1, v5, v3}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    const-string v1, "obj"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "attr"

    invoke-static {v1, v2, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const-string v3, "src"

    invoke-static {v1, v2, v3, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 66
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "jquery.scale: object is NOT an image"

    aput-object v2, v0, v1

    const-string v1, "safelog"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 68
    const-string v0, "scale"

    invoke-static {v0, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName0(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    :goto_3
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->exitActivationFunction(Lorg/mozilla/javascript/Context;)V

    return-object v0

    .line 40
    :cond_1
    :try_start_1
    const-string v1, "center"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "center"

    invoke-static {v1, v2, p1, v5, v3}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 68
    :catchall_0
    move-exception v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->exitActivationFunction(Lorg/mozilla/javascript/Context;)V

    throw v0

    .line 42
    :cond_2
    :try_start_2
    const-string v1, "stretch"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "stretch"

    invoke-static {v1, v2, p1, v5, v3}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 44
    :cond_3
    const-string v1, "debug"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "debug"

    invoke-static {v1, v2, p1, v5, v3}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2

    .line 51
    :cond_4
    const-string v1, "obj"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "attr"

    invoke-static {v1, v2, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const-string v3, "jquery_scale_orig-height"

    invoke-static {v1, v2, v3, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "jquery.scale: object is an image"

    aput-object v3, v1, v2

    const-string v2, "safelog"

    invoke-static {v1, v2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 55
    const-string v1, "date"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "Date"

    invoke-static {p1, v5, v2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->newObject(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const-string v2, "date"

    invoke-static {v1, v0, p1, v5, v2}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    const-string v0, "cursrc"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const-string v1, "obj"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "attr"

    invoke-static {v1, v2, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const-string v3, "src"

    invoke-static {v1, v2, v3, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "cursrc"

    invoke-static {v0, v1, p1, v5, v2}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    const-string v0, "newsrc"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const-string v1, "cursrc"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "newsrc"

    invoke-static {v0, v1, p1, v5, v2}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    const-string v0, "cursrc"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "indexOf"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "?"

    invoke-static {v0, v1, v2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/optimizer/OptRuntime;->minusOneObj:Ljava/lang/Double;

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 60
    :goto_4
    const-string v0, "newsrc"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const-string v1, "newsrc"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "?"

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "date"

    invoke-static {p1, v5, v2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "getTime"

    invoke-static {v2, v3, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "newsrc"

    invoke-static {v0, v1, p1, v5, v2}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    const-string v0, "obj"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "attr"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "src"

    const-string v3, "newsrc"

    invoke-static {p1, v5, v3}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call2(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "jquery.scale: img src changed to "

    const-string v3, "newsrc"

    invoke-static {p1, v5, v3}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " to force a reload"

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "safelog"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 64
    const-string v0, "onload"

    const-string v1, "scale"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p3, v0, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 59
    :cond_5
    const-string v0, "newsrc"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    const-string v0, "cursrc"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "substring"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    sget-object v2, Lorg/mozilla/javascript/optimizer/OptRuntime;->zeroObj:Ljava/lang/Double;

    const-string v3, "cursrc"

    invoke-static {p1, v5, v3}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "indexOf"

    invoke-static {v3, v4, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v3

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    const-string v7, "?"

    invoke-static {v3, v4, v7, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call2(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "newsrc"

    invoke-static {v6, v0, p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4
.end method

.method private static _c_matchHeight_5(Lcom/appycity/suckbangblow/js/jquery_jquery_scale;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    .line 192
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string p4, "jquery.scale: matching height"

    aput-object p4, p2, p3

    const-string p3, "safelog"

    invoke-static {p2, p3, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 194
    const-string p2, "obj"

    invoke-static {p1, p0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "width"

    invoke-static {p2, p3, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p3

    const-string p4, "obj"

    invoke-static {p1, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "outerWidth"

    invoke-static {p4, v0, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    const-string p4, "obj"

    invoke-static {p1, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v2, "parent"

    invoke-static {p4, v2, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    const-string v2, "height"

    invoke-static {p4, v2, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-string p4, "obj"

    invoke-static {p1, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v2, "outerHeight"

    invoke-static {p4, v2, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-string p4, "obj"

    invoke-static {p1, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v2, "outerWidth"

    invoke-static {p4, v2, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    const-string p4, "obj"

    invoke-static {p1, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v4, "width"

    invoke-static {p4, v4, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v4

    sub-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/optimizer/OptRuntime;->wrapDouble(D)Ljava/lang/Double;

    move-result-object p4

    invoke-static {p2, p3, p4, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 197
    const-string p2, "obj"

    invoke-static {p1, p0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "height"

    invoke-static {p2, p3, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p3

    const-string p4, "obj"

    invoke-static {p1, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "parent"

    invoke-static {p4, v0, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "height"

    invoke-static {p4, v0, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    const-string p4, "obj"

    invoke-static {p1, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v2, "outerHeight"

    invoke-static {p4, v2, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    const-string p4, "obj"

    invoke-static {p1, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v4, "height"

    invoke-static {p4, v4, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v4

    sub-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/optimizer/OptRuntime;->wrapDouble(D)Ljava/lang/Double;

    move-result-object p4

    invoke-static {p2, p3, p4, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0
.end method

.method private static _c_matchWidth_6(Lcom/appycity/suckbangblow/js/jquery_jquery_scale;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    .line 203
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string p4, "jquery.scale: matching width"

    aput-object p4, p2, p3

    const-string p3, "safelog"

    invoke-static {p2, p3, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 205
    const-string p2, "obj"

    invoke-static {p1, p0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "height"

    invoke-static {p2, p3, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p3

    const-string p4, "obj"

    invoke-static {p1, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "outerHeight"

    invoke-static {p4, v0, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    const-string p4, "obj"

    invoke-static {p1, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v2, "parent"

    invoke-static {p4, v2, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    const-string v2, "width"

    invoke-static {p4, v2, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-string p4, "obj"

    invoke-static {p1, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v2, "outerWidth"

    invoke-static {p4, v2, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-string p4, "obj"

    invoke-static {p1, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v2, "outerHeight"

    invoke-static {p4, v2, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    const-string p4, "obj"

    invoke-static {p1, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v4, "height"

    invoke-static {p4, v4, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v4

    sub-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/optimizer/OptRuntime;->wrapDouble(D)Ljava/lang/Double;

    move-result-object p4

    invoke-static {p2, p3, p4, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 208
    const-string p2, "obj"

    invoke-static {p1, p0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "width"

    invoke-static {p2, p3, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p3

    const-string p4, "obj"

    invoke-static {p1, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "parent"

    invoke-static {p4, v0, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "width"

    invoke-static {p4, v0, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    const-string p4, "obj"

    invoke-static {p1, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v2, "outerWidth"

    invoke-static {p4, v2, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    const-string p4, "obj"

    invoke-static {p1, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v4, "width"

    invoke-static {p4, v4, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v4

    sub-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/optimizer/OptRuntime;->wrapDouble(D)Ljava/lang/Double;

    move-result-object p4

    invoke-static {p2, p3, p4, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0
.end method

.method private static _c_safelog_7(Lcom/appycity/suckbangblow/js/jquery_jquery_scale;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const-string v4, "console"

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    array-length v1, p4

    if-ge v1, v2, :cond_2

    invoke-static {p4, v2}, Lorg/mozilla/javascript/ScriptRuntime;->padArguments([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 214
    const-string v2, "window"

    invoke-static {p1, v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "console"

    invoke-static {v2, v4, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 215
    :cond_0
    :goto_1
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0

    .line 214
    :cond_1
    const-string v2, "debug"

    invoke-static {p1, v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    const-string v2, "console"

    invoke-static {p1, v0, v4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "log"

    invoke-static {v2, v3, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    invoke-static {v2, v3, v1, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v1, p4

    goto :goto_0
.end method

.method private static _c_scale_4(Lcom/appycity/suckbangblow/js/jquery_jquery_scale;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    .line 73
    const-string p0, "obj"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "attr"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    const-string p4, "jquery_scale_orig-height"

    invoke-static {p0, p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 76
    const-string p0, "obj"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "attr"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "jquery_scale_orig-height"

    const-string p0, "obj"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "height"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call2(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 78
    const-string p0, "obj"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "attr"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "jquery_scale_orig-width"

    const-string p0, "obj"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "width"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call2(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 80
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p4, "jquery.scale: is starting for the first time. Captured the original dimensions of "

    const-string v0, "obj"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "width"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p4, v0}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "x"

    invoke-static {p4, v0}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "obj"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "height"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p4, v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p4

    aput-object p4, p0, p2

    const-string p2, "safelog"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 97
    :goto_0
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p4, "jquery.scale: BEFORE scaling, object\'s outer size = "

    const-string v0, "obj"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "outerWidth"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p4, v0}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "x"

    invoke-static {p4, v0}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "obj"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "outerHeight"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p4, v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, ", object\'s parent\'s inner size "

    invoke-static {p4, v0}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "= "

    invoke-static {p4, v0}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "obj"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "parent"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "width"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p4, v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "x"

    invoke-static {p4, v0}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "obj"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "parent"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "height"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p4, v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p4

    aput-object p4, p0, p2

    const-string p2, "safelog"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 104
    const-string p0, "obj"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "outerHeight"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "obj"

    invoke-static {p1, v5, p2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "parent"

    invoke-static {p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "height"

    invoke-static {p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LT(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 113
    :cond_0
    const-string p0, "obj"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "outerWidth"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "obj"

    invoke-static {p1, v5, p2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "parent"

    invoke-static {p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "width"

    invoke-static {p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LT(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 123
    :cond_1
    const-string p0, "obj"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "outerWidth"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "obj"

    invoke-static {p1, v5, p2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "parent"

    invoke-static {p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "width"

    invoke-static {p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LT(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 145
    :cond_2
    const-string p0, "obj"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "outerWidth"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "obj"

    invoke-static {p1, v5, p2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "parent"

    invoke-static {p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "width"

    invoke-static {p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LT(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    .line 167
    :cond_3
    :goto_1
    const-string p0, "center"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    .line 180
    :goto_2
    const-string p0, "onload"

    const/4 p2, 0x0

    invoke-static {p3, p0, p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 182
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "jquery.scale: AFTER scaling, object\'s size = "

    const-string p4, "obj"

    invoke-static {p1, v5, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "outerWidth"

    invoke-static {p4, v0, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "x"

    invoke-static {p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "obj"

    invoke-static {p1, v5, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "outerHeight"

    invoke-static {p4, v0, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p3, p4, p1}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p3

    const-string p4, ", object\'s parent\'s size = "

    invoke-static {p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "obj"

    invoke-static {p1, v5, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "parent"

    invoke-static {p4, v0, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "width"

    invoke-static {p4, v0, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p3, p4, p1}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p3

    const-string p4, "x"

    invoke-static {p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "obj"

    invoke-static {p1, v5, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "parent"

    invoke-static {p4, v0, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "height"

    invoke-static {p4, v0, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p3, p4, p1}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p3

    const-string p4, ".\'"

    invoke-static {p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p0, p2

    const-string p2, "safelog"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0

    .line 86
    :cond_4
    const-string p0, "obj"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "height"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "obj"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "attr"

    invoke-static {v1, v2, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const-string v3, "jquery_scale_orig-height"

    invoke-static {v1, v2, v3, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p4, v0

    const-string v0, "parseInt"

    invoke-static {p4, v0, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p0, p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 89
    const-string p0, "obj"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "width"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "obj"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "attr"

    invoke-static {v1, v2, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const-string v3, "jquery_scale_orig-width"

    invoke-static {v1, v2, v3, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p4, v0

    const-string v0, "parseInt"

    invoke-static {p4, v0, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p0, p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 92
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p4, "jquery.scale: has been run before. Reset the object to its original dimensions of "

    const-string v0, "obj"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "width"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p4, v0}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "x"

    invoke-static {p4, v0}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "obj"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "height"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p4, v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p4

    aput-object p4, p0, p2

    const-string p2, "safelog"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 104
    :cond_5
    const-string p0, "obj"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "outerWidth"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "obj"

    invoke-static {p1, v5, p2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "parent"

    invoke-static {p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "width"

    invoke-static {p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 105
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p4, "jquery.scale: object is too tall, but width is OK"

    aput-object p4, p0, p2

    const-string p2, "safelog"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 109
    const-string p0, "matchHeight"

    invoke-static {p0, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName0(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 113
    :cond_6
    const-string p0, "obj"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "outerHeight"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "obj"

    invoke-static {p1, v5, p2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "parent"

    invoke-static {p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "height"

    invoke-static {p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 114
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p4, "jquery.scale: object is too wide, but height is OK"

    aput-object p4, p0, p2

    const-string p2, "safelog"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 118
    const-string p0, "matchWidth"

    invoke-static {p0, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName0(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 123
    :cond_7
    const-string p0, "obj"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "outerHeight"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "obj"

    invoke-static {p1, v5, p2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "parent"

    invoke-static {p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "height"

    invoke-static {p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LT(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "stretch"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 125
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p4, "jquery.scale: object is too short and skinny, and stretch option enabled"

    aput-object p4, p0, p2

    const-string p2, "safelog"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 129
    const-string p0, "obj"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "parent"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "height"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    const-string p0, "obj"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "outerHeight"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/optimizer/OptRuntime;->wrapDouble(D)Ljava/lang/Double;

    move-result-object p0

    const-string p2, "obj"

    invoke-static {p1, v5, p2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "parent"

    invoke-static {p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "width"

    invoke-static {p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    const-string p2, "obj"

    invoke-static {p1, v5, p2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "outerWidth"

    invoke-static {p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/optimizer/OptRuntime;->wrapDouble(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LE(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    .line 137
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p4, "jquery.scale: width is closer to being correct"

    aput-object p4, p0, p2

    const-string p2, "safelog"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 140
    const-string p0, "matchWidth"

    invoke-static {p0, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName0(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 130
    :cond_8
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p4, "jquery.scale: height is closer to being correct, or height and width are equally close to being correct"

    aput-object p4, p0, p2

    const-string p2, "safelog"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 135
    const-string p0, "matchHeight"

    invoke-static {p0, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName0(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 145
    :cond_9
    const-string p0, "obj"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "outerHeight"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "obj"

    invoke-static {p1, v5, p2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "parent"

    invoke-static {p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "height"

    invoke-static {p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LT(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 146
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p4, "jquery.scale: object is too tall and wide"

    aput-object p4, p0, p2

    const-string p2, "safelog"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 149
    const-string p0, "obj"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "parent"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "height"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    const-string p0, "obj"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "outerHeight"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/optimizer/OptRuntime;->wrapDouble(D)Ljava/lang/Double;

    move-result-object p0

    const-string p2, "obj"

    invoke-static {p1, v5, p2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "parent"

    invoke-static {p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "width"

    invoke-static {p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    const-string p2, "obj"

    invoke-static {p1, v5, p2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "outerWidth"

    invoke-static {p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/optimizer/OptRuntime;->wrapDouble(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p2, p0}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LT(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    .line 156
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p4, "jquery.scale: height is closer to being correct, or height and width are equally close to being correct"

    aput-object p4, p0, p2

    const-string p2, "safelog"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 160
    const-string p0, "matchHeight"

    invoke-static {p0, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName0(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 150
    :cond_a
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p4, "jquery.scale: width is closer to being correct"

    aput-object p4, p0, p2

    const-string p2, "safelog"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 154
    const-string p0, "matchWidth"

    invoke-static {p0, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName0(Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 167
    :cond_b
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p4, "jquery.scale: centering option enabled"

    aput-object p4, p0, p2

    const-string p2, "safelog"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 169
    const-string p0, "obj"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "css"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "position"

    const-string v3, "relative"

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call2(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 170
    const-string p0, "obj"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "css"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "margin-top"

    const-string p0, "obj"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "parent"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "height"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v3

    sget-object p0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_k0:Ljava/lang/Integer;

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v6

    div-double/2addr v3, v6

    const-string p0, "obj"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "outerHeight"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v6

    sget-object p0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_k0:Ljava/lang/Integer;

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v8

    div-double/2addr v6, v8

    sub-double/2addr v3, v6

    invoke-static {v3, v4}, Lorg/mozilla/javascript/optimizer/OptRuntime;->wrapDouble(D)Ljava/lang/Double;

    move-result-object v3

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call2(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 173
    const-string p0, "obj"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "css"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "margin-left"

    const-string p0, "obj"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "parent"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "width"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v3

    sget-object p0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_k0:Ljava/lang/Integer;

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v6

    div-double/2addr v3, v6

    const-string p0, "obj"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "outerWidth"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v6

    sget-object p0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_k0:Ljava/lang/Integer;

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v8

    div-double/2addr v6, v8

    sub-double/2addr v3, v6

    invoke-static {v3, v4}, Lorg/mozilla/javascript/optimizer/OptRuntime;->wrapDouble(D)Ljava/lang/Double;

    move-result-object v3

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call2(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    goto/16 :goto_2
.end method

.method private static _c_script_0(Lcom/appycity/suckbangblow/js/jquery_jquery_scale;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p3, p1, p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->initScript(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 221
    new-instance v0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;

    const/4 v1, 0x1

    invoke-direct {v0, p2, p1, v1}, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iput-object p0, v0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_dcp:Lcom/appycity/suckbangblow/js/jquery_jquery_scale;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getValueFunctionAndThis(Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "jQuery"

    invoke-static {p1, p2, v2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2, p1, p2}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

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

.method private final _i4(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/NativeFunction;->initScriptFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method private final _i5(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/NativeFunction;->initScriptFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method private final _i6(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/NativeFunction;->initScriptFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method private final _i7(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/NativeFunction;->initScriptFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;

    invoke-direct {v0}, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;-><init>()V

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
    iget v0, p0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_id:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_c_script_0(Lcom/appycity/suckbangblow/js/jquery_jquery_scale;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_c_anonymous_1(Lcom/appycity/suckbangblow/js/jquery_jquery_scale;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_c_anonymous_2(Lcom/appycity/suckbangblow/js/jquery_jquery_scale;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_c_anonymous_3(Lcom/appycity/suckbangblow/js/jquery_jquery_scale;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_c_scale_4(Lcom/appycity/suckbangblow/js/jquery_jquery_scale;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_c_matchHeight_5(Lcom/appycity/suckbangblow/js/jquery_jquery_scale;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_c_matchWidth_6(Lcom/appycity/suckbangblow/js/jquery_jquery_scale;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_c_safelog_7(Lcom/appycity/suckbangblow/js/jquery_jquery_scale;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p2, v0}, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedSource()Ljava/lang/String;
    .locals 3

    const-string v0, "\u0088Wm\u0002W\'\u0001$XU\u0001\'\u0001$l\'\u0002fnl\'\u0006extendWU\'\u0005scaleBm\u0002W\'\u0004arg1Y\'\u0004arg2Y\'\u0004arg3XU\u0001\u0004+l\'\u0004eachWm\u0002WXU\u0001\'\u0007safelogW)\u001bjquery.scale is starting...XR\u0001\'\u0007safelogW)\u001djquery.scale: Using browser \"\u0015\'\tnavigatorl\'\u0007appName\u0015)\u000b\" version \"\u0015\'\tnavigatorl\'\nappVersion\u0015)\u0001\"XR\u0001z\'\u0006centerZ,R\u0001z\'\u0007stretchZ,R\u0001z\'\u0005debugZ,R\u0001pW\'\u0004arg1\u000c)\u0006centerh\'\u0004arg2\u000c)\u0006centerh\'\u0004arg3\u000c)\u0006centerXU\u0001\'\u0006centerZ-R\u0001V\u0001pW\'\u0004arg1\u000c)\u0007stretchh\'\u0004arg2\u000c)\u0007stretchh\'\u0004arg3\u000c)\u0007stretchXU\u0001\'\u0007stretchZ-R\u0001V\u0001pW\'\u0004arg1\u000c)\u0005debugh\'\u0004arg2\u000c)\u0005debugh\'\u0004arg3\u000c)\u0005debugXU\u0001\'\u0005debugZ-R\u0001V\u0001z\'\u0003objZ\'\u0001$W+XR\u0001pW\'\u0003objl\'\u0004attrW)\u0003srcXi\u001a\'\u0003objl\'\u0004attrW)\u0018jquery_scale_orig-heightXXU\u0001\'\u0007safelogW) jquery.scale: object is an imageXR\u0001z\'\u0004dateZ\u001e\'\u0004DateWXR\u0001z\'\u0006cursrcZ\'\u0003objl\'\u0004attrW)\u0003srcXR\u0001z\'\u0006newsrcZ\'\u0006cursrcR\u0001pW\'\u0006cursrcl\'\u0007indexOfW)\u0001?X\r\u001d(S\u0001XU\u0001\'\u0006newsrcZ\'\u0006cursrcl\'\tsubstringW(S\u0000Y\'\u0006cursrcl\'\u0007indexOfW)\u0001?XXR\u0001V\u0001\'\u0006newsrcZ\'\u0006newsrc\u0015)\u0001?\u0015\'\u0004datel\'\u0007getTimeWXR\u0001\'\u0003objl\'\u0004attrW)\u0003srcY\'\u0006newsrcXR\u0001\'\u0007safelogW)!jquery.scale: img src changed to \u0015\'\u0006newsrc\u0015)\u0012 to force a reloadXR\u0001+l\'\u0006onloadZ\'\u0005scaleR\u0001VqU\u0001\'\u0007safelogW)$jquery.scale: object is NOT an imageXR\u0001\'\u0005scaleWXR\u0001V\u0001m\u0001\'\u0005scaleWXU\u0001pW\u001a\'\u0003objl\'\u0004attrW)\u0018jquery_scale_orig-heightXXU\u0001\'\u0003objl\'\u0004attrW)\u0018jquery_scale_orig-heightY\'\u0003objl\'\u0006heightWXXR\u0001\'\u0003objl\'\u0004attrW)\u0017jquery_scale_orig-widthY\'\u0003objl\'\u0005widthWXXR\u0001\'\u0007safelogW)(jquery.scale: is starting for the first \u0015)*time. Captured the original dimensions of \u0015\'\u0003objl\'\u0005widthWX\u0015)\u0001x\u0015\'\u0003objl\'\u0006heightWXXR\u0001VqU\u0001\'\u0003objl\'\u0006heightW\'\u0008parseIntW\'\u0003objl\'\u0004attrW)\u0018jquery_scale_orig-heightXXXR\u0001\'\u0003objl\'\u0005widthW\'\u0008parseIntW\'\u0003objl\'\u0004attrW)\u0017jquery_scale_orig-widthXXXR\u0001\'\u0007safelogW))jquery.scale: has been run before. Reset \u0015))the object to its original dimensions of \u0015\'\u0003objl\'\u0005widthWX\u0015)\u0001x\u0015\'\u0003objl\'\u0006heightWXXR\u0001V\u0001\'\u0007safelogW)-jquery.scale: BEFORE scaling, object\'s outer \u0015)\u0007size = \u0015\'\u0003objl\'\nouterWidthWX\u0015)\u0001x\u0015\'\u0003objl\'\u000bouterHeightWX\u0015)\u001f, object\'s parent\'s inner size \u0015)\u0002= \u0015\'\u0003objl\'\u0006parentWXl\'\u0005widthWX\u0015)\u0001x\u0015\'\u0003objl\'\u0006parentWXl\'\u0006heightWXXR\u0001pW\'\u0003objl\'\u000bouterHeightWX\u0010\'\u0003objl\'\u0006parentWXl\'\u0006heightWXi\'\u0003objl\'\nouterWidthWX\u000f\'\u0003objl\'\u0006parentWXl\'\u0005widthWXXU\u0001\'\u0007safelogW)+jquery.scale: object is too tall, but width\u0015)\u0006 is OKXR\u0001\'\u000bmatchHeightWXR\u0001VqU\u0001pW\'\u0003objl\'\nouterWidthWX\u0010\'\u0003objl\'\u0006parentWXl\'\u0005widthWXi\'\u0003objl\'\u000bouterHeightWX\u000f\'\u0003objl\'\u0006parentWXl\'\u0006heightWXXU\u0001\'\u0007safelogW)&jquery.scale: object is too wide, but \u0015)\u000cheight is OKXR\u0001\'\nmatchWidthWXR\u0001VqU\u0001pW\'\u0003objl\'\nouterWidthWX\u000e\'\u0003objl\'\u0006parentWXl\'\u0005widthWXi\'\u0003objl\'\u000bouterHeightWX\u000e\'\u0003objl\'\u0006parentWXl\'\u0006heightWXi\'\u0007stretchXU\u0001\'\u0007safelogW)&jquery.scale: object is too short and \u0015)\"skinny, and stretch option enabledXR\u0001pW\'\u0003objl\'\u0006parentWXl\'\u0006heightWX\u0018\'\u0003objl\'\u000bouterHeightWX\u000f\'\u0003objl\'\u0006parentWXl\'\u0005widthWX\u0018\'\u0003objl\'\nouterWidthWXXU\u0001\'\u0007safelogW)\"jquery.scale: height is closer to \u0015)\'being correct, or height and width are \u0015)\u001eequally close to being correctXR\u0001\'\u000bmatchHeightWXR\u0001VqU\u0001\'\u0007safelogW)\'jquery.scale: width is closer to being \u0015)\u0007correctXR\u0001\'\nmatchWidthWXR\u0001V\u0001VqU\u0001pW\'\u0003objl\'\nouterWidthWX\u0010\'\u0003objl\'\u0006parentWXl\'\u0005widthWXi\'\u0003objl\'\u000bouterHeightWX\u0010\'\u0003objl\'\u0006parentWXl\'\u0006heightWXXU\u0001\'\u0007safelogW))jquery.scale: object is too tall and wideXR\u0001pW\'\u0003objl\'\u0006parentWXl\'\u0006heightWX\u0018\'\u0003objl\'\u000bouterHeightWX\u0010\'\u0003objl\'\u0006parentWXl\'\u0005widthWX\u0018\'\u0003objl\'\nouterWidthWXXU\u0001\'\u0007safelogW)\'jquery.scale: width is closer to being \u0015)\u0007correctXR\u0001\'\nmatchWidthWXR\u0001VqU\u0001\'\u0007safelogW)\"jquery.scale: height is closer to \u0015)\'being correct, or height and width are \u0015)\u001eequally close to being correctXR\u0001\'\u000bmatchHeightWXR\u0001V\u0001V\u0001V\u0001V\u0001V\u0001pW\'\u0006centerXU\u0001\'\u0007safelogW)&jquery.scale: centering option enabledXR\u0001\'\u0003objl\'\u0003cssW)\u0008positionY)\u0008relativeXR\u0001\'\u0003objl\'\u0003cssW)\nmargin-topY\'\u0003objl\'\u0006parentWXl\'\u0006heightWX\u0018(S\u0002\u0016\'\u0003objl\'\u000bouterHeightWX\u0018(S\u0002XR\u0001\'\u0003objl\'\u0003cssW)\u000bmargin-leftY\'\u0003objl\'\u0006parentWXl\'\u0005widthWX\u0018(S\u0002\u0016\'\u0003objl\'\nouterWidthWX\u0018(S\u0002XR\u0001V\u0001+l\'\u0006onloadZ*R\u0001\'\u0007safelogW)-jquery.scale: AFTER scaling, object\'s size = \u0015\'\u0003objl\'\nouterWidthWX\u0015)\u0001x\u0015\'\u0003objl\'\u000bouterHeightWX\u0015)\u001b, object\'s parent\'s size = \u0015\'\u0003objl\'\u0006parentWXl\'\u0005widthWX\u0015)\u0001x\u0015\'\u0003objl\'\u0006parentWXl\'\u0006heightWX\u0015)\u0002.\'XR\u0001V\u00a3\u0001m\u0001\'\u000bmatchHeightWXU\u0001\'\u0007safelogW)\u001djquery.scale: matching heightXR\u0001\'\u0003objl\'\u0005widthW\'\u0003objl\'\nouterWidthWX\u0017\'\u0003objl\'\u0006parentWXl\'\u0006heightWX\u0018\'\u0003objl\'\u000bouterHeightWX\u0016W\'\u0003objl\'\nouterWidthWX\u0016\'\u0003objl\'\u0005widthWXXXR\u0001\'\u0003objl\'\u0006heightW\'\u0003objl\'\u0006parentWXl\'\u0006heightWX\u0016W\'\u0003objl\'\u000bouterHeightWX\u0016\'\u0003objl\'\u0006heightWXXXR\u0001V\u00a3\u0001m\u0001\'\nmatchWidthWXU\u0001\'\u0007safelogW)\u001cjquery.scale: matching widthXR\u0001\'\u0003objl\'\u0006heightW\'\u0003objl\'\u000bouterHeightWX\u0017\'\u0003objl\'\u0006parentWXl\'\u0005widthWX\u0018\'\u0003objl\'\nouterWidthWX\u0016W\'\u0003objl\'\u000bouterHeightWX\u0016\'\u0003objl\'\u0006heightWXXXR\u0001\'\u0003objl\'\u0005widthW\'\u0003objl\'\u0006parentWXl\'\u0005widthWX\u0016W\'\u0003objl\'\nouterWidthWX\u0016\'\u0003objl\'\u0005widthWXXXR\u0001V\u00a3\u0001m\u0001\'\u0007safelogW\'\u0003msgXU\u0001pW\'\u0006windowl\'\u0007consolei\'\u0005debugXU\u0001\'\u0007consolel\'\u0003logW\'\u0003msgXR\u0001V\u0001V\u00a3\u0001V\u00a3XR\u0001V\u00a3VXR\u0001V\u00a3XW\'\u0006jQueryXR\u0001"

    iget v1, p0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_id:I

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    const/16 v2, 0x110e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const/4 v1, 0x2

    const/16 v2, 0x1100

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x26

    const/16 v2, 0x10fa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x4a

    const/16 v2, 0x10f5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x3e7

    const/16 v2, 0xe7a

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const/16 v1, 0xe7c

    const/16 v2, 0xf90

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const/16 v1, 0xf92

    const/16 v2, 0x10a2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    const/16 v1, 0x10a4

    const/16 v2, 0x10f2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 2

    const-string v1, ""

    iget v0, p0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_id:I

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

    :pswitch_3
    const-string v0, "scale"

    goto :goto_0

    :pswitch_4
    const-string v0, "matchHeight"

    goto :goto_0

    :pswitch_5
    const-string v0, "matchWidth"

    goto :goto_0

    :pswitch_6
    const-string v0, "safelog"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getLanguageVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParamAndVarCount()I
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_id:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    move v0, v2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_5
    move v0, v1

    goto :goto_0

    :pswitch_6
    move v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getParamCount()I
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_id:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    move v0, v2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_5
    move v0, v1

    goto :goto_0

    :pswitch_6
    move v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getParamOrVarConst(I)Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_id:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    packed-switch p1, :pswitch_data_1

    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    packed-switch p1, :pswitch_data_2

    move v0, v1

    goto :goto_0

    :pswitch_5
    move v0, v1

    goto :goto_0

    :pswitch_6
    move v0, v1

    goto :goto_0

    :pswitch_7
    move v0, v1

    goto :goto_0

    :pswitch_8
    move v0, v1

    goto :goto_0

    :pswitch_9
    move v0, v1

    goto :goto_0

    :pswitch_a
    move v0, v1

    goto :goto_0

    :pswitch_b
    move v0, v1

    goto :goto_0

    :pswitch_c
    move v0, v1

    goto :goto_0

    :pswitch_d
    move v0, v1

    goto :goto_0

    :pswitch_e
    move v0, v1

    goto :goto_0

    :pswitch_f
    move v0, v1

    goto :goto_0

    :pswitch_10
    move v0, v1

    goto :goto_0

    :pswitch_11
    move v0, v1

    goto :goto_0

    :pswitch_12
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public getParamOrVarName(I)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/appycity/suckbangblow/js/jquery_jquery_scale;->_id:I

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "$"

    goto :goto_0

    :pswitch_1
    packed-switch p1, :pswitch_data_1

    const-string v0, "arg1"

    goto :goto_0

    :pswitch_2
    const-string v0, "arg2"

    goto :goto_0

    :pswitch_3
    const-string v0, "arg3"

    goto :goto_0

    :pswitch_4
    packed-switch p1, :pswitch_data_2

    const-string v0, "center"

    goto :goto_0

    :pswitch_5
    const-string v0, "stretch"

    goto :goto_0

    :pswitch_6
    const-string v0, "debug"

    goto :goto_0

    :pswitch_7
    const-string v0, "obj"

    goto :goto_0

    :pswitch_8
    const-string v0, "date"

    goto :goto_0

    :pswitch_9
    const-string v0, "cursrc"

    goto :goto_0

    :pswitch_a
    const-string v0, "newsrc"

    goto :goto_0

    :pswitch_b
    const-string v0, "scale"

    goto :goto_0

    :pswitch_c
    const-string v0, "matchHeight"

    goto :goto_0

    :pswitch_d
    const-string v0, "matchWidth"

    goto :goto_0

    :pswitch_e
    const-string v0, "safelog"

    goto :goto_0

    :pswitch_f
    move-object v0, v1

    goto :goto_0

    :pswitch_10
    move-object v0, v1

    goto :goto_0

    :pswitch_11
    move-object v0, v1

    goto :goto_0

    :pswitch_12
    const-string v0, "msg"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
