.class public Lcom/magmamobile/mmusia/MMUSIA;
.super Ljava/lang/Object;
.source "MMUSIA.java"


# static fields
.field public static LANGUAGE:Ljava/lang/String; = null

.field public static RES_DRAWABLE_ICONAPP:I = 0x0

.field public static RES_ID_ITEM_DATE:I = 0x0

.field public static RES_ID_ITEM_DESC:I = 0x0

.field public static RES_ID_ITEM_IMG:I = 0x0

.field public static RES_ID_ITEM_LINEARITEM:I = 0x0

.field public static RES_ID_ITEM_TITLE:I = 0x0

.field public static RES_ID_LISTVIEW_APPUPDATE:I = 0x0

.field public static RES_ID_LISTVIEW_MAINTAB:I = 0x0

.field public static RES_ID_LISTVIEW_NEWSLIST:I = 0x0

.field public static RES_ID_PREF_CHECK_ENABLE:I = 0x0

.field public static RES_ID_TAB_NEWS:I = 0x0

.field public static RES_ID_TAB_UPDATE:I = 0x0

.field public static api:Lcom/magmamobile/mmusia/parser/data/ApiBase; = null

.field public static final apiUrl:Ljava/lang/String; = "http://api.magmamobile.com/api/mmusia.ashx"

.field private static mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x2710

    sput v0, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_LISTVIEW_APPUPDATE:I

    .line 31
    const/16 v0, 0x2711

    sput v0, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_LISTVIEW_NEWSLIST:I

    .line 32
    const/16 v0, 0x2712

    sput v0, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_LISTVIEW_MAINTAB:I

    .line 33
    const/16 v0, 0x2713

    sput v0, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_TAB_UPDATE:I

    .line 34
    const/16 v0, 0x2714

    sput v0, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_TAB_NEWS:I

    .line 35
    const/16 v0, 0x2715

    sput v0, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_ITEM_LINEARITEM:I

    .line 36
    const/16 v0, 0x2716

    sput v0, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_ITEM_TITLE:I

    .line 37
    const/16 v0, 0x2717

    sput v0, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_ITEM_DATE:I

    .line 38
    const/16 v0, 0x2718

    sput v0, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_ITEM_DESC:I

    .line 39
    const/16 v0, 0x2719

    sput v0, Lcom/magmamobile/mmusia/MMUSIA;->RES_ID_ITEM_IMG:I

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LNews(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "newsid"

    .prologue
    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v1, nvps:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "di"

    invoke-static {p0}, Lcom/magmamobile/mmusia/MCommon;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "nid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "a"

    const-string v4, "click"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :try_start_0
    const-string v2, "http://api.magmamobile.com/api/mmusia.ashx"

    invoke-static {v2, v1}, Lcom/magmamobile/mmusia/parser/parsers/JSonNews;->loadItems(Ljava/lang/String;Ljava/util/List;)Lcom/magmamobile/mmusia/parser/data/ApiBase;

    move-result-object v2

    sput-object v2, Lcom/magmamobile/mmusia/MMUSIA;->api:Lcom/magmamobile/mmusia/parser/data/ApiBase;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 133
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static LUpdate(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "pName"

    .prologue
    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v1, nvps:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "di"

    invoke-static {p0}, Lcom/magmamobile/mmusia/MCommon;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pn"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "a"

    const-string v4, "click"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :try_start_0
    const-string v2, "http://api.magmamobile.com/api/mmusia.ashx"

    invoke-static {v2, v1}, Lcom/magmamobile/mmusia/parser/parsers/JSonNews;->loadItems(Ljava/lang/String;Ljava/util/List;)Lcom/magmamobile/mmusia/parser/data/ApiBase;

    move-result-object v2

    sput-object v2, Lcom/magmamobile/mmusia/MMUSIA;->api:Lcom/magmamobile/mmusia/parser/data/ApiBase;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 145
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static activateNews(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "activation"

    .prologue
    const-string v5, "a"

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v1, nvps:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "di"

    invoke-static {p0}, Lcom/magmamobile/mmusia/MCommon;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    if-eqz p1, :cond_0

    .line 113
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "a"

    const-string v3, "activate"

    invoke-direct {v2, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :goto_0
    :try_start_0
    const-string v2, "http://api.magmamobile.com/api/mmusia.ashx"

    invoke-static {v2, v1}, Lcom/magmamobile/mmusia/parser/parsers/JSonNews;->loadItems(Ljava/lang/String;Ljava/util/List;)Lcom/magmamobile/mmusia/parser/data/ApiBase;

    move-result-object v2

    sput-object v2, Lcom/magmamobile/mmusia/MMUSIA;->api:Lcom/magmamobile/mmusia/parser/data/ApiBase;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_1
    return-void

    .line 115
    :cond_0
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "a"

    const-string v3, "desactivate"

    invoke-direct {v2, v5, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 120
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getLatestNews(Landroid/content/Context;Z)V
    .locals 11
    .parameter "context"
    .parameter "notify"

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    const-string v6, "drawable"

    .line 71
    :try_start_0
    const-string v6, "http://api.magmamobile.com/api/mmusia.ashx"

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    :goto_0
    invoke-static {p0, v7, v8}, Lcom/magmamobile/mmusia/MCommon;->buildUrlParam(Landroid/content/Context;IZ)Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/magmamobile/mmusia/parser/parsers/JSonNews;->loadItems(Ljava/lang/String;Ljava/util/List;)Lcom/magmamobile/mmusia/parser/data/ApiBase;

    move-result-object v6

    sput-object v6, Lcom/magmamobile/mmusia/MMUSIA;->api:Lcom/magmamobile/mmusia/parser/data/ApiBase;

    .line 72
    sget-object v6, Lcom/magmamobile/mmusia/MMUSIA;->api:Lcom/magmamobile/mmusia/parser/data/ApiBase;

    if-nez v6, :cond_2

    .line 105
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v8, v10

    .line 71
    goto :goto_0

    .line 73
    :cond_2
    if-eqz p1, :cond_0

    .line 75
    sget-object v6, Lcom/magmamobile/mmusia/MMUSIA;->api:Lcom/magmamobile/mmusia/parser/data/ApiBase;

    iget v6, v6, Lcom/magmamobile/mmusia/parser/data/ApiBase;->HasNewNews:I

    if-ne v6, v10, :cond_3

    .line 78
    new-instance v4, Landroid/app/Notification;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "icon"

    const-string v8, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const-string v7, "Magma Mobile News"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 79
    .local v4, notification:Landroid/app/Notification;
    sget-object v2, Lcom/magmamobile/mmusia/data/LanguageBase;->NOTIF_NEWS_TITLE:Ljava/lang/String;

    .line 80
    .local v2, contentTitle:Ljava/lang/CharSequence;
    sget-object v1, Lcom/magmamobile/mmusia/data/LanguageBase;->NOTIF_NEWS_DESC:Ljava/lang/String;

    .line 81
    .local v1, contentText:Ljava/lang/CharSequence;
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v5, notificationIntent:Landroid/content/Intent;
    const-string v6, "tab"

    const-string v7, "news"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p0, v6, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 84
    .local v0, contentIntent:Landroid/app/PendingIntent;
    const/16 v6, 0x10

    iput v6, v4, Landroid/app/Notification;->flags:I

    .line 85
    invoke-virtual {v4, p0, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 86
    sget-object v6, Lcom/magmamobile/mmusia/MMUSIA;->mNotificationManager:Landroid/app/NotificationManager;

    const v7, 0xf40e4

    invoke-virtual {v6, v7, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 88
    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    .end local v1           #contentText:Ljava/lang/CharSequence;
    .end local v2           #contentTitle:Ljava/lang/CharSequence;
    .end local v4           #notification:Landroid/app/Notification;
    .end local v5           #notificationIntent:Landroid/content/Intent;
    :cond_3
    sget-object v6, Lcom/magmamobile/mmusia/MMUSIA;->api:Lcom/magmamobile/mmusia/parser/data/ApiBase;

    iget v6, v6, Lcom/magmamobile/mmusia/parser/data/ApiBase;->HasNewUpdates:I

    if-ne v6, v10, :cond_0

    .line 91
    new-instance v4, Landroid/app/Notification;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "icon"

    const-string v8, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const-string v7, "Update available"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 92
    .restart local v4       #notification:Landroid/app/Notification;
    sget-object v2, Lcom/magmamobile/mmusia/data/LanguageBase;->NOTIF_UPDATE_TITLE:Ljava/lang/String;

    .line 93
    .restart local v2       #contentTitle:Ljava/lang/CharSequence;
    sget-object v1, Lcom/magmamobile/mmusia/data/LanguageBase;->NOTIF_UPDATE_DESC:Ljava/lang/String;

    .line 94
    .restart local v1       #contentText:Ljava/lang/CharSequence;
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .restart local v5       #notificationIntent:Landroid/content/Intent;
    const-string v6, "tab"

    const-string v7, "app"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p0, v6, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 97
    .restart local v0       #contentIntent:Landroid/app/PendingIntent;
    const/16 v6, 0x10

    iput v6, v4, Landroid/app/Notification;->flags:I

    .line 98
    invoke-virtual {v4, p0, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 99
    sget-object v6, Lcom/magmamobile/mmusia/MMUSIA;->mNotificationManager:Landroid/app/NotificationManager;

    const v7, 0xf40e4

    invoke-virtual {v6, v7, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 102
    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    .end local v1           #contentText:Ljava/lang/CharSequence;
    .end local v2           #contentTitle:Ljava/lang/CharSequence;
    .end local v4           #notification:Landroid/app/Notification;
    .end local v5           #notificationIntent:Landroid/content/Intent;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 103
    .local v3, e:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public static final launch(Landroid/app/Activity;I)V
    .locals 2
    .parameter "context"
    .parameter "param"

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 151
    return-void
.end method


# virtual methods
.method public Init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "Language"

    .prologue
    const-string v5, "fr"

    .line 48
    const-string v1, "MMUSIA INIT"

    invoke-static {v1}, Lcom/magmamobile/mmusia/MCommon;->Log_i(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "icon"

    const-string v3, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/magmamobile/mmusia/MMUSIA;->RES_DRAWABLE_ICONAPP:I

    .line 53
    const-string v1, "fr"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-static {}, Lcom/magmamobile/mmusia/data/LanguageBase;->setLanguageFR()V

    .line 56
    const-string v1, "fr"

    sput-object v5, Lcom/magmamobile/mmusia/MMUSIA;->LANGUAGE:Ljava/lang/String;

    .line 62
    :goto_0
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    sput-object v1, Lcom/magmamobile/mmusia/MMUSIA;->mNotificationManager:Landroid/app/NotificationManager;

    .line 64
    new-instance v0, Lcom/magmamobile/mmusia/MMUSIA$1;

    invoke-direct {v0, p0, p1}, Lcom/magmamobile/mmusia/MMUSIA$1;-><init>(Lcom/magmamobile/mmusia/MMUSIA;Landroid/content/Context;)V

    .line 65
    .local v0, mThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 66
    return-void

    .line 58
    .end local v0           #mThread:Ljava/lang/Thread;
    :cond_0
    invoke-static {}, Lcom/magmamobile/mmusia/data/LanguageBase;->setLanguageEN()V

    .line 59
    const-string v1, "en"

    sput-object v1, Lcom/magmamobile/mmusia/MMUSIA;->LANGUAGE:Ljava/lang/String;

    goto :goto_0
.end method
