.class public Lcom/appycity/suckbangblow/js/windows_main;
.super Lorg/mozilla/javascript/NativeFunction;

# interfaces
.implements Lorg/mozilla/javascript/Script;


# static fields
.field private static _k0:Ljava/lang/Integer;

.field private static _k1:Ljava/lang/Integer;


# instance fields
.field private _dcp:Lcom/appycity/suckbangblow/js/windows_main;

.field private _id:I

.field private _re:[Ljava/lang/Object;


# direct methods
.method static final constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/appycity/suckbangblow/js/windows_main;->_k0:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/appycity/suckbangblow/js/windows_main;->_k1:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/NativeFunction;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/appycity/suckbangblow/js/windows_main;->_id:I

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/NativeFunction;-><init>()V

    iput p3, p0, Lcom/appycity/suckbangblow/js/windows_main;->_id:I

    packed-switch p3, :pswitch_data_0

    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_main;->_i1(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_main;->_i2(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_main;->_i3(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_main;->_i4(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_main;->_i5(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static _c_anonymous_1(Lcom/appycity/suckbangblow/js/windows_main;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 3
    const-string v1, "path"

    const-string v2, "../"

    invoke-static {p3, v1, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 6
    const-string v1, "navList"

    invoke-static {p3, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 7
    const-string v1, "actInd"

    invoke-static {p3, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 8
    const-string v1, "window"

    invoke-static {p3, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 9
    const-string v1, "self"

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "self"

    invoke-static {v1, p3, p1, v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    const-string v1, "addWindowElements"

    new-instance v2, Lcom/appycity/suckbangblow/js/windows_main;

    const/4 v3, 0x2

    invoke-direct {v2, v0, p1, v3}, Lcom/appycity/suckbangblow/js/windows_main;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v3, p0, Lcom/appycity/suckbangblow/js/windows_main;->_dcp:Lcom/appycity/suckbangblow/js/windows_main;

    iput-object v3, v2, Lcom/appycity/suckbangblow/js/windows_main;->_dcp:Lcom/appycity/suckbangblow/js/windows_main;

    invoke-static {p3, v1, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 26
    const-string v1, "_init"

    new-instance v2, Lcom/appycity/suckbangblow/js/windows_main;

    const/4 v3, 0x3

    invoke-direct {v2, v0, p1, v3}, Lcom/appycity/suckbangblow/js/windows_main;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v3, p0, Lcom/appycity/suckbangblow/js/windows_main;->_dcp:Lcom/appycity/suckbangblow/js/windows_main;

    iput-object v3, v2, Lcom/appycity/suckbangblow/js/windows_main;->_dcp:Lcom/appycity/suckbangblow/js/windows_main;

    invoke-static {p3, v1, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 35
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

.method private static _c_anonymous_2(Lcom/appycity/suckbangblow/js/windows_main;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 11
    sget-object p0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    const/4 p2, 0x0

    const/4 p4, 0x0

    invoke-static {p0, p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->newArrayLiteral([Ljava/lang/Object;Ljava/lang/String;ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    .line 14
    const-string p0, "push"

    invoke-static {v3, p0, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    const-string p4, "CONFIG"

    invoke-static {p1, v5, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "createWebPageMenuItem"

    invoke-static {p4, v0, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    const-string v4, "ABOUT"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const/4 v4, 0x0

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "http://suckbangblow.com/index.php/p/1/about"

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, "div.post > div.content"

    aput-object v4, v1, v2

    invoke-static {p4, v0, v1, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callN(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p0, p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 15
    const-string p0, "push"

    invoke-static {v3, p0, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    const-string p4, "CONFIG"

    invoke-static {p1, v5, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "createWebPageMenuItem"

    invoke-static {p4, v0, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    const-string v4, "SOFTTAIL GRILL"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const/4 v4, 0x0

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "http://suckbangblow.com/index.php/p/2/softtail_grill_at_suck_bang_blow"

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, "div.post > div.content"

    aput-object v4, v1, v2

    invoke-static {p4, v0, v1, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callN(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p0, p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 16
    const-string p0, "push"

    invoke-static {v3, p0, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    const-string p4, "CONFIG"

    invoke-static {p1, v5, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "createWebPageMenuItem"

    invoke-static {p4, v0, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    const-string v4, "EVENTS"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const/4 v4, 0x0

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "http://suckbangblow.com/index.php/p/3/sbb_calendar_of_events"

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, "div.post > div.content"

    aput-object v4, v1, v2

    invoke-static {p4, v0, v1, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callN(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p0, p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 17
    const-string p0, "push"

    invoke-static {v3, p0, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    const-string p4, "CONFIG"

    invoke-static {p1, v5, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "createWebPageMenuItemPhotoIndex"

    invoke-static {p4, v0, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    const-string v4, "PHOTOS"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, "http://picasaweb.google.com/data/feed/base/user/112888472416212098688?alt=rss&kind=album&hl=en_US&access=public"

    aput-object v4, v1, v2

    invoke-static {p4, v0, v1, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callN(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p0, p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 18
    const-string p0, "push"

    invoke-static {v3, p0, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    const-string p4, "CONFIG"

    invoke-static {p1, v5, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "createWebPageMenuItem"

    invoke-static {p4, v0, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    const-string v4, "WEBCAMS"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const/4 v4, 0x0

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "http://suckbangblow.com/index.php/p/5/webcams"

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, "div.post > div.content"

    aput-object v4, v1, v2

    invoke-static {p4, v0, v1, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callN(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p0, p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 19
    const-string p0, "push"

    invoke-static {v3, p0, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    const-string p4, "CONFIG"

    invoke-static {p1, v5, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "createWindowMenuItem"

    invoke-static {p4, v0, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    const-string v4, "LOCATIONS"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, "locations.js"

    aput-object v4, v1, v2

    invoke-static {p4, v0, v1, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callN(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p0, p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 20
    const-string p0, "push"

    invoke-static {v3, p0, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    const-string p4, "CONFIG"

    invoke-static {p1, v5, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "createWebPageMenuItemEx"

    invoke-static {p4, v0, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    const-string v4, "CONTACT US"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, "tel:8436517960"

    aput-object v4, v1, v2

    invoke-static {p4, v0, v1, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callN(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p0, p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 21
    const-string p0, "push"

    invoke-static {v3, p0, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    const-string p4, "CONFIG"

    invoke-static {p1, v5, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "createWebPageMenuItemEx"

    invoke-static {p4, v0, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    const-string v4, "SHOP"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, "http://suckbangblow.com/cart/"

    aput-object v4, v1, v2

    invoke-static {p4, v0, v1, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callN(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p0, p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 23
    const-string p0, "CONFIG"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "addNavList"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    move-object v2, p3

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call2(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0
.end method

.method private static _c_anonymous_3(Lcom/appycity/suckbangblow/js/windows_main;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x3

    const-string v7, "actInd"

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 26
    const-string v1, "window"

    const-string v2, "Titanium"

    invoke-static {p1, v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "UI"

    invoke-static {v2, v3, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "currentWindow"

    invoke-static {v2, v3, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p3, v1, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 28
    const-string v1, "window"

    invoke-static {p3, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "layout"

    const-string v3, "vertical"

    invoke-static {v1, v2, v3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 29
    const-string v1, "actInd"

    const-string v1, "Titanium"

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "UI"

    invoke-static {v1, v2, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "createActivityIndicator"

    invoke-static {v1, v2, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "height"

    aput-object v4, v3, v8

    const-string v4, "width"

    aput-object v4, v3, v9

    const-string v4, "message"

    aput-object v4, v3, v10

    new-array v4, v6, [Ljava/lang/Object;

    sget-object v5, Lcom/appycity/suckbangblow/js/windows_main;->_k0:Ljava/lang/Integer;

    aput-object v5, v4, v8

    sget-object v5, Lcom/appycity/suckbangblow/js/windows_main;->_k1:Ljava/lang/Integer;

    aput-object v5, v4, v9

    const-string v5, "Loading..."

    aput-object v5, v4, v10

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->newObjectLiteral([Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    invoke-static {v1, v2, v3, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p3, v7, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 30
    const-string v1, "actInd"

    invoke-static {p3, v7, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "show"

    invoke-static {v1, v2, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 31
    const-string v1, "addWindowElements"

    invoke-static {p3, v1, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 32
    const-string v1, "actInd"

    invoke-static {p3, v7, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "hide"

    invoke-static {v1, v2, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0

    .line 29
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static _c_anonymous_4(Lcom/appycity/suckbangblow/js/windows_main;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v0, "menuItem"

    const-string v0, "menu"

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p0, v0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->createFunctionActivation(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    invoke-static {p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->enterActivationFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    .line 43
    :try_start_0
    const-string v0, "menu"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const-string v1, "e"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "menu"

    invoke-static {v1, v2, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "menu"

    invoke-static {v0, v1, p1, v5, v2}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    const-string v0, "menuItem"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const-string v1, "menu"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "add"

    invoke-static {v1, v2, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "title"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Exit"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {v3, v4, v6, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->newObjectLiteral([Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    invoke-static {v1, v2, v3, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "menuItem"

    invoke-static {v0, v1, p1, v5, v2}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    const-string v0, "menuItem"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "addEventListener"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "click"

    new-instance v3, Lcom/appycity/suckbangblow/js/windows_main;

    const/4 v4, 0x5

    invoke-direct {v3, v5, p1, v4}, Lcom/appycity/suckbangblow/js/windows_main;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v4, p0, Lcom/appycity/suckbangblow/js/windows_main;->_dcp:Lcom/appycity/suckbangblow/js/windows_main;

    iput-object v4, v3, Lcom/appycity/suckbangblow/js/windows_main;->_dcp:Lcom/appycity/suckbangblow/js/windows_main;

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call2(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

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

.method private static _c_anonymous_5(Lcom/appycity/suckbangblow/js/windows_main;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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

    if-ge v1, v2, :cond_0

    invoke-static {p4, v2}, Lorg/mozilla/javascript/ScriptRuntime;->padArguments([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 48
    const-string v1, "Titanium"

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mainwindow"

    invoke-static {v1, v2, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "close"

    invoke-static {v1, v2, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0

    :cond_0
    move-object v1, p4

    goto :goto_0
.end method

.method private static _c_script_0(Lcom/appycity/suckbangblow/js/windows_main;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v7, "main"

    const-string v6, "Titanium"

    const-string v5, "activity"

    const-string v4, "Main"

    const/4 v0, 0x0

    invoke-static {p0, p3, p1, p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->initScript(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 53
    const-string v0, "Titanium"

    invoke-static {p1, p2, v6}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "include"

    invoke-static {v0, v1, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "../config.js"

    invoke-static {v0, v1, v2, p1, p2}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    const-string v1, "Main"

    invoke-static {p1, p2, v4}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    new-instance v2, Lcom/appycity/suckbangblow/js/windows_main;

    const/4 v3, 0x1

    invoke-direct {v2, p2, p1, v3}, Lcom/appycity/suckbangblow/js/windows_main;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iput-object p0, v2, Lcom/appycity/suckbangblow/js/windows_main;->_dcp:Lcom/appycity/suckbangblow/js/windows_main;

    const-string v3, "Main"

    invoke-static {v1, v2, p1, p2, v4}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    const-string v1, "main"

    invoke-static {p1, p2, v7}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "Main"

    invoke-static {p1, p2, v4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-static {v2, p1, p2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->newObject(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const-string v3, "main"

    invoke-static {v1, v2, p1, p2, v7}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    const-string v1, "Titanium"

    invoke-static {p1, p2, v6}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Platform"

    invoke-static {v1, v2, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "name"

    invoke-static {v1, v2, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "android"

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    :goto_0
    return-object v0

    .line 41
    :cond_0
    const-string v0, "activity"

    invoke-static {p1, p2, v5}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const-string v1, "Ti"

    invoke-static {p1, p2, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Android"

    invoke-static {v1, v2, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "currentActivity"

    invoke-static {v1, v2, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "activity"

    invoke-static {v0, v1, p1, p2, v5}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    const-string v0, "activity"

    invoke-static {p1, p2, v5}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onCreateOptionsMenu"

    new-instance v2, Lcom/appycity/suckbangblow/js/windows_main;

    const/4 v3, 0x4

    invoke-direct {v2, p2, p1, v3}, Lcom/appycity/suckbangblow/js/windows_main;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iput-object p0, v2, Lcom/appycity/suckbangblow/js/windows_main;->_dcp:Lcom/appycity/suckbangblow/js/windows_main;

    invoke-static {v0, v1, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
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

.method public static main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/appycity/suckbangblow/js/windows_main;

    invoke-direct {v0}, Lcom/appycity/suckbangblow/js/windows_main;-><init>()V

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
    iget v0, p0, Lcom/appycity/suckbangblow/js/windows_main;->_id:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_main;->_c_script_0(Lcom/appycity/suckbangblow/js/windows_main;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_main;->_c_anonymous_1(Lcom/appycity/suckbangblow/js/windows_main;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_main;->_c_anonymous_2(Lcom/appycity/suckbangblow/js/windows_main;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_main;->_c_anonymous_3(Lcom/appycity/suckbangblow/js/windows_main;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_main;->_c_anonymous_4(Lcom/appycity/suckbangblow/js/windows_main;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_main;->_c_anonymous_5(Lcom/appycity/suckbangblow/js/windows_main;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p2, v0}, Lcom/appycity/suckbangblow/js/windows_main;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedSource()Ljava/lang/String;
    .locals 3

    const-string v0, "\u0088\'\u0008Titaniuml\'\u0007includeW)\u000c../config.jsXR\u0001z\'\u0004MainZm\u0002WXU\u0001+l\'\u0004pathZ)\u0003../R\u0001+l\'\u0007navListR\u0001+l\'\u0006actIndR\u0001+l\'\u0006windowR\u0001z\'\u0004selfZ+R\u0001+l\'\u0011addWindowElementsZm\u0002WXU\u0001z\'\u0004rowsZSTR\u0001\'\u0004rowsl\'\u0004pushW\'\u0006CONFIGl\'\u0015createWebPageMenuItemW+Y)\u0005ABOUTY*Y)+http://suckbangblow.com/index.php/p/1/aboutY)\u0016div.post > div.contentXXR\u0001\'\u0004rowsl\'\u0004pushW\'\u0006CONFIGl\'\u0015createWebPageMenuItemW+Y)\u000eSOFTTAIL GRILLY*Y)Fhttp://suckbangblow.com/index.php/p/2/softtail_grill_at_suck_bang_blowY)\u0016div.post > div.contentXXR\u0001\'\u0004rowsl\'\u0004pushW\'\u0006CONFIGl\'\u0015createWebPageMenuItemW+Y)\u0006EVENTSY*Y)<http://suckbangblow.com/index.php/p/3/sbb_calendar_of_eventsY)\u0016div.post > div.contentXXR\u0001\'\u0004rowsl\'\u0004pushW\'\u0006CONFIGl\'\u001fcreateWebPageMenuItemPhotoIndexW+Y)\u0006PHOTOSY)ohttp://picasaweb.google.com/data/feed/base/user/112888472416212098688?alt=rss&kind=album&hl=en_US&access=publicXXR\u0001\'\u0004rowsl\'\u0004pushW\'\u0006CONFIGl\'\u0015createWebPageMenuItemW+Y)\u0007WEBCAMSY*Y)-http://suckbangblow.com/index.php/p/5/webcamsY)\u0016div.post > div.contentXXR\u0001\'\u0004rowsl\'\u0004pushW\'\u0006CONFIGl\'\u0014createWindowMenuItemW+Y)\tLOCATIONSY)\u000clocations.jsXXR\u0001\'\u0004rowsl\'\u0004pushW\'\u0006CONFIGl\'\u0017createWebPageMenuItemExW+Y)\nCONTACT USY)\u000etel:8436517960XXR\u0001\'\u0004rowsl\'\u0004pushW\'\u0006CONFIGl\'\u0017createWebPageMenuItemExW+Y)\u0004SHOPY)\u001dhttp://suckbangblow.com/cart/XXR\u0001\'\u0006CONFIGl\'\naddNavListW+Y\'\u0004rowsXR\u0001V\u00a3R\u0001+l\'\u0005_initZm\u0002WXU\u0001+l\'\u0006windowZ\'\u0008Titaniuml\'\u0002UIl\'\rcurrentWindowR\u0001+l\'\u0006windowl\'\u0006layoutZ)\u0008verticalR\u0001+l\'\u0006actIndZ\'\u0008Titaniuml\'\u0002UIl\'\u0017createActivityIndicatorWU\'\u0006heightB(S2Y\'\u0005widthB(S\nY\'\u0007messageB)\nLoading...VXR\u0001+l\'\u0006actIndl\'\u0004showWXR\u0001+l\'\u0011addWindowElementsWXR\u0001+l\'\u0006actIndl\'\u0004hideWXR\u0001V\u00a3R\u0001+l\'\u0005_initWXR\u0001V\u00a3R\u0001z\'\u0004mainZ\u001e\'\u0004MainWXR\u0001pW\'\u0008Titaniuml\'\u0008Platforml\'\u0004name\u000c)\u0007androidXU\u0001z\'\u0008activityZ\'\u0002Til\'\u0007Androidl\'\u000fcurrentActivityR\u0001\'\u0008activityl\'\u0013onCreateOptionsMenuZm\u0002W\'\u0001eXU\u0001z\'\u0004menuZ\'\u0001el\'\u0004menuR\u0001z\'\u0008menuItemZ\'\u0004menul\'\u0003addWU\'\u0005titleB)\u0004ExitVXR\u0001\'\u0008menuIteml\'\u0010addEventListenerW)\u0005clickYm\u0002W\'\u0001eXU\u0001\'\u0008Titaniuml\'\nmainwindowl\'\u0005closeWXR\u0001V\u00a3XR\u0001V\u00a3R\u0001V\u0001"

    iget v1, p0, Lcom/appycity/suckbangblow/js/windows_main;->_id:I

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    const/16 v2, 0x718

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const/16 v1, 0x2f

    const/16 v2, 0x5e2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x8b

    const/16 v2, 0x4c5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x4d2

    const/16 v2, 0x5d1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x672

    const/16 v2, 0x713

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const/16 v1, 0x6e1

    const/16 v2, 0x70e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 2

    const-string v1, ""

    iget v0, p0, Lcom/appycity/suckbangblow/js/windows_main;->_id:I

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
    const-string v0, ""

    move-object v0, v1

    goto :goto_0

    :pswitch_4
    const-string v0, ""

    move-object v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getLanguageVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParamAndVarCount()I
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x1

    iget v0, p0, Lcom/appycity/suckbangblow/js/windows_main;->_id:I

    packed-switch v0, :pswitch_data_0

    move v0, v2

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

    :pswitch_3
    move v0, v2

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getParamCount()I
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/appycity/suckbangblow/js/windows_main;->_id:I

    packed-switch v0, :pswitch_data_0

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
    move v0, v2

    goto :goto_0

    :pswitch_4
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
    .end packed-switch
.end method

.method public getParamOrVarConst(I)Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/appycity/suckbangblow/js/windows_main;->_id:I

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

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_5
    packed-switch p1, :pswitch_data_2

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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getParamOrVarName(I)Ljava/lang/String;
    .locals 2

    const-string v1, "e"

    iget v0, p0, Lcom/appycity/suckbangblow/js/windows_main;->_id:I

    packed-switch v0, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const-string v0, "Main"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "main"

    goto :goto_0

    :pswitch_1
    const-string v0, "activity"

    goto :goto_0

    :pswitch_2
    const-string v0, "self"

    goto :goto_0

    :pswitch_3
    const-string v0, "rows"

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_5
    packed-switch p1, :pswitch_data_2

    const-string v0, "e"

    move-object v0, v1

    goto :goto_0

    :pswitch_6
    const-string v0, "menu"

    goto :goto_0

    :pswitch_7
    const-string v0, "menuItem"

    goto :goto_0

    :pswitch_8
    const-string v0, "e"

    move-object v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
