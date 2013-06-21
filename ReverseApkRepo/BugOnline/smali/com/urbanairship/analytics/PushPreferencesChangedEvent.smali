.class public Lcom/urbanairship/analytics/PushPreferencesChangedEvent;
.super Lcom/urbanairship/analytics/Event;


# static fields
.field static final TYPE:Ljava/lang/String; = "push_preferences_changed"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/analytics/Event;-><init>()V

    return-void
.end method


# virtual methods
.method getData()Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v1

    :try_start_0
    const-string v2, "session_id"

    invoke-virtual {p0}, Lcom/urbanairship/analytics/PushPreferencesChangedEvent;->getEnvironment()Lcom/urbanairship/analytics/Event$Environment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/analytics/Event$Environment;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "notification_types"

    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/urbanairship/analytics/PushPreferencesChangedEvent;->getEnvironment()Lcom/urbanairship/analytics/Event$Environment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/analytics/Event$Environment;->getNotificationTypes()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->getQuietTimeInterval()[Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->isQuietTimeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "HH:mm"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "quiet_time"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v2, "push_enabled"

    invoke-virtual {v1}, Lcom/urbanairship/push/PushPreferences;->isPushEnabled()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error constructing JSON data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/urbanairship/analytics/PushPreferencesChangedEvent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method getType()Ljava/lang/String;
    .locals 1

    const-string v0, "push_preferences_changed"

    return-object v0
.end method
