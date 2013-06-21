.class public Lcom/shoutem/DeviceLoadHandler;
.super Ljava/lang/Object;
.source "DeviceLoadHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shoutem/DeviceLoadHandler$IntentResolver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleLoadEvent(Lcom/shoutem/DeviceUrl;)V
    .locals 5
    .parameter "deviceUrl"

    .prologue
    .line 38
    invoke-virtual {p1}, Lcom/shoutem/DeviceUrl;->getParamsJson()Lorg/json/JSONObject;

    move-result-object v2

    .line 41
    .local v2, paramsJson:Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "vnd.android.cursor.item/event"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v3, "startTimeMs"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    const-string v3, "beginTime"

    const-string v4, "startTimeMs"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    :cond_0
    const-string v3, "endTimeMs"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    const-string v3, "endTime"

    const-string v4, "endTimeMs"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    :cond_1
    const-string v3, "allDay"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 51
    const-string v3, "allDay"

    const-string v4, "allDay"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 53
    :cond_2
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 54
    const-string v3, "title"

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    :cond_3
    sget-object v3, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v3, v1}, Lcom/shoutem/n64635/HomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private playYouTubeVideo(Ljava/lang/String;)V
    .locals 13
    .parameter "videoId"

    .prologue
    .line 191
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http://www.youtube.com/v/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 192
    .local v9, videoUri:Landroid/net/Uri;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http://m.youtube.com/#/watch?v="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 194
    .local v4, mobilePageUri:Landroid/net/Uri;
    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v8, v10, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 195
    .local v8, videoIntent:Landroid/content/Intent;
    sget-object v10, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v10}, Lcom/shoutem/n64635/HomeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/high16 v11, 0x1

    invoke-virtual {v10, v8, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 197
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v7, resolvers:Ljava/util/List;,"Ljava/util/List<Lcom/shoutem/DeviceLoadHandler$IntentResolver;>;"
    new-instance v10, Lcom/shoutem/DeviceLoadHandler$1;

    invoke-direct {v10, p0, v9}, Lcom/shoutem/DeviceLoadHandler$1;-><init>(Lcom/shoutem/DeviceLoadHandler;Landroid/net/Uri;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v10, Lcom/shoutem/DeviceLoadHandler$2;

    invoke-direct {v10, p0, v4}, Lcom/shoutem/DeviceLoadHandler$2;-><init>(Lcom/shoutem/DeviceLoadHandler;Landroid/net/Uri;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shoutem/DeviceLoadHandler$IntentResolver;

    .line 221
    .local v6, resolver:Lcom/shoutem/DeviceLoadHandler$IntentResolver;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 222
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-interface {v6, p1, v5}, Lcom/shoutem/DeviceLoadHandler$IntentResolver;->handle(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v2

    .line 223
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 224
    sget-object v10, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v10, v2}, Lcom/shoutem/n64635/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 231
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v6           #resolver:Lcom/shoutem/DeviceLoadHandler$IntentResolver;
    :goto_0
    return-void

    .line 230
    :cond_2
    sget-object v10, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    invoke-direct {v11, v12, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v10, v11}, Lcom/shoutem/n64635/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public handle(Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 3
    .parameter "url"
    .parameter "view"

    .prologue
    .line 25
    const-string v0, "device://load/url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/shoutem/DeviceLoadHandler;->handleLoadUrl(Ljava/lang/String;Landroid/webkit/WebView;)V

    .line 36
    :goto_0
    return-void

    .line 27
    :cond_0
    const-string v0, "device://load/video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/shoutem/DeviceLoadHandler;->handleLoadVideo(Ljava/lang/String;Landroid/webkit/WebView;)V

    goto :goto_0

    .line 29
    :cond_1
    const-string v0, "device://load/audio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/shoutem/DeviceLoadHandler;->handleLoadAudio(Ljava/lang/String;Landroid/webkit/WebView;)V

    goto :goto_0

    .line 31
    :cond_2
    const-string v0, "device://load/event/addToCalendar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    new-instance v0, Lcom/shoutem/DeviceUrl;

    invoke-direct {v0, p1}, Lcom/shoutem/DeviceUrl;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/shoutem/DeviceLoadHandler;->handleLoadEvent(Lcom/shoutem/DeviceUrl;)V

    goto :goto_0

    .line 34
    :cond_3
    const-string v0, "model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dont know how to handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleLoadAudio(Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 12
    .parameter "url"
    .parameter "view"

    .prologue
    .line 234
    const-string v9, ""

    .line 236
    .local v9, value:Ljava/lang/String;
    :try_start_0
    const-string v5, "device://load/audio"

    .line 237
    .local v5, methodUrl:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 243
    new-instance v7, Lorg/json/JSONTokener;

    invoke-direct {v7, v9}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 244
    .local v7, test:Lorg/json/JSONTokener;
    const/4 v8, 0x0

    .line 248
    .local v8, urlToLoad:Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, obj:Ljava/lang/Object;
    if-eqz v6, :cond_2

    .line 249
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-class v11, Lorg/json/JSONObject;

    if-ne v10, v11, :cond_0

    .line 250
    move-object v0, v6

    check-cast v0, Lorg/json/JSONObject;

    move-object v4, v0

    .line 251
    .local v4, jobj:Lorg/json/JSONObject;
    const-string v10, "url"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 252
    goto :goto_0

    .line 238
    .end local v4           #jobj:Lorg/json/JSONObject;
    .end local v5           #methodUrl:Ljava/lang/String;
    .end local v6           #obj:Ljava/lang/Object;
    .end local v7           #test:Lorg/json/JSONTokener;
    .end local v8           #urlToLoad:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 239
    .local v2, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 274
    .end local v2           #e1:Ljava/io/UnsupportedEncodingException;
    :cond_1
    :goto_1
    return-void

    .line 254
    .restart local v5       #methodUrl:Ljava/lang/String;
    .restart local v7       #test:Lorg/json/JSONTokener;
    .restart local v8       #urlToLoad:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 255
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 258
    .end local v1           #e:Lorg/json/JSONException;
    :cond_2
    if-eqz v8, :cond_1

    .line 260
    :try_start_2
    const-string v10, "model"

    const-string v11, "Playing via default activity."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .local v3, intent:Landroid/content/Intent;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const-string v11, "audio/*"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    sget-object v10, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v10, v3}, Lcom/shoutem/n64635/HomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 264
    .end local v3           #intent:Landroid/content/Intent;
    :catch_2
    move-exception v2

    .line 265
    .local v2, e1:Landroid/content/ActivityNotFoundException;
    const-string v10, "model"

    const-string v11, "Audio URL not handled - no audio players found."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :try_start_3
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 268
    .restart local v3       #intent:Landroid/content/Intent;
    sget-object v10, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v10, v3}, Lcom/shoutem/n64635/HomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 269
    .end local v3           #intent:Landroid/content/Intent;
    :catch_3
    move-exception v10

    goto :goto_1
.end method

.method public handleLoadUrl(Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 15
    .parameter "url"
    .parameter "view"

    .prologue
    .line 68
    const-string v10, ""

    .line 70
    .local v10, value:Ljava/lang/String;
    :try_start_0
    const-string v6, "device://load/url"

    .line 71
    .local v6, methodUrl:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-static {v11, v12}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 77
    new-instance v8, Lorg/json/JSONTokener;

    invoke-direct {v8, v10}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 78
    .local v8, test:Lorg/json/JSONTokener;
    const/4 v9, 0x0

    .line 79
    .local v9, urlToLoad:Ljava/lang/String;
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 83
    .local v4, isExternal:Ljava/lang/Boolean;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v8}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v7

    .local v7, obj:Ljava/lang/Object;
    if-eqz v7, :cond_2

    .line 84
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-class v12, Lorg/json/JSONObject;

    if-ne v11, v12, :cond_0

    .line 85
    move-object v0, v7

    check-cast v0, Lorg/json/JSONObject;

    move-object v5, v0

    .line 86
    .local v5, jobj:Lorg/json/JSONObject;
    const-string v11, "url"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 88
    :try_start_2
    const-string v11, "external"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    goto :goto_0

    .line 72
    .end local v4           #isExternal:Ljava/lang/Boolean;
    .end local v5           #jobj:Lorg/json/JSONObject;
    .end local v6           #methodUrl:Ljava/lang/String;
    .end local v7           #obj:Ljava/lang/Object;
    .end local v8           #test:Lorg/json/JSONTokener;
    .end local v9           #urlToLoad:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 73
    .local v3, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 117
    .end local v3           #e1:Ljava/io/UnsupportedEncodingException;
    :cond_1
    :goto_1
    return-void

    .line 93
    .restart local v4       #isExternal:Ljava/lang/Boolean;
    .restart local v6       #methodUrl:Ljava/lang/String;
    .restart local v8       #test:Lorg/json/JSONTokener;
    .restart local v9       #urlToLoad:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 94
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 97
    .end local v2           #e:Lorg/json/JSONException;
    :cond_2
    if-eqz v9, :cond_1

    .line 98
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 99
    const-string v11, "tel:"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 100
    const-string v11, "/"

    const-string v12, ""

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 101
    new-instance v1, Landroid/content/Intent;

    const-string v11, "android.intent.action.DIAL"

    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v1, callIntent:Landroid/content/Intent;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 103
    sget-object v11, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v11, v1}, Lcom/shoutem/n64635/HomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 114
    .end local v1           #callIntent:Landroid/content/Intent;
    :catch_2
    move-exception v2

    .line 115
    .local v2, e:Ljava/lang/Exception;
    const-string v11, "model"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 105
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_4
    sget-object v11, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v11, v12}, Lcom/shoutem/n64635/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 111
    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 89
    .restart local v5       #jobj:Lorg/json/JSONObject;
    .restart local v7       #obj:Ljava/lang/Object;
    :catch_3
    move-exception v11

    goto :goto_0
.end method

.method public handleLoadVideo(Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 15
    .parameter "url"
    .parameter "view"

    .prologue
    .line 120
    const-string v9, ""

    .line 122
    .local v9, value:Ljava/lang/String;
    :try_start_0
    const-string v5, "device://load/video"

    .line 123
    .local v5, methodUrl:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-static {v11, v12}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 129
    new-instance v7, Lorg/json/JSONTokener;

    invoke-direct {v7, v9}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 130
    .local v7, test:Lorg/json/JSONTokener;
    const/4 v8, 0x0

    .line 134
    .local v8, urlToLoad:Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v6

    .local v6, obj:Ljava/lang/Object;
    if-eqz v6, :cond_2

    .line 135
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-class v12, Lorg/json/JSONObject;

    if-ne v11, v12, :cond_0

    .line 136
    move-object v0, v6

    check-cast v0, Lorg/json/JSONObject;

    move-object v4, v0

    .line 137
    .local v4, jobj:Lorg/json/JSONObject;
    const-string v11, "url"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 138
    goto :goto_0

    .line 124
    .end local v4           #jobj:Lorg/json/JSONObject;
    .end local v5           #methodUrl:Ljava/lang/String;
    .end local v6           #obj:Ljava/lang/Object;
    .end local v7           #test:Lorg/json/JSONTokener;
    .end local v8           #urlToLoad:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 125
    .local v2, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 184
    .end local v2           #e1:Ljava/io/UnsupportedEncodingException;
    :cond_1
    :goto_1
    return-void

    .line 140
    .restart local v5       #methodUrl:Ljava/lang/String;
    .restart local v7       #test:Lorg/json/JSONTokener;
    .restart local v8       #urlToLoad:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 141
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 144
    .end local v1           #e:Lorg/json/JSONException;
    :cond_2
    if-eqz v8, :cond_1

    .line 149
    :try_start_2
    const-string v11, "ytv://"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 150
    const-string v11, "ytv://"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 151
    .local v10, videoId:Ljava/lang/String;
    invoke-direct {p0, v10}, Lcom/shoutem/DeviceLoadHandler;->playYouTubeVideo(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 160
    .end local v10           #videoId:Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 161
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v11, "model"

    const-string v12, "Video URL not handled - no video players found."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 152
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_3
    :try_start_3
    const-string v11, "vimeo"

    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    .line 153
    sget-object v11, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v11, v12}, Lcom/shoutem/n64635/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 155
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v3, intent:Landroid/content/Intent;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const-string v12, "video/*"

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    sget-object v11, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v11, v3}, Lcom/shoutem/n64635/HomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1
.end method
