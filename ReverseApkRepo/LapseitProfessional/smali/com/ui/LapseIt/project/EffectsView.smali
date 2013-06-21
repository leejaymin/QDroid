.class public Lcom/ui/LapseIt/project/EffectsView;
.super Landroid/app/Activity;
.source "EffectsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ui/LapseIt/project/EffectsView$applyColor;
    }
.end annotation


# static fields
.field public static currentEffect:Lui/utils/ImageUtils$EFFECTS;

.field private static thumbMaxHeight:F

.field private static thumbMaxWidth:F


# instance fields
.field private effectClickHandler:Landroid/view/View$OnClickListener;

.field private effectsContainer:Landroid/widget/RelativeLayout;

.field private extras:Landroid/os/Bundle;

.field private selectedEffectItem:Landroid/widget/RelativeLayout;

.field private thumbBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 159
    new-instance v0, Lcom/ui/LapseIt/project/EffectsView$1;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/project/EffectsView$1;-><init>(Lcom/ui/LapseIt/project/EffectsView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/EffectsView;->effectClickHandler:Landroid/view/View$OnClickListener;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/project/EffectsView;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ui/LapseIt/project/EffectsView;->selectedEffectItem:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ui/LapseIt/project/EffectsView;Landroid/widget/RelativeLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/ui/LapseIt/project/EffectsView;->selectedEffectItem:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v1, 0x7f030006

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/project/EffectsView;->setContentView(I)V

    .line 60
    const/4 v1, 0x1

    const/high16 v4, 0x4274

    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/EffectsView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v1, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Lcom/ui/LapseIt/project/EffectsView;->thumbMaxWidth:F

    .line 61
    const/4 v1, 0x1

    const/high16 v4, 0x420c

    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/EffectsView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v1, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sput v1, Lcom/ui/LapseIt/project/EffectsView;->thumbMaxHeight:F

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/EffectsView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ui/LapseIt/project/EffectsView;->extras:Landroid/os/Bundle;

    .line 66
    sget-object v1, Lcom/ui/LapseIt/project/ProjectView;->framesString:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 67
    sget-object v14, Lcom/ui/LapseIt/project/ProjectView;->framesString:Ljava/lang/String;

    .line 83
    .local v14, framesString:Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13, v14}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 85
    .local v13, framesInfo:Lorg/json/JSONArray;
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 86
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "filepath"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 87
    .local v16, thumbPath:Ljava/lang/String;
    sget v1, Lcom/ui/LapseIt/project/EffectsView;->thumbMaxWidth:F

    float-to-int v1, v1

    sget v4, Lcom/ui/LapseIt/project/EffectsView;->thumbMaxHeight:F

    float-to-int v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v1, v4, v5}, Lui/utils/ImageUtils;->inSampleSizedBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ui/LapseIt/project/EffectsView;->thumbBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    .end local v13           #framesInfo:Lorg/json/JSONArray;
    .end local v16           #thumbPath:Ljava/lang/String;
    :cond_0
    :goto_1
    const v1, 0x7f0b0014

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/project/EffectsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ui/LapseIt/project/EffectsView;->effectsContainer:Landroid/widget/RelativeLayout;

    .line 103
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ui/LapseIt/project/EffectsView;->effectsContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-lt v15, v1, :cond_3

    .line 136
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ui/LapseIt/project/EffectsView;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ui/LapseIt/project/EffectsView;->thumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 138
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ui/LapseIt/project/EffectsView;->thumbBitmap:Landroid/graphics/Bitmap;

    .line 141
    :cond_1
    sget-object v1, Lui/utils/ImageUtils$EFFECTS;->NO_EFFECT:Lui/utils/ImageUtils$EFFECTS;

    sput-object v1, Lcom/ui/LapseIt/project/EffectsView;->currentEffect:Lui/utils/ImageUtils$EFFECTS;

    .line 142
    return-void

    .line 69
    .end local v14           #framesString:Ljava/lang/String;
    .end local v15           #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ui/LapseIt/project/EffectsView;->extras:Landroid/os/Bundle;

    const-string v4, "_id"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 71
    .local v11, framesId:J
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 72
    const-string v4, "framesinfo"

    aput-object v4, v3, v1

    .line 75
    .local v3, projection:[Ljava/lang/String;
    sget-object v1, Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 76
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/EffectsView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 77
    .local v7, cur:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 79
    const-string v1, "framesinfo"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .restart local v14       #framesString:Ljava/lang/String;
    goto/16 :goto_0

    .line 89
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #projection:[Ljava/lang/String;
    .end local v7           #cur:Landroid/database/Cursor;
    .end local v11           #framesId:J
    :catch_0
    move-exception v8

    .line 90
    .local v8, e:Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 91
    .end local v8           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v8

    .line 92
    .local v8, e:Ljava/lang/RuntimeException;
    invoke-virtual {v8}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 104
    .end local v8           #e:Ljava/lang/RuntimeException;
    .restart local v15       #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ui/LapseIt/project/EffectsView;->effectsContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v15}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 105
    .local v10, effectItem:Landroid/widget/RelativeLayout;
    const v1, 0x7f0b0013

    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lui/utils/ImageUtils$EFFECTS;->values()[Lui/utils/ImageUtils$EFFECTS;

    move-result-object v4

    aget-object v4, v4, v15

    invoke-virtual {v4}, Lui/utils/ImageUtils$EFFECTS;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    if-nez v15, :cond_4

    .line 114
    const v1, 0x7f0b0010

    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v4, 0x7f0200af

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    const v1, 0x7f0b0012

    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/ui/LapseIt/project/EffectsView;->selectedEffectItem:Landroid/widget/RelativeLayout;

    .line 119
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ui/LapseIt/project/EffectsView;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    .line 121
    const/4 v1, 0x4

    if-lt v15, v1, :cond_6

    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/ui/LapseIt/Main;->isFullVersion(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 122
    const v1, 0x7f0b0011

    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v4, 0x7f020018

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    :cond_5
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 124
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ui/LapseIt/project/EffectsView;->thumbBitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Lui/utils/ImageUtils$EFFECTS;->values()[Lui/utils/ImageUtils$EFFECTS;

    move-result-object v4

    aget-object v4, v4, v15

    invoke-static {v1, v4}, Lui/utils/ImageUtils;->applyBitmapEffect(Landroid/graphics/Bitmap;Lui/utils/ImageUtils$EFFECTS;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 126
    .local v9, effectBitmap:Landroid/graphics/Bitmap;
    const v1, 0x7f0b0011

    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ui/LapseIt/project/EffectsView;->effectClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-static {}, Lui/utils/ImageUtils$EFFECTS;->values()[Lui/utils/ImageUtils$EFFECTS;

    move-result-object v1

    aget-object v1, v1, v15

    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 130
    .end local v9           #effectBitmap:Landroid/graphics/Bitmap;
    :catch_2
    move-exception v8

    .line 131
    .restart local v8       #e:Ljava/lang/RuntimeException;
    invoke-virtual {v8}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_3
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/ui/LapseIt/project/EffectsView;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/ui/LapseIt/project/ProjectView;

    sget-object v1, Lcom/ui/LapseIt/project/ProjectView$TABS;->EFFECTS:Lcom/ui/LapseIt/project/ProjectView$TABS;

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/project/ProjectView;->setCurrentTab(Lcom/ui/LapseIt/project/ProjectView$TABS;)V

    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 150
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 51
    invoke-static {}, Lcom/ui/LapseIt/Main;->getFlurryId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 156
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 157
    return-void
.end method
