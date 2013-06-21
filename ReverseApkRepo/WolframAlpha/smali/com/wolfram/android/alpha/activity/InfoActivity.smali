.class public Lcom/wolfram/android/alpha/activity/InfoActivity;
.super Lcom/wolfram/android/alpha/activity/Activity_modified;
.source "InfoActivity.java"


# static fields
.field public static final INFOTYPE_KEY:Ljava/lang/String; = "com.wolfram.android.alpha.infotype"

.field public static final PODTITLE_KEY:Ljava/lang/String; = "com.wolfram.android.alpha.podtitle"


# instance fields
.field logger:Ljava/util/logging/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/wolfram/android/alpha/activity/Activity_modified;-><init>()V

    .line 45
    const-string v0, "com.wolfram.android.alpha.activity.InfoActivity"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/android/alpha/activity/InfoActivity;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private static storeButtonData(Landroid/widget/Button;Lcom/wolfram/alpha/WALink;)V
    .locals 4
    .parameter "b"
    .parameter "link"

    .prologue
    .line 263
    const-string v2, "Satellite image"

    invoke-interface {p1}, Lcom/wolfram/alpha/WALink;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    invoke-interface {p1}, Lcom/wolfram/alpha/WALink;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/wolfram/alpha/WALink;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wolfram/android/alpha/activity/MapActivity;->createMapData(Ljava/lang/String;Ljava/lang/String;)Lcom/wolfram/android/alpha/activity/MapActivity$MapData;

    move-result-object v1

    .line 265
    .local v1, mapData:Lcom/wolfram/android/alpha/activity/MapActivity$MapData;
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 272
    .end local v1           #mapData:Lcom/wolfram/android/alpha/activity/MapActivity$MapData;
    :goto_0
    return-void

    .line 267
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 268
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "com.wolfram.android.alpha.webview.title"

    invoke-interface {p1}, Lcom/wolfram/alpha/WALink;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v2, "com.wolfram.android.alpha.webview.url"

    invoke-interface {p1}, Lcom/wolfram/alpha/WALink;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public infoLinkClickHandler(Landroid/view/View;)V
    .locals 3
    .parameter "infoButton"

    .prologue
    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 250
    .local v0, data:Ljava/lang/Object;
    instance-of v2, v0, Lcom/wolfram/android/alpha/activity/MapActivity$MapData;

    if-eqz v2, :cond_0

    .line 252
    check-cast v0, Lcom/wolfram/android/alpha/activity/MapActivity$MapData;

    .end local v0           #data:Ljava/lang/Object;
    invoke-static {p0, v0}, Lcom/wolfram/android/alpha/activity/MapActivity;->createMapActivityIntent(Landroid/content/Context;Lcom/wolfram/android/alpha/activity/MapActivity$MapData;)Landroid/content/Intent;

    move-result-object v1

    .line 257
    .local v1, intent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/wolfram/android/alpha/activity/InfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 258
    return-void

    .line 254
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v0       #data:Ljava/lang/Object;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/wolfram/android/alpha/activity/WebViewActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    .restart local v1       #intent:Landroid/content/Intent;
    check-cast v0, Landroid/os/Bundle;

    .end local v0           #data:Ljava/lang/Object;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 52
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super/range {p0 .. p1}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/InfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v49

    const-string v50, "com.wolfram.android.alpha.infotype"

    invoke-virtual/range {v49 .. v50}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/InfoActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v50

    const v51, 0x7f0c0009

    invoke-virtual/range {v50 .. v51}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_1

    const v49, 0x7f030018

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/InfoActivity;->setContentView(I)V

    .line 58
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/InfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v49

    const-string v50, "com.wolfram.android.alpha.podtitle"

    invoke-virtual/range {v49 .. v50}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 59
    .local v41, podTitle:Ljava/lang/String;
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getQueryResult()Lcom/wolfram/alpha/WAQueryResult;

    move-result-object v42

    .line 60
    .local v42, queryResult:Lcom/wolfram/alpha/WAQueryResult;
    const/16 v40, 0x0

    .line 66
    .local v40, pod:Lcom/wolfram/alpha/WAPod;
    if-nez v42, :cond_3

    .line 67
    const-string v49, "Wolfram|Alpha"

    const-string v50, "query result is null"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    :goto_1
    return-void

    .line 53
    .end local v40           #pod:Lcom/wolfram/alpha/WAPod;
    .end local v41           #podTitle:Ljava/lang/String;
    .end local v42           #queryResult:Lcom/wolfram/alpha/WAQueryResult;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/InfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v49

    const-string v50, "com.wolfram.android.alpha.infotype"

    invoke-virtual/range {v49 .. v50}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/InfoActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v50

    const v51, 0x7f0c000a

    invoke-virtual/range {v50 .. v51}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_2

    const v49, 0x7f030062

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/InfoActivity;->setContentView(I)V

    goto :goto_0

    .line 54
    :cond_2
    const v49, 0x7f03004a

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/InfoActivity;->setContentView(I)V

    goto :goto_0

    .line 71
    .restart local v40       #pod:Lcom/wolfram/alpha/WAPod;
    .restart local v41       #podTitle:Ljava/lang/String;
    .restart local v42       #queryResult:Lcom/wolfram/alpha/WAQueryResult;
    :cond_3
    invoke-interface/range {v42 .. v42}, Lcom/wolfram/alpha/WAQueryResult;->getPods()[Lcom/wolfram/alpha/WAPod;

    move-result-object v3

    .local v3, arr$:[Lcom/wolfram/alpha/WAPod;
    move-object v0, v3

    array-length v0, v0

    move/from16 v28, v0

    .local v28, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    aget-object v36, v3, v16

    .line 72
    .local v36, p:Lcom/wolfram/alpha/WAPod;
    invoke-interface/range {v36 .. v36}, Lcom/wolfram/alpha/WAPod;->getTitle()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v41

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_6

    .line 73
    move-object/from16 v40, v36

    .line 79
    .end local v36           #p:Lcom/wolfram/alpha/WAPod;
    :cond_4
    if-eqz v40, :cond_0

    .line 82
    const v49, 0x7f0e0053

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 84
    .local v24, infoViewsPanel:Landroid/widget/LinearLayout;
    new-instance v38, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v49, -0x1

    const/16 v50, -0x2

    move-object/from16 v0, v38

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 86
    .local v38, paramsToSeparateInfoViews:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v49, 0x14

    move/from16 v0, v49

    move-object/from16 v1, v38

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 98
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v43, simpleLinks:Ljava/util/List;,"Ljava/util/List<Lcom/wolfram/alpha/WAInfo;>;"
    const/16 v46, 0x0

    .line 101
    .local v46, unitsInfo:Lcom/wolfram/alpha/WAUnits;
    invoke-interface/range {v40 .. v40}, Lcom/wolfram/alpha/WAPod;->getInfos()[Lcom/wolfram/alpha/WAInfo;

    move-result-object v3

    .local v3, arr$:[Lcom/wolfram/alpha/WAInfo;
    move-object v0, v3

    array-length v0, v0

    move/from16 v28, v0

    const/16 v16, 0x0

    move/from16 v17, v16

    .end local v3           #arr$:[Lcom/wolfram/alpha/WAInfo;
    .end local v16           #i$:I
    .end local v28           #len$:I
    .local v17, i$:I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_d

    aget-object v21, v3, v17

    .line 102
    .local v21, info:Lcom/wolfram/alpha/WAInfo;
    invoke-interface/range {v21 .. v21}, Lcom/wolfram/alpha/WAInfo;->getText()Ljava/lang/String;

    move-result-object v49

    const-string v50, ""

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_a

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/InfoActivity;->getLayoutInflater()Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v49

    const v50, 0x7f030054

    const/16 v51, 0x0

    invoke-virtual/range {v49 .. v51}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    .line 104
    .local v23, infoView:Landroid/widget/LinearLayout;
    const v49, 0x7f0e0057

    move-object/from16 v0, v23

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 105
    .local v20, imageView:Landroid/widget/ImageView;
    const v49, 0x7f0e0058

    move-object/from16 v0, v23

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/wolfram/android/alpha/view/FlowLayout;

    .line 106
    .local v7, buttonPanel:Lcom/wolfram/android/alpha/view/FlowLayout;
    invoke-interface/range {v21 .. v21}, Lcom/wolfram/alpha/WAInfo;->getContents()[Lcom/wolfram/alpha/visitor/Visitable;

    move-result-object v4

    .local v4, arr$:[Lcom/wolfram/alpha/visitor/Visitable;
    move-object v0, v4

    array-length v0, v0

    move/from16 v29, v0

    .local v29, len$:I
    const/16 v16, 0x0

    .end local v17           #i$:I
    .restart local v16       #i$:I
    :goto_4
    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_8

    aget-object v13, v4, v16

    .line 107
    .local v13, elem:Lcom/wolfram/alpha/visitor/Visitable;
    move-object v0, v13

    instance-of v0, v0, Lcom/wolfram/alpha/WAImage;

    move/from16 v49, v0

    if-eqz v49, :cond_7

    .line 108
    move-object v0, v13

    check-cast v0, Lcom/wolfram/alpha/WAImage;

    move-object/from16 v18, v0

    .line 109
    .local v18, image:Lcom/wolfram/alpha/WAImage;
    invoke-interface/range {v18 .. v18}, Lcom/wolfram/alpha/WAImage;->acquireImage()V

    .line 110
    invoke-interface/range {v18 .. v18}, Lcom/wolfram/alpha/WAImage;->getFile()Ljava/io/File;

    move-result-object v19

    .line 111
    .local v19, imageFile:Ljava/io/File;
    if-eqz v19, :cond_5

    .line 112
    invoke-static/range {v19 .. v19}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->createBitmapFromFile(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 113
    .local v5, bmp:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_5

    .line 114
    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 106
    .end local v5           #bmp:Landroid/graphics/Bitmap;
    .end local v18           #image:Lcom/wolfram/alpha/WAImage;
    .end local v19           #imageFile:Ljava/io/File;
    :cond_5
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 71
    .end local v4           #arr$:[Lcom/wolfram/alpha/visitor/Visitable;
    .end local v7           #buttonPanel:Lcom/wolfram/android/alpha/view/FlowLayout;
    .end local v13           #elem:Lcom/wolfram/alpha/visitor/Visitable;
    .end local v20           #imageView:Landroid/widget/ImageView;
    .end local v21           #info:Lcom/wolfram/alpha/WAInfo;
    .end local v23           #infoView:Landroid/widget/LinearLayout;
    .end local v24           #infoViewsPanel:Landroid/widget/LinearLayout;
    .end local v29           #len$:I
    .end local v38           #paramsToSeparateInfoViews:Landroid/widget/LinearLayout$LayoutParams;
    .end local v43           #simpleLinks:Ljava/util/List;,"Ljava/util/List<Lcom/wolfram/alpha/WAInfo;>;"
    .end local v46           #unitsInfo:Lcom/wolfram/alpha/WAUnits;
    .local v3, arr$:[Lcom/wolfram/alpha/WAPod;
    .restart local v28       #len$:I
    .restart local v36       #p:Lcom/wolfram/alpha/WAPod;
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 116
    .end local v3           #arr$:[Lcom/wolfram/alpha/WAPod;
    .end local v28           #len$:I
    .end local v36           #p:Lcom/wolfram/alpha/WAPod;
    .restart local v4       #arr$:[Lcom/wolfram/alpha/visitor/Visitable;
    .restart local v7       #buttonPanel:Lcom/wolfram/android/alpha/view/FlowLayout;
    .restart local v13       #elem:Lcom/wolfram/alpha/visitor/Visitable;
    .restart local v20       #imageView:Landroid/widget/ImageView;
    .restart local v21       #info:Lcom/wolfram/alpha/WAInfo;
    .restart local v23       #infoView:Landroid/widget/LinearLayout;
    .restart local v24       #infoViewsPanel:Landroid/widget/LinearLayout;
    .restart local v29       #len$:I
    .restart local v38       #paramsToSeparateInfoViews:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v43       #simpleLinks:Ljava/util/List;,"Ljava/util/List<Lcom/wolfram/alpha/WAInfo;>;"
    .restart local v46       #unitsInfo:Lcom/wolfram/alpha/WAUnits;
    :cond_7
    move-object v0, v13

    instance-of v0, v0, Lcom/wolfram/alpha/WALink;

    move/from16 v49, v0

    if-eqz v49, :cond_5

    .line 117
    move-object v0, v13

    check-cast v0, Lcom/wolfram/alpha/WALink;

    move-object/from16 v30, v0

    .line 118
    .local v30, link:Lcom/wolfram/alpha/WALink;
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/InfoActivity;->getLayoutInflater()Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v49

    const v50, 0x7f03004e

    const/16 v51, 0x0

    invoke-virtual/range {v49 .. v51}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 119
    .local v6, button:Landroid/widget/Button;
    invoke-interface/range {v30 .. v30}, Lcom/wolfram/alpha/WALink;->getText()Ljava/lang/String;

    move-result-object v49

    move-object v0, v6

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 120
    move-object v0, v6

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/wolfram/android/alpha/activity/InfoActivity;->storeButtonData(Landroid/widget/Button;Lcom/wolfram/alpha/WALink;)V

    .line 121
    invoke-virtual {v7, v6}, Lcom/wolfram/android/alpha/view/FlowLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 124
    .end local v6           #button:Landroid/widget/Button;
    .end local v13           #elem:Lcom/wolfram/alpha/visitor/Visitable;
    .end local v30           #link:Lcom/wolfram/alpha/WALink;
    :cond_8
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    .end local v7           #buttonPanel:Lcom/wolfram/android/alpha/view/FlowLayout;
    .end local v20           #imageView:Landroid/widget/ImageView;
    .end local v23           #infoView:Landroid/widget/LinearLayout;
    :cond_9
    :goto_6
    add-int/lit8 v16, v17, 0x1

    move/from16 v17, v16

    .end local v16           #i$:I
    .restart local v17       #i$:I
    goto/16 :goto_3

    .line 127
    .end local v4           #arr$:[Lcom/wolfram/alpha/visitor/Visitable;
    .end local v29           #len$:I
    :cond_a
    const/16 v27, 0x0

    .line 128
    .local v27, isUnitsInfo:Z
    invoke-interface/range {v21 .. v21}, Lcom/wolfram/alpha/WAInfo;->getContents()[Lcom/wolfram/alpha/visitor/Visitable;

    move-result-object v4

    .restart local v4       #arr$:[Lcom/wolfram/alpha/visitor/Visitable;
    move-object v0, v4

    array-length v0, v0

    move/from16 v29, v0

    .restart local v29       #len$:I
    const/16 v16, 0x0

    .end local v17           #i$:I
    .restart local v16       #i$:I
    :goto_7
    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_b

    aget-object v22, v4, v16

    .line 129
    .local v22, infoSubtype:Lcom/wolfram/alpha/visitor/Visitable;
    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/wolfram/alpha/WAUnits;

    move/from16 v49, v0

    if-eqz v49, :cond_c

    .line 131
    const/16 v27, 0x1

    .line 132
    move-object/from16 v0, v22

    check-cast v0, Lcom/wolfram/alpha/WAUnits;

    move-object/from16 v46, v0

    .line 137
    .end local v22           #infoSubtype:Lcom/wolfram/alpha/visitor/Visitable;
    :cond_b
    if-nez v27, :cond_9

    .line 138
    move-object/from16 v0, v43

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 128
    .restart local v22       #infoSubtype:Lcom/wolfram/alpha/visitor/Visitable;
    :cond_c
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 143
    .end local v4           #arr$:[Lcom/wolfram/alpha/visitor/Visitable;
    .end local v16           #i$:I
    .end local v21           #info:Lcom/wolfram/alpha/WAInfo;
    .end local v22           #infoSubtype:Lcom/wolfram/alpha/visitor/Visitable;
    .end local v27           #isUnitsInfo:Z
    .end local v29           #len$:I
    .restart local v17       #i$:I
    :cond_d
    const/4 v9, 0x0

    .line 144
    .local v9, definitionsInfo:[Lcom/wolfram/alpha/WADefinition;
    const/16 v32, 0x0

    .line 145
    .local v32, notesInfo:[Lcom/wolfram/alpha/WANote;
    const/16 v25, 0x0

    .line 146
    .local v25, isDefinitionsInfo:Z
    const/16 v26, 0x0

    .line 148
    .local v26, isNotesInfo:Z
    invoke-interface/range {v40 .. v40}, Lcom/wolfram/alpha/WAPod;->getDefinitions()[Lcom/wolfram/alpha/WADefinition;

    move-result-object v3

    .local v3, arr$:[Lcom/wolfram/alpha/WADefinition;
    move-object v0, v3

    array-length v0, v0

    move/from16 v28, v0

    .restart local v28       #len$:I
    const/16 v16, 0x0

    .end local v17           #i$:I
    .restart local v16       #i$:I
    :goto_8
    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_e

    aget-object v35, v3, v16

    .line 149
    .local v35, obj:Lcom/wolfram/alpha/WADefinition;
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/wolfram/alpha/WADefinition;

    move/from16 v49, v0

    if-eqz v49, :cond_10

    .line 150
    const/16 v25, 0x1

    .line 151
    invoke-interface/range {v40 .. v40}, Lcom/wolfram/alpha/WAPod;->getDefinitions()[Lcom/wolfram/alpha/WADefinition;

    move-result-object v9

    .line 156
    .end local v35           #obj:Lcom/wolfram/alpha/WADefinition;
    :cond_e
    invoke-interface/range {v40 .. v40}, Lcom/wolfram/alpha/WAPod;->getNotes()[Lcom/wolfram/alpha/WANote;

    move-result-object v3

    .local v3, arr$:[Lcom/wolfram/alpha/WANote;
    move-object v0, v3

    array-length v0, v0

    move/from16 v28, v0

    const/16 v16, 0x0

    :goto_9
    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_f

    aget-object v35, v3, v16

    .line 157
    .local v35, obj:Lcom/wolfram/alpha/WANote;
    move-object/from16 v0, v35

    instance-of v0, v0, Lcom/wolfram/alpha/WANote;

    move/from16 v49, v0

    if-eqz v49, :cond_11

    .line 158
    const/16 v26, 0x1

    .line 159
    invoke-interface/range {v40 .. v40}, Lcom/wolfram/alpha/WAPod;->getNotes()[Lcom/wolfram/alpha/WANote;

    move-result-object v32

    .line 165
    .end local v35           #obj:Lcom/wolfram/alpha/WANote;
    :cond_f
    if-eqz v25, :cond_13

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/InfoActivity;->getLayoutInflater()Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v49

    const v50, 0x7f03004c

    const/16 v51, 0x0

    invoke-virtual/range {v49 .. v51}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 167
    .local v10, definitionsView:Landroid/widget/LinearLayout;
    move-object v3, v9

    .local v3, arr$:[Lcom/wolfram/alpha/WADefinition;
    move-object v0, v3

    array-length v0, v0

    move/from16 v28, v0

    const/16 v16, 0x0

    :goto_a
    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_12

    aget-object v8, v3, v16

    .line 168
    .local v8, definition:Lcom/wolfram/alpha/WADefinition;
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/InfoActivity;->getLayoutInflater()Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v49

    const v50, 0x7f0300b4

    const/16 v51, 0x0

    invoke-virtual/range {v49 .. v51}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v48

    check-cast v48, Landroid/widget/TextView;

    .line 169
    .local v48, word_definitionView:Landroid/widget/TextView;
    invoke-interface {v8}, Lcom/wolfram/alpha/WADefinition;->getWord()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    move-object v0, v10

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/InfoActivity;->getLayoutInflater()Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v49

    const v50, 0x7f03001a

    const/16 v51, 0x0

    invoke-virtual/range {v49 .. v51}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 173
    .local v12, description_definitionView:Landroid/widget/TextView;
    invoke-interface {v8}, Lcom/wolfram/alpha/WADefinition;->getDescription()Ljava/lang/String;

    move-result-object v49

    move-object v0, v12

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 167
    add-int/lit8 v16, v16, 0x1

    goto :goto_a

    .line 148
    .end local v8           #definition:Lcom/wolfram/alpha/WADefinition;
    .end local v10           #definitionsView:Landroid/widget/LinearLayout;
    .end local v12           #description_definitionView:Landroid/widget/TextView;
    .end local v48           #word_definitionView:Landroid/widget/TextView;
    .local v35, obj:Lcom/wolfram/alpha/WADefinition;
    :cond_10
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_8

    .line 156
    .local v3, arr$:[Lcom/wolfram/alpha/WANote;
    .local v35, obj:Lcom/wolfram/alpha/WANote;
    :cond_11
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 176
    .end local v35           #obj:Lcom/wolfram/alpha/WANote;
    .local v3, arr$:[Lcom/wolfram/alpha/WADefinition;
    .restart local v10       #definitionsView:Landroid/widget/LinearLayout;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/InfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v49

    const-string v50, "com.wolfram.android.alpha.infotype"

    invoke-virtual/range {v49 .. v50}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/InfoActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v50

    const v51, 0x7f0c0009

    invoke-virtual/range {v50 .. v51}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_14

    .line 177
    const v49, 0x7f0e001b

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 179
    .local v11, definitionsViewsPanel:Landroid/widget/LinearLayout;
    new-instance v37, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v49, -0x1

    const/16 v50, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 181
    .local v37, paramsToSeparateDefinitionsViews:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v49, 0x14

    move/from16 v0, v49

    move-object/from16 v1, v37

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 182
    move-object v0, v11

    move-object v1, v10

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    .end local v3           #arr$:[Lcom/wolfram/alpha/WADefinition;
    .end local v10           #definitionsView:Landroid/widget/LinearLayout;
    .end local v11           #definitionsViewsPanel:Landroid/widget/LinearLayout;
    .end local v37           #paramsToSeparateDefinitionsViews:Landroid/widget/LinearLayout$LayoutParams;
    :cond_13
    :goto_b
    if-eqz v26, :cond_16

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/InfoActivity;->getLayoutInflater()Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v49

    const v50, 0x7f030050

    const/16 v51, 0x0

    invoke-virtual/range {v49 .. v51}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/LinearLayout;

    .line 190
    .local v33, notesView:Landroid/widget/LinearLayout;
    move-object/from16 v3, v32

    .local v3, arr$:[Lcom/wolfram/alpha/WANote;
    move-object v0, v3

    array-length v0, v0

    move/from16 v28, v0

    const/16 v16, 0x0

    :goto_c
    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_15

    aget-object v31, v3, v16

    .line 191
    .local v31, note:Lcom/wolfram/alpha/WANote;
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/InfoActivity;->getLayoutInflater()Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v49

    const v50, 0x7f0300a2

    const/16 v51, 0x0

    invoke-virtual/range {v49 .. v51}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v44

    check-cast v44, Landroid/widget/TextView;

    .line 192
    .local v44, text_noteView:Landroid/widget/TextView;
    invoke-interface/range {v31 .. v31}, Lcom/wolfram/alpha/WANote;->getNoteText()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v44

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    move-object/from16 v0, v33

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 190
    add-int/lit8 v16, v16, 0x1

    goto :goto_c

    .line 183
    .end local v31           #note:Lcom/wolfram/alpha/WANote;
    .end local v33           #notesView:Landroid/widget/LinearLayout;
    .end local v44           #text_noteView:Landroid/widget/TextView;
    .local v3, arr$:[Lcom/wolfram/alpha/WADefinition;
    .restart local v10       #definitionsView:Landroid/widget/LinearLayout;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/InfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v49

    const-string v50, "com.wolfram.android.alpha.infotype"

    invoke-virtual/range {v49 .. v50}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/InfoActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v50

    const v51, 0x7f0c000a

    invoke-virtual/range {v50 .. v51}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_13

    move-object/from16 v0, v24

    move-object v1, v10

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    .line 195
    .end local v10           #definitionsView:Landroid/widget/LinearLayout;
    .local v3, arr$:[Lcom/wolfram/alpha/WANote;
    .restart local v33       #notesView:Landroid/widget/LinearLayout;
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/InfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v49

    const-string v50, "com.wolfram.android.alpha.infotype"

    invoke-virtual/range {v49 .. v50}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/InfoActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v50

    const v51, 0x7f0c000a

    invoke-virtual/range {v50 .. v51}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_1b

    .line 196
    const v49, 0x7f0e0068

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/activity/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/LinearLayout;

    .line 198
    .local v34, notesViewsPanel:Landroid/widget/LinearLayout;
    new-instance v39, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v49, -0x1

    const/16 v50, -0x2

    move-object/from16 v0, v39

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 200
    .local v39, paramsToSeparateNotesViews:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v49, 0x14

    move/from16 v0, v49

    move-object/from16 v1, v39

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 201
    move-object/from16 v0, v34

    move-object/from16 v1, v33

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    .end local v3           #arr$:[Lcom/wolfram/alpha/WANote;
    .end local v33           #notesView:Landroid/widget/LinearLayout;
    .end local v34           #notesViewsPanel:Landroid/widget/LinearLayout;
    .end local v39           #paramsToSeparateNotesViews:Landroid/widget/LinearLayout$LayoutParams;
    :cond_16
    :goto_d
    if-eqz v46, :cond_18

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/InfoActivity;->getLayoutInflater()Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v49

    const v50, 0x7f030052

    const/16 v51, 0x0

    invoke-virtual/range {v49 .. v51}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/LinearLayout;

    .line 210
    .local v47, unitsView:Landroid/widget/LinearLayout;
    const v49, 0x7f0e0054

    move-object/from16 v0, v47

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Landroid/widget/ImageView;

    .line 211
    .local v45, unitsImageView:Landroid/widget/ImageView;
    invoke-interface/range {v46 .. v46}, Lcom/wolfram/alpha/WAUnits;->getImage()Lcom/wolfram/alpha/WAImage;

    move-result-object v18

    .line 212
    .restart local v18       #image:Lcom/wolfram/alpha/WAImage;
    invoke-interface/range {v18 .. v18}, Lcom/wolfram/alpha/WAImage;->getFile()Ljava/io/File;

    move-result-object v19

    .line 213
    .restart local v19       #imageFile:Ljava/io/File;
    if-eqz v19, :cond_17

    .line 215
    invoke-static/range {v19 .. v19}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->createBitmapFromFile(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 216
    .restart local v5       #bmp:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_17

    .line 217
    move-object/from16 v0, v45

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 219
    .end local v5           #bmp:Landroid/graphics/Bitmap;
    :cond_17
    move-object/from16 v0, v24

    move-object/from16 v1, v47

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    .end local v18           #image:Lcom/wolfram/alpha/WAImage;
    .end local v19           #imageFile:Ljava/io/File;
    .end local v45           #unitsImageView:Landroid/widget/ImageView;
    .end local v47           #unitsView:Landroid/widget/LinearLayout;
    :cond_18
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->size()I

    move-result v49

    if-lez v49, :cond_0

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/InfoActivity;->getLayoutInflater()Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v49

    const v50, 0x7f030054

    const/16 v51, 0x0

    invoke-virtual/range {v49 .. v51}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    .line 223
    .restart local v23       #infoView:Landroid/widget/LinearLayout;
    const v49, 0x7f0e0057

    move-object/from16 v0, v23

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 224
    .restart local v20       #imageView:Landroid/widget/ImageView;
    const v49, 0x7f0e0056

    move-object/from16 v0, v23

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 225
    .local v15, headerText:Landroid/widget/TextView;
    const v49, 0x7f0e0058

    move-object/from16 v0, v23

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/wolfram/android/alpha/view/FlowLayout;

    .line 227
    .restart local v7       #buttonPanel:Lcom/wolfram/android/alpha/view/FlowLayout;
    const/16 v49, 0x0

    move-object v0, v15

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    const/16 v49, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local v16           #i$:I
    :cond_19
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    if-eqz v49, :cond_1c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/wolfram/alpha/WAInfo;

    .line 230
    .restart local v21       #info:Lcom/wolfram/alpha/WAInfo;
    invoke-interface/range {v21 .. v21}, Lcom/wolfram/alpha/WAInfo;->getContents()[Lcom/wolfram/alpha/visitor/Visitable;

    move-result-object v14

    .line 231
    .local v14, elems:[Ljava/lang/Object;
    move-object v3, v14

    .local v3, arr$:[Ljava/lang/Object;
    move-object v0, v3

    array-length v0, v0

    move/from16 v28, v0

    const/16 v17, 0x0

    .restart local v17       #i$:I
    :goto_e
    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_19

    aget-object v13, v3, v17

    .line 232
    .local v13, elem:Ljava/lang/Object;
    move-object v0, v13

    instance-of v0, v0, Lcom/wolfram/alpha/WALink;

    move/from16 v49, v0

    if-eqz v49, :cond_1a

    .line 233
    move-object v0, v13

    check-cast v0, Lcom/wolfram/alpha/WALink;

    move-object/from16 v30, v0

    .line 234
    .restart local v30       #link:Lcom/wolfram/alpha/WALink;
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/InfoActivity;->getLayoutInflater()Lcom/wolfram/android/alpha/LayoutInflater_modified;

    move-result-object v49

    const v50, 0x7f03004e

    const/16 v51, 0x0

    invoke-virtual/range {v49 .. v51}, Lcom/wolfram/android/alpha/LayoutInflater_modified;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 235
    .restart local v6       #button:Landroid/widget/Button;
    invoke-interface/range {v30 .. v30}, Lcom/wolfram/alpha/WALink;->getText()Ljava/lang/String;

    move-result-object v49

    move-object v0, v6

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 236
    move-object v0, v6

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/wolfram/android/alpha/activity/InfoActivity;->storeButtonData(Landroid/widget/Button;Lcom/wolfram/alpha/WALink;)V

    .line 237
    invoke-virtual {v7, v6}, Lcom/wolfram/android/alpha/view/FlowLayout;->addView(Landroid/view/View;)V

    .line 231
    .end local v6           #button:Landroid/widget/Button;
    .end local v30           #link:Lcom/wolfram/alpha/WALink;
    :cond_1a
    add-int/lit8 v17, v17, 0x1

    goto :goto_e

    .line 202
    .end local v7           #buttonPanel:Lcom/wolfram/android/alpha/view/FlowLayout;
    .end local v13           #elem:Ljava/lang/Object;
    .end local v14           #elems:[Ljava/lang/Object;
    .end local v15           #headerText:Landroid/widget/TextView;
    .end local v17           #i$:I
    .end local v20           #imageView:Landroid/widget/ImageView;
    .end local v21           #info:Lcom/wolfram/alpha/WAInfo;
    .end local v23           #infoView:Landroid/widget/LinearLayout;
    .local v3, arr$:[Lcom/wolfram/alpha/WANote;
    .restart local v16       #i$:I
    .restart local v33       #notesView:Landroid/widget/LinearLayout;
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/InfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v49

    const-string v50, "com.wolfram.android.alpha.infotype"

    invoke-virtual/range {v49 .. v50}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {p0 .. p0}, Lcom/wolfram/android/alpha/activity/InfoActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v50

    const v51, 0x7f0c0009

    invoke-virtual/range {v50 .. v51}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_16

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_d

    .line 241
    .end local v3           #arr$:[Lcom/wolfram/alpha/WANote;
    .end local v16           #i$:I
    .end local v33           #notesView:Landroid/widget/LinearLayout;
    .restart local v7       #buttonPanel:Lcom/wolfram/android/alpha/view/FlowLayout;
    .restart local v15       #headerText:Landroid/widget/TextView;
    .restart local v20       #imageView:Landroid/widget/ImageView;
    .restart local v23       #infoView:Landroid/widget/LinearLayout;
    :cond_1c
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1
.end method
