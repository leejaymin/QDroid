.class public Lcom/scoreloop/client/android/core/model/DeviceUuid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/util/JSONSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/model/DeviceUuid$Source;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field private b:Ljava/util/Date;

.field private c:Lcom/scoreloop/client/android/core/model/DeviceUuid$Source;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/scoreloop/client/android/core/model/DeviceUuid$Source;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/DeviceUuid;->b:Ljava/util/Date;

    .line 25
    iput-object p1, p0, Lcom/scoreloop/client/android/core/model/DeviceUuid;->a:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/scoreloop/client/android/core/model/DeviceUuid;->c:Lcom/scoreloop/client/android/core/model/DeviceUuid$Source;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 50
    const-string v0, "uuid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/DeviceUuid;->a:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/Date;

    const-string v1, "date"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/DeviceUuid;->b:Ljava/util/Date;

    .line 53
    :try_start_0
    const-string v0, "source"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/scoreloop/client/android/core/model/DeviceUuid$Source;->valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/DeviceUuid$Source;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/DeviceUuid;->c:Lcom/scoreloop/client/android/core/model/DeviceUuid$Source;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b_()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 40
    const-string v1, "uuid"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/DeviceUuid;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v1, "date"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/DeviceUuid;->b:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 42
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/DeviceUuid;->c:Lcom/scoreloop/client/android/core/model/DeviceUuid$Source;

    if-eqz v1, :cond_0

    .line 43
    const-string v1, "source"

    iget-object v2, p0, Lcom/scoreloop/client/android/core/model/DeviceUuid;->c:Lcom/scoreloop/client/android/core/model/DeviceUuid$Source;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/DeviceUuid$Source;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    :cond_0
    return-object v0
.end method
