.class public Lcom/shoutem/DeviceUiHandler;
.super Ljava/lang/Object;
.source "DeviceUiHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceUiHandler"


# instance fields
.field private mPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/String;

    const-string v1, "device://ui/"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/shoutem/DeviceUiHandler;->mPrefix:Ljava/lang/String;

    return-void
.end method

.method private getDpiDependentFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "imageFile"

    .prologue
    .line 433
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 434
    .local v2, metrics:Landroid/util/DisplayMetrics;
    sget-object v3, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v3}, Lcom/shoutem/n64635/HomeActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 437
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x3ff8

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_0

    .line 438
    const-string v1, "hdpi"

    .line 448
    .local v1, densityId:Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, basename:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 440
    .end local v0           #basename:Ljava/lang/String;
    .end local v1           #densityId:Ljava/lang/String;
    :cond_0
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x3ff0

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_1

    .line 441
    const-string v1, "mdpi"

    .restart local v1       #densityId:Ljava/lang/String;
    goto :goto_0

    .line 444
    .end local v1           #densityId:Ljava/lang/String;
    :cond_1
    const-string v1, "ldpi"

    .restart local v1       #densityId:Ljava/lang/String;
    goto :goto_0
.end method

.method private handleAdvertisement(Lcom/shoutem/DeviceUrl;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 455
    :try_start_0
    invoke-virtual {p1}, Lcom/shoutem/DeviceUrl;->getParamsJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 456
    .local v0, params:Lorg/json/JSONObject;
    const-string v3, "show"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 457
    .local v1, show:Z
    if-eqz v1, :cond_0

    .line 458
    const-string v3, "unitId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 459
    .local v2, unitId:Ljava/lang/String;
    sget-object v3, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v3, v2}, Lcom/shoutem/n64635/HomeActivity;->showAdvertisement(Ljava/lang/String;)V

    .line 469
    .end local v0           #params:Lorg/json/JSONObject;
    .end local v1           #show:Z
    .end local v2           #unitId:Ljava/lang/String;
    :goto_0
    return-void

    .line 461
    .restart local v0       #params:Lorg/json/JSONObject;
    .restart local v1       #show:Z
    :cond_0
    sget-object v3, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v3}, Lcom/shoutem/n64635/HomeActivity;->hideAdvertisement()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 465
    .end local v0           #params:Lorg/json/JSONObject;
    .end local v1           #show:Z
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private handleHideKeyboard()V
    .locals 3

    .prologue
    .line 87
    sget-object v1, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/shoutem/n64635/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 88
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    sget-object v1, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Lcom/shoutem/n64635/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 89
    return-void
.end method

.method private handleHideSplashScreen(Ljava/lang/String;I)V
    .locals 1
    .parameter "data"
    .parameter "start"

    .prologue
    .line 179
    sget-object v0, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v0}, Lcom/shoutem/n64635/HomeActivity;->hideSplashScreen()V

    .line 180
    return-void
.end method

.method private handleSetOptionsMenu(Ljava/lang/String;I)V
    .locals 16
    .parameter "data"
    .parameter "start"

    .prologue
    .line 494
    const-string v13, ""

    .line 496
    .local v13, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "UTF-8"

    invoke-static {v14, v15}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 502
    const/4 v7, 0x0

    .line 504
    .local v7, items:Lorg/json/JSONArray;
    new-instance v12, Lorg/json/JSONTokener;

    invoke-direct {v12, v13}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 507
    .local v12, test:Lorg/json/JSONTokener;
    :cond_0
    :try_start_1
    invoke-virtual {v12}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, obj:Ljava/lang/Object;
    if-eqz v11, :cond_1

    .line 508
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-class v15, Lorg/json/JSONObject;

    if-ne v14, v15, :cond_0

    .line 509
    move-object v0, v11

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    .line 510
    .local v8, jobj:Lorg/json/JSONObject;
    const-string v14, "items"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8}, Lcom/shoutem/DeviceUiHandler;->getJSONArray(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v7

    .line 518
    .end local v8           #jobj:Lorg/json/JSONObject;
    :cond_1
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 519
    .local v10, labels:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/shoutem/ScriptMenuItem;>;"
    if-eqz v7, :cond_5

    .line 520
    const/4 v1, 0x0

    .local v1, a:I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v1, v14, :cond_5

    .line 522
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 523
    .local v9, label:Lorg/json/JSONObject;
    if-eqz v9, :cond_3

    .line 524
    new-instance v4, Lcom/shoutem/ScriptMenuItem;

    invoke-direct {v4}, Lcom/shoutem/ScriptMenuItem;-><init>()V

    .line 525
    .local v4, entry:Lcom/shoutem/ScriptMenuItem;
    const-string v14, "label"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v9}, Lcom/shoutem/DeviceUiHandler;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v4, Lcom/shoutem/ScriptMenuItem;->mLabel:Ljava/lang/String;

    .line 526
    const-string v14, "url"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v9}, Lcom/shoutem/DeviceUiHandler;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v4, Lcom/shoutem/ScriptMenuItem;->mUrl:Ljava/lang/String;

    .line 527
    const-string v14, "icon"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v9}, Lcom/shoutem/DeviceUiHandler;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v4, Lcom/shoutem/ScriptMenuItem;->mIcon:Ljava/lang/String;

    .line 529
    iget-object v14, v4, Lcom/shoutem/ScriptMenuItem;->mIcon:Ljava/lang/String;

    if-eqz v14, :cond_2

    iget-object v14, v4, Lcom/shoutem/ScriptMenuItem;->mIcon:Ljava/lang/String;

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 530
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "www/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v4, Lcom/shoutem/ScriptMenuItem;->mIcon:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/shoutem/DeviceUiHandler;->getDpiDependentFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    .line 532
    .local v5, fname:Ljava/lang/String;
    :try_start_2
    sget-object v14, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v14}, Lcom/shoutem/n64635/HomeActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    invoke-virtual {v14, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 533
    .local v6, is:Ljava/io/InputStream;
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v14

    iput-object v14, v4, Lcom/shoutem/ScriptMenuItem;->mIconBmp:Landroid/graphics/Bitmap;

    .line 534
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 541
    .end local v5           #fname:Ljava/lang/String;
    .end local v6           #is:Ljava/io/InputStream;
    :cond_2
    :goto_1
    :try_start_3
    invoke-virtual {v10, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 520
    .end local v4           #entry:Lcom/shoutem/ScriptMenuItem;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 497
    .end local v1           #a:I
    .end local v7           #items:Lorg/json/JSONArray;
    .end local v9           #label:Lorg/json/JSONObject;
    .end local v10           #labels:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/shoutem/ScriptMenuItem;>;"
    .end local v11           #obj:Ljava/lang/Object;
    .end local v12           #test:Lorg/json/JSONTokener;
    :catch_0
    move-exception v3

    .line 499
    .local v3, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 558
    .end local v3           #e1:Ljava/io/UnsupportedEncodingException;
    :cond_4
    :goto_2
    return-void

    .line 535
    .restart local v1       #a:I
    .restart local v4       #entry:Lcom/shoutem/ScriptMenuItem;
    .restart local v5       #fname:Ljava/lang/String;
    .restart local v7       #items:Lorg/json/JSONArray;
    .restart local v9       #label:Lorg/json/JSONObject;
    .restart local v10       #labels:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/shoutem/ScriptMenuItem;>;"
    .restart local v11       #obj:Ljava/lang/Object;
    .restart local v12       #test:Lorg/json/JSONTokener;
    :catch_1
    move-exception v2

    .line 537
    .local v2, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 553
    .end local v1           #a:I
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #entry:Lcom/shoutem/ScriptMenuItem;
    .end local v5           #fname:Ljava/lang/String;
    .end local v9           #label:Lorg/json/JSONObject;
    .end local v10           #labels:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/shoutem/ScriptMenuItem;>;"
    .end local v11           #obj:Ljava/lang/Object;
    :catch_2
    move-exception v2

    .line 555
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 545
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v10       #labels:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/shoutem/ScriptMenuItem;>;"
    .restart local v11       #obj:Ljava/lang/Object;
    :cond_5
    :try_start_5
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v14

    const/4 v15, 0x1

    if-lt v14, v15, :cond_4

    .line 550
    sget-object v14, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v14, v10}, Lcom/shoutem/n64635/HomeActivity;->setMenuItems(Ljava/util/Vector;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2
.end method

.method private handleSetTitle(Ljava/lang/String;I)V
    .locals 10
    .parameter "data"
    .parameter "start"

    .prologue
    .line 209
    const-string v7, ""

    .line 211
    .local v7, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 217
    new-instance v5, Lorg/json/JSONTokener;

    invoke-direct {v5, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 220
    .local v5, test:Lorg/json/JSONTokener;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, obj:Ljava/lang/Object;
    if-eqz v4, :cond_1

    .line 221
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lorg/json/JSONObject;

    if-ne v8, v9, :cond_0

    .line 222
    move-object v0, v4

    check-cast v0, Lorg/json/JSONObject;

    move-object v3, v0

    .line 223
    .local v3, jobj:Lorg/json/JSONObject;
    const-string v8, "text"

    invoke-virtual {p0, v8, v3}, Lcom/shoutem/DeviceUiHandler;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    .line 224
    .local v6, title:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 225
    sget-object v8, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v8, v6}, Lcom/shoutem/n64635/HomeActivity;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 229
    .end local v3           #jobj:Lorg/json/JSONObject;
    .end local v4           #obj:Ljava/lang/Object;
    .end local v6           #title:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 230
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 232
    .end local v1           #e:Lorg/json/JSONException;
    .end local v5           #test:Lorg/json/JSONTokener;
    :cond_1
    :goto_1
    return-void

    .line 212
    :catch_1
    move-exception v2

    .line 214
    .local v2, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method private handleShowActivityIndicator(Ljava/lang/String;I)V
    .locals 10
    .parameter "data"
    .parameter "start"

    .prologue
    .line 183
    const-string v6, ""

    .line 185
    .local v6, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 190
    new-instance v5, Lorg/json/JSONTokener;

    invoke-direct {v5, v6}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 193
    .local v5, test:Lorg/json/JSONTokener;
    :try_start_1
    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    .local v4, obj:Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 194
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lorg/json/JSONObject;

    if-ne v8, v9, :cond_0

    .line 196
    move-object v0, v4

    check-cast v0, Lorg/json/JSONObject;

    move-object v3, v0

    .line 197
    .local v3, jobj:Lorg/json/JSONObject;
    const-string v8, "visible"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 198
    .local v7, visible:Ljava/lang/Boolean;
    sget-object v8, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v8, v7}, Lcom/shoutem/n64635/HomeActivity;->showActivityIndicator(Ljava/lang/Boolean;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 205
    .end local v3           #jobj:Lorg/json/JSONObject;
    .end local v4           #obj:Ljava/lang/Object;
    .end local v5           #test:Lorg/json/JSONTokener;
    .end local v7           #visible:Ljava/lang/Boolean;
    :cond_0
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v2

    .line 187
    .local v2, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 202
    .end local v2           #e1:Ljava/io/UnsupportedEncodingException;
    .restart local v5       #test:Lorg/json/JSONTokener;
    :catch_1
    move-exception v1

    .line 203
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleShowDialog(Ljava/lang/String;I)V
    .locals 20
    .parameter "data"
    .parameter "start"

    .prologue
    .line 235
    const-string v17, ""

    .line 237
    .local v17, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "UTF-8"

    invoke-static/range {v18 .. v19}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 243
    const/16 v16, 0x0

    .line 244
    .local v16, title:Ljava/lang/String;
    const/4 v15, 0x0

    .line 245
    .local v15, text:Ljava/lang/String;
    const/4 v12, 0x0

    .line 247
    .local v12, options:Lorg/json/JSONArray;
    new-instance v14, Lorg/json/JSONTokener;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 250
    .local v14, test:Lorg/json/JSONTokener;
    :cond_0
    :try_start_1
    invoke-virtual {v14}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, obj:Ljava/lang/Object;
    if-eqz v11, :cond_1

    .line 251
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    const-class v19, Lorg/json/JSONObject;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 252
    move-object v0, v11

    check-cast v0, Lorg/json/JSONObject;

    move-object v7, v0

    .line 253
    .local v7, jobj:Lorg/json/JSONObject;
    const-string v18, "title"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Lcom/shoutem/DeviceUiHandler;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v16

    .line 254
    const-string v18, "text"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Lcom/shoutem/DeviceUiHandler;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v15

    .line 255
    const-string v18, "options"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Lcom/shoutem/DeviceUiHandler;->getJSONArray(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v12

    .line 263
    .end local v7           #jobj:Lorg/json/JSONObject;
    :cond_1
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 265
    .local v9, labels:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/shoutem/ScriptMenuItem;>;"
    if-eqz v12, :cond_4

    .line 266
    const/4 v2, 0x0

    .local v2, a:I
    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v2, v0, :cond_4

    .line 268
    invoke-virtual {v12, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 269
    .local v8, label:Lorg/json/JSONObject;
    if-eqz v8, :cond_2

    .line 270
    new-instance v6, Lcom/shoutem/ScriptMenuItem;

    invoke-direct {v6}, Lcom/shoutem/ScriptMenuItem;-><init>()V

    .line 271
    .local v6, entry:Lcom/shoutem/ScriptMenuItem;
    const-string v18, "label"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Lcom/shoutem/DeviceUiHandler;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/shoutem/ScriptMenuItem;->mLabel:Ljava/lang/String;

    .line 272
    const-string v18, "url"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Lcom/shoutem/DeviceUiHandler;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/shoutem/ScriptMenuItem;->mUrl:Ljava/lang/String;

    .line 273
    invoke-virtual {v9, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 266
    .end local v6           #entry:Lcom/shoutem/ScriptMenuItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    .end local v2           #a:I
    .end local v8           #label:Lorg/json/JSONObject;
    .end local v9           #labels:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/shoutem/ScriptMenuItem;>;"
    .end local v11           #obj:Ljava/lang/Object;
    .end local v12           #options:Lorg/json/JSONArray;
    .end local v14           #test:Lorg/json/JSONTokener;
    .end local v15           #text:Ljava/lang/String;
    .end local v16           #title:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 239
    .local v5, e1:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 329
    .end local v5           #e1:Ljava/lang/Exception;
    :cond_3
    :goto_1
    return-void

    .line 277
    .restart local v9       #labels:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/shoutem/ScriptMenuItem;>;"
    .restart local v11       #obj:Ljava/lang/Object;
    .restart local v12       #options:Lorg/json/JSONArray;
    .restart local v14       #test:Lorg/json/JSONTokener;
    .restart local v15       #text:Ljava/lang/String;
    .restart local v16       #title:Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 283
    new-instance v3, Landroid/app/AlertDialog$Builder;

    sget-object v18, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 285
    .local v3, dlg:Landroid/app/AlertDialog$Builder;
    if-eqz v16, :cond_5

    .line 286
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 287
    :cond_5
    if-eqz v15, :cond_6

    .line 288
    invoke-virtual {v3, v15}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 290
    :cond_6
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/shoutem/ScriptMenuItem;

    .line 292
    .local v13, posbut:Lcom/shoutem/ScriptMenuItem;
    iget-object v0, v13, Lcom/shoutem/ScriptMenuItem;->mLabel:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 294
    iget-object v0, v13, Lcom/shoutem/ScriptMenuItem;->mLabel:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Lcom/shoutem/DeviceUiHandler$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/shoutem/DeviceUiHandler$3;-><init>(Lcom/shoutem/DeviceUiHandler;Lcom/shoutem/ScriptMenuItem;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 306
    :cond_7
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    .line 307
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shoutem/ScriptMenuItem;

    .line 308
    .local v10, nobut:Lcom/shoutem/ScriptMenuItem;
    iget-object v0, v10, Lcom/shoutem/ScriptMenuItem;->mLabel:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 310
    iget-object v0, v10, Lcom/shoutem/ScriptMenuItem;->mLabel:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Lcom/shoutem/DeviceUiHandler$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/shoutem/DeviceUiHandler$4;-><init>(Lcom/shoutem/DeviceUiHandler;Lcom/shoutem/ScriptMenuItem;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 323
    .end local v10           #nobut:Lcom/shoutem/ScriptMenuItem;
    :cond_8
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 325
    .end local v3           #dlg:Landroid/app/AlertDialog$Builder;
    .end local v9           #labels:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/shoutem/ScriptMenuItem;>;"
    .end local v11           #obj:Ljava/lang/Object;
    .end local v13           #posbut:Lcom/shoutem/ScriptMenuItem;
    :catch_1
    move-exception v4

    .line 326
    .local v4, e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private handleShowFacebookDialog(Lcom/shoutem/DeviceUrl;)V
    .locals 9
    .parameter "deviceUrl"

    .prologue
    .line 128
    invoke-virtual {p1}, Lcom/shoutem/DeviceUrl;->getParamsJson()Lorg/json/JSONObject;

    move-result-object v4

    .line 130
    .local v4, paramsJson:Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "appId"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, appId:Ljava/lang/String;
    const-string v6, "callback"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, callback:Ljava/lang/String;
    sget-object v6, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v6}, Lcom/shoutem/n64635/HomeActivity;->getFacebook()Lcom/facebook/android/Facebook;

    move-result-object v3

    .line 133
    .local v3, facebook:Lcom/facebook/android/Facebook;
    invoke-virtual {v3, v0}, Lcom/facebook/android/Facebook;->setAppId(Ljava/lang/String;)V

    .line 134
    const/4 v6, 0x5

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "offline_access"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "read_friendlists"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "publish_stream"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "manage_friendlists"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "email"

    aput-object v7, v5, v6

    .line 135
    .local v5, permissions:[Ljava/lang/String;
    sget-object v6, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v3, v6}, Lcom/facebook/android/Facebook;->logout(Landroid/content/Context;)Ljava/lang/String;

    .line 136
    sget-object v6, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    const/4 v7, -0x1

    new-instance v8, Lcom/shoutem/DeviceUiHandler$2;

    invoke-direct {v8, p0, v3, v1}, Lcom/shoutem/DeviceUiHandler$2;-><init>(Lcom/shoutem/DeviceUiHandler;Lcom/facebook/android/Facebook;Ljava/lang/String;)V

    invoke-virtual {v3, v6, v5, v7, v8}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/android/Facebook$DialogListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 176
    .end local v0           #appId:Ljava/lang/String;
    .end local v1           #callback:Ljava/lang/String;
    .end local v3           #facebook:Lcom/facebook/android/Facebook;
    .end local v5           #permissions:[Ljava/lang/String;
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v2

    .line 166
    .local v2, e:Lorg/json/JSONException;
    const-string v6, "DeviceUiHandler"

    const-string v7, "Exception ocurred with json parameters"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    .end local v2           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v2

    .line 169
    .local v2, e:Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 170
    .end local v2           #e:Ljava/net/MalformedURLException;
    :catch_2
    move-exception v2

    .line 172
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleShowPopupMenu(Ljava/lang/String;I)V
    .locals 17
    .parameter "data"
    .parameter "start"

    .prologue
    .line 356
    const-string v14, ""

    .line 358
    .local v14, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, "UTF-8"

    invoke-static/range {v15 .. v16}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 365
    const/4 v13, 0x0

    .line 366
    .local v13, title:Ljava/lang/String;
    const/4 v7, 0x0

    .line 368
    .local v7, items:Lorg/json/JSONArray;
    new-instance v12, Lorg/json/JSONTokener;

    invoke-direct {v12, v14}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 371
    .local v12, test:Lorg/json/JSONTokener;
    :cond_0
    :try_start_1
    invoke-virtual {v12}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v11

    .local v11, obj:Ljava/lang/Object;
    if-eqz v11, :cond_1

    .line 372
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    const-class v16, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 373
    move-object v0, v11

    check-cast v0, Lorg/json/JSONObject;

    move-object v8, v0

    .line 374
    .local v8, jobj:Lorg/json/JSONObject;
    const-string v15, "title"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v8}, Lcom/shoutem/DeviceUiHandler;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v13

    .line 375
    const-string v15, "items"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v8}, Lcom/shoutem/DeviceUiHandler;->getJSONArray(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v7

    .line 383
    .end local v8           #jobj:Lorg/json/JSONObject;
    :cond_1
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 384
    .local v10, labels:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/shoutem/ScriptMenuItem;>;"
    if-eqz v7, :cond_4

    .line 385
    const/4 v1, 0x0

    .local v1, a:I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v1, v15, :cond_4

    .line 387
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 388
    .local v9, label:Lorg/json/JSONObject;
    if-eqz v9, :cond_2

    .line 389
    new-instance v6, Lcom/shoutem/ScriptMenuItem;

    invoke-direct {v6}, Lcom/shoutem/ScriptMenuItem;-><init>()V

    .line 390
    .local v6, entry:Lcom/shoutem/ScriptMenuItem;
    const-string v15, "label"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v9}, Lcom/shoutem/DeviceUiHandler;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v6, Lcom/shoutem/ScriptMenuItem;->mLabel:Ljava/lang/String;

    .line 391
    const-string v15, "url"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v9}, Lcom/shoutem/DeviceUiHandler;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v6, Lcom/shoutem/ScriptMenuItem;->mUrl:Ljava/lang/String;

    .line 392
    const-string v15, "icon"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v9}, Lcom/shoutem/DeviceUiHandler;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v6, Lcom/shoutem/ScriptMenuItem;->mIcon:Ljava/lang/String;

    .line 393
    invoke-virtual {v10, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 385
    .end local v6           #entry:Lcom/shoutem/ScriptMenuItem;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    .end local v1           #a:I
    .end local v7           #items:Lorg/json/JSONArray;
    .end local v9           #label:Lorg/json/JSONObject;
    .end local v10           #labels:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/shoutem/ScriptMenuItem;>;"
    .end local v11           #obj:Ljava/lang/Object;
    .end local v12           #test:Lorg/json/JSONTokener;
    .end local v13           #title:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 361
    .local v5, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 430
    .end local v5           #e1:Ljava/io/UnsupportedEncodingException;
    :cond_3
    :goto_1
    return-void

    .line 397
    .restart local v7       #items:Lorg/json/JSONArray;
    .restart local v10       #labels:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/shoutem/ScriptMenuItem;>;"
    .restart local v11       #obj:Ljava/lang/Object;
    .restart local v12       #test:Lorg/json/JSONTokener;
    .restart local v13       #title:Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-lt v15, v0, :cond_3

    .line 403
    new-instance v3, Landroid/app/AlertDialog$Builder;

    sget-object v15, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-direct {v3, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 405
    .local v3, dlg:Landroid/app/AlertDialog$Builder;
    if-eqz v13, :cond_5

    .line 406
    invoke-virtual {v3, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 408
    :cond_5
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v15

    new-array v2, v15, [Ljava/lang/String;

    .line 409
    .local v2, dialogitems:[Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1       #a:I
    :goto_2
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v15

    if-ge v1, v15, :cond_6

    .line 410
    invoke-virtual {v10, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/shoutem/ScriptMenuItem;

    iget-object v15, v15, Lcom/shoutem/ScriptMenuItem;->mLabel:Ljava/lang/String;

    aput-object v15, v2, v1

    .line 409
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 413
    :cond_6
    new-instance v15, Lcom/shoutem/DeviceUiHandler$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v10}, Lcom/shoutem/DeviceUiHandler$5;-><init>(Lcom/shoutem/DeviceUiHandler;Ljava/util/Vector;)V

    invoke-virtual {v3, v2, v15}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 424
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 426
    .end local v1           #a:I
    .end local v2           #dialogitems:[Ljava/lang/String;
    .end local v3           #dlg:Landroid/app/AlertDialog$Builder;
    .end local v10           #labels:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/shoutem/ScriptMenuItem;>;"
    .end local v11           #obj:Ljava/lang/Object;
    :catch_1
    move-exception v4

    .line 428
    .local v4, e:Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private handleShowShareMenu(Ljava/lang/String;I)V
    .locals 14
    .parameter "data"
    .parameter "start"

    .prologue
    .line 562
    const-string v11, ""

    .line 564
    .local v11, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-static {v12, v13}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 569
    new-instance v8, Lorg/json/JSONTokener;

    invoke-direct {v8, v11}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 572
    .local v8, test:Lorg/json/JSONTokener;
    :cond_0
    :try_start_1
    invoke-virtual {v8}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v5

    .local v5, obj:Ljava/lang/Object;
    if-eqz v5, :cond_4

    .line 573
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-class v13, Lorg/json/JSONObject;

    if-ne v12, v13, :cond_0

    .line 574
    move-object v0, v5

    check-cast v0, Lorg/json/JSONObject;

    move-object v4, v0

    .line 575
    .local v4, jobj:Lorg/json/JSONObject;
    const-string v12, "title"

    invoke-virtual {p0, v12, v4}, Lcom/shoutem/DeviceUiHandler;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v10

    .line 576
    .local v10, title:Ljava/lang/String;
    const-string v12, "sharedUrl"

    invoke-virtual {p0, v12, v4}, Lcom/shoutem/DeviceUiHandler;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v7

    .line 577
    .local v7, sharedUrl:Ljava/lang/String;
    const-string v12, "text"

    invoke-virtual {p0, v12, v4}, Lcom/shoutem/DeviceUiHandler;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    .line 578
    .local v9, text:Ljava/lang/String;
    const-string v6, ""

    .line 580
    .local v6, shareText:Ljava/lang/String;
    if-eqz v9, :cond_1

    const-string v12, ""

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 581
    move-object v6, v9

    .line 584
    :cond_1
    if-eqz v7, :cond_3

    const-string v12, ""

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 585
    const-string v12, ""

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 586
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 588
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 591
    :cond_3
    if-eqz v10, :cond_4

    if-eqz v7, :cond_4

    .line 592
    new-instance v3, Landroid/content/Intent;

    const-string v12, "android.intent.action.SEND"

    invoke-direct {v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 593
    .local v3, intent:Landroid/content/Intent;
    const-string v12, "text/plain"

    invoke-virtual {v3, v12}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    const-string v12, "android.intent.extra.TEXT"

    invoke-virtual {v3, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    sget-object v12, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-static {v3, v10}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/shoutem/n64635/HomeActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 609
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #jobj:Lorg/json/JSONObject;
    .end local v5           #obj:Ljava/lang/Object;
    .end local v6           #shareText:Ljava/lang/String;
    .end local v7           #sharedUrl:Ljava/lang/String;
    .end local v8           #test:Lorg/json/JSONTokener;
    .end local v9           #text:Ljava/lang/String;
    .end local v10           #title:Ljava/lang/String;
    :cond_4
    :goto_0
    return-void

    .line 565
    :catch_0
    move-exception v2

    .line 566
    .local v2, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 605
    .end local v2           #e1:Ljava/io/UnsupportedEncodingException;
    .restart local v8       #test:Lorg/json/JSONTokener;
    :catch_1
    move-exception v1

    .line 607
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private handleShowToast(Lcom/shoutem/DeviceUrl;)V
    .locals 8
    .parameter "url"

    .prologue
    .line 474
    :try_start_0
    sget-object v5, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-virtual {v5}, Lcom/shoutem/n64635/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 475
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p1}, Lcom/shoutem/DeviceUrl;->getParamsJson()Lorg/json/JSONObject;

    move-result-object v2

    .line 477
    .local v2, params:Lorg/json/JSONObject;
    const-string v5, "text"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 479
    .local v3, text:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 482
    .local v1, duration:I
    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 483
    .local v4, toast:Landroid/widget/Toast;
    const/16 v5, 0x51

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 484
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #duration:I
    .end local v2           #params:Lorg/json/JSONObject;
    .end local v3           #text:Ljava/lang/CharSequence;
    .end local v4           #toast:Landroid/widget/Toast;
    :goto_0
    return-void

    .line 486
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private handleShowTwitterDialog(Lcom/shoutem/DeviceUrl;)V
    .locals 7
    .parameter "deviceUrl"

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/shoutem/DeviceUrl;->getParamsJson()Lorg/json/JSONObject;

    move-result-object v3

    .line 94
    .local v3, paramsJson:Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "networkHost"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, networkHost:Ljava/lang/String;
    const-string v5, "callback"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, callback:Ljava/lang/String;
    sget-object v5, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    new-instance v6, Lcom/shoutem/DeviceUiHandler$1;

    invoke-direct {v6, p0, v0}, Lcom/shoutem/DeviceUiHandler$1;-><init>(Lcom/shoutem/DeviceUiHandler;Ljava/lang/String;)V

    invoke-static {v2, v5, v6}, Lcom/shoutem/twitter/TwitterDialog;->createForNetworkHost(Ljava/lang/String;Landroid/content/Context;Lcom/shoutem/twitter/TwitterDialog$DialogListener;)Lcom/shoutem/twitter/TwitterDialog;

    move-result-object v4

    .line 118
    .local v4, twitterDlg:Lcom/shoutem/twitter/TwitterDialog;
    invoke-virtual {v4}, Lcom/shoutem/twitter/TwitterDialog;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v0           #callback:Ljava/lang/String;
    .end local v2           #networkHost:Ljava/lang/String;
    .end local v4           #twitterDlg:Lcom/shoutem/twitter/TwitterDialog;
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v1

    .line 122
    .local v1, e:Lorg/json/JSONException;
    const-string v5, "DeviceUiHandler"

    const-string v6, "Exception ocurred with json parameters"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method getJSONArray(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 2
    .parameter "key"
    .parameter "obj"

    .prologue
    .line 345
    const/4 v0, 0x0

    .line 347
    .local v0, val:Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 350
    :goto_0
    return-object v0

    .line 348
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "obj"

    .prologue
    .line 334
    const/4 v0, 0x0

    .line 336
    .local v0, val:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 339
    :goto_0
    return-object v0

    .line 337
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public handle(Ljava/lang/String;)V
    .locals 6
    .parameter "url"

    .prologue
    .line 45
    iget-object v3, p0, Lcom/shoutem/DeviceUiHandler;->mPrefix:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v3, p0, Lcom/shoutem/DeviceUiHandler;->mPrefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 51
    .local v2, startInd:I
    const/16 v3, 0x2f

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 52
    .local v0, endInd:I
    if-gez v0, :cond_1

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 56
    :cond_1
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, method:Ljava/lang/String;
    const-string v3, "setTitle"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 58
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, p1, v3}, Lcom/shoutem/DeviceUiHandler;->handleSetTitle(Ljava/lang/String;I)V

    goto :goto_0

    .line 59
    :cond_2
    const-string v3, "showDialog"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 60
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, p1, v3}, Lcom/shoutem/DeviceUiHandler;->handleShowDialog(Ljava/lang/String;I)V

    goto :goto_0

    .line 61
    :cond_3
    const-string v3, "showPopupMenu"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 62
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, p1, v3}, Lcom/shoutem/DeviceUiHandler;->handleShowPopupMenu(Ljava/lang/String;I)V

    goto :goto_0

    .line 63
    :cond_4
    const-string v3, "advertisement"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 64
    new-instance v3, Lcom/shoutem/DeviceUrl;

    invoke-direct {v3, p1}, Lcom/shoutem/DeviceUrl;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/shoutem/DeviceUiHandler;->handleAdvertisement(Lcom/shoutem/DeviceUrl;)V

    goto :goto_0

    .line 65
    :cond_5
    const-string v3, "showToast"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 66
    new-instance v3, Lcom/shoutem/DeviceUrl;

    invoke-direct {v3, p1}, Lcom/shoutem/DeviceUrl;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/shoutem/DeviceUiHandler;->handleShowToast(Lcom/shoutem/DeviceUrl;)V

    goto :goto_0

    .line 67
    :cond_6
    const-string v3, "setOptionsMenu"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 68
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, p1, v3}, Lcom/shoutem/DeviceUiHandler;->handleSetOptionsMenu(Ljava/lang/String;I)V

    goto :goto_0

    .line 69
    :cond_7
    const-string v3, "showShareMenu"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 70
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, p1, v3}, Lcom/shoutem/DeviceUiHandler;->handleShowShareMenu(Ljava/lang/String;I)V

    goto :goto_0

    .line 71
    :cond_8
    const-string v3, "hideSplashScreen"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 72
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, p1, v3}, Lcom/shoutem/DeviceUiHandler;->handleHideSplashScreen(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 73
    :cond_9
    const-string v3, "showActivityIndicator"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 74
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, p1, v3}, Lcom/shoutem/DeviceUiHandler;->handleShowActivityIndicator(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 75
    :cond_a
    const-string v3, "hideKeyboard"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 76
    invoke-direct {p0}, Lcom/shoutem/DeviceUiHandler;->handleHideKeyboard()V

    goto/16 :goto_0

    .line 77
    :cond_b
    const-string v3, "showFacebookDialog"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 78
    new-instance v3, Lcom/shoutem/DeviceUrl;

    invoke-direct {v3, p1}, Lcom/shoutem/DeviceUrl;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/shoutem/DeviceUiHandler;->handleShowFacebookDialog(Lcom/shoutem/DeviceUrl;)V

    goto/16 :goto_0

    .line 79
    :cond_c
    const-string v3, "showTwitterDialog"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 80
    new-instance v3, Lcom/shoutem/DeviceUrl;

    invoke-direct {v3, p1}, Lcom/shoutem/DeviceUrl;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/shoutem/DeviceUiHandler;->handleShowTwitterDialog(Lcom/shoutem/DeviceUrl;)V

    goto/16 :goto_0

    .line 82
    :cond_d
    const-string v3, "model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dont know how to handle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
