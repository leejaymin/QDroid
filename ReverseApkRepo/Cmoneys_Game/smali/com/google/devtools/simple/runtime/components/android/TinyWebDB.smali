.class public Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;
.super Ljava/lang/Object;
.source "TinyWebDB.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/Component;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/devtools/simple/common/ComponentCategory;
    version = 0x2
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# static fields
.field private static final GETVALUE_COMMAND:Ljava/lang/String; = "getvalue"

.field private static final LOG_TAG:Ljava/lang/String; = "TinyWebDB"

.field private static final STOREAVALUE_COMMAND:Ljava/lang/String; = "storeavalue"

.field private static final TAG_PARAMETER:Ljava/lang/String; = "tag"

.field private static final VALUE_PARAMETER:Ljava/lang/String; = "value"


# instance fields
.field private androidUIHandler:Landroid/os/Handler;

.field private serviceURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;->androidUIHandler:Landroid/os/Handler;

    .line 90
    const-string v0, "http://appinvtinywebdb.appspot.com/"

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;->serviceURL:Ljava/lang/String;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;->postStoreValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;->androidUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;->postGetValue(Ljava/lang/String;)V

    return-void
.end method

.method private postGetValue(Ljava/lang/String;)V
    .locals 8
    .parameter "tag"

    .prologue
    .line 267
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$4;

    invoke-direct {v0, p0, p1}, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$4;-><init>(Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;Ljava/lang/String;)V

    .line 322
    .local v0, myCallback:Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;,"Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair<Lorg/json/JSONArray;>;"
    invoke-static {}, Lcom/google/devtools/simple/runtime/components/android/util/WebServiceUtil;->getInstance()Lcom/google/devtools/simple/runtime/components/android/util/WebServiceUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;->serviceURL:Ljava/lang/String;

    const-string v3, "getvalue"

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/apache/http/NameValuePair;

    const/4 v5, 0x0

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "tag"

    invoke-direct {v6, v7, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/google/devtools/simple/runtime/components/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/devtools/simple/runtime/components/android/util/WebServiceUtil;->postCommandReturningArray(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;)V

    .line 327
    return-void
.end method

.method private postStoreValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 10
    .parameter "tag"
    .parameter "valueToStore"

    .prologue
    .line 184
    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$2;

    invoke-direct {v1, p0}, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$2;-><init>(Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;)V

    .line 210
    .local v1, myCallback:Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;,"Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lcom/google/devtools/simple/runtime/components/android/util/WebServiceUtil;->getInstance()Lcom/google/devtools/simple/runtime/components/android/util/WebServiceUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;->serviceURL:Ljava/lang/String;

    const-string v4, "storeavalue"

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/apache/http/NameValuePair;

    const/4 v6, 0x0

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "tag"

    invoke-direct {v7, v8, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "value"

    invoke-static {p2}, Lcom/google/devtools/simple/runtime/components/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/google/devtools/simple/runtime/components/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/google/devtools/simple/runtime/components/android/util/WebServiceUtil;->postCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    return-void

    .line 217
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 218
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Lcom/google/devtools/simple/runtime/errors/YailRuntimeError;

    const-string v3, "Value failed to convert to JSON."

    const-string v4, "JSON Creation Error."

    invoke-direct {v2, v3, v4}, Lcom/google/devtools/simple/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public GetValue(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 261
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$3;

    invoke-direct {v0, p0, p1}, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$3;-><init>(Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;Ljava/lang/String;)V

    .line 262
    .local v0, call:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method

.method public GotValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "tagFromWebDB"
    .parameter "valueFromWebDB"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 339
    const-string v0, "GotValue"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    return-void
.end method

.method public Initialize()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public ServiceURL()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;->serviceURL:Ljava/lang/String;

    return-object v0
.end method

.method public ServiceURL(Ljava/lang/String;)V
    .locals 0
    .parameter "url"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"http://appinvtinywebdb.appspot.com\""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;->serviceURL:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public StoreValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "tag"
    .parameter "valueToStore"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$1;-><init>(Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    .local v0, call:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method

.method public ValueStored()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 233
    const-string v0, "ValueStored"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    return-void
.end method

.method public WebServiceError(Ljava/lang/String;)V
    .locals 3
    .parameter "message"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 351
    const-string v0, "WebServiceError"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    return-void
.end method
