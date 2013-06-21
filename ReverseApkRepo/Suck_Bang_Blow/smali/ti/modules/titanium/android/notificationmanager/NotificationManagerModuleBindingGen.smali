.class public Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen;
.super Lorg/appcelerator/kroll/KrollModuleBindingGen;
.source "NotificationManagerModuleBindingGen.java"


# static fields
.field private static final CONST_DEFAULT_ALL:Ljava/lang/String; = "DEFAULT_ALL"

.field private static final CONST_DEFAULT_LIGHTS:Ljava/lang/String; = "DEFAULT_LIGHTS"

.field private static final CONST_DEFAULT_SOUND:Ljava/lang/String; = "DEFAULT_SOUND"

.field private static final CONST_DEFAULT_VIBRATE:Ljava/lang/String; = "DEFAULT_VIBRATE"

.field private static final CONST_FLAG_AUTO_CANCEL:Ljava/lang/String; = "FLAG_AUTO_CANCEL"

.field private static final CONST_FLAG_INSISTENT:Ljava/lang/String; = "FLAG_INSISTENT"

.field private static final CONST_FLAG_NO_CLEAR:Ljava/lang/String; = "FLAG_NO_CLEAR"

.field private static final CONST_FLAG_ONGOING_EVENT:Ljava/lang/String; = "FLAG_ONGOING_EVENT"

.field private static final CONST_FLAG_ONLY_ALERT_ONCE:Ljava/lang/String; = "FLAG_ONLY_ALERT_ONCE"

.field private static final CONST_FLAG_SHOW_LIGHTS:Ljava/lang/String; = "FLAG_SHOW_LIGHTS"

.field private static final CONST_STREAM_DEFAULT:Ljava/lang/String; = "STREAM_DEFAULT"

.field private static final FULL_API_NAME:Ljava/lang/String; = "Android.NotificationManager"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.android.notificationmanager.NotificationManagerModule"

.field private static final METHOD_cancel:Ljava/lang/String; = "cancel"

.field private static final METHOD_cancelAll:Ljava/lang/String; = "cancelAll"

.field private static final METHOD_notify:Ljava/lang/String; = "notify"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "NotificationManager"

.field private static final TAG:Ljava/lang/String; = "NotificationManagerModuleBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 57
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModuleBindingGen;-><init>()V

    .line 59
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "FLAG_ONGOING_EVENT"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "FLAG_AUTO_CANCEL"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "STREAM_DEFAULT"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "FLAG_INSISTENT"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "FLAG_NO_CLEAR"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "FLAG_ONLY_ALERT_ONCE"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "FLAG_SHOW_LIGHTS"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "DEFAULT_ALL"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "DEFAULT_LIGHTS"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "DEFAULT_SOUND"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "DEFAULT_VIBRATE"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "cancelAll"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "notify"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "cancel"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 78
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const-string v0, "Android.NotificationManager"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .parameter "name"

    .prologue
    const-string v8, "notify"

    const-string v7, "cancelAll"

    const-string v6, "cancel"

    .line 82
    iget-object v4, p0, Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen;->bindings:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 83
    .local v3, value:Ljava/lang/Object;
    if-eqz v3, :cond_0

    move-object v4, v3

    .line 183
    :goto_0
    return-object v4

    .line 93
    :cond_0
    const-string v4, "cancelAll"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    new-instance v0, Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen$1;

    const-string v4, "cancelAll"

    invoke-direct {v0, p0, v7}, Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen$1;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen;Ljava/lang/String;)V

    .line 109
    .local v0, cancelAll_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v4, p0, Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v5, "cancelAll"

    invoke-virtual {v4, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v0

    .line 110
    goto :goto_0

    .line 113
    .end local v0           #cancelAll_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1
    const-string v4, "notify"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    new-instance v2, Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen$2;

    const-string v4, "notify"

    invoke-direct {v2, p0, v8}, Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen$2;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen;Ljava/lang/String;)V

    .line 148
    .local v2, notify_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v4, p0, Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v5, "notify"

    invoke-virtual {v4, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v2

    .line 149
    goto :goto_0

    .line 152
    .end local v2           #notify_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_2
    const-string v4, "cancel"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 153
    new-instance v1, Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen$3;

    const-string v4, "cancel"

    invoke-direct {v1, p0, v6}, Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen$3;-><init>(Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen;Ljava/lang/String;)V

    .line 178
    .local v1, cancel_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v4, p0, Lti/modules/titanium/android/notificationmanager/NotificationManagerModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v5, "cancel"

    invoke-virtual {v4, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v1

    .line 179
    goto :goto_0

    .line 183
    .end local v1           #cancel_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    const-string v0, "ti.modules.titanium.android.notificationmanager.NotificationManagerModule"

    return-object v0
.end method

.method public getProxyClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    const-class v0, Lti/modules/titanium/android/notificationmanager/NotificationManagerModule;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-string v0, "NotificationManager"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 203
    new-instance v0, Lti/modules/titanium/android/notificationmanager/NotificationManagerModule;

    invoke-direct {v0, p1}, Lti/modules/titanium/android/notificationmanager/NotificationManagerModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    return-object v0
.end method
