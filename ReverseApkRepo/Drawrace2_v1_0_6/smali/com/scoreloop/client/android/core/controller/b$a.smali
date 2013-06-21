.class final Lcom/scoreloop/client/android/core/controller/b$a;
.super Lcom/scoreloop/client/android/core/server/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/scoreloop/client/android/core/model/Device;

.field private final b:Lcom/scoreloop/client/android/core/model/Game;

.field private final c:Lcom/scoreloop/client/android/core/controller/b$b;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;Lcom/scoreloop/client/android/core/model/Game;Lcom/scoreloop/client/android/core/model/Device;Lcom/scoreloop/client/android/core/controller/b$b;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/server/Request;-><init>(Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;)V

    .line 30
    iput-object p2, p0, Lcom/scoreloop/client/android/core/controller/b$a;->b:Lcom/scoreloop/client/android/core/model/Game;

    .line 31
    iput-object p3, p0, Lcom/scoreloop/client/android/core/controller/b$a;->a:Lcom/scoreloop/client/android/core/model/Device;

    .line 32
    iput-object p4, p0, Lcom/scoreloop/client/android/core/controller/b$a;->c:Lcom/scoreloop/client/android/core/controller/b$b;

    .line 33
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/b$a;->b:Lcom/scoreloop/client/android/core/model/Game;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/b$a;->b:Lcom/scoreloop/client/android/core/model/Game;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "/service/games/%s/device"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/scoreloop/client/android/core/controller/b$a;->b:Lcom/scoreloop/client/android/core/model/Game;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/Game;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "/service/device"

    goto :goto_0
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 49
    :try_start_0
    sget-object v1, Lcom/scoreloop/client/android/core/controller/b$1;->a:[I

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/b$a;->c:Lcom/scoreloop/client/android/core/controller/b$b;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/controller/b$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 68
    new-instance v0, Ljava/nio/channels/IllegalSelectorException;

    invoke-direct {v0}, Ljava/nio/channels/IllegalSelectorException;-><init>()V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid device data"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 52
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/b$a;->a:Lcom/scoreloop/client/android/core/model/Device;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Device;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const-string v1, "id"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/b$a;->a:Lcom/scoreloop/client/android/core/model/Device;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Device;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    :goto_0
    const-string v1, "system"

    invoke-static {}, Lcom/scoreloop/client/android/core/model/Device;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    :goto_1
    return-object v0

    .line 55
    :cond_0
    const-string v1, "uuid"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/b$a;->a:Lcom/scoreloop/client/android/core/model/Device;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Device;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 61
    :pswitch_1
    sget-object v1, Lcom/scoreloop/client/android/core/model/Device;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/b$a;->a:Lcom/scoreloop/client/android/core/model/Device;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Device;->b_()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 65
    :pswitch_2
    sget-object v1, Lcom/scoreloop/client/android/core/model/Device;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/controller/b$a;->a:Lcom/scoreloop/client/android/core/model/Device;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Device;->b_()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final c()Lcom/scoreloop/client/android/core/server/RequestMethod;
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/scoreloop/client/android/core/controller/b$1;->a:[I

    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/b$a;->c:Lcom/scoreloop/client/android/core/controller/b$b;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/controller/b$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 91
    new-instance v0, Ljava/nio/channels/IllegalSelectorException;

    invoke-direct {v0}, Ljava/nio/channels/IllegalSelectorException;-><init>()V

    throw v0

    .line 82
    :pswitch_0
    sget-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->GET:Lcom/scoreloop/client/android/core/server/RequestMethod;

    .line 88
    :goto_0
    return-object v0

    .line 85
    :pswitch_1
    sget-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->POST:Lcom/scoreloop/client/android/core/server/RequestMethod;

    goto :goto_0

    .line 88
    :pswitch_2
    sget-object v0, Lcom/scoreloop/client/android/core/server/RequestMethod;->PUT:Lcom/scoreloop/client/android/core/server/RequestMethod;

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final d()Lcom/scoreloop/client/android/core/controller/b$b;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/b$a;->c:Lcom/scoreloop/client/android/core/controller/b$b;

    return-object v0
.end method
