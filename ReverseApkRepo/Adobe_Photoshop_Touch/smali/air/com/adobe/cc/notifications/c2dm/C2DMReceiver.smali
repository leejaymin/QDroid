.class public Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "C2DMReceiver.java"


# static fields
.field private static EVENT_ACCOUNT_MISSING:I = 0x0

.field private static EVENT_AUTHENTICATION_FAILED:I = 0x0

.field private static EVENT_INVALID_SENDER:I = 0x0

.field private static EVENT_NOTIFIED:I = 0x0

.field private static EVENT_PHONE_REGISTRATION_ERROR:I = 0x0

.field private static EVENT_REGISTERED:I = 0x0

.field private static EVENT_SERVICE_NOT_AVAILABLE:I = 0x0

.field private static EVENT_TOO_MANY_REGISTRATIONS:I = 0x0

.field private static EVENT_TYPE_NAME:Ljava/lang/String; = null

.field private static EVENT_UNKNOWN_ERROR:I = 0x0

.field private static EVENT_UNREGISTERED:I = 0x0

.field private static LOG_PREFIX:Ljava/lang/String; = null

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "ADOBE_C2DM_WAKELOCK"

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "<unknown>:C2DMReceiver"

    sput-object v0, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->LOG_PREFIX:Ljava/lang/String;

    .line 19
    const-string v0, "AdobeC2DMReceivedEvent"

    sput-object v0, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->EVENT_TYPE_NAME:Ljava/lang/String;

    .line 21
    const/4 v0, 0x1

    sput v0, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->EVENT_REGISTERED:I

    .line 22
    const/4 v0, 0x2

    sput v0, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->EVENT_UNREGISTERED:I

    .line 23
    const/4 v0, 0x3

    sput v0, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->EVENT_NOTIFIED:I

    .line 24
    const/4 v0, 0x4

    sput v0, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->EVENT_SERVICE_NOT_AVAILABLE:I

    .line 25
    const/4 v0, 0x5

    sput v0, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->EVENT_ACCOUNT_MISSING:I

    .line 26
    const/4 v0, 0x6

    sput v0, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->EVENT_AUTHENTICATION_FAILED:I

    .line 27
    const/4 v0, 0x7

    sput v0, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->EVENT_TOO_MANY_REGISTRATIONS:I

    .line 28
    const/16 v0, 0x8

    sput v0, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->EVENT_INVALID_SENDER:I

    .line 29
    const/16 v0, 0x9

    sput v0, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->EVENT_PHONE_REGISTRATION_ERROR:I

    .line 30
    const/16 v0, 0x63

    sput v0, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->EVENT_UNKNOWN_ERROR:I

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private dispatchEvent(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 58
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 62
    .local v1, jsonMessage:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "response"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    invoke-static {}, Lair/com/adobe/cc/notifications/c2dm/C2DMAirExtension;->isExtensionInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dispatch event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->printDebug(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lair/com/adobe/cc/notifications/c2dm/C2DMAirExtension;->getContext()Lcom/adobe/fre/FREContext;

    move-result-object v2

    sget-object v3, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->EVENT_TYPE_NAME:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_1
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Queueing event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->printDebug(Ljava/lang/String;)V

    .line 77
    invoke-static {v1}, Lair/com/adobe/cc/notifications/c2dm/C2DMPendingRequests;->add(Lorg/json/JSONObject;)V

    goto :goto_1
.end method

.method private handleMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 166
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 170
    .local v0, jsonMessage:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "event_code"

    sget v4, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->EVENT_NOTIFIED:I

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 171
    const-string v3, "intent_type"

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string v3, "event"

    const-string v4, "event"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string v3, "resource"

    const-string v4, "resource"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    invoke-static {}, Lair/com/adobe/cc/notifications/c2dm/C2DMAirExtension;->isExtensionInitialized()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 177
    const-string v3, "resource"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, resource:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 180
    const-string v3, "Skipping event: null"

    invoke-direct {p0, v3}, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->printDebug(Ljava/lang/String;)V

    .line 201
    .end local v2           #resource:Ljava/lang/String;
    :goto_0
    return-void

    .line 184
    .restart local v2       #resource:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lair/com/adobe/cc/notifications/c2dm/C2DMRegister;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    const-string v4, "resource"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 185
    .local v1, metadataMatcher:Ljava/util/regex/Matcher;
    const-string v3, "event"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "create"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 186
    const-string v3, "event"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "delete"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 187
    const-string v3, "event"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "update"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 188
    :cond_1
    invoke-direct {p0, v0}, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->dispatchEvent(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 198
    .end local v1           #metadataMatcher:Ljava/util/regex/Matcher;
    .end local v2           #resource:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 190
    .restart local v1       #metadataMatcher:Ljava/util/regex/Matcher;
    .restart local v2       #resource:Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Skipping event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->printDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    .end local v1           #metadataMatcher:Ljava/util/regex/Matcher;
    .end local v2           #resource:Ljava/lang/String;
    :cond_3
    const-string v3, "Message received while application is not fully initialized."

    invoke-direct {p0, v3}, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->printDebug(Ljava/lang/String;)V

    .line 195
    invoke-direct {p0, v0}, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->dispatchEvent(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 83
    const-string v4, "Handle registration..."

    invoke-direct {p0, v4}, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->printDebug(Ljava/lang/String;)V

    .line 85
    const-string v4, "registration_id"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, registrationId:Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 89
    .local v2, jsonMessage:Lorg/json/JSONObject;
    const-string v4, "error"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, errorType:Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 93
    sget-object v4, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->LOG_PREFIX:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Registration failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :try_start_0
    const-string v4, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    const-string v4, "event_code"

    sget v5, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->EVENT_SERVICE_NOT_AVAILABLE:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 112
    :goto_0
    const-string v4, "error"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "C2DM: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    :goto_1
    :try_start_1
    const-string v4, "intent_type"

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 161
    :goto_2
    invoke-direct {p0, v2}, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->dispatchEvent(Lorg/json/JSONObject;)V

    .line 162
    return-void

    .line 99
    :cond_1
    :try_start_2
    const-string v4, "ACCOUNT_MISSING"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 100
    const-string v4, "event_code"

    sget v5, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->EVENT_ACCOUNT_MISSING:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 114
    :catch_0
    move-exception v4

    goto :goto_1

    .line 101
    :cond_2
    const-string v4, "AUTHENTICATION_FAILED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 102
    const-string v4, "event_code"

    sget v5, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->EVENT_AUTHENTICATION_FAILED:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 103
    :cond_3
    const-string v4, "TOO_MANY_REGISTRATIONS"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 104
    const-string v4, "event_code"

    sget v5, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->EVENT_TOO_MANY_REGISTRATIONS:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 105
    :cond_4
    const-string v4, "INVALID_SENDER"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 106
    const-string v4, "event_code"

    sget v5, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->EVENT_INVALID_SENDER:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 107
    :cond_5
    const-string v4, "PHONE_REGISTRATION_ERROR"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 108
    const-string v4, "event_code"

    sget v5, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->EVENT_PHONE_REGISTRATION_ERROR:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 110
    :cond_6
    const-string v4, "event_code"

    sget v5, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->EVENT_UNKNOWN_ERROR:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 118
    :cond_7
    if-eqz v3, :cond_8

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Registration id: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->printDebug(Ljava/lang/String;)V

    .line 121
    const-string v4, "C2DMPreferences"

    invoke-virtual {p1, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 122
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "registrationKey"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 127
    :try_start_3
    const-string v4, "event_code"

    sget v5, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->EVENT_REGISTERED:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 128
    const-string v4, "registration_id"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 130
    :catch_1
    move-exception v4

    goto/16 :goto_1

    .line 134
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_8
    const-string v4, "unregistered"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 137
    const-string v4, "Unregistered"

    invoke-direct {p0, v4}, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->printDebug(Ljava/lang/String;)V

    .line 139
    const-string v4, "C2DMPreferences"

    invoke-virtual {p1, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 140
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "registrationKey"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    :try_start_4
    const-string v4, "event_code"

    sget v5, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->EVENT_UNREGISTERED:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 146
    const-string v4, "registration_id"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 148
    :catch_2
    move-exception v4

    goto/16 :goto_1

    .line 157
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :catch_3
    move-exception v4

    goto/16 :goto_2
.end method

.method private printDebug(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 218
    invoke-static {}, Lair/com/adobe/cc/notifications/c2dm/C2DMAirExtension;->isExtensionInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lair/com/adobe/cc/notifications/c2dm/C2DMRegister;->debug:Z

    if-eqz v0, :cond_1

    .line 219
    :cond_0
    sget-object v0, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->LOG_PREFIX:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_1
    return-void
.end method

.method private static runIntentInService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 205
    sget-object v1, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 208
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 209
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "ADOBE_C2DM_WAKELOCK"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 212
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    sget-object v1, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 213
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 39
    invoke-static {}, Lair/com/adobe/cc/notifications/c2dm/C2DMAirExtension;->isExtensionInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lair/com/adobe/cc/notifications/c2dm/C2DMRegister;->APP_NAME:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":C2DMReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->LOG_PREFIX:Ljava/lang/String;

    .line 44
    :goto_0
    sget-object v0, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->LOG_PREFIX:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "C2DM event received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {p1, p2}, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->runIntentInService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-direct {p0, p1, p2}, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V

    .line 54
    :goto_1
    return-void

    .line 42
    :cond_0
    const-string v0, "<unknown>:C2DMReceiver"

    sput-object v0, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->LOG_PREFIX:Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    invoke-direct {p0, p1, p2}, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->handleMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 53
    :cond_2
    sget-object v0, Lair/com/adobe/cc/notifications/c2dm/C2DMReceiver;->LOG_PREFIX:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Event received but not handled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
