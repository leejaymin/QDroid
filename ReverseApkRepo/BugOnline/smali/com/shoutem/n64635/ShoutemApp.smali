.class public Lcom/shoutem/n64635/ShoutemApp;
.super Landroid/app/Application;
.source "ShoutemApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shoutem/n64635/ShoutemApp$AsyncHttp;
    }
.end annotation


# static fields
.field private static instance:Lcom/shoutem/n64635/ShoutemApp;


# instance fields
.field private appId:Ljava/lang/String;

.field private c2dmRegistrationId:Ljava/lang/String;

.field private currentUserId:Ljava/lang/String;

.field options:Lcom/urbanairship/AirshipConfigOptions;

.field private uaRegistered:Z

.field private uaUserRefusedAirMail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/shoutem/n64635/ShoutemApp;->instance:Lcom/shoutem/n64635/ShoutemApp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shoutem/n64635/ShoutemApp;->uaRegistered:Z

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shoutem/n64635/ShoutemApp;->uaUserRefusedAirMail:Z

    .line 108
    return-void
.end method

.method private isProcess(Ljava/lang/String;)Z
    .locals 7
    .parameter "processName"

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/shoutem/n64635/ShoutemApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 155
    .local v2, context:Landroid/content/Context;
    const-string v5, "activity"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 156
    .local v0, actMgr:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 157
    .local v1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 158
    .local v4, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-ne v5, v6, :cond_0

    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 159
    const/4 v5, 0x1

    .line 162
    .end local v4           #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static setUAId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "appId"
    .parameter "c2dmRegistrationId"

    .prologue
    .line 63
    sget-object v0, Lcom/shoutem/n64635/ShoutemApp;->instance:Lcom/shoutem/n64635/ShoutemApp;

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/shoutem/n64635/ShoutemApp;->instance:Lcom/shoutem/n64635/ShoutemApp;

    iput-object p0, v0, Lcom/shoutem/n64635/ShoutemApp;->appId:Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/shoutem/n64635/ShoutemApp;->instance:Lcom/shoutem/n64635/ShoutemApp;

    iput-object p1, v0, Lcom/shoutem/n64635/ShoutemApp;->c2dmRegistrationId:Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/shoutem/n64635/ShoutemApp;->instance:Lcom/shoutem/n64635/ShoutemApp;

    invoke-virtual {v0}, Lcom/shoutem/n64635/ShoutemApp;->sendAlias()V

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/shoutem/n64635/ShoutemApp;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/shoutem/n64635/ShoutemApp;->currentUserId:Ljava/lang/String;

    return-object v0
.end method

.method public isPushEnabled()Z
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v0

    .line 150
    .local v0, prefs:Lcom/urbanairship/push/PushPreferences;
    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->isPushEnabled()Z

    move-result v1

    return v1
.end method

.method public isUARegistered()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/shoutem/n64635/ShoutemApp;->uaRegistered:Z

    return v0
.end method

.method public isUAUserRefusedAirMail()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/shoutem/n64635/ShoutemApp;->uaUserRefusedAirMail:Z

    return v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 172
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 175
    invoke-static {p0}, Lcom/urbanairship/AirshipConfigOptions;->loadDefaultOptions(Landroid/content/Context;)Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v2

    iput-object v2, p0, Lcom/shoutem/n64635/ShoutemApp;->options:Lcom/urbanairship/AirshipConfigOptions;

    .line 176
    const-string v2, ""

    iget-object v3, p0, Lcom/shoutem/n64635/ShoutemApp;->options:Lcom/urbanairship/AirshipConfigOptions;

    invoke-virtual {v3}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    iget-object v3, p0, Lcom/shoutem/n64635/ShoutemApp;->options:Lcom/urbanairship/AirshipConfigOptions;

    invoke-virtual {v3}, Lcom/urbanairship/AirshipConfigOptions;->getAppSecret()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/shoutem/n64635/ShoutemApp;->options:Lcom/urbanairship/AirshipConfigOptions;

    invoke-static {p0, v2}, Lcom/urbanairship/UAirship;->takeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;)V

    .line 179
    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v2

    const-class v3, Lcom/shoutem/n64635/IntentReceiver;

    invoke-virtual {v2, v3}, Lcom/urbanairship/push/PushManager;->setIntentReceiver(Ljava/lang/Class;)V

    .line 182
    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v1

    .line 183
    .local v1, prefs:Lcom/urbanairship/push/PushPreferences;
    invoke-virtual {v1, v4}, Lcom/urbanairship/push/PushPreferences;->setSoundEnabled(Z)Z

    .line 184
    invoke-virtual {v1, v4}, Lcom/urbanairship/push/PushPreferences;->setVibrateEnabled(Z)Z

    .line 187
    .end local v1           #prefs:Lcom/urbanairship/push/PushPreferences;
    :cond_0
    invoke-virtual {p0}, Lcom/shoutem/n64635/ShoutemApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 188
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/shoutem/n64635/ShoutemApp;->isProcess(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    sput-object p0, Lcom/shoutem/n64635/ShoutemApp;->instance:Lcom/shoutem/n64635/ShoutemApp;

    .line 246
    :cond_1
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    sput-object v0, Lcom/shoutem/n64635/ShoutemApp;->instance:Lcom/shoutem/n64635/ShoutemApp;

    .line 168
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 169
    return-void
.end method

.method public sendAlias()V
    .locals 14

    .prologue
    .line 111
    iget-object v10, p0, Lcom/shoutem/n64635/ShoutemApp;->appId:Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/shoutem/n64635/ShoutemApp;->c2dmRegistrationId:Ljava/lang/String;

    if-nez v10, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-static {}, Lcom/urbanairship/push/PushManager;->shared()Lcom/urbanairship/push/PushManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/urbanairship/push/PushManager;->getPreferences()Lcom/urbanairship/push/PushPreferences;

    move-result-object v5

    .line 116
    .local v5, prefs:Lcom/urbanairship/push/PushPreferences;
    invoke-virtual {v5}, Lcom/urbanairship/push/PushPreferences;->isPushEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 121
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 123
    .local v2, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    iget-object v10, p0, Lcom/shoutem/n64635/ShoutemApp;->options:Lcom/urbanairship/AirshipConfigOptions;

    invoke-virtual {v10}, Lcom/urbanairship/AirshipConfigOptions;->getAppKey()Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, uaKey:Ljava/lang/String;
    iget-object v10, p0, Lcom/shoutem/n64635/ShoutemApp;->options:Lcom/urbanairship/AirshipConfigOptions;

    invoke-virtual {v10}, Lcom/urbanairship/AirshipConfigOptions;->getAppSecret()Ljava/lang/String;

    move-result-object v8

    .line 127
    .local v8, uaSecret:Ljava/lang/String;
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v10

    new-instance v11, Lorg/apache/http/auth/AuthScope;

    const/4 v12, 0x0

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    new-instance v12, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v12, v7, v8}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11, v12}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 130
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "https://go.urbanairship.com/api/apids/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/shoutem/n64635/ShoutemApp;->appId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, URL:Ljava/lang/String;
    new-instance v6, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 132
    .local v6, request:Lorg/apache/http/client/methods/HttpPut;
    const-string v10, "Content-Type"

    const-string v11, "application/json"

    invoke-virtual {v6, v10, v11}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :try_start_0
    iget-object v9, p0, Lcom/shoutem/n64635/ShoutemApp;->currentUserId:Ljava/lang/String;

    .line 135
    .local v9, userId:Ljava/lang/String;
    if-eqz v9, :cond_2

    const-string v10, ""

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 136
    :cond_2
    const-string v9, "null"

    .line 138
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "{\"alias\": \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\",\"c2dm_registration_id\": \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/shoutem/n64635/ShoutemApp;->c2dmRegistrationId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\"}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, jsonData:Ljava/lang/String;
    new-instance v10, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v10, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 140
    new-instance v1, Lcom/shoutem/n64635/ShoutemApp$AsyncHttp;

    invoke-direct {v1, p0, v2, v6}, Lcom/shoutem/n64635/ShoutemApp$AsyncHttp;-><init>(Lcom/shoutem/n64635/ShoutemApp;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 141
    .local v1, asyncHttp:Lcom/shoutem/n64635/ShoutemApp$AsyncHttp;
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Void;

    invoke-virtual {v1, v10}, Lcom/shoutem/n64635/ShoutemApp$AsyncHttp;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 142
    .end local v1           #asyncHttp:Lcom/shoutem/n64635/ShoutemApp$AsyncHttp;
    .end local v4           #jsonData:Ljava/lang/String;
    .end local v9           #userId:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 143
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public setCurrentUserId(Ljava/lang/String;)V
    .locals 2
    .parameter "currentUserId"

    .prologue
    .line 95
    iget-object v1, p0, Lcom/shoutem/n64635/ShoutemApp;->currentUserId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 96
    .local v0, doSendAlias:Z
    :goto_0
    iput-object p1, p0, Lcom/shoutem/n64635/ShoutemApp;->currentUserId:Ljava/lang/String;

    .line 97
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/shoutem/n64635/ShoutemApp;->sendAlias()V

    .line 100
    :cond_0
    return-void

    .line 95
    .end local v0           #doSendAlias:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
