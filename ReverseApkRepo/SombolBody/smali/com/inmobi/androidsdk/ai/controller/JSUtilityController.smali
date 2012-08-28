.class public Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;
.super Lcom/inmobi/androidsdk/ai/controller/JSController;
.source "JSUtilityController.java"


# instance fields
.field private a:Lcom/inmobi/androidsdk/ai/controller/JSAssetController;

.field private b:Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;


# direct methods
.method public constructor <init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/ai/controller/JSController;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/content/Context;)V

    .line 64
    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/JSAssetController;

    invoke-direct {v0, p1, p2}, Lcom/inmobi/androidsdk/ai/controller/JSAssetController;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->a:Lcom/inmobi/androidsdk/ai/controller/JSAssetController;

    .line 65
    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;

    invoke-direct {v0, p1, p2}, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;-><init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->b:Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;

    .line 72
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->b:Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;

    const-string v1, "displayController"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    const/4 p1, 0x0

    .line 171
    :cond_0
    :goto_0
    return-object p1

    .line 165
    :cond_1
    const-string v0, "tel:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    .line 305
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 306
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 307
    const-wide/32 v4, 0x36ee80

    add-long/2addr v4, v2

    .line 308
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 309
    const-string v6, "calendar_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 310
    const-string v6, "title"

    invoke-virtual {v0, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v6, "description"

    invoke-virtual {v0, v6, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v6, "dtstart"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 313
    const-string v2, "hasAlarm"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 314
    const-string v2, "dtend"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 317
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v9, :cond_1

    .line 319
    const-string v2, "content://com.android.calendar/events"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 318
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 323
    :goto_0
    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 325
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 326
    const-string v4, "event_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 327
    const-string v2, "method"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 328
    const-string v2, "minutes"

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v9, :cond_2

    .line 331
    const-string v2, "content://com.android.calendar/reminders"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 330
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 337
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->mContext:Landroid/content/Context;

    const-string v1, "Event added to calendar"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 339
    return-void

    .line 321
    :cond_1
    const-string v2, "content://calendar/events"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 334
    :cond_2
    const-string v2, "content://calendar/reminders"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 303
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public activate(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 402
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 403
    const-string v0, "InMobiAndroidSDK_3.5.4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSUtilityController-> activate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    return-void
.end method

.method public asyncPing(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 490
    :try_start_0
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 491
    const-string v0, "InMobiAndroidSDK_3.5.4"

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSUtilityController-> asyncPing: url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 491
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_0
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const-string v1, "Invalid url"

    const-string v2, "asyncPing"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :goto_0
    return-void

    .line 497
    :cond_1
    new-instance v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    .line 498
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getExpandedActivity()Landroid/app/Activity;

    move-result-object v1

    .line 497
    invoke-direct {v0, v1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;-><init>(Landroid/content/Context;)V

    .line 499
    invoke-virtual {v0, p1}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->asyncPing(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public closeVideo(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 623
    const-string v0, "InMobiAndroidSDK_3.5.4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSUtilityController-> closeVideo: id :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->closeVideo(Ljava/lang/String;)V

    .line 625
    return-void
.end method

.method public copyTextFromJarIntoAssetDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 351
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->a:Lcom/inmobi/androidsdk/ai/controller/JSAssetController;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/androidsdk/ai/controller/JSAssetController;->copyTextFromJarIntoAssetDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 226
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 227
    const-string v0, "InMobiAndroidSDK_3.5.4"

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSUtilityController-> createEvent: date: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 229
    const-string v2, " title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 228
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 233
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v6

    const-string v1, "displayName"

    aput-object v1, v2, v7

    .line 234
    const-string v1, "_sync_account"

    aput-object v1, v2, v8

    .line 236
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_3

    .line 238
    const-string v1, "content://com.android.calendar/calendars"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    .line 237
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 244
    :goto_0
    if-eqz v9, :cond_1

    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->mContext:Landroid/content/Context;

    const-string v1, "No calendar account found"

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 248
    if-eqz v9, :cond_2

    .line 249
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 289
    :cond_2
    :goto_1
    return-void

    .line 241
    :cond_3
    const-string v1, "content://calendar/calendars"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    .line 253
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v7, :cond_5

    .line 254
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 256
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v6

    .line 258
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_6

    .line 267
    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 268
    const-string v0, "Choose Calendar to save event to"

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 269
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->mContext:Landroid/content/Context;

    .line 270
    const v3, 0x109000d

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "NAME"

    aput-object v5, v4, v6

    .line 271
    const-string v5, "EMAILID"

    aput-object v5, v4, v7

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    .line 269
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 273
    const/4 v1, -0x1

    .line 274
    new-instance v3, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController$1;

    move-object v4, p0

    move-object v5, v2

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController$1;-><init>(Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v10, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 285
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    .line 259
    :cond_6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 260
    const-string v3, "ID"

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v3, "NAME"

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v3, "EMAILID"

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 271
    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method public deactivate(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 430
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 431
    const-string v0, "InMobiAndroidSDK_3.5.4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSUtilityController-> deactivate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_0
    return-void
.end method

.method public deleteOldAds()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->a:Lcom/inmobi/androidsdk/ai/controller/JSAssetController;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/JSAssetController;->deleteOldAds()V

    .line 456
    return-void
.end method

.method public getAudioVolume(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 556
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "JSUtilityController-> getAudioVolume: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getAudioVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getVideoVolume(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 663
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "JSUtilityController-> getVideoVolume: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getVideoVolume(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hideVideo(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 628
    const-string v0, "InMobiAndroidSDK_3.5.4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSUtilityController-> hideVideo: id :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->hideVideo(Ljava/lang/String;)V

    .line 630
    return-void
.end method

.method public isAudioMuted(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 546
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "JSUtilityController-> isAudioMuted: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isAudioMuted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVideoMuted(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 653
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "JSUtilityController-> isVideoMuted: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->isVideoMuted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 480
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 481
    const-string v0, "InMobiAndroidSDK_3.5.4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ad Log Message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_0
    return-void
.end method

.method public makeCall(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 181
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 182
    const-string v0, "InMobiAndroidSDK_3.5.4"

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSUtilityController-> makeCall: number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 188
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 189
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "No Permisson to make call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const-string v1, "No Permisson to make call"

    .line 191
    const-string v2, "makeCall"

    .line 190
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_1
    :goto_0
    return-void

    .line 196
    :cond_2
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    if-nez v0, :cond_4

    .line 198
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const-string v1, "Bad Phone Number"

    const-string v2, "makeCall"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 208
    const-string v1, "InMobiAndroidSDK_3.5.4"

    const-string v2, "Exception in making call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    :cond_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const-string v1, "Exception in making call"

    const-string v2, "makeCall"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_4
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    .line 201
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 202
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 203
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getExpandedActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 204
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->fireOnLeaveApplication()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public muteAudio(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 536
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "JSUtilityController-> muteAudio: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->muteAudio(Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method public muteVideo(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 638
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "JSUtilityController-> muteVideo: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->muteVideo(Ljava/lang/String;)V

    .line 640
    return-void
.end method

.method public pauseAudio(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 613
    const-string v0, "InMobiAndroidSDK_3.5.4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSUtilityController-> pauseAudio: id :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->pauseAudio(Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method public pauseVideo(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 618
    const-string v0, "InMobiAndroidSDK_3.5.4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSUtilityController-> pauseVideo: id :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->pauseVideo(Ljava/lang/String;)V

    .line 620
    return-void
.end method

.method public playAudio(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 525
    const-string v0, "InMobiAndroidSDK_3.5.4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "playAudio: url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " autoPlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 526
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " controls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " loop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 527
    const-string v2, " startStyle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stopStyle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 528
    const-string v2, " id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 525
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->playAudio(Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method public playVideo(Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 590
    const-string v1, "InMobiAndroidSDK_3.5.4"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSUtilityController-> playVideo: url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 591
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " audioMuted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " autoPlay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 592
    const-string v3, " controls: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " loop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 593
    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 594
    const-string v3, " height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " startStyle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 595
    const-string v3, " stopStyle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 590
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    new-instance v7, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;

    invoke-direct {v7}, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;-><init>()V

    .line 598
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v7, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->x:I

    .line 599
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v7, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->y:I

    .line 600
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v7, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->width:I

    .line 601
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v7, Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;->height:I

    .line 603
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    invoke-virtual/range {v1 .. v10}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->playVideo(Ljava/lang/String;ZZZZLcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    return-void
.end method

.method public seekAudio(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 561
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "JSUtilityController-> seekAudio: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->seekAudio(Ljava/lang/String;I)V

    .line 563
    return-void
.end method

.method public seekVideo(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 648
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "JSUtilityController-> seekVideo: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->seekVideo(Ljava/lang/String;I)V

    .line 650
    return-void
.end method

.method public sendMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "InMobiAndroidSDK_3.5.4"

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSUtilityController-> sendMail: recipient: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 126
    const-string v2, " subject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    const-string v1, "plain/text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v1, "android.intent.extra.EMAIL"

    .line 132
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 137
    const-string v1, "Choose the Email Client."

    .line 136
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 138
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 139
    const-string v1, "InMobiAndroidSDK_3.5.4"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "target Intent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getExpandedActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 142
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->fireOnLeaveApplication()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 145
    const-string v1, "InMobiAndroidSDK_3.5.4"

    const-string v2, "Exception in sending mail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const-string v1, "Exception in sending mail"

    const-string v2, "sendMail"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 90
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "InMobiAndroidSDK_3.5.4"

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSUtilityController-> sendSMS: recipient: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 93
    const-string v2, " body: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    const-string v1, "address"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v1, "sms_body"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->getExpandedActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 102
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->fireOnLeaveApplication()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 105
    const-string v1, "InMobiAndroidSDK_3.5.4"

    const-string v2, "Exception in sending SMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const-string v1, "Exception in sending SMS"

    const-string v2, "sendSMS"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAudioVolume(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 551
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "JSUtilityController-> setAudioVolume: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setAudioVolume(Ljava/lang/String;I)V

    .line 553
    return-void
.end method

.method public setVideoVolume(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 658
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "JSUtilityController-> setVideoVolume: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setVideoVolume(Ljava/lang/String;I)V

    .line 660
    return-void
.end method

.method public showAlert(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 476
    const-string v0, "InMobiAndroidSDK_3.5.4"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-void
.end method

.method public showVideo(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 633
    const-string v0, "InMobiAndroidSDK_3.5.4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSUtilityController-> showVideo: id :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->showVideo(Ljava/lang/String;)V

    .line 635
    return-void
.end method

.method public stopAllListeners()V
    .locals 1

    .prologue
    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->a:Lcom/inmobi/androidsdk/ai/controller/JSAssetController;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/JSAssetController;->stopAllListeners()V

    .line 467
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->b:Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/JSDisplayController;->stopAllListeners()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :goto_0
    return-void

    .line 471
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unMuteAudio(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 541
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "JSUtilityController-> unMuteAudio: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->unMuteAudio(Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method public unMuteVideo(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 643
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "JSUtilityController-> unMuteVideo: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->imWebView:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, p1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->unMuteVideo(Ljava/lang/String;)V

    .line 645
    return-void
.end method

.method public writeToDiskWrap(Ljava/io/InputStream;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/JSUtilityController;->a:Lcom/inmobi/androidsdk/ai/controller/JSAssetController;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/inmobi/androidsdk/ai/controller/JSAssetController;->writeToDiskWrap(Ljava/io/InputStream;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
