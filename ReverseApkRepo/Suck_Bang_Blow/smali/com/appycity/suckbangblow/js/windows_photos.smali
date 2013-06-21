.class public Lcom/appycity/suckbangblow/js/windows_photos;
.super Lorg/mozilla/javascript/NativeFunction;

# interfaces
.implements Lorg/mozilla/javascript/Script;


# instance fields
.field private _dcp:Lcom/appycity/suckbangblow/js/windows_photos;

.field private _id:I

.field private _re:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/javascript/NativeFunction;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/appycity/suckbangblow/js/windows_photos;->_id:I

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/NativeFunction;-><init>()V

    iput p3, p0, Lcom/appycity/suckbangblow/js/windows_photos;->_id:I

    packed-switch p3, :pswitch_data_0

    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_photos;->_i1(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_photos;->_i2(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_photos;->_i3(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_photos;->_i4(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_photos;->_i5(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_photos;->_i6(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_photos;->_i7(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_photos;->_i8(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0, p2, p1}, Lcom/appycity/suckbangblow/js/windows_photos;->_i9(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V

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
    .end packed-switch
.end method

.method private static _c_anonymous_1(Lcom/appycity/suckbangblow/js/windows_photos;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
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
    const-string v2, "path"

    const-string v3, "../"

    invoke-static {p3, v2, v3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 9
    const-string v2, "window"

    invoke-static {p3, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 10
    const-string v2, "photoURLs"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->newArrayLiteral([Ljava/lang/Object;Ljava/lang/String;ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    invoke-static {p3, v2, v3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 11
    const-string v2, "photoViews"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->newArrayLiteral([Ljava/lang/Object;Ljava/lang/String;ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-static {p3, v2, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 12
    const-string v1, "scrollView"

    invoke-static {p3, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 13
    const-string v1, "actInd"

    invoke-static {p3, v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 14
    const-string v1, "self"

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "self"

    invoke-static {v1, p3, p1, v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    const-string v1, "fetchPhotoXML"

    new-instance v2, Lcom/appycity/suckbangblow/js/windows_photos;

    const/4 v3, 0x2

    invoke-direct {v2, v0, p1, v3}, Lcom/appycity/suckbangblow/js/windows_photos;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v3, p0, Lcom/appycity/suckbangblow/js/windows_photos;->_dcp:Lcom/appycity/suckbangblow/js/windows_photos;

    iput-object v3, v2, Lcom/appycity/suckbangblow/js/windows_photos;->_dcp:Lcom/appycity/suckbangblow/js/windows_photos;

    invoke-static {p3, v1, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 43
    const-string v1, "loadPhotosArray"

    new-instance v2, Lcom/appycity/suckbangblow/js/windows_photos;

    const/4 v3, 0x5

    invoke-direct {v2, v0, p1, v3}, Lcom/appycity/suckbangblow/js/windows_photos;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v3, p0, Lcom/appycity/suckbangblow/js/windows_photos;->_dcp:Lcom/appycity/suckbangblow/js/windows_photos;

    iput-object v3, v2, Lcom/appycity/suckbangblow/js/windows_photos;->_dcp:Lcom/appycity/suckbangblow/js/windows_photos;

    invoke-static {p3, v1, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 62
    const-string v1, "createPhotoViews"

    new-instance v2, Lcom/appycity/suckbangblow/js/windows_photos;

    const/4 v3, 0x6

    invoke-direct {v2, v0, p1, v3}, Lcom/appycity/suckbangblow/js/windows_photos;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v3, p0, Lcom/appycity/suckbangblow/js/windows_photos;->_dcp:Lcom/appycity/suckbangblow/js/windows_photos;

    iput-object v3, v2, Lcom/appycity/suckbangblow/js/windows_photos;->_dcp:Lcom/appycity/suckbangblow/js/windows_photos;

    invoke-static {p3, v1, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 75
    const-string v1, "createScrollableView"

    new-instance v2, Lcom/appycity/suckbangblow/js/windows_photos;

    const/4 v3, 0x7

    invoke-direct {v2, v0, p1, v3}, Lcom/appycity/suckbangblow/js/windows_photos;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v3, p0, Lcom/appycity/suckbangblow/js/windows_photos;->_dcp:Lcom/appycity/suckbangblow/js/windows_photos;

    iput-object v3, v2, Lcom/appycity/suckbangblow/js/windows_photos;->_dcp:Lcom/appycity/suckbangblow/js/windows_photos;

    invoke-static {p3, v1, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 86
    const-string v1, "addWindowElements"

    new-instance v2, Lcom/appycity/suckbangblow/js/windows_photos;

    const/16 v3, 0x8

    invoke-direct {v2, v0, p1, v3}, Lcom/appycity/suckbangblow/js/windows_photos;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v3, p0, Lcom/appycity/suckbangblow/js/windows_photos;->_dcp:Lcom/appycity/suckbangblow/js/windows_photos;

    iput-object v3, v2, Lcom/appycity/suckbangblow/js/windows_photos;->_dcp:Lcom/appycity/suckbangblow/js/windows_photos;

    invoke-static {p3, v1, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 100
    const-string v1, "_init"

    new-instance v2, Lcom/appycity/suckbangblow/js/windows_photos;

    const/16 v3, 0x9

    invoke-direct {v2, v0, p1, v3}, Lcom/appycity/suckbangblow/js/windows_photos;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v3, p0, Lcom/appycity/suckbangblow/js/windows_photos;->_dcp:Lcom/appycity/suckbangblow/js/windows_photos;

    iput-object v3, v2, Lcom/appycity/suckbangblow/js/windows_photos;->_dcp:Lcom/appycity/suckbangblow/js/windows_photos;

    invoke-static {p3, v1, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 108
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

.method private static _c_anonymous_2(Lcom/appycity/suckbangblow/js/windows_photos;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v0, "window"

    const-string v0, "self"

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

    .line 20
    const-string v0, "CONFIG"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "debugPrint"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "photos.fetchphotoxml.in"

    invoke-static {v0, v1, v2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 22
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

    .line 23
    const-string v0, "xhr"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onload"

    new-instance v2, Lcom/appycity/suckbangblow/js/windows_photos;

    const/4 v3, 0x3

    invoke-direct {v2, v5, p1, v3}, Lcom/appycity/suckbangblow/js/windows_photos;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v3, p0, Lcom/appycity/suckbangblow/js/windows_photos;->_dcp:Lcom/appycity/suckbangblow/js/windows_photos;

    iput-object v3, v2, Lcom/appycity/suckbangblow/js/windows_photos;->_dcp:Lcom/appycity/suckbangblow/js/windows_photos;

    invoke-static {v0, v1, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 27
    const-string v0, "xhr"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "error"

    new-instance v2, Lcom/appycity/suckbangblow/js/windows_photos;

    const/4 v3, 0x4

    invoke-direct {v2, v5, p1, v3}, Lcom/appycity/suckbangblow/js/windows_photos;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iget-object v3, p0, Lcom/appycity/suckbangblow/js/windows_photos;->_dcp:Lcom/appycity/suckbangblow/js/windows_photos;

    iput-object v3, v2, Lcom/appycity/suckbangblow/js/windows_photos;->_dcp:Lcom/appycity/suckbangblow/js/windows_photos;

    invoke-static {v0, v1, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 32
    const-string v0, "CONFIG"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "debugPrint"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "self"

    invoke-static {p1, v5, v2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "window"

    invoke-static {v2, v3, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "xmlurl"

    invoke-static {v2, v3, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 33
    const-string v0, "xhr"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "open"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "GET"

    const-string v3, "self"

    invoke-static {p1, v5, v3}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "window"

    invoke-static {v3, v4, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "xmlurl"

    invoke-static {v3, v4, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call2(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 34
    const-string v0, "CONFIG"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "debugPrint"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "photos.fetchphotoxml.xhr.send"

    invoke-static {v0, v1, v2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 35
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

.method private static _c_anonymous_3(Lcom/appycity/suckbangblow/js/windows_photos;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v5, "responseXML"

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 23
    const-string v1, "CONFIG"

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "debugPrint"

    invoke-static {v1, v2, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const-string v3, "photos.fetchphotoxml.xhr.onload.responsexml = "

    const-string v4, "responseXML"

    invoke-static {p3, v5, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 25
    const-string v1, "self"

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "addWindowElements"

    invoke-static {v1, v2, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const-string v3, "responseXML"

    invoke-static {p3, v5, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method private static _c_anonymous_4(Lcom/appycity/suckbangblow/js/windows_photos;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v7, "window"

    const-string v6, "self"

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    .line 27
    const-string v0, "CONFIG"

    invoke-static {p1, v5, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

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

    invoke-static {v2, v7, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "self"

    invoke-static {p1, v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "actInd"

    invoke-static {v3, v4, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call2(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Sorry, unable to load photos. Please try again later."

    aput-object v2, v0, v1

    const-string v1, "alert"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callName([Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 30
    const-string v0, "self"

    invoke-static {p1, v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v7, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "close"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method private static _c_anonymous_5(Lcom/appycity/suckbangblow/js/windows_photos;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    array-length p2, p4

    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    const/4 p2, 0x1

    invoke-static {p4, p2}, Lorg/mozilla/javascript/ScriptRuntime;->padArguments([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    :goto_0
    const/4 p4, 0x0

    aget-object p2, p2, p4

    sget-object p4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 43
    const-string p4, "CONFIG"

    invoke-static {p1, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "debugPrint"

    invoke-static {p4, v0, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const-string v1, "photos.loadphotosarray.xml.parse"

    invoke-static {p4, v0, v1, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 45
    const-string p4, "CONFIG"

    invoke-static {p1, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "debugPrint"

    invoke-static {p4, v0, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p4, v0, p2, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 47
    const-string p4, "getElementsByTagName"

    invoke-static {p2, p4, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p4

    const-string v0, "media:content"

    invoke-static {p2, p4, v0, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p2

    .line 48
    const-string p4, "CONFIG"

    invoke-static {p1, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "debugPrint"

    invoke-static {p4, v0, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const-string v1, "length"

    invoke-static {p2, v1, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p4, v0, v1, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 51
    const-string p4, "CONFIG"

    invoke-static {p1, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "debugPrint"

    invoke-static {p4, v0, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-static {p4, v0, p2, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 52
    sget-object p4, Lorg/mozilla/javascript/optimizer/OptRuntime;->zeroObj:Ljava/lang/Double;

    :goto_1
    const-string v0, "length"

    invoke-static {p2, v0, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p4, v0}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LT(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0

    :cond_0
    const-string v0, "CONFIG"

    invoke-static {p1, p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "debugPrint"

    invoke-static {v0, v1, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "photos.loadphotosarray.xml.url.value = "

    const-string v3, "item"

    invoke-static {p2, v3, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v3

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    invoke-static {v3, v4, p4, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "getAttribute"

    invoke-static {v3, v4, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v3

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    const-string v5, "url"

    invoke-static {v3, v4, v5, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 54
    const-string v0, "photoURLs"

    invoke-static {p3, v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "push"

    invoke-static {v0, v1, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "item"

    invoke-static {p2, v2, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    invoke-static {v2, v3, p4, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "getAttribute"

    invoke-static {v2, v3, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    const-string v4, "url"

    invoke-static {v2, v3, v4, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    invoke-static {p4}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/optimizer/OptRuntime;->wrapDouble(D)Ljava/lang/Double;

    move-result-object p4

    goto/16 :goto_1

    :cond_1
    move-object p2, p4

    goto/16 :goto_0
.end method

.method private static _c_anonymous_6(Lcom/appycity/suckbangblow/js/windows_photos;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 62
    const-string p2, "CONFIG"

    invoke-static {p1, p0, p2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "debugPrint"

    invoke-static {p2, p4, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p4

    const-string v0, "photos.createphotoviews.in"

    invoke-static {p2, p4, v0, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 64
    sget-object p2, Lorg/mozilla/javascript/optimizer/OptRuntime;->zeroObj:Ljava/lang/Double;

    :goto_0
    const-string p4, "photoURLs"

    invoke-static {p3, p4, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "length"

    invoke-static {p4, v0, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p2, p4}, Lorg/mozilla/javascript/ScriptRuntime;->cmp_LT(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0

    :cond_0
    const-string p4, "Titanium"

    invoke-static {p1, p0, p4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "UI"

    invoke-static {p4, v0, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    const-string v0, "createImageView"

    invoke-static {p4, v0, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p4

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "url"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "photoURLs"

    invoke-static {p3, v4, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p2, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectElem(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->newObjectLiteral([Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-static {p4, v0, v1, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p4

    .line 66
    const-string v0, "CONFIG"

    invoke-static {p1, p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "debugPrint"

    invoke-static {v0, v1, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "photos.createphotoviews.image.url.push | image.url = "

    const-string v3, "photoURLs"

    invoke-static {p3, v3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p2, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectElem(Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->add(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 67
    const-string v0, "photoViews"

    invoke-static {p3, v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "push"

    invoke-static {v0, v1, p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-static {v0, v1, p4, p1, p0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/mozilla/javascript/optimizer/OptRuntime;->wrapDouble(D)Ljava/lang/Double;

    move-result-object p2

    goto/16 :goto_0
.end method

.method private static _c_anonymous_7(Lcom/appycity/suckbangblow/js/windows_photos;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
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

    const/4 v7, 0x3

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    .line 75
    const-string v1, "CONFIG"

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "debugPrint"

    invoke-static {v1, v2, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const-string v3, "photos.createScrollableView.in"

    invoke-static {v1, v2, v3, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 77
    const-string v1, "scrollView"

    const-string v2, "Titanium"

    invoke-static {p1, v0, v2}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "UI"

    invoke-static {v2, v3, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "createScrollableView"

    invoke-static {v2, v3, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v2

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "views"

    aput-object v5, v4, v8

    const-string v5, "showPagingControl"

    aput-object v5, v4, v9

    const-string v5, "backgroundColor"

    aput-object v5, v4, v10

    new-array v5, v7, [Ljava/lang/Object;

    const-string v6, "photoViews"

    invoke-static {p3, v6, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v8

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v5, v9

    const-string v6, "#000000"

    aput-object v6, v5, v10

    new-array v6, v7, [I

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6, p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->newObjectLiteral([Ljava/lang/Object;[Ljava/lang/Object;[ILorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v4

    invoke-static {v2, v3, v4, p1, v0}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v1, v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static _c_anonymous_8(Lcom/appycity/suckbangblow/js/windows_photos;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const-string v8, "window"

    const-string v7, "self"

    const-string v6, "debugPrint"

    const-string v4, "CONFIG"

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    array-length v0, p4

    if-ge v0, v1, :cond_0

    invoke-static {p4, v1}, Lorg/mozilla/javascript/ScriptRuntime;->padArguments([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 86
    const-string v1, "CONFIG"

    invoke-static {p1, v5, v4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "debugPrint"

    invoke-static {v1, v6, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const-string v3, "photos.addwindowelements.in"

    invoke-static {v1, v2, v3, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 88
    const-string v1, "loadPhotosArray"

    invoke-static {p3, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v1

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const-string v3, "documentElement"

    invoke-static {v0, v3, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v2, v0, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 89
    const-string v0, "createPhotoViews"

    invoke-static {p3, v0, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 90
    const-string v0, "createScrollableView"

    invoke-static {p3, v0, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 91
    const-string v0, "CONFIG"

    invoke-static {p1, v5, v4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "debugPrint"

    invoke-static {v0, v6, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "photos.addwindowelements.window.add.scrollview"

    invoke-static {v0, v1, v2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 92
    const-string v0, "window"

    invoke-static {p3, v8, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "add"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "scrollView"

    invoke-static {p3, v2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 93
    const-string v0, "CONFIG"

    invoke-static {p1, v5, v4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "hideActInd"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "self"

    invoke-static {p1, v5, v7}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "window"

    invoke-static {v2, v8, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "self"

    invoke-static {p1, v5, v7}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

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

    goto/16 :goto_0
.end method

.method private static _c_anonymous_9(Lcom/appycity/suckbangblow/js/windows_photos;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v6, "actInd"

    const-string v4, "CONFIG"

    const-string v3, "window"

    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v5

    .line 100
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

    invoke-static {p3, v3, v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 102
    const-string v0, "actInd"

    const-string v0, "CONFIG"

    invoke-static {p1, v5, v4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "createActInd"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "window"

    invoke-static {p3, v3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call1(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3, v6, v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProp(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 103
    const-string v0, "CONFIG"

    invoke-static {p1, v5, v4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "showActInd"

    invoke-static {v0, v1, p1, v5}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "window"

    invoke-static {p3, v3, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "actInd"

    invoke-static {p3, v6, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->call2(Lorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    .line 104
    const-string v0, "fetchPhotoXML"

    invoke-static {p3, v0, p1, v5}, Lorg/mozilla/javascript/optimizer/OptRuntime;->callProp0(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method private static _c_script_0(Lcom/appycity/suckbangblow/js/windows_photos;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v5, "photos"

    const-string v4, "Photos"

    const/4 v0, 0x0

    invoke-static {p0, p3, p1, p2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->initScript(Lorg/mozilla/javascript/NativeFunction;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 113
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
    const-string v1, "Photos"

    invoke-static {p1, p2, v4}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    new-instance v2, Lcom/appycity/suckbangblow/js/windows_photos;

    const/4 v3, 0x1

    invoke-direct {v2, p2, p1, v3}, Lcom/appycity/suckbangblow/js/windows_photos;-><init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Context;I)V

    iput-object p0, v2, Lcom/appycity/suckbangblow/js/windows_photos;->_dcp:Lcom/appycity/suckbangblow/js/windows_photos;

    const-string v3, "Photos"

    invoke-static {v1, v2, p1, p2, v4}, Lorg/mozilla/javascript/ScriptRuntime;->setName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 111
    const-string v1, "photos"

    invoke-static {p1, p2, v5}, Lorg/mozilla/javascript/ScriptRuntime;->bind(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v2, "Photos"

    invoke-static {p1, p2, v4}, Lorg/mozilla/javascript/ScriptRuntime;->name(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-static {v2, p1, p2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->newObject(Ljava/lang/Object;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const-string v3, "photos"

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

    new-instance v0, Lcom/appycity/suckbangblow/js/windows_photos;

    invoke-direct {v0}, Lcom/appycity/suckbangblow/js/windows_photos;-><init>()V

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
    iget v0, p0, Lcom/appycity/suckbangblow/js/windows_photos;->_id:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_photos;->_c_script_0(Lcom/appycity/suckbangblow/js/windows_photos;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_photos;->_c_anonymous_1(Lcom/appycity/suckbangblow/js/windows_photos;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_photos;->_c_anonymous_2(Lcom/appycity/suckbangblow/js/windows_photos;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_photos;->_c_anonymous_3(Lcom/appycity/suckbangblow/js/windows_photos;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_photos;->_c_anonymous_4(Lcom/appycity/suckbangblow/js/windows_photos;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_photos;->_c_anonymous_5(Lcom/appycity/suckbangblow/js/windows_photos;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_photos;->_c_anonymous_6(Lcom/appycity/suckbangblow/js/windows_photos;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_photos;->_c_anonymous_7(Lcom/appycity/suckbangblow/js/windows_photos;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_photos;->_c_anonymous_8(Lcom/appycity/suckbangblow/js/windows_photos;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-static {p0, p1, p2, p3, p4}, Lcom/appycity/suckbangblow/js/windows_photos;->_c_anonymous_9(Lcom/appycity/suckbangblow/js/windows_photos;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

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
    .end packed-switch
.end method

.method public final exec(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p2, v0}, Lcom/appycity/suckbangblow/js/windows_photos;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedSource()Ljava/lang/String;
    .locals 3

    const-string v0, "\u0088\'\u0008Titaniuml\'\u0007includeW)\u000c../config.jsXR\u0001z\'\u0006PhotosZm\u0002WXU\u0001+l\'\u0004pathZ)\u0003../R\u0001+l\'\u0006windowR\u0001+l\'\tphotoURLsZSTR\u0001+l\'\nphotoViewsZSTR\u0001+l\'\nscrollViewR\u0001+l\'\u0006actIndR\u0001z\'\u0004selfZ+R\u0001+l\'\rfetchPhotoXMLZm\u0002WXU\u0001\'\u0006CONFIGl\'\ndebugPrintW)\u0017photos.fetchphotoxml.inXR\u0001z\'\u0003xhrZ\'\u0008Titaniuml\'\u0007Networkl\'\u0010createHTTPClientWXR\u0001\'\u0003xhrl\'\u0006onloadZm\u0002WXU\u0001\'\u0006CONFIGl\'\ndebugPrintW).photos.fetchphotoxml.xhr.onload.responsexml = \u0015+l\'\u000bresponseXMLXR\u0001\'\u0004selfl\'\u0011addWindowElementsW+l\'\u000bresponseXMLXR\u0001V\u00a3R\u0001\'\u0003xhrl\'\u0005errorZm\u0002WXU\u0001\'\u0006CONFIGl\'\nhideActIndW\'\u0004selfl\'\u0006windowY\'\u0004selfl\'\u0006actIndXR\u0001\'\u0005alertW)5Sorry, unable to load photos. Please try again later.XR\u0001\'\u0004selfl\'\u0006windowl\'\u0005closeWXR\u0001V\u00a3R\u0001\'\u0006CONFIGl\'\ndebugPrintW\'\u0004selfl\'\u0006windowl\'\u0006xmlurlXR\u0001\'\u0003xhrl\'\u0004openW)\u0003GETY\'\u0004selfl\'\u0006windowl\'\u0006xmlurlXR\u0001\'\u0006CONFIGl\'\ndebugPrintW)\u001dphotos.fetchphotoxml.xhr.sendXR\u0001\'\u0003xhrl\'\u0004sendWXR\u0001V\u00a3R\u0001+l\'\u000floadPhotosArrayZm\u0002W\'\u0003docXU\u0001\'\u0006CONFIGl\'\ndebugPrintW) photos.loadphotosarray.xml.parseXR\u0001\'\u0006CONFIGl\'\ndebugPrintW\'\u0003docXR\u0001z\'\u0008elementsZ\'\u0003docl\'\u0014getElementsByTagNameW)\rmedia:contentXR\u0001\'\u0006CONFIGl\'\ndebugPrintW\'\u0008elementsl\'\u0006lengthXR\u0001\'\u0006CONFIGl\'\ndebugPrintW\'\u0008elementsXR\u0001wWz\'\u0001iZ(S\u0000R\'\u0001i\u000e\'\u0008elementsl\'\u0006lengthR\'\u0001ijXU\u0001\'\u0006CONFIGl\'\ndebugPrintW)\'photos.loadphotosarray.xml.url.value = \u0015\'\u0008elementsl\'\u0004itemW\'\u0001iXl\'\u000cgetAttributeW)\u0003urlXXR\u0001+l\'\tphotoURLsl\'\u0004pushW\'\u0008elementsl\'\u0004itemW\'\u0001iXl\'\u000cgetAttributeW)\u0003urlXXR\u0001V\u0001V\u00a3R\u0001+l\'\u0010createPhotoViewsZm\u0002WXU\u0001\'\u0006CONFIGl\'\ndebugPrintW)\u001aphotos.createphotoviews.inXR\u0001wWz\'\u0001iZ(S\u0000R\'\u0001i\u000e+l\'\tphotoURLsl\'\u0006lengthR\'\u0001ijXU\u0001z\'\u0005imageZ\'\u0008Titaniuml\'\u0002UIl\'\u000fcreateImageViewWU\'\u0003urlB+l\'\tphotoURLsS\'\u0001iTVXR\u0001\'\u0006CONFIGl\'\ndebugPrintW)5photos.createphotoviews.image.url.push | image.url = \u0015+l\'\tphotoURLsS\'\u0001iTXR\u0001+l\'\nphotoViewsl\'\u0004pushW\'\u0005imageXR\u0001V\u0001V\u00a3R\u0001+l\'\u0014createScrollableViewZm\u0002WXU\u0001\'\u0006CONFIGl\'\ndebugPrintW)\u001ephotos.createScrollableView.inXR\u0001+l\'\nscrollViewZ\'\u0008Titaniuml\'\u0002UIl\'\u0014createScrollableViewWU\'\u0005viewsB+l\'\nphotoViewsY\'\u0011showPagingControlB-Y\'\u000fbackgroundColorB)\u0007#000000VXR\u0001V\u00a3R\u0001+l\'\u0011addWindowElementsZm\u0002W\'\u0003xmlXU\u0001\'\u0006CONFIGl\'\ndebugPrintW)\u001bphotos.addwindowelements.inXR\u0001+l\'\u000floadPhotosArrayW\'\u0003xmll\'\u000fdocumentElementXR\u0001+l\'\u0010createPhotoViewsWXR\u0001+l\'\u0014createScrollableViewWXR\u0001\'\u0006CONFIGl\'\ndebugPrintW).photos.addwindowelements.window.add.scrollviewXR\u0001+l\'\u0006windowl\'\u0003addW+l\'\nscrollViewXR\u0001\'\u0006CONFIGl\'\nhideActIndW\'\u0004selfl\'\u0006windowY\'\u0004selfl\'\u0006actIndXR\u0001V\u00a3R\u0001+l\'\u0005_initZm\u0002WXU\u0001+l\'\u0006windowZ\'\u0008Titaniuml\'\u0002UIl\'\rcurrentWindowR\u0001+l\'\u0006actIndZ\'\u0006CONFIGl\'\u000ccreateActIndW+l\'\u0006windowXR\u0001\'\u0006CONFIGl\'\nshowActIndW+l\'\u0006windowY+l\'\u0006actIndXR\u0001+l\'\rfetchPhotoXMLWXR\u0001V\u00a3R\u0001+l\'\u0005_initWXR\u0001V\u00a3R\u0001z\'\u0006photosZ\u001e\'\u0006PhotosWXR\u0001"

    iget v1, p0, Lcom/appycity/suckbangblow/js/windows_photos;->_id:I

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    const/16 v2, 0x95f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const/16 v1, 0x31

    const/16 v2, 0x945

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const/16 v1, 0xb1

    const/16 v2, 0x30f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x12a

    const/16 v2, 0x1b7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x1c8

    const/16 v2, 0x264

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const/16 v1, 0x326

    const/16 v2, 0x4f4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const/16 v1, 0x50c

    const/16 v2, 0x642

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    const/16 v1, 0x65e

    const/16 v2, 0x721

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    const/16 v1, 0x73a

    const/16 v2, 0x881

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    const/16 v1, 0x88e

    const/16 v2, 0x934

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
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 2

    const-string v1, ""

    iget v0, p0, Lcom/appycity/suckbangblow/js/windows_photos;->_id:I

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

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/appycity/suckbangblow/js/windows_photos;->_id:I

    packed-switch v0, :pswitch_data_0

    move v0, v3

    :goto_0
    return v0

    :pswitch_0
    move v0, v2

    goto :goto_0

    :pswitch_1
    move v0, v2

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_5
    move v0, v3

    goto :goto_0

    :pswitch_6
    move v0, v1

    goto :goto_0

    :pswitch_7
    move v0, v2

    goto :goto_0

    :pswitch_8
    move v0, v1

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
    .end packed-switch
.end method

.method public getParamCount()I
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/appycity/suckbangblow/js/windows_photos;->_id:I

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
    move v0, v2

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
    .end packed-switch
.end method

.method public getParamOrVarConst(I)Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/appycity/suckbangblow/js/windows_photos;->_id:I

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
    packed-switch p1, :pswitch_data_3

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method

.method public getParamOrVarName(I)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    const-string v2, "i"

    iget v0, p0, Lcom/appycity/suckbangblow/js/windows_photos;->_id:I

    packed-switch v0, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const-string v0, "Photos"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "photos"

    goto :goto_0

    :pswitch_1
    const-string v0, "self"

    goto :goto_0

    :pswitch_2
    const-string v0, "xhr"

    goto :goto_0

    :pswitch_3
    move-object v0, v1

    goto :goto_0

    :pswitch_4
    move-object v0, v1

    goto :goto_0

    :pswitch_5
    packed-switch p1, :pswitch_data_2

    const-string v0, "doc"

    goto :goto_0

    :pswitch_6
    const-string v0, "elements"

    goto :goto_0

    :pswitch_7
    const-string v0, "i"

    move-object v0, v2

    goto :goto_0

    :pswitch_8
    packed-switch p1, :pswitch_data_3

    const-string v0, "i"

    move-object v0, v2

    goto :goto_0

    :pswitch_9
    const-string v0, "image"

    goto :goto_0

    :pswitch_a
    move-object v0, v1

    goto :goto_0

    :pswitch_b
    const-string v0, "xml"

    goto :goto_0

    :pswitch_c
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
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
