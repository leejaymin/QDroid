.class final Lcom/scoreloop/client/android/core/controller/f$b;
.super Lcom/scoreloop/client/android/core/server/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/scoreloop/client/android/core/model/Device;

.field private final b:Lcom/scoreloop/client/android/core/model/Game;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/Device;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/server/Request;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;)V

    .line 83
    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/f$b;->b:Lcom/scoreloop/client/android/core/model/Game;

    .line 84
    iput-object p3, p0, Lcom/scoreloop/client/android/core/controller/f$b;->a:Lcom/scoreloop/client/android/core/model/Device;

    .line 85
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/f$b;->b:Lcom/scoreloop/client/android/core/model/Game;

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "/service/games/%s/session"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/f$b;->b:Lcom/scoreloop/client/android/core/model/Game;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/service/session"

    goto :goto_0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 98
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 99
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 101
    :try_start_0
    const-string v2, "device_id"

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/f$b;->a:Lcom/scoreloop/client/android/core/model/Device;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Device;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string v2, "user"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid device data"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final c()Lcom/scoreloop/client/android/core/server/RequestMethod;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->POST:Lcom/scoreloop/client/android/core/server/RequestMethod;

    return-object v0
.end method
