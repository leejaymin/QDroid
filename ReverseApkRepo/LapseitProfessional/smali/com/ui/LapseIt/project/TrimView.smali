.class public Lcom/ui/LapseIt/project/TrimView;
.super Landroid/app/Activity;
.source "TrimView.java"


# instance fields
.field private SLIDE_DURATION:I

.field private animation:Landroid/view/animation/TranslateAnimation;

.field private contentView:Landroid/widget/RelativeLayout;

.field editorActionHandler:Landroid/widget/TextView$OnEditorActionListener;

.field private extras:Landroid/os/Bundle;

.field private interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private slideMax:F

.field trimChangedHandler:Lcom/ui/LapseIt/project/OnTrimChangedListener;

.field private trimEndFrame:Landroid/widget/EditText;

.field private trimSlider:Landroid/widget/ImageView;

.field trimSliderHandler:Landroid/view/View$OnClickListener;

.field private trimStartFrame:Landroid/widget/EditText;

.field private trimWidget:Lcom/ui/LapseIt/project/TrimWidget;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/ui/LapseIt/project/TrimView;->SLIDE_DURATION:I

    .line 137
    new-instance v0, Lcom/ui/LapseIt/project/TrimView$1;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/project/TrimView$1;-><init>(Lcom/ui/LapseIt/project/TrimView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->editorActionHandler:Landroid/widget/TextView$OnEditorActionListener;

    .line 209
    new-instance v0, Lcom/ui/LapseIt/project/TrimView$2;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/project/TrimView$2;-><init>(Lcom/ui/LapseIt/project/TrimView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->trimSliderHandler:Landroid/view/View$OnClickListener;

    .line 237
    new-instance v0, Lcom/ui/LapseIt/project/TrimView$3;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/project/TrimView$3;-><init>(Lcom/ui/LapseIt/project/TrimView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->trimChangedHandler:Lcom/ui/LapseIt/project/OnTrimChangedListener;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/project/TrimView;)Lcom/ui/LapseIt/project/TrimWidget;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->trimWidget:Lcom/ui/LapseIt/project/TrimWidget;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ui/LapseIt/project/TrimView;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->contentView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ui/LapseIt/project/TrimView;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/ui/LapseIt/project/TrimView;->toggleSliderAnimation()V

    return-void
.end method

.method static synthetic access$3(Lcom/ui/LapseIt/project/TrimView;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->trimStartFrame:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ui/LapseIt/project/TrimView;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->trimEndFrame:Landroid/widget/EditText;

    return-object v0
.end method

.method private toggleSliderAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 218
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->isTrimEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/ui/LapseIt/project/TrimView;->trimSlider:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/ui/LapseIt/project/TrimView;->slideMax:F

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->animation:Landroid/view/animation/TranslateAnimation;

    .line 220
    invoke-static {v4}, Lcom/ui/LapseIt/project/TrimWidget;->setTrimEnabled(Z)V

    .line 226
    :goto_0
    sget-boolean v0, Lcom/ui/LapseIt/project/ProjectPreview;->isPreviewning:Z

    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Lcom/ui/LapseIt/project/ProjectPreview;->setFinished()V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->animation:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/ui/LapseIt/project/TrimView;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 231
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->animation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 232
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->animation:Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/ui/LapseIt/project/TrimView;->SLIDE_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 234
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->trimSlider:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ui/LapseIt/project/TrimView;->animation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 235
    return-void

    .line 222
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/ui/LapseIt/project/TrimView;->slideMax:F

    invoke-direct {v0, v1, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->animation:Landroid/view/animation/TranslateAnimation;

    .line 223
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ui/LapseIt/project/TrimWidget;->setTrimEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x1

    const/4 v3, 0x0

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/ui/LapseIt/project/TrimView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f03002b

    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->contentView:Landroid/widget/RelativeLayout;

    .line 64
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->contentView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/project/TrimView;->setContentView(Landroid/view/View;)V

    .line 66
    invoke-virtual {p0}, Lcom/ui/LapseIt/project/TrimView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->extras:Landroid/os/Bundle;

    .line 68
    const v0, 0x7f0b009b

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/project/TrimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->trimStartFrame:Landroid/widget/EditText;

    .line 69
    const v0, 0x7f0b009c

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/project/TrimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->trimEndFrame:Landroid/widget/EditText;

    .line 71
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->trimStartFrame:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/ui/LapseIt/project/TrimView;->editorActionHandler:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 72
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->trimEndFrame:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/ui/LapseIt/project/TrimView;->editorActionHandler:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 74
    const v0, 0x7f0b009d

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/project/TrimView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 75
    .local v12, trimToggle:Landroid/widget/RelativeLayout;
    const v0, 0x7f0b009e

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/project/TrimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->trimSlider:Landroid/widget/ImageView;

    .line 76
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->trimSliderHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    new-instance v0, Lcom/ui/LapseIt/project/TrimWidget;

    iget-object v4, p0, Lcom/ui/LapseIt/project/TrimView;->contentView:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v4}, Lcom/ui/LapseIt/project/TrimWidget;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->trimWidget:Lcom/ui/LapseIt/project/TrimWidget;

    .line 81
    sget-object v0, Lcom/ui/LapseIt/project/ProjectView;->framesString:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 82
    sget-object v11, Lcom/ui/LapseIt/project/ProjectView;->framesString:Ljava/lang/String;

    .line 98
    .local v11, framesString:Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10, v11}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 100
    .local v10, framesInfo:Lorg/json/JSONArray;
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->trimWidget:Lcom/ui/LapseIt/project/TrimWidget;

    iget-object v3, p0, Lcom/ui/LapseIt/project/TrimView;->trimChangedHandler:Lcom/ui/LapseIt/project/OnTrimChangedListener;

    invoke-virtual {v0, v3}, Lcom/ui/LapseIt/project/TrimWidget;->setOnTrimChangedListener(Lcom/ui/LapseIt/project/OnTrimChangedListener;)V

    .line 101
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->trimWidget:Lcom/ui/LapseIt/project/TrimWidget;

    invoke-virtual {v0, v10}, Lcom/ui/LapseIt/project/TrimWidget;->setupThumbnails(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v10           #framesInfo:Lorg/json/JSONArray;
    :goto_1
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 107
    const/high16 v0, 0x4204

    invoke-virtual {p0}, Lcom/ui/LapseIt/project/TrimView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v13, v0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/ui/LapseIt/project/TrimView;->slideMax:F

    .line 109
    sget v0, Lcom/ui/LapseIt/project/TrimWidget;->startTrimmedFrame:I

    if-eqz v0, :cond_0

    sget v0, Lcom/ui/LapseIt/project/TrimWidget;->startTrimmedFrame:I

    sget v3, Lcom/ui/LapseIt/project/TrimWidget;->startFrame:I

    if-eq v0, v3, :cond_0

    .line 110
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->trimStartFrame:Landroid/widget/EditText;

    sget v3, Lcom/ui/LapseIt/project/TrimWidget;->startTrimmedFrame:I

    invoke-static {v0, v3}, Lcom/ui/LapseIt/project/TrimWidget;->moveTrimSlider(Landroid/view/View;I)V

    .line 112
    :cond_0
    sget v0, Lcom/ui/LapseIt/project/TrimWidget;->endTrimmedFrame:I

    if-eqz v0, :cond_1

    sget v0, Lcom/ui/LapseIt/project/TrimWidget;->endTrimmedFrame:I

    sget v3, Lcom/ui/LapseIt/project/TrimWidget;->endFrame:I

    if-eq v0, v3, :cond_1

    .line 113
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->trimEndFrame:Landroid/widget/EditText;

    sget v3, Lcom/ui/LapseIt/project/TrimWidget;->endTrimmedFrame:I

    invoke-static {v0, v3}, Lcom/ui/LapseIt/project/TrimWidget;->moveTrimSlider(Landroid/view/View;I)V

    .line 116
    :cond_1
    return-void

    .line 84
    .end local v11           #framesString:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->extras:Landroid/os/Bundle;

    const-string v4, "_id"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 86
    .local v8, framesId:J
    new-array v2, v13, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 87
    const-string v4, "framesinfo"

    aput-object v4, v2, v0

    .line 90
    .local v2, projection:[Ljava/lang/String;
    sget-object v0, Lcom/ui/LapseIt/providers/pro/ProjectsContentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 91
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/ui/LapseIt/project/TrimView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 92
    .local v6, cur:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 94
    const-string v0, "framesinfo"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11       #framesString:Ljava/lang/String;
    goto :goto_0

    .line 102
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #cur:Landroid/database/Cursor;
    .end local v8           #framesId:J
    :catch_0
    move-exception v7

    .line 103
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/ui/LapseIt/project/TrimView;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/ui/LapseIt/project/ProjectView;

    sget-object v1, Lcom/ui/LapseIt/project/ProjectView$TABS;->TRIM:Lcom/ui/LapseIt/project/ProjectView$TABS;

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/project/ProjectView;->setCurrentTab(Lcom/ui/LapseIt/project/ProjectView$TABS;)V

    .line 122
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->trimStartFrame:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 123
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->contentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    .line 125
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->isTrimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/ui/LapseIt/project/TrimView;->trimSlider:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/ui/LapseIt/project/TrimView;->slideMax:F

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->animation:Landroid/view/animation/TranslateAnimation;

    .line 127
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->animation:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/ui/LapseIt/project/TrimView;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 128
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->animation:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 129
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->animation:Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/ui/LapseIt/project/TrimView;->SLIDE_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 131
    iget-object v0, p0, Lcom/ui/LapseIt/project/TrimView;->trimSlider:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ui/LapseIt/project/TrimView;->animation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 134
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 135
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 56
    invoke-static {}, Lcom/ui/LapseIt/Main;->getFlurryId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 206
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 207
    return-void
.end method
