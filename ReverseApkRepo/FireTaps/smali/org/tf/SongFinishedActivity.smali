.class public Lorg/tf/SongFinishedActivity;
.super Lorg/tf/ui/ActivityBase;
.source "SongFinishedActivity.java"


# instance fields
.field private m_currentScore:I

.field private m_handler:Landroid/os/Handler;

.field private m_info:Lorg/tf/song/FinishedSongInfo;

.field private m_rating:Landroid/widget/RatingBar;

.field private m_scoreIncrement:I

.field private m_scoreView:Landroid/widget/TextView;

.field private m_stepScoreAnimation:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/tf/ui/ActivityBase;-><init>()V

    .line 138
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/tf/SongFinishedActivity;->m_handler:Landroid/os/Handler;

    .line 139
    new-instance v0, Lorg/tf/SongFinishedActivity$1;

    invoke-direct {v0, p0}, Lorg/tf/SongFinishedActivity$1;-><init>(Lorg/tf/SongFinishedActivity;)V

    iput-object v0, p0, Lorg/tf/SongFinishedActivity;->m_stepScoreAnimation:Ljava/lang/Runnable;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lorg/tf/SongFinishedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lorg/tf/SongFinishedActivity;->stepScoreAnimation()V

    return-void
.end method

.method private animateScore()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lorg/tf/SongFinishedActivity;->m_currentScore:I

    .line 96
    const/4 v0, 0x7

    iput v0, p0, Lorg/tf/SongFinishedActivity;->m_scoreIncrement:I

    .line 97
    invoke-direct {p0}, Lorg/tf/SongFinishedActivity;->stepScoreAnimation()V

    .line 98
    return-void
.end method

.method private stepScoreAnimation()V
    .locals 12

    .prologue
    const v11, 0x7f0c0013

    const v10, 0x7f0c0012

    const v9, 0x7f040006

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 101
    iget-object v3, p0, Lorg/tf/SongFinishedActivity;->m_scoreView:Landroid/widget/TextView;

    iget v4, p0, Lorg/tf/SongFinishedActivity;->m_currentScore:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v3, p0, Lorg/tf/SongFinishedActivity;->m_rating:Landroid/widget/RatingBar;

    iget-object v4, p0, Lorg/tf/SongFinishedActivity;->m_rating:Landroid/widget/RatingBar;

    invoke-virtual {v4}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v4

    int-to-float v4, v4

    .line 103
    iget-object v5, p0, Lorg/tf/SongFinishedActivity;->m_info:Lorg/tf/song/FinishedSongInfo;

    invoke-virtual {v5}, Lorg/tf/song/FinishedSongInfo;->getAccuracy()F

    move-result v5

    mul-float/2addr v4, v5

    iget v5, p0, Lorg/tf/SongFinishedActivity;->m_currentScore:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lorg/tf/SongFinishedActivity;->m_info:Lorg/tf/song/FinishedSongInfo;

    invoke-virtual {v5}, Lorg/tf/song/FinishedSongInfo;->getScore()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 102
    invoke-virtual {v3, v4}, Landroid/widget/RatingBar;->setRating(F)V

    .line 105
    iget v3, p0, Lorg/tf/SongFinishedActivity;->m_currentScore:I

    iget-object v4, p0, Lorg/tf/SongFinishedActivity;->m_info:Lorg/tf/song/FinishedSongInfo;

    invoke-virtual {v4}, Lorg/tf/song/FinishedSongInfo;->getScore()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 106
    iget-object v3, p0, Lorg/tf/SongFinishedActivity;->m_info:Lorg/tf/song/FinishedSongInfo;

    invoke-virtual {v3}, Lorg/tf/song/FinishedSongInfo;->getScore()I

    move-result v3

    iget v4, p0, Lorg/tf/SongFinishedActivity;->m_currentScore:I

    iget v5, p0, Lorg/tf/SongFinishedActivity;->m_scoreIncrement:I

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lorg/tf/SongFinishedActivity;->m_currentScore:I

    .line 107
    iget v3, p0, Lorg/tf/SongFinishedActivity;->m_scoreIncrement:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/tf/SongFinishedActivity;->m_scoreIncrement:I

    .line 108
    iget-object v3, p0, Lorg/tf/SongFinishedActivity;->m_handler:Landroid/os/Handler;

    iget-object v4, p0, Lorg/tf/SongFinishedActivity;->m_stepScoreAnimation:Ljava/lang/Runnable;

    const-wide/16 v5, 0x32

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-virtual {p0, v10}, Lorg/tf/SongFinishedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 111
    .local v0, accuracy:Landroid/widget/TextView;
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    const v3, 0x7f06000b

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/tf/SongFinishedActivity;->m_info:Lorg/tf/song/FinishedSongInfo;

    invoke-virtual {v5}, Lorg/tf/song/FinishedSongInfo;->getAccuracy()F

    move-result v5

    const/high16 v6, 0x42c8

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 112
    invoke-static {p0, v3, v4}, Lorg/tf/ui/UIHelpers;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {p0, v11}, Lorg/tf/SongFinishedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 117
    .local v2, streak:Landroid/widget/TextView;
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    const v3, 0x7f06000a

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/tf/SongFinishedActivity;->m_info:Lorg/tf/song/FinishedSongInfo;

    invoke-virtual {v5}, Lorg/tf/song/FinishedSongInfo;->getLongestStreak()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 118
    invoke-static {p0, v3, v4}, Lorg/tf/ui/UIHelpers;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    const v3, 0x7f090003

    invoke-static {p0, v3}, Lorg/tf/ui/UIHelpers;->getInteger(Landroid/content/Context;I)I

    move-result v1

    .line 123
    .local v1, offset:I
    invoke-static {p0, v10, v9}, Lorg/tf/ui/UIHelpers;->startViewAnimation(Landroid/app/Activity;II)I

    .line 124
    div-int/lit8 v3, v1, 0x2

    invoke-static {p0, v11, v9, v3}, Lorg/tf/ui/UIHelpers;->startViewAnimation(Landroid/app/Activity;III)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lorg/tf/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v3, 0x7f0c0003

    invoke-virtual {p0, v3}, Lorg/tf/SongFinishedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;

    .line 57
    .local v0, banner_adview:Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;
    :try_start_0
    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;->getAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/tf/SongFinishedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "org.tf.FinishedSongInfo"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 66
    .local v2, state:[B
    new-instance v3, Lorg/tf/song/FinishedSongInfo;

    new-instance v4, Lorg/tf/util/DataInputBA;

    invoke-direct {v4, v2}, Lorg/tf/util/DataInputBA;-><init>([B)V

    invoke-direct {v3, v4}, Lorg/tf/song/FinishedSongInfo;-><init>(Ljava/io/DataInput;)V

    iput-object v3, p0, Lorg/tf/SongFinishedActivity;->m_info:Lorg/tf/song/FinishedSongInfo;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    const v3, 0x7f030006

    invoke-virtual {p0, v3}, Lorg/tf/SongFinishedActivity;->setContentView(I)V

    .line 73
    const v3, 0x7f0c0010

    invoke-virtual {p0, v3}, Lorg/tf/SongFinishedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lorg/tf/SongFinishedActivity;->m_scoreView:Landroid/widget/TextView;

    .line 74
    const v3, 0x7f0c0011

    invoke-virtual {p0, v3}, Lorg/tf/SongFinishedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RatingBar;

    iput-object v3, p0, Lorg/tf/SongFinishedActivity;->m_rating:Landroid/widget/RatingBar;

    .line 77
    return-void

    .line 59
    .end local v2           #state:[B
    :catch_0
    move-exception v1

    .line 61
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 68
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 69
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const v1, 0x7f040002

    .line 81
    invoke-super {p0}, Lorg/tf/ui/ActivityBase;->onResume()V

    .line 82
    const v0, 0x7f0c0001

    invoke-static {p0, v0, v1}, Lorg/tf/ui/UIHelpers;->startViewAnimation(Landroid/app/Activity;II)I

    .line 83
    const v0, 0x7f0c0010

    invoke-static {p0, v0, v1}, Lorg/tf/ui/UIHelpers;->startViewAnimation(Landroid/app/Activity;II)I

    .line 84
    const v0, 0x7f0c0011

    invoke-static {p0, v0, v1}, Lorg/tf/ui/UIHelpers;->startViewAnimation(Landroid/app/Activity;II)I

    .line 86
    const v0, 0x7f0c0012

    invoke-static {p0, v0, v2}, Lorg/tf/ui/UIHelpers;->setViewVisibility(Landroid/app/Activity;II)V

    .line 87
    const v0, 0x7f0c0013

    invoke-static {p0, v0, v2}, Lorg/tf/ui/UIHelpers;->setViewVisibility(Landroid/app/Activity;II)V

    .line 89
    invoke-direct {p0}, Lorg/tf/SongFinishedActivity;->animateScore()V

    .line 90
    return-void
.end method
