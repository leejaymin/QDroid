.class public Lcom/appycity/suckbangblow/js/windows_pageloader;
.super Lorg/mozilla/javascript/NativeFunction;

# interfaces
.implements Lorg/mozilla/javascript/Script;


# static fields
.field private static _k0:Ljava/lang/Integer;

.field private static _k1:Ljava/lang/Integer;

.field private static _k2:Ljava/lang/Integer;

.field private static _k3:Ljava/lang/Integer;

.field private static _k4:Ljava/lang/Integer;

.field private static _k5:Ljava/lang/Integer;

.field private static _k6:Ljava/lang/Integer;


# instance fields
.field private _dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

.field private _id:I

.field private _re:[Ljava/lang/Object;


# direct methods
.method static final constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_k0:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_k1:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_k2:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_k3:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0xfa

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_k4:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_k5:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_k6:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/NativeFunction;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_id:I

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/NativeFunction;-><init>()V

    iput p3, p0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_id:I

    packed-switch p3, :pswitch_data_0

    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_i1(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_i2(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_i3(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_i4(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_i5(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_i6(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_i7(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_i8(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_i9(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_i10(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_i11(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_a
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_i12(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_b
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_i13(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_c
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_i14(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_d
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_i15(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_e
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_i16(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_f
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_i17(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
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
        :pswitch_f
    .end packed-switch
.end method

.method private static _c_anonymous_1(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 6
    const-string v1, "path"

    const-string v2, "../"

    invoke-static {p3, v1, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 9
    const-string v1, "navList"

    invoke-static {p3, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 10
    const-string v1, "webView"

    invoke-static {p3, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 11
    const-string v1, "window"

    invoke-static {p3, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 12
    const-string v1, "scrollView"

    invoke-static {p3, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 13
    const-string v1, "self"

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "self"

    invoke-static {v1, p3, p1, v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    const-string v1, "addLogo"

    new-instance v2, Lcom/appycity/suckbangblow/js/windows_pageloader;

    const/4 v3, 0x2

    invoke-direct {v2, v0, p1, v3}, Lcom/appycity/suckbangblow/js/windows_pageloader;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v3, p0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    iput-object v3, v2, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    invoke-static {p3, v1, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 28
    const-string v1, "addHeader"

    new-instance v2, Lcom/appycity/suckbangblow/js/windows_pageloader;

    const/4 v3, 0x3

    invoke-direct {v2, v0, p1, v3}, Lcom/appycity/suckbangblow/js/windows_pageloader;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v3, p0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    iput-object v3, v2, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    invoke-static {p3, v1, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 56
    const-string v1, "fetchPageLoaderWebpage"

    new-instance v2, Lcom/appycity/suckbangblow/js/windows_pageloader;

    const/4 v3, 0x4

    invoke-direct {v2, v0, p1, v3}, Lcom/appycity/suckbangblow/js/windows_pageloader;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v3, p0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    iput-object v3, v2, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    invoke-static {p3, v1, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 94
    const-string v1, "getPageLoader"

    new-instance v2, Lcom/appycity/suckbangblow/js/windows_pageloader;

    const/4 v3, 0x7

    invoke-direct {v2, v0, p1, v3}, Lcom/appycity/suckbangblow/js/windows_pageloader;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v3, p0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    iput-object v3, v2, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    invoke-static {p3, v1, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 128
    const-string v1, "addWindowElements"

    new-instance v2, Lcom/appycity/suckbangblow/js/windows_pageloader;

    const/16 v3, 0xb

    invoke-direct {v2, v0, p1, v3}, Lcom/appycity/suckbangblow/js/windows_pageloader;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v3, p0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    iput-object v3, v2, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    invoke-static {p3, v1, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 142
    const-string v1, "addActIndEventListeners"

    new-instance v2, Lcom/appycity/suckbangblow/js/windows_pageloader;

    const/16 v3, 0xc

    invoke-direct {v2, v0, p1, v3}, Lcom/appycity/suckbangblow/js/windows_pageloader;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v3, p0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    iput-object v3, v2, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    invoke-static {p3, v1, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 170
    const-string v1, "_init"

    new-instance v2, Lcom/appycity/suckbangblow/js/windows_pageloader;

    const/16 v3, 0x11

    invoke-direct {v2, v0, p1, v3}, Lcom/appycity/suckbangblow/js/windows_pageloader;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v3, p0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    iput-object v3, v2, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    invoke-static {p3, v1, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 181
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

.method private static _c_anonymous_10(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 109
    const-string v1, "e"

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "source"

    invoke-static {v1, v2, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "evalJS"

    invoke-static {v1, v2, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const-string v3, "getEventHref();"

    invoke-static {v1, v2, v3, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    .line 111
    const-string v2, "CONFIG"

    invoke-static {p1, v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "debugPrint"

    invoke-static {v2, v3, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    const-string v4, "href:"

    invoke-static {v4, v1}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 112
    const-string v2, ""

    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    :goto_0
    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0

    :cond_0
    const-string v2, "Titanium"

    invoke-static {p1, v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Platform"

    invoke-static {v2, v3, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "openURL"

    invoke-static {v2, v3, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    invoke-static {v2, v3, v1, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static _c_anonymous_11(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    .line 128
    const-string p2, "scrollView"

    const-string p4, "Titanium"

    invoke-static {p1, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "UI"

    invoke-static {p4, v0, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "createScrollView"

    invoke-static {p4, v0, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "contentWidth"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "contentHeight"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "top"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "bottom"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "showVerticalScrollIndicator"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "showHorizontalScrollIndicator"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "layout"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "zIndex"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "auto"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "auto"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lorg/mozilla/javascript/optimizer/OptRuntime;->zeroObj:Ljava/lang/Double;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lorg/mozilla/javascript/optimizer/OptRuntime;->zeroObj:Ljava/lang/Double;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "vertical"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/appycity/suckbangblow/js/windows_pageloader;->_k5:Ljava/lang/Integer;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->newObjectLiteral([Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-static {p4, v0, v1, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p3, p2, p4, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 132
    const-string p2, "addLogo"

    invoke-static {p3, p2, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 133
    const-string p2, "addHeader"

    invoke-static {p3, p2, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 134
    const-string p2, "getPageLoader"

    invoke-static {p3, p2, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 135
    const-string p2, "window"

    invoke-static {p3, p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "add"

    invoke-static {p2, p4, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p4

    const-string v0, "scrollView"

    invoke-static {p3, v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p4, p3, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0

    .line 128
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static _c_anonymous_12(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v0, "addEventListener"

    const-string v0, "Titanium"

    const-string v0, "App"

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p0, v0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->createFunctionActivation(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    invoke-static {p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->enterActivationFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    .line 142
    :try_start_0
    const-string v0, "Titanium"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "App"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "addEventListener"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "pageloader-show-actind"

    new-instance v3, Lcom/appycity/suckbangblow/js/windows_pageloader;

    const/16 v4, 0xd

    invoke-direct {v3, v5, p1, v4}, Lcom/appycity/suckbangblow/js/windows_pageloader;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v4, p0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    iput-object v4, v3, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call2(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 149
    const-string v0, "Titanium"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "App"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "addEventListener"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "pageloader-hide-actind"

    new-instance v3, Lcom/appycity/suckbangblow/js/windows_pageloader;

    const/16 v4, 0xe

    invoke-direct {v3, v5, p1, v4}, Lcom/appycity/suckbangblow/js/windows_pageloader;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v4, p0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    iput-object v4, v3, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call2(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 153
    const-string v0, "Titanium"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "App"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "addEventListener"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "pageloader-loadurl"

    new-instance v3, Lcom/appycity/suckbangblow/js/windows_pageloader;

    const/16 v4, 0xf

    invoke-direct {v3, v5, p1, v4}, Lcom/appycity/suckbangblow/js/windows_pageloader;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v4, p0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    iput-object v4, v3, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call2(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 158
    const-string v0, "Titanium"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "App"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "addEventListener"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "pageloader-webview-adjust-height"

    new-instance v3, Lcom/appycity/suckbangblow/js/windows_pageloader;

    const/16 v4, 0x10

    invoke-direct {v3, v5, p1, v4}, Lcom/appycity/suckbangblow/js/windows_pageloader;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v4, p0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    iput-object v4, v3, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

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

.method private static _c_anonymous_13(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const-string v4, "debugPrint"

    const-string v8, "actInd"

    const-string v7, "message"

    const-string v6, "CONFIG"

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    array-length v0, p4

    if-ge v0, v1, :cond_0

    invoke-static {p4, v1}, Lorg/mozilla/javascript/ScriptRuntime;->padArguments([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 143
    const-string v1, "CONFIG"

    invoke-static {p1, v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "debugPrint"

    invoke-static {v1, v4, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const-string v3, "pageloader.eventlistener.special-show-actind.in"

    invoke-static {v1, v2, v3, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 145
    const-string v1, "CONFIG"

    invoke-static {p1, v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "debugPrint"

    invoke-static {v1, v4, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const-string v3, "pageloader.eventlistener.special-show-actiind.data.message = "

    const-string v4, "message"

    invoke-static {v0, v7, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 146
    const-string v1, "self"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "actInd"

    invoke-static {v1, v8, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "message"

    const-string v2, "message"

    invoke-static {v0, v7, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v7, v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 147
    const-string v0, "CONFIG"

    invoke-static {p1, v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "showActInd"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "window"

    invoke-static {p3, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "actInd"

    invoke-static {p3, v8, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call2(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0

    :cond_0
    move-object v0, p4

    goto :goto_0
.end method

.method private static _c_anonymous_14(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const-string v4, "self"

    const-string v3, "CONFIG"

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    array-length v0, p4

    if-ge v0, v1, :cond_0

    invoke-static {p4, v1}, Lorg/mozilla/javascript/ScriptRuntime;->padArguments([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 149
    const-string v0, "CONFIG"

    invoke-static {p1, v5, v3}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "debugPrint"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "pageloader.eventlistener.special-hide-actind.in"

    invoke-static {v0, v1, v2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 151
    const-string v0, "CONFIG"

    invoke-static {p1, v5, v3}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "hideActInd"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "self"

    invoke-static {p1, v5, v4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "window"

    invoke-static {v2, v3, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "self"

    invoke-static {p1, v5, v4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "actInd"

    invoke-static {v3, v4, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call2(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0

    :cond_0
    move-object v0, p4

    goto :goto_0
.end method

.method private static _c_anonymous_15(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const-string v7, "url"

    const-string v6, "debugPrint"

    const-string v5, "CONFIG"

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    array-length v1, p4

    if-ge v1, v2, :cond_0

    invoke-static {p4, v2}, Lorg/mozilla/javascript/ScriptRuntime;->padArguments([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 153
    const-string v2, "CONFIG"

    invoke-static {p1, v0, v5}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "debugPrint"

    invoke-static {v2, v6, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    const-string v4, "pageloader.eventlistener.pageloader-loadurl.in"

    invoke-static {v2, v3, v4, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 155
    const-string v2, "CONFIG"

    invoke-static {p1, v0, v5}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "debugPrint"

    invoke-static {v2, v6, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    const-string v4, "pageloader.eventlistener.pageloader-loadurl.data.url = "

    const-string v5, "url"

    invoke-static {v1, v7, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 156
    const-string v2, "Titanium"

    invoke-static {p1, v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Platform"

    invoke-static {v2, v3, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "openURL"

    invoke-static {v2, v3, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    const-string v4, "url"

    invoke-static {v1, v7, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v3, v1, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0

    :cond_0
    move-object v1, p4

    goto :goto_0
.end method

.method private static _c_anonymous_16(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const-string v7, "debugPrint"

    const-string v5, "CONFIG"

    const-string v6, "height"

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    array-length v1, p4

    if-ge v1, v2, :cond_0

    invoke-static {p4, v2}, Lorg/mozilla/javascript/ScriptRuntime;->padArguments([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 158
    const-string v2, "CONFIG"

    invoke-static {p1, v0, v5}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "debugPrint"

    invoke-static {v2, v7, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    const-string v4, "pageloader.addeventlisteners.webview-adjust-height.in"

    invoke-static {v2, v3, v4, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 160
    const-string v2, "CONFIG"

    invoke-static {p1, v0, v5}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "debugPrint"

    invoke-static {v2, v7, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    const-string v4, "pageloader.addeventlisteners.webview-adjust-height.height = "

    const-string v5, "height"

    invoke-static {v1, v6, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 161
    const-string v2, "self"

    invoke-static {p1, v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "webView"

    invoke-static {v2, v3, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "height"

    const-string v3, "height"

    invoke-static {v1, v6, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/appycity/suckbangblow/js/windows_pageloader;->_k6:Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v6, v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0

    :cond_0
    move-object v1, p4

    goto :goto_0
.end method

.method private static _c_anonymous_17(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v6, "actInd"

    const-string v4, "window"

    const-string v3, "CONFIG"

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    .line 170
    const-string v0, "window"

    const-string v0, "Titanium"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "UI"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "currentWindow"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v4, v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 172
    const-string v0, "CONFIG"

    invoke-static {p1, v5, v3}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "debugPrint"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "pageloader._init.layout.disabled"

    invoke-static {v0, v1, v2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 174
    const-string v0, "actInd"

    const-string v0, "CONFIG"

    invoke-static {p1, v5, v3}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "createActInd"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "window"

    invoke-static {p3, v4, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v6, v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 175
    const-string v0, "CONFIG"

    invoke-static {p1, v5, v3}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "showActInd"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "window"

    invoke-static {p3, v4, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "actInd"

    invoke-static {p3, v6, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call2(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 176
    const-string v0, "addActIndEventListeners"

    invoke-static {p3, v0, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 177
    const-string v0, "addWindowElements"

    invoke-static {p3, v0, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method private static _c_anonymous_2(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 19
    const-string v1, "CONFIG"

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "createLogoView"

    invoke-static {v1, v2, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const-string v3, "path"

    invoke-static {p3, v3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    .line 21
    const-string v2, "scrollView"

    invoke-static {p3, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "add"

    invoke-static {v2, v3, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    invoke-static {v2, v3, v1, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method private static _c_anonymous_3(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 28
    const-string p2, "Titanium"

    invoke-static {p1, p0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "UI"

    invoke-static {p2, p4, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "createView"

    invoke-static {p2, p4, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "left"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "right"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "height"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "width"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "backgroundColor"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lorg/mozilla/javascript/optimizer/OptRuntime;->zeroObj:Ljava/lang/Double;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lorg/mozilla/javascript/optimizer/OptRuntime;->zeroObj:Ljava/lang/Double;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/appycity/suckbangblow/js/windows_pageloader;->_k0:Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "auto"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "#000"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->newObjectLiteral([Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p2, p4, v0, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    .line 32
    const-string p4, "CONFIG"

    invoke-static {p1, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "isIPhone"

    invoke-static {p4, v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectPropNoWarn(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    .line 34
    :goto_0
    const-string p4, "window"

    invoke-static {p3, p4, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "hImage"

    invoke-static {p4, v0, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, ""

    invoke-static {p4, v0}, Lorg/mozilla/javascript/ScriptRuntime;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result p4

    const-string v0, "window"

    invoke-static {p3, v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "hImage"

    invoke-static {v0, v1, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32(Ljava/lang/Object;)I

    move-result v0

    and-int/2addr p4, v0

    int-to-double v0, p4

    invoke-static {v0, v1}, Lorg/mozilla/javascript/optimizer/OptRuntime;->wrapDouble(D)Ljava/lang/Double;

    move-result-object p4

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    .line 41
    const-string p4, "add"

    invoke-static {p2, p4, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const-string v1, "Titanium"

    invoke-static {p1, p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "UI"

    invoke-static {v1, v2, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "createLabel"

    invoke-static {v1, v2, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "text"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "left"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "width"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "textAlign"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "height"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "className"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "color"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "window"

    invoke-static {p3, v6, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "hText"

    invoke-static {v6, v7, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/appycity/suckbangblow/js/windows_pageloader;->_k3:Ljava/lang/Integer;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "auto"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "left"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "auto"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "headerlabel"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "#FFFFFF"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-array v5, v5, [I

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->newObjectLiteral([Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    invoke-static {v1, v2, v3, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p4, v0, v1, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 49
    :goto_3
    const-string p4, "scrollView"

    invoke-static {p3, p4, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p3

    const-string p4, "add"

    invoke-static {p3, p4, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p3

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p4

    invoke-static {p3, p4, p2, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0

    .line 32
    :cond_1
    const-string p4, "width"

    const-string v0, "CONFIG"

    invoke-static {p1, p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "iphoneWH"

    invoke-static {v0, v1, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "width"

    invoke-static {v0, v1, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p4, v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 34
    :cond_2
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_3
    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_2

    :cond_4
    const-string p4, "add"

    invoke-static {p2, p4, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const-string v1, "Titanium"

    invoke-static {p1, p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "UI"

    invoke-static {v1, v2, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "createImageView"

    invoke-static {v1, v2, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "url"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "left"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "height"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "width"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "window"

    invoke-static {p3, v6, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "hImage"

    invoke-static {v6, v7, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/appycity/suckbangblow/js/windows_pageloader;->_k1:Ljava/lang/Integer;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Lcom/appycity/suckbangblow/js/windows_pageloader;->_k0:Ljava/lang/Integer;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Lcom/appycity/suckbangblow/js/windows_pageloader;->_k0:Ljava/lang/Integer;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->newObjectLiteral([Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    invoke-static {v1, v2, v3, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p4, v0, v1, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 38
    const-string p4, "add"

    invoke-static {p2, p4, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const-string v1, "Titanium"

    invoke-static {p1, p0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "UI"

    invoke-static {v1, v2, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "createLabel"

    invoke-static {v1, v2, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "text"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "left"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "width"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "textAlign"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "height"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "className"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "color"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "window"

    invoke-static {p3, v6, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "hText"

    invoke-static {v6, v7, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/appycity/suckbangblow/js/windows_pageloader;->_k2:Ljava/lang/Integer;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "auto"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "left"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "auto"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "headerlabel"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "#FFFFFF"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    new-array v5, v5, [I

    fill-array-data v5, :array_3

    invoke-static {v3, v4, v5, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->newObjectLiteral([Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    invoke-static {v1, v2, v3, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p4, v0, v1, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 28
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 41
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 34
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 38
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static _c_anonymous_4(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v0, "pageloaderurl"

    const-string v0, "window"

    const-string v0, "debugPrint"

    const-string v0, "CONFIG"

    const-string v0, "xhr"

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p0, v0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->createFunctionActivation(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    invoke-static {p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->enterActivationFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    :try_start_0
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    .line 56
    const-string v0, "CONFIG"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "showActInd"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "window"

    invoke-static {p3, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "actInd"

    invoke-static {p3, v3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call2(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 59
    const-string v0, "CONFIG"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "debugPrint"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "pageloader.fetchspecialwebpage.in"

    invoke-static {v0, v1, v2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 60
    const-string v0, "xhr"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const-string v1, "Titanium"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Network"

    invoke-static {v1, v2, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "createHTTPClient"

    invoke-static {v1, v2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "xhr"

    invoke-static {v0, v1, p1, v5, v2}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    const-string v0, "xhr"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onload"

    new-instance v2, Lcom/appycity/suckbangblow/js/windows_pageloader;

    const/4 v3, 0x5

    invoke-direct {v2, v5, p1, v3}, Lcom/appycity/suckbangblow/js/windows_pageloader;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v3, p0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    iput-object v3, v2, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    invoke-static {v0, v1, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 76
    const-string v0, "xhr"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "error"

    new-instance v2, Lcom/appycity/suckbangblow/js/windows_pageloader;

    const/4 v3, 0x6

    invoke-direct {v2, v5, p1, v3}, Lcom/appycity/suckbangblow/js/windows_pageloader;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v3, p0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    iput-object v3, v2, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    invoke-static {v0, v1, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 82
    const-string v0, "CONFIG"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "debugPrint"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "window"

    invoke-static {p3, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "pageloaderurl"

    invoke-static {v2, v3, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 83
    const-string v0, "CONFIG"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "debugPrint"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "pageloader.fetchspecialwebpage.xhr.open"

    invoke-static {v0, v1, v2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 84
    const-string v0, "xhr"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "open"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "GET"

    const-string v3, "window"

    invoke-static {p3, v3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "pageloaderurl"

    invoke-static {v3, v4, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call2(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 85
    const-string v0, "CONFIG"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "debugPrint"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "pageloader.fetchspecialwebpage.xhr.send"

    invoke-static {v0, v1, v2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 86
    const-string v0, "xhr"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "send"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

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

.method private static _c_anonymous_5(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    .line 64
    const-string p0, "responseText"

    invoke-static {p3, p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    .line 66
    :cond_0
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p4, "Sorry, unable to load page. Please check your network connection and try again."

    aput-object p4, p0, p2

    const-string p2, "alert"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 68
    const-string p0, "self"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "window"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "close"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 70
    :goto_0
    const-string p0, "CONFIG"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "debugPrint"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    const-string p4, "responseText"

    invoke-static {p3, p4, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p0, p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 71
    const-string p0, "CONFIG"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "debugPrint"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    const-string p4, "pageloader.xhr.onload.in"

    invoke-static {p0, p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 72
    const-string p0, "CONFIG"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "debugPrint"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    const-string p4, "ti.events.pageloader-webview-load.fire"

    invoke-static {p0, p2, p4, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 73
    const-string p0, "Titanium"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "App"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "fireEvent"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "pageloader-webview-load"

    const/4 p0, 0x5

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p4, "topimage"

    aput-object p4, p0, p2

    const/4 p2, 0x1

    const-string p4, "isiphone"

    aput-object p4, p0, p2

    const/4 p2, 0x2

    const-string p4, "html"

    aput-object p4, p0, p2

    const/4 p2, 0x3

    const-string p4, "scalesPageToFit"

    aput-object p4, p0, p2

    const/4 p2, 0x4

    const-string p4, "jqueryid"

    aput-object p4, p0, p2

    const/4 p2, 0x5

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p4, 0x0

    const-string v3, "self"

    invoke-static {p1, v5, v3}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "window"

    invoke-static {v3, v4, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "topimage"

    invoke-static {v3, v4, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p2, p4

    const/4 p4, 0x1

    const-string v3, "CONFIG"

    invoke-static {p1, v5, v3}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "isIPhone"

    invoke-static {v3, v4, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p2, p4

    const/4 p4, 0x2

    const-string v3, "responseText"

    invoke-static {p3, v3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p3

    aput-object p3, p2, p4

    const/4 p3, 0x3

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p4, p2, p3

    const/4 p3, 0x4

    const-string p4, "self"

    invoke-static {p1, v5, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v3, "window"

    invoke-static {p4, v3, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    const-string v3, "contentId"

    invoke-static {p4, v3, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    aput-object p4, p2, p3

    const/4 p3, 0x5

    new-array p3, p3, [I

    fill-array-data p3, :array_0

    invoke-static {p0, p2, p3, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->newObjectLiteral([Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call2(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 74
    const-string p0, "CONFIG"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "hideActInd"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string p0, "self"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "window"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    const-string p0, "self"

    invoke-static {p1, v5, p0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "actInd"

    invoke-static {p0, p2, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call2(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0

    .line 64
    :cond_1
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq p0, p2, :cond_0

    goto/16 :goto_0

    .line 73
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static _c_anonymous_6(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v6, "self"

    const-string v3, "debugPrint"

    const-string v4, "CONFIG"

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    .line 76
    const-string v0, "CONFIG"

    invoke-static {p1, v5, v4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "debugPrint"

    invoke-static {v0, v3, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "pageloader.xhr.error.in"

    invoke-static {v0, v1, v2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Sorry, unable to load pageloader. Please try again later."

    aput-object v2, v0, v1

    const-string v1, "alert"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 79
    const-string v0, "CONFIG"

    invoke-static {p1, v5, v4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "debugPrint"

    invoke-static {v0, v3, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "error response, http status code "

    const-string v3, "status"

    invoke-static {p3, v3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 80
    const-string v0, "CONFIG"

    invoke-static {p1, v5, v4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "hideActInd"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "self"

    invoke-static {p1, v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "window"

    invoke-static {v2, v3, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "self"

    invoke-static {p1, v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "actInd"

    invoke-static {v3, v4, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call2(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method private static _c_anonymous_7(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v0, "CONFIG"

    const-string v0, "webView"

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p0, v0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->createFunctionActivation(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    invoke-static {p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->enterActivationFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    .line 94
    :try_start_0
    const-string v0, "CONFIG"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "debugPrint"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "pageloader.getpageloader.webview.create"

    invoke-static {v0, v1, v2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 96
    const-string v0, "webView"

    const-string v1, "Titanium"

    invoke-static {p1, v5, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "UI"

    invoke-static {v1, v2, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "createWebView"

    invoke-static {v1, v2, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "url"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    const-string v6, "height"

    aput-object v6, v3, v4

    const/4 v4, 0x2

    const-string v6, "left"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    const-string v6, "right"

    aput-object v6, v3, v4

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "../webviews/pageloader.html"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "auto"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    sget-object v7, Lorg/mozilla/javascript/optimizer/OptRuntime;->zeroObj:Ljava/lang/Double;

    aput-object v7, v4, v6

    const/4 v6, 0x3

    sget-object v7, Lorg/mozilla/javascript/optimizer/OptRuntime;->zeroObj:Ljava/lang/Double;

    aput-object v7, v4, v6

    const/4 v6, 0x4

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    invoke-static {v3, v4, v6, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->newObjectLiteral([Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    invoke-static {v1, v2, v3, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p3, v0, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 100
    const-string v0, "webView"

    invoke-static {p3, v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "addEventListener"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "load"

    new-instance v3, Lcom/appycity/suckbangblow/js/windows_pageloader;

    const/16 v4, 0x8

    invoke-direct {v3, v5, p1, v4}, Lcom/appycity/suckbangblow/js/windows_pageloader;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v4, p0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    iput-object v4, v3, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call2(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 106
    const-string v0, "CONFIG"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "isIPhone"

    invoke-static {v0, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectPropNoWarn(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "webView"

    invoke-static {p3, v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "addEventListener"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "click"

    new-instance v3, Lcom/appycity/suckbangblow/js/windows_pageloader;

    const/16 v4, 0x9

    invoke-direct {v3, v5, p1, v4}, Lcom/appycity/suckbangblow/js/windows_pageloader;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v4, p0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    iput-object v4, v3, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call2(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 120
    :cond_0
    const-string v0, "CONFIG"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "debugPrint"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "pageloader.getpageloader.webview.load"

    invoke-static {v0, v1, v2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 121
    const-string v0, "scrollView"

    invoke-static {p3, v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "add"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "webView"

    invoke-static {p3, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->exitActivationFunction(Lorg/mozilla/javascript/Context;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->exitActivationFunction(Lorg/mozilla/javascript/Context;)V

    throw v0

    .line 96
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static _c_anonymous_8(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const-string v3, "CONFIG"

    const-string v4, "self"

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    array-length v0, p4

    if-ge v0, v1, :cond_0

    invoke-static {p4, v1}, Lorg/mozilla/javascript/ScriptRuntime;->padArguments([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 100
    const-string v0, "CONFIG"

    invoke-static {p1, v5, v3}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "debugPrint"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "pageloader.webview.eventlistener.load.in"

    invoke-static {v0, v1, v2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 102
    const-string v0, "self"

    invoke-static {p1, v5, v4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "fetchPageLoaderWebpage"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 103
    const-string v0, "CONFIG"

    invoke-static {p1, v5, v3}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "hideActInd"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "self"

    invoke-static {p1, v5, v4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "window"

    invoke-static {v2, v3, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "self"

    invoke-static {p1, v5, v4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "actInd"

    invoke-static {v3, v4, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call2(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0

    :cond_0
    move-object v0, p4

    goto :goto_0
.end method

.method private static _c_anonymous_9(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v0, "lU"

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p0, v0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->createFunctionActivation(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->enterActivationFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    .line 107
    :try_start_0
    const-string v1, "lU"

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    new-instance v2, Lcom/appycity/suckbangblow/js/windows_pageloader;

    const/16 v3, 0xa

    invoke-direct {v2, v0, p1, v3}, Lcom/appycity/suckbangblow/js/windows_pageloader;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v3, p0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    iput-object v3, v2, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    const-string v3, "lU"

    invoke-static {v1, v2, p1, v0, v3}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "lU"

    invoke-static {p1, v0, v3}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/appycity/suckbangblow/js/windows_pageloader;->_k4:Ljava/lang/Integer;

    aput-object v3, v1, v2

    const-string v2, "setTimeout"

    invoke-static {v1, v2, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

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

.method private static _c_script_0(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v5, "pageLoader"

    const-string v4, "PageLoader"

    const/4 v0, 0x0

    invoke-static {p0, p3, p1, p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->initScript(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 186
    const-string v0, "Titanium"

    invoke-static {p1, p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "include"

    invoke-static {v0, v1, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "../config.js"

    invoke-static {v0, v1, v2, p1, p2}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    const-string v1, "PageLoader"

    invoke-static {p1, p2, v4}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    new-instance v2, Lcom/appycity/suckbangblow/js/windows_pageloader;

    const/4 v3, 0x1

    invoke-direct {v2, p2, p1, v3}, Lcom/appycity/suckbangblow/js/windows_pageloader;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iput-object p0, v2, Lcom/appycity/suckbangblow/js/windows_pageloader;->_dcp:Lcom/appycity/suckbangblow/js/windows_pageloader;

    const-string v3, "PageLoader"

    invoke-static {v1, v2, p1, p2, v4}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    const-string v1, "pageLoader"

    invoke-static {p1, p2, v5}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "PageLoader"

    invoke-static {p1, p2, v4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-static {v2, p1, p2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->newObject(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const-string v3, "pageLoader"

    invoke-static {v1, v2, p1, p2, v5}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method private final _i1(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/NativeFunction;->initScriptFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method private final _i10(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/NativeFunction;->initScriptFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method private final _i11(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/NativeFunction;->initScriptFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method private final _i12(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/NativeFunction;->initScriptFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method private final _i13(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/NativeFunction;->initScriptFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method private final _i14(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/NativeFunction;->initScriptFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method private final _i15(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/NativeFunction;->initScriptFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method private final _i16(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/NativeFunction;->initScriptFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method private final _i17(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
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

.method private final _i8(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/NativeFunction;->initScriptFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method private final _i9(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/NativeFunction;->initScriptFunction(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/appycity/suckbangblow/js/windows_pageloader;

    invoke-direct {v0}, Lcom/appycity/suckbangblow/js/windows_pageloader;-><init>()V

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
    iget v0, p0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_id:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_c_script_0(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_c_anonymous_1(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_c_anonymous_2(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_c_anonymous_3(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_c_anonymous_4(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_c_anonymous_5(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_c_anonymous_6(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_c_anonymous_7(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_c_anonymous_8(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_c_anonymous_9(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_c_anonymous_10(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_c_anonymous_11(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_c_anonymous_12(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_c
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_c_anonymous_13(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_d
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_c_anonymous_14(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_e
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_c_anonymous_15(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_f
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_c_anonymous_16(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_10
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_pageloader;->_c_anonymous_17(Lcom/appycity/suckbangblow/js/windows_pageloader;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

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
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public final exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p2, v0}, Lcom/appycity/suckbangblow/js/windows_pageloader;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedSource()Ljava/lang/String;
    .locals 3

    const-string v0, "\u0088\'\u0008Titaniuml\'\u0007includeW)\u000c../config.jsXR\u0001z\'\nPageLoaderZm\u0002WXU\u0001+l\'\u0004pathZ)\u0003../R\u0001+l\'\u0007navListR\u0001+l\'\u0007webViewR\u0001+l\'\u0006windowR\u0001+l\'\nscrollViewR\u0001z\'\u0004selfZ+R\u0001+l\'\u0007addLogoZm\u0002WXU\u0001z\'\u0008logoviewZ\'\u0006CONFIGl\'\u000ecreateLogoViewW+l\'\u0004pathXR\u0001+l\'\nscrollViewl\'\u0003addW\'\u0008logoviewXR\u0001V\u00a3R\u0001+l\'\taddHeaderZm\u0002WXU\u0001z\'\u0004viewZ\'\u0008Titaniuml\'\u0002UIl\'\ncreateViewWU\'\u0004leftB(S\u0000Y\'\u0005rightB(S\u0000Y\'\u0006heightB(S2Y\'\u0005widthB)\u0004autoY\'\u000fbackgroundColorB)\u0004#000VXR\u0001pW\'\u0006CONFIGl\'\u0008isIPhoneXU\u0001\'\u0004viewl\'\u0005widthZ\'\u0006CONFIGl\'\u0008iphoneWHl\'\u0005widthR\u0001V\u0001pW+l\'\u0006windowl\'\u0006hImage\r)\u0000\u000b+l\'\u0006windowl\'\u0006hImage\r*XU\u0001\'\u0004viewl\'\u0003addW\'\u0008Titaniuml\'\u0002UIl\'\u000fcreateImageViewWU\'\u0003urlB+l\'\u0006windowl\'\u0006hImageY\'\u0004leftB(S\u0004Y\'\u0006heightB(S2Y\'\u0005widthB(S2VXXR\u0001\'\u0004viewl\'\u0003addW\'\u0008Titaniuml\'\u0002UIl\'\u000bcreateLabelWU\'\u0004textB+l\'\u0006windowl\'\u0005hTextY\'\u0004leftB(S<Y\'\u0005widthB)\u0004autoY\'\ttextAlignB)\u0004leftY\'\u0006heightB)\u0004autoY\'\tclassNameB)\u000bheaderlabelY\'\u0005colorB)\u0007#FFFFFFVXXR\u0001VqU\u0001\'\u0004viewl\'\u0003addW\'\u0008Titaniuml\'\u0002UIl\'\u000bcreateLabelWU\'\u0004textB+l\'\u0006windowl\'\u0005hTextY\'\u0004leftB(S\u0014Y\'\u0005widthB)\u0004autoY\'\ttextAlignB)\u0004leftY\'\u0006heightB)\u0004autoY\'\tclassNameB)\u000bheaderlabelY\'\u0005colorB)\u0007#FFFFFFVXXR\u0001V\u0001+l\'\nscrollViewl\'\u0003addW\'\u0004viewXR\u0001V\u00a3R\u0001+l\'\u0016fetchPageLoaderWebpageZm\u0002WXU\u0001\'\u0006CONFIGl\'\nshowActIndW+l\'\u0006windowY+l\'\u0006actIndXR\u0001\'\u0006CONFIGl\'\ndebugPrintW)!pageloader.fetchspecialwebpage.inXR\u0001z\'\u0003xhrZ\'\u0008Titaniuml\'\u0007Networkl\'\u0010createHTTPClientWXR\u0001\'\u0003xhrl\'\u0006onloadZm\u0002WXU\u0001pW+l\'\u000cresponseText\u000c*XU\u0001\'\u0005alertW)OSorry, unable to load page. Please check your network connection and try again.XR\u0001\'\u0004selfl\'\u0006windowl\'\u0005closeWXR\u0001V\u0001\'\u0006CONFIGl\'\ndebugPrintW+l\'\u000cresponseTextXR\u0001\'\u0006CONFIGl\'\ndebugPrintW)\u0018pageloader.xhr.onload.inXR\u0001\'\u0006CONFIGl\'\ndebugPrintW)&ti.events.pageloader-webview-load.fireXR\u0001\'\u0008Titaniuml\'\u0003Appl\'\tfireEventW)\u0017pageloader-webview-loadYU\'\u0008topimageB\'\u0004selfl\'\u0006windowl\'\u0008topimageY\'\u0008isiphoneB\'\u0006CONFIGl\'\u0008isIPhoneY\'\u0004htmlB+l\'\u000cresponseTextY\'\u000fscalesPageToFitB-Y\'\u0008jqueryidB\'\u0004selfl\'\u0006windowl\'\tcontentIdVXR\u0001\'\u0006CONFIGl\'\nhideActIndW\'\u0004selfl\'\u0006windowY\'\u0004selfl\'\u0006actIndXR\u0001V\u00a3R\u0001\'\u0003xhrl\'\u0005errorZm\u0002WXU\u0001\'\u0006CONFIGl\'\ndebugPrintW)\u0017pageloader.xhr.error.inXR\u0001\'\u0005alertW)9Sorry, unable to load pageloader. Please try again later.XR\u0001\'\u0006CONFIGl\'\ndebugPrintW)!error response, http status code \u0015+l\'\u0006statusXR\u0001\'\u0006CONFIGl\'\nhideActIndW\'\u0004selfl\'\u0006windowY\'\u0004selfl\'\u0006actIndXR\u0001V\u00a3R\u0001\'\u0006CONFIGl\'\ndebugPrintW+l\'\u0006windowl\'\rpageloaderurlXR\u0001\'\u0006CONFIGl\'\ndebugPrintW)\'pageloader.fetchspecialwebpage.xhr.openXR\u0001\'\u0003xhrl\'\u0004openW)\u0003GETY+l\'\u0006windowl\'\rpageloaderurlXR\u0001\'\u0006CONFIGl\'\ndebugPrintW)\'pageloader.fetchspecialwebpage.xhr.sendXR\u0001\'\u0003xhrl\'\u0004sendWXR\u0001V\u00a3R\u0001+l\'\rgetPageLoaderZm\u0002WXU\u0001\'\u0006CONFIGl\'\ndebugPrintW)\'pageloader.getpageloader.webview.createXR\u0001+l\'\u0007webViewZ\'\u0008Titaniuml\'\u0002UIl\'\rcreateWebViewWU\'\u0003urlB)\u001b../webviews/pageloader.htmlY\'\u0006heightB)\u0004autoY\'\u0004leftB(S\u0000Y\'\u0005rightB(S\u0000VXR\u0001+l\'\u0007webViewl\'\u0010addEventListenerW)\u0004loadYm\u0002W\'\u0004dataXU\u0001\'\u0006CONFIGl\'\ndebugPrintW)(pageloader.webview.eventlistener.load.inXR\u0001\'\u0004selfl\'\u0016fetchPageLoaderWebpageWXR\u0001\'\u0006CONFIGl\'\nhideActIndW\'\u0004selfl\'\u0006windowY\'\u0004selfl\'\u0006actIndXR\u0001V\u00a3XR\u0001pW\u001a\'\u0006CONFIGl\'\u0008isIPhoneXU\u0001+l\'\u0007webViewl\'\u0010addEventListenerW)\u0005clickYm\u0002W\'\u0001eXU\u0001z\'\u0002lUZm\u0002WXU\u0001z\'\u0004hrefZ\'\u0001el\'\u0006sourcel\'\u0006evalJSW)\u000fgetEventHref();XR\u0001\'\u0006CONFIGl\'\ndebugPrintW)\u0005href:\u0015\'\u0004hrefXR\u0001pW\'\u0004href\r)\u0000XU\u0001\'\u0008Titaniuml\'\u0008Platforml\'\u0007openURLW\'\u0004hrefXR\u0001V\u0001V\u00a3R\u0001\'\nsetTimeoutW\'\u0002lUY(S\u00faXR\u0001V\u00a3XR\u0001V\u0001\'\u0006CONFIGl\'\ndebugPrintW)%pageloader.getpageloader.webview.loadXR\u0001+l\'\nscrollViewl\'\u0003addW+l\'\u0007webViewXR\u0001V\u00a3R\u0001+l\'\u0011addWindowElementsZm\u0002WXU\u0001+l\'\nscrollViewZ\'\u0008Titaniuml\'\u0002UIl\'\u0010createScrollViewWU\'\u000ccontentWidthB)\u0004autoY\'\rcontentHeightB)\u0004autoY\'\u0003topB(S\u0000Y\'\u0006bottomB(S\u0000Y\'\u001bshowVerticalScrollIndicatorB-Y\'\u001dshowHorizontalScrollIndicatorB-Y\'\u0006layoutB)\u0008verticalY\'\u0006zIndexB(S\u0002VXR\u0001+l\'\u0007addLogoWXR\u0001+l\'\taddHeaderWXR\u0001+l\'\rgetPageLoaderWXR\u0001+l\'\u0006windowl\'\u0003addW+l\'\nscrollViewXR\u0001V\u00a3R\u0001+l\'\u0017addActIndEventListenersZm\u0002WXU\u0001\'\u0008Titaniuml\'\u0003Appl\'\u0010addEventListenerW)\u0016pageloader-show-actindYm\u0002W\'\u0004dataXU\u0001\'\u0006CONFIGl\'\ndebugPrintW)/pageloader.eventlistener.special-show-actind.inXR\u0001\'\u0006CONFIGl\'\ndebugPrintW)=pageloader.eventlistener.special-show-actiind.data.message = \u0015\'\u0004datal\'\u0007messageXR\u0001\'\u0004selfl\'\u0006actIndl\'\u0007messageZ\'\u0004datal\'\u0007messageR\u0001\'\u0006CONFIGl\'\nshowActIndW+l\'\u0006windowY+l\'\u0006actIndXR\u0001V\u00a3XR\u0001\'\u0008Titaniuml\'\u0003Appl\'\u0010addEventListenerW)\u0016pageloader-hide-actindYm\u0002W\'\u0004dataXU\u0001\'\u0006CONFIGl\'\ndebugPrintW)/pageloader.eventlistener.special-hide-actind.inXR\u0001\'\u0006CONFIGl\'\nhideActIndW\'\u0004selfl\'\u0006windowY\'\u0004selfl\'\u0006actIndXR\u0001V\u00a3XR\u0001\'\u0008Titaniuml\'\u0003Appl\'\u0010addEventListenerW)\u0012pageloader-loadurlYm\u0002W\'\u0004dataXU\u0001\'\u0006CONFIGl\'\ndebugPrintW).pageloader.eventlistener.pageloader-loadurl.inXR\u0001\'\u0006CONFIGl\'\ndebugPrintW)7pageloader.eventlistener.pageloader-loadurl.data.url = \u0015\'\u0004datal\'\u0003urlXR\u0001\'\u0008Titaniuml\'\u0008Platforml\'\u0007openURLW\'\u0004datal\'\u0003urlXR\u0001V\u00a3XR\u0001\'\u0008Titaniuml\'\u0003Appl\'\u0010addEventListenerW) pageloader-webview-adjust-heightYm\u0002W\'\u0004dataXU\u0001\'\u0006CONFIGl\'\ndebugPrintW)5pageloader.addeventlisteners.webview-adjust-height.inXR\u0001\'\u0006CONFIGl\'\ndebugPrintW)<pageloader.addeventlisteners.webview-adjust-height.height = \u0015\'\u0004datal\'\u0006heightXR\u0001\'\u0004selfl\'\u0007webViewl\'\u0006heightZ\'\u0004datal\'\u0006height\u0015(S\u01f4R\u0001V\u00a3XR\u0001V\u00a3R\u0001+l\'\u0005_initZm\u0002WXU\u0001+l\'\u0006windowZ\'\u0008Titaniuml\'\u0002UIl\'\rcurrentWindowR\u0001\'\u0006CONFIGl\'\ndebugPrintW) pageloader._init.layout.disabledXR\u0001+l\'\u0006actIndZ\'\u0006CONFIGl\'\u000ccreateActIndW+l\'\u0006windowXR\u0001\'\u0006CONFIGl\'\nshowActIndW+l\'\u0006windowY+l\'\u0006actIndXR\u0001+l\'\u0017addActIndEventListenersWXR\u0001+l\'\u0011addWindowElementsWXR\u0001V\u00a3R\u0001+l\'\u0005_initWXR\u0001V\u00a3R\u0001z\'\npageLoaderZ\u001e\'\nPageLoaderWXR\u0001"

    iget v1, p0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_id:I

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    const/16 v2, 0x136d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const/16 v1, 0x35

    const/16 v2, 0x134b

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x98

    const/16 v2, 0xf2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x103

    const/16 v2, 0x3f2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x410

    const/16 v2, 0x90a

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const/16 v1, 0x4c1

    const/16 v2, 0x700

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const/16 v1, 0x711

    const/16 v2, 0x80f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    const/16 v1, 0x91f

    const/16 v2, 0xc25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    const/16 v1, 0xa08

    const/16 v2, 0xab3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    const/16 v1, 0xaf7

    const/16 v2, 0xbbb

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    const/16 v1, 0xb06

    const/16 v2, 0xb9f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    const/16 v1, 0xc3e

    const/16 v2, 0xd79

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    const/16 v1, 0xd98

    const/16 v2, 0x1229

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_c
    const/16 v1, 0xddb

    const/16 v2, 0xef5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_d
    const/16 v1, 0xf36

    const/16 v2, 0xfc5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_e
    const/16 v1, 0x1002

    const/16 v2, 0x10e6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_f
    const/16 v1, 0x1131

    const/16 v2, 0x1224

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_10
    const/16 v1, 0x1236

    const/16 v2, 0x133a

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

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
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 2

    const-string v1, ""

    iget v0, p0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_id:I

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

    :pswitch_5
    const-string v0, ""

    move-object v0, v1

    goto :goto_0

    :pswitch_6
    const-string v0, ""

    move-object v0, v1

    goto :goto_0

    :pswitch_7
    const-string v0, ""

    move-object v0, v1

    goto :goto_0

    :pswitch_8
    const-string v0, ""

    move-object v0, v1

    goto :goto_0

    :pswitch_9
    const-string v0, ""

    move-object v0, v1

    goto :goto_0

    :pswitch_a
    const-string v0, ""

    move-object v0, v1

    goto :goto_0

    :pswitch_b
    const-string v0, ""

    move-object v0, v1

    goto :goto_0

    :pswitch_c
    const-string v0, ""

    move-object v0, v1

    goto :goto_0

    :pswitch_d
    const-string v0, ""

    move-object v0, v1

    goto :goto_0

    :pswitch_e
    const-string v0, ""

    move-object v0, v1

    goto :goto_0

    :pswitch_f
    const-string v0, ""

    move-object v0, v1

    goto :goto_0

    :pswitch_10
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
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public getLanguageVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParamAndVarCount()I
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_id:I

    packed-switch v0, :pswitch_data_0

    move v0, v3

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
    move v0, v2

    goto :goto_0

    :pswitch_5
    move v0, v2

    goto :goto_0

    :pswitch_6
    move v0, v2

    goto :goto_0

    :pswitch_7
    move v0, v1

    goto :goto_0

    :pswitch_8
    move v0, v3

    goto :goto_0

    :pswitch_9
    move v0, v1

    goto :goto_0

    :pswitch_a
    move v0, v2

    goto :goto_0

    :pswitch_b
    move v0, v2

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
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public getParamCount()I
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_id:I

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
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_5
    move v0, v1

    goto :goto_0

    :pswitch_6
    move v0, v1

    goto :goto_0

    :pswitch_7
    move v0, v2

    goto :goto_0

    :pswitch_8
    move v0, v2

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
    move v0, v2

    goto :goto_0

    :pswitch_d
    move v0, v2

    goto :goto_0

    :pswitch_e
    move v0, v2

    goto :goto_0

    :pswitch_f
    move v0, v2

    goto :goto_0

    :pswitch_10
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
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public getParamOrVarConst(I)Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_id:I

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
    packed-switch p1, :pswitch_data_2

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
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method

.method public getParamOrVarName(I)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    const-string v2, "data"

    iget v0, p0, Lcom/appycity/suckbangblow/js/windows_pageloader;->_id:I

    packed-switch v0, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const-string v0, "PageLoader"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "pageLoader"

    goto :goto_0

    :pswitch_1
    const-string v0, "self"

    goto :goto_0

    :pswitch_2
    const-string v0, "logoview"

    goto :goto_0

    :pswitch_3
    const-string v0, "view"

    goto :goto_0

    :pswitch_4
    const-string v0, "xhr"

    goto :goto_0

    :pswitch_5
    move-object v0, v1

    goto :goto_0

    :pswitch_6
    move-object v0, v1

    goto :goto_0

    :pswitch_7
    move-object v0, v1

    goto :goto_0

    :pswitch_8
    const-string v0, "data"

    move-object v0, v2

    goto :goto_0

    :pswitch_9
    packed-switch p1, :pswitch_data_2

    const-string v0, "e"

    goto :goto_0

    :pswitch_a
    const-string v0, "lU"

    goto :goto_0

    :pswitch_b
    const-string v0, "href"

    goto :goto_0

    :pswitch_c
    move-object v0, v1

    goto :goto_0

    :pswitch_d
    move-object v0, v1

    goto :goto_0

    :pswitch_e
    const-string v0, "data"

    move-object v0, v2

    goto :goto_0

    :pswitch_f
    const-string v0, "data"

    move-object v0, v2

    goto :goto_0

    :pswitch_10
    const-string v0, "data"

    move-object v0, v2

    goto :goto_0

    :pswitch_11
    const-string v0, "data"

    move-object v0, v2

    goto :goto_0

    :pswitch_12
    move-object v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method
