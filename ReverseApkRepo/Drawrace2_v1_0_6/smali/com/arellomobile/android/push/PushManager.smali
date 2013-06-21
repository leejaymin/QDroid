.class public Lcom/arellomobile/android/push/PushManager;
.super Ljava/lang/Object;
.source "PushManager.java"


# static fields
.field public static final APP_ID:Ljava/lang/String; = "4f5e82c74e3257.03888584"

.field public static BUNDLE_NULL:Z = false

.field private static HTML_URL_FORMAT:Ljava/lang/String; = null

.field static final INFO_MESSAGE_KEY:Ljava/lang/String; = "com.arellomobile.android.push.MESSAGE"

.field public static final MESSAGE_ID:I = 0x3e9

.field public static final PUSH_RECEIVE_EVENT:Ljava/lang/String; = "PUSH_RECEIVE_EVENT"

.field public static final REGISTER_ERROR_EVENT:Ljava/lang/String; = "REGISTER_ERROR_EVENT"

.field public static final REGISTER_EVENT:Ljava/lang/String; = "REGISTER_EVENT"

.field public static final SENDER_ID:Ljava/lang/String; = "psarkimo@gmail.com"

.field public static final UNREGISTER_EVENT:Ljava/lang/String; = "UNREGISTER_EVENT"


# instance fields
.field private context:Landroid/content/Context;

.field private lastPush:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "https://cp.pushwoosh.com/content/%s"

    sput-object v0, Lcom/arellomobile/android/push/PushManager;->HTML_URL_FORMAT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/arellomobile/android/push/PushManager;->context:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method public getCustomData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 120
    iget-object v1, p0, Lcom/arellomobile/android/push/PushManager;->lastPush:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 126
    :goto_0
    return-object v0

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/arellomobile/android/push/PushManager;->lastPush:Landroid/os/Bundle;

    const-string v2, "u"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    .local v0, customData:Ljava/lang/String;
    goto :goto_0
.end method

.method public onHandlePush(Landroid/app/Activity;)Z
    .locals 8
    .parameter "activity"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 131
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "pushBundle"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 132
    .local v1, pushBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/arellomobile/android/push/PushManager;->context:Landroid/content/Context;

    if-nez v6, :cond_1

    :cond_0
    move v4, v5

    .line 160
    :goto_0
    return v4

    .line 137
    :cond_1
    iput-object v1, p0, Lcom/arellomobile/android/push/PushManager;->lastPush:Landroid/os/Bundle;

    .line 140
    const-string v6, "h"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 142
    .local v2, url:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 144
    sget-object v6, Lcom/arellomobile/android/push/PushManager;->HTML_URL_FORMAT:Ljava/lang/String;

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v2, v7, v5

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/arellomobile/android/push/PushWebview;

    invoke-direct {v0, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v0, intent:Landroid/content/Intent;
    const-string v5, "url"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 153
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    const-string v5, "u"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 154
    .local v3, userData:Ljava/lang/String;
    if-nez v3, :cond_3

    .line 156
    const-string v5, "title"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #userData:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 158
    .restart local v3       #userData:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/arellomobile/android/push/PushManager;->context:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/arellomobile/android/push/PushEventsTransmitter;->onMessageReceive(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStartup(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 87
    sget-boolean v2, Lcom/arellomobile/android/push/PushManager;->BUNDLE_NULL:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 89
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 91
    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "PUSH_RECEIVE_EVENT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string v2, "psarkimo@gmail.com"

    invoke-static {p1, v2}, Lcom/google/android/c2dm/C2DMessaging;->register(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_2
    invoke-static {p1}, Lcom/google/android/c2dm/C2DMessaging;->getApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, appId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/c2dm/C2DMessaging;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, id:Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    const-string v2, "4f5e82c74e3257.03888584"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    :cond_3
    const-string v2, "psarkimo@gmail.com"

    invoke-static {p1, v2}, Lcom/google/android/c2dm/C2DMessaging;->register(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStartup(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 4
    .parameter "savedInstanceState"
    .parameter "context"

    .prologue
    .line 53
    if-nez p1, :cond_2

    .line 55
    instance-of v2, p2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 57
    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "PUSH_RECEIVE_EVENT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const-string v2, "psarkimo@gmail.com"

    invoke-static {p2, v2}, Lcom/google/android/c2dm/C2DMessaging;->register(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_2
    invoke-static {p2}, Lcom/google/android/c2dm/C2DMessaging;->getApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, appId:Ljava/lang/String;
    invoke-static {p2}, Lcom/google/android/c2dm/C2DMessaging;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, id:Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    const-string v2, "4f5e82c74e3257.03888584"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    :cond_3
    const-string v2, "psarkimo@gmail.com"

    invoke-static {p2, v2}, Lcom/google/android/c2dm/C2DMessaging;->register(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/arellomobile/android/push/PushManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/c2dm/C2DMessaging;->unregister(Landroid/content/Context;)V

    .line 116
    return-void
.end method
