.class public Lcom/ui/LapseIt/project/ProjectControls;
.super Landroid/widget/RelativeLayout;
.source "ProjectControls.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ANIMATION_DURATION:I = 0x190

.field private static dm:Landroid/util/DisplayMetrics;

.field private static forwardButton:Landroid/widget/ImageView;

.field private static pauseButton:Landroid/widget/ImageView;

.field private static playButton:Landroid/widget/ImageView;

.field private static rewindButton:Landroid/widget/ImageView;


# instance fields
.field private animation:Landroid/view/animation/TranslateAnimation;

.field private interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private isShowing:Z

.field orientation:I

.field private projectPreview:Lcom/ui/LapseIt/project/ProjectPreview;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "container"

    .prologue
    const/4 v4, -0x2

    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030016

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectControls;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 44
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/ui/LapseIt/project/ProjectControls;->orientation:I

    .line 46
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 48
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/ui/LapseIt/project/ProjectControls;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 49
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 54
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p1, p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 56
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v2, Lcom/ui/LapseIt/project/ProjectControls;->dm:Landroid/util/DisplayMetrics;

    .line 57
    invoke-static {}, Lcom/ui/LapseIt/project/ProjectView;->getProjectView()Lcom/ui/LapseIt/project/ProjectView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ui/LapseIt/project/ProjectView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    sget-object v3, Lcom/ui/LapseIt/project/ProjectControls;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 59
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v2, 0x7f0b004c

    invoke-virtual {p0, v2}, Lcom/ui/LapseIt/project/ProjectControls;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sput-object v2, Lcom/ui/LapseIt/project/ProjectControls;->rewindButton:Landroid/widget/ImageView;

    .line 62
    const v2, 0x7f0b004d

    invoke-virtual {p0, v2}, Lcom/ui/LapseIt/project/ProjectControls;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sput-object v2, Lcom/ui/LapseIt/project/ProjectControls;->playButton:Landroid/widget/ImageView;

    .line 63
    const v2, 0x7f0b004e

    invoke-virtual {p0, v2}, Lcom/ui/LapseIt/project/ProjectControls;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sput-object v2, Lcom/ui/LapseIt/project/ProjectControls;->pauseButton:Landroid/widget/ImageView;

    .line 64
    const v2, 0x7f0b004f

    invoke-virtual {p0, v2}, Lcom/ui/LapseIt/project/ProjectControls;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sput-object v2, Lcom/ui/LapseIt/project/ProjectControls;->forwardButton:Landroid/widget/ImageView;

    .line 66
    invoke-static {p1}, Lcom/ui/LapseIt/project/ProjectPreview;->setupInstance(Landroid/view/ViewGroup;)Lcom/ui/LapseIt/project/ProjectPreview;

    move-result-object v2

    iput-object v2, p0, Lcom/ui/LapseIt/project/ProjectControls;->projectPreview:Lcom/ui/LapseIt/project/ProjectPreview;

    .line 68
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v2, p0, Lcom/ui/LapseIt/project/ProjectControls;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 69
    invoke-direct {p0}, Lcom/ui/LapseIt/project/ProjectControls;->showMenuAnimation()V

    .line 70
    return-void

    .line 51
    :cond_0
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method private hideMenuAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ui/LapseIt/project/ProjectControls;->isShowing:Z

    .line 175
    iget v0, p0, Lcom/ui/LapseIt/project/ProjectControls;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 176
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectControls;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v3, v3, v3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/ProjectControls;->animation:Landroid/view/animation/TranslateAnimation;

    .line 181
    :goto_0
    iget-object v0, p0, Lcom/ui/LapseIt/project/ProjectControls;->animation:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectControls;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 182
    iget-object v0, p0, Lcom/ui/LapseIt/project/ProjectControls;->animation:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 183
    iget-object v0, p0, Lcom/ui/LapseIt/project/ProjectControls;->animation:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 185
    iget-object v0, p0, Lcom/ui/LapseIt/project/ProjectControls;->animation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/project/ProjectControls;->startAnimation(Landroid/view/animation/Animation;)V

    .line 186
    return-void

    .line 178
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectControls;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectControls;->getWidth()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/ProjectControls;->animation:Landroid/view/animation/TranslateAnimation;

    goto :goto_0
.end method

.method private showMenuAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 156
    iput-boolean v3, p0, Lcom/ui/LapseIt/project/ProjectControls;->isShowing:Z

    .line 158
    iget v0, p0, Lcom/ui/LapseIt/project/ProjectControls;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 159
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectControls;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/ProjectControls;->animation:Landroid/view/animation/TranslateAnimation;

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/ui/LapseIt/project/ProjectControls;->animation:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/ui/LapseIt/project/ProjectControls;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 165
    iget-object v0, p0, Lcom/ui/LapseIt/project/ProjectControls;->animation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 166
    iget-object v0, p0, Lcom/ui/LapseIt/project/ProjectControls;->animation:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 168
    iget-object v0, p0, Lcom/ui/LapseIt/project/ProjectControls;->animation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/project/ProjectControls;->startAnimation(Landroid/view/animation/Animation;)V

    .line 169
    return-void

    .line 161
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/ui/LapseIt/project/ProjectControls;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/ProjectControls;->animation:Landroid/view/animation/TranslateAnimation;

    goto :goto_0
.end method

.method static toggleButtonStatus(Z)V
    .locals 3
    .parameter "paused"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 138
    if-eqz p0, :cond_0

    .line 139
    sget-object v0, Lcom/ui/LapseIt/project/ProjectControls;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    sget-object v0, Lcom/ui/LapseIt/project/ProjectControls;->pauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    sget-object v0, Lcom/ui/LapseIt/project/ProjectControls;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    sget-object v0, Lcom/ui/LapseIt/project/ProjectControls;->pauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private toggleMenuAnimation()V
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/ui/LapseIt/project/ProjectControls;->isShowing:Z

    if-eqz v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/ui/LapseIt/project/ProjectControls;->hideMenuAnimation()V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/ui/LapseIt/project/ProjectControls;->showMenuAnimation()V

    goto :goto_0
.end method


# virtual methods
.method getPreview()Lcom/ui/LapseIt/project/ProjectPreview;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/ui/LapseIt/project/ProjectControls;->projectPreview:Lcom/ui/LapseIt/project/ProjectPreview;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 82
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getEndFrame()I

    move-result v4

    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getStartFrame()I

    move-result v5

    sub-int v3, v4, v5

    .line 83
    .local v3, totalFrames:I
    int-to-float v4, v3

    const/high16 v5, 0x40a0

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 85
    .local v0, jumpFrames:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 135
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 87
    :pswitch_1
    const-string v4, "trace"

    const-string v5, "Rewind"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {}, Lcom/ui/LapseIt/project/ProjectPreview;->getCurrentFrame()I

    move-result v4

    sub-int v2, v4, v0

    .line 92
    .local v2, prevFrame:I
    sget-boolean v4, Lcom/ui/LapseIt/project/ProjectPreview;->isPreviewning:Z

    if-eqz v4, :cond_0

    .line 93
    if-ge v2, v3, :cond_1

    .line 94
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getStartFrame()I

    move-result v4

    invoke-static {v4}, Lcom/ui/LapseIt/project/ProjectPreview;->setCurrentFrame(I)V

    goto :goto_0

    .line 97
    :cond_1
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getStartFrame()I

    move-result v4

    invoke-static {v4}, Lcom/ui/LapseIt/project/ProjectPreview;->setCurrentFrame(I)V

    goto :goto_0

    .line 104
    .end local v2           #prevFrame:I
    :pswitch_2
    iget-object v4, p0, Lcom/ui/LapseIt/project/ProjectControls;->projectPreview:Lcom/ui/LapseIt/project/ProjectPreview;

    invoke-virtual {v4}, Lcom/ui/LapseIt/project/ProjectPreview;->playPreview()V

    .line 105
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/ui/LapseIt/project/ProjectControls;->toggleButtonStatus(Z)V

    goto :goto_0

    .line 110
    :pswitch_3
    invoke-static {}, Lcom/ui/LapseIt/project/ProjectPreview;->pausePreview()V

    goto :goto_0

    .line 115
    :pswitch_4
    const-string v4, "trace"

    const-string v5, "Forward"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {}, Lcom/ui/LapseIt/project/ProjectPreview;->getCurrentFrame()I

    move-result v4

    add-int v1, v4, v0

    .line 120
    .local v1, nextFrame:I
    sget-boolean v4, Lcom/ui/LapseIt/project/ProjectPreview;->isPreviewning:Z

    if-eqz v4, :cond_0

    .line 121
    if-ge v1, v3, :cond_2

    .line 122
    invoke-static {v1}, Lcom/ui/LapseIt/project/ProjectPreview;->setCurrentFrame(I)V

    goto :goto_0

    .line 124
    :cond_2
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getEndFrame()I

    move-result v4

    invoke-static {v4}, Lcom/ui/LapseIt/project/ProjectPreview;->setCurrentFrame(I)V

    goto :goto_0

    .line 132
    .end local v1           #nextFrame:I
    :pswitch_5
    invoke-direct {p0}, Lcom/ui/LapseIt/project/ProjectControls;->toggleMenuAnimation()V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x7f0b004c
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method setupControls()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/ui/LapseIt/project/ProjectControls;->rewindButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    sget-object v0, Lcom/ui/LapseIt/project/ProjectControls;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    sget-object v0, Lcom/ui/LapseIt/project/ProjectControls;->pauseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    sget-object v0, Lcom/ui/LapseIt/project/ProjectControls;->forwardButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method
