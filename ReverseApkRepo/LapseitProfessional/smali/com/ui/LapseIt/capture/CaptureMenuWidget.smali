.class public Lcom/ui/LapseIt/capture/CaptureMenuWidget;
.super Landroid/widget/RelativeLayout;
.source "CaptureMenuWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$ui$LapseIt$capture$CaptureMenuWidget$SKINS:[I


# instance fields
.field final ANIMATION_DURATION:I

.field animation:Landroid/view/animation/TranslateAnimation;

.field captureMenu:Landroid/view/View;

.field dialogResolution:Ljava/lang/String;

.field fifthItem:Landroid/widget/RelativeLayout;

.field firstItem:Landroid/widget/RelativeLayout;

.field forthItem:Landroid/widget/RelativeLayout;

.field horzList:Lcom/devsmart/android/ui/HorizontialListView;

.field interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field public isManual:Z

.field isShowing:Z

.field mTimer:Ljava/util/Timer;

.field menuClickListener:Landroid/view/View$OnClickListener;

.field menuTimeout:Ljava/util/TimerTask;

.field parent:Lcom/ui/LapseIt/capture/CaptureView;

.field resDialog:Landroid/app/AlertDialog;

.field secondItem:Landroid/widget/RelativeLayout;

.field thirdItem:Landroid/widget/RelativeLayout;

.field timeScale:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$ui$LapseIt$capture$CaptureMenuWidget$SKINS()[I
    .locals 3

    .prologue
    .line 38
    sget-object v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->$SWITCH_TABLE$com$ui$LapseIt$capture$CaptureMenuWidget$SKINS:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;->values()[Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;->CANCEL:Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;

    invoke-virtual {v1}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;->PAUSE:Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;

    invoke-virtual {v1}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;->RECORD:Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;

    invoke-virtual {v1}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;->STOP:Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;

    invoke-virtual {v1}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->$SWITCH_TABLE$com$ui$LapseIt$capture$CaptureMenuWidget$SKINS:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/ui/LapseIt/capture/CaptureView;)V
    .locals 10
    .parameter "captureView"

    .prologue
    const/4 v9, -0x2

    const v7, 0x7f0b000c

    const v8, 0x7f0b000b

    .line 72
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/16 v5, 0x1f4

    iput v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->ANIMATION_DURATION:I

    .line 205
    new-instance v5, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    invoke-direct {v5, p0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;-><init>(Lcom/ui/LapseIt/capture/CaptureMenuWidget;)V

    iput-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->menuClickListener:Landroid/view/View$OnClickListener;

    .line 684
    new-instance v5, Lcom/ui/LapseIt/capture/CaptureMenuWidget$2;

    invoke-direct {v5, p0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$2;-><init>(Lcom/ui/LapseIt/capture/CaptureMenuWidget;)V

    iput-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->menuTimeout:Ljava/util/TimerTask;

    .line 74
    iput-object p1, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    .line 76
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v5}, Lcom/ui/LapseIt/capture/CaptureView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const/high16 v6, 0x7f03

    invoke-virtual {v5, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->captureMenu:Landroid/view/View;

    .line 78
    const v5, 0x7f0b0006

    invoke-virtual {p0, v5}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->firstItem:Landroid/widget/RelativeLayout;

    .line 79
    const v5, 0x7f0b0007

    invoke-virtual {p0, v5}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->secondItem:Landroid/widget/RelativeLayout;

    .line 80
    const v5, 0x7f0b0008

    invoke-virtual {p0, v5}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->thirdItem:Landroid/widget/RelativeLayout;

    .line 81
    const v5, 0x7f0b0009

    invoke-virtual {p0, v5}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->forthItem:Landroid/widget/RelativeLayout;

    .line 82
    const v5, 0x7f0b000a

    invoke-virtual {p0, v5}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->fifthItem:Landroid/widget/RelativeLayout;

    .line 84
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->firstItem:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->menuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->secondItem:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->menuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->thirdItem:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->menuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->forthItem:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->menuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->fifthItem:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->menuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->firstItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f02000a

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->secondItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f02000c

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->thirdItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f020007

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->forthItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f020005

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->fifthItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f020008

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->firstItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0800bd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->firstItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 98
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->firstItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, -0x53d7d8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "timescale"

    invoke-static {v5, v6}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->timeScale:Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "interval"

    invoke-static {v5, v6}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 102
    .local v1, frameValue:I
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->timeScale:Ljava/lang/String;

    const-string v6, "milliseconds"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080112

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, frameString:Ljava/lang/String;
    const-string v5, "XXX"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->secondItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :goto_0
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "resolution"

    invoke-static {v5, v6}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, resolution:Ljava/lang/String;
    const-string v5, "fullsensor"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 118
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->thirdItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0800c4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :goto_1
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->forthItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0800c1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->fifthItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0800c3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 127
    .local v3, menuParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 128
    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 130
    invoke-virtual {p0, v3}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    const v5, -0xffff01

    invoke-virtual {p0, v5}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->setBackgroundColor(I)V

    .line 134
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v5, p0, v3}, Lcom/ui/LapseIt/capture/CaptureView;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->captureMenu:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 137
    .local v2, menuLayout:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x50

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 138
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->captureMenu:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v5}, Lcom/ui/LapseIt/capture/CaptureView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v5}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->resizeItems(I)V

    .line 142
    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    iput-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->mTimer:Ljava/util/Timer;

    .line 143
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 145
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v5, v5, Lcom/ui/LapseIt/capture/CaptureView;->contentView:Landroid/widget/RelativeLayout;

    new-instance v6, Lcom/ui/LapseIt/capture/CaptureMenuWidget$3;

    invoke-direct {v6, p0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$3;-><init>(Lcom/ui/LapseIt/capture/CaptureMenuWidget;)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->showMenuAnimation()V

    .line 153
    return-void

    .line 106
    .end local v0           #frameString:Ljava/lang/String;
    .end local v2           #menuLayout:Landroid/widget/FrameLayout$LayoutParams;
    .end local v3           #menuParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #resolution:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->timeScale:Ljava/lang/String;

    const-string v6, "seconds"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800be

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    .restart local v0       #frameString:Ljava/lang/String;
    const-string v5, "XXX"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 109
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->secondItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 111
    .end local v0           #frameString:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800bf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    .restart local v0       #frameString:Ljava/lang/String;
    const-string v5, "XXX"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->secondItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 120
    .restart local v4       #resolution:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->thirdItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 668
    invoke-direct {p0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->hideMenuAnimation()V

    return-void
.end method

.method private hideMenuAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 670
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->isShowing:Z

    .line 672
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v0}, Lcom/ui/LapseIt/capture/CaptureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_0

    .line 673
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x4396

    invoke-direct {v0, v3, v3, v1, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->animation:Landroid/view/animation/TranslateAnimation;

    .line 677
    :goto_0
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->animation:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 678
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->animation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 679
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->animation:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 681
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->animation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->startAnimation(Landroid/view/animation/Animation;)V

    .line 682
    return-void

    .line 675
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->getLeft()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, -0x3c6a

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->animation:Landroid/view/animation/TranslateAnimation;

    goto :goto_0
.end method


# virtual methods
.method changeButtonSkin(Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;)V
    .locals 4
    .parameter "skin"

    .prologue
    const v2, 0x7f0b000c

    const v3, 0x7f0b000b

    .line 609
    invoke-static {}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->$SWITCH_TABLE$com$ui$LapseIt$capture$CaptureMenuWidget$SKINS()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$SKINS;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 635
    :goto_0
    return-void

    .line 611
    :pswitch_0
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->firstItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 612
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->firstItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->firstItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 614
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->firstItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, -0x14d7e4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 618
    :pswitch_1
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->firstItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 619
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->firstItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->firstItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 621
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->firstItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 625
    :pswitch_2
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->forthItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020005

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 626
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->forthItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 630
    :pswitch_3
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->forthItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 631
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->forthItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 609
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method changeButtonValue(Landroid/widget/RelativeLayout;Ljava/lang/String;)V
    .locals 1
    .parameter "menuButton"
    .parameter "value"

    .prologue
    .line 638
    const v0, 0x7f0b000b

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    return-void
.end method

.method public resizeItems(I)V
    .locals 14
    .parameter "orientation"

    .prologue
    const/high16 v13, 0x40a0

    const/4 v12, 0x1

    .line 157
    const-string v9, "trace"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Resizing to  "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v9, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->captureMenu:Landroid/view/View;

    const v10, 0x7f0b0005

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 161
    .local v4, menuLayout:Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-lt v0, v9, :cond_0

    .line 170
    if-ne p1, v12, :cond_2

    .line 172
    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 174
    iget-object v9, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v9}, Lcom/ui/LapseIt/capture/CaptureView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v8, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 175
    .local v8, screenWidth:I
    int-to-float v9, v8

    div-float v2, v9, v13

    .line 177
    .local v2, itemWidth:F
    const v9, 0x3f99999a

    div-float v1, v2, v9

    .line 179
    .local v1, itemHeight:F
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v9, v2

    float-to-int v10, v1

    invoke-direct {v6, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 181
    .local v6, paramsPortrait:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v9, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->firstItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iget-object v9, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->secondItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v9, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->thirdItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object v9, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->forthItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget-object v9, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->fifthItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    .end local v6           #paramsPortrait:Landroid/widget/LinearLayout$LayoutParams;
    .end local v8           #screenWidth:I
    :goto_1
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->showMenuAnimation()V

    .line 203
    return-void

    .line 162
    .end local v1           #itemHeight:F
    .end local v2           #itemWidth:F
    :cond_0
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 163
    .local v3, menuItem:Landroid/widget/RelativeLayout;
    if-ne p1, v12, :cond_1

    .line 164
    const v9, 0x7f02000f

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 161
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_1
    const v9, 0x7f02000d

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_2

    .line 188
    .end local v3           #menuItem:Landroid/widget/RelativeLayout;
    :cond_2
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 190
    iget-object v9, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v9}, Lcom/ui/LapseIt/capture/CaptureView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v7, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 191
    .local v7, screenHeight:I
    int-to-float v9, v7

    div-float v1, v9, v13

    .line 192
    .restart local v1       #itemHeight:F
    const/high16 v9, 0x3fc8

    mul-float v2, v1, v9

    .line 194
    .restart local v2       #itemWidth:F
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v9, v2

    float-to-int v10, v1

    invoke-direct {v5, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 195
    .local v5, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v9, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->firstItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    iget-object v9, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->secondItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    iget-object v9, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->thirdItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget-object v9, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->forthItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object v9, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->fifthItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public showMenuAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 652
    iput-boolean v3, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->isShowing:Z

    .line 654
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v0}, Lcom/ui/LapseIt/capture/CaptureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_0

    .line 655
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x4396

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->animation:Landroid/view/animation/TranslateAnimation;

    .line 659
    :goto_0
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->animation:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 660
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->animation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 661
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->animation:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 665
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->animation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->startAnimation(Landroid/view/animation/Animation;)V

    .line 666
    return-void

    .line 657
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, -0x3c6a

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->animation:Landroid/view/animation/TranslateAnimation;

    goto :goto_0
.end method

.method showProDialog()V
    .locals 4

    .prologue
    .line 577
    new-instance v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$4;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$4;-><init>(Lcom/ui/LapseIt/capture/CaptureMenuWidget;)V

    .line 602
    .local v0, onClick:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 603
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f08

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 604
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 605
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Go to Google Play"

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 606
    return-void
.end method

.method public toggleMenuAnimation()V
    .locals 1

    .prologue
    .line 644
    iget-boolean v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->isShowing:Z

    if-eqz v0, :cond_0

    .line 645
    invoke-direct {p0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->hideMenuAnimation()V

    .line 649
    :goto_0
    return-void

    .line 647
    :cond_0
    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->showMenuAnimation()V

    goto :goto_0
.end method
