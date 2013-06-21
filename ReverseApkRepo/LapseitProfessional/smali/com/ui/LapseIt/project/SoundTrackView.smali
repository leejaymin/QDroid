.class public Lcom/ui/LapseIt/project/SoundTrackView;
.super Landroid/app/Activity;
.source "SoundTrackView.java"


# static fields
.field private static waveBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private addButton:Landroid/widget/ImageView;

.field private addSoundHandler:Landroid/view/View$OnClickListener;

.field private analyzeButton:Landroid/widget/Button;

.field private buttonText:Landroid/widget/TextView;

.field private clipDurationView:Landroid/widget/TextView;

.field private controlsClickHandler:Landroid/view/View$OnClickListener;

.field private isPrepared:Z

.field private lineParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mediaCur:Landroid/database/Cursor;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private musicDurationView:Landroid/widget/TextView;

.field private normalizedBuffer:[F

.field private onInvalidUriDialogHandler:Landroid/content/DialogInterface$OnClickListener;

.field private onSeekListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private playView:Landroid/widget/ImageView;

.field private posRatio:D

.field private progressAnalyze:Landroid/app/ProgressDialog;

.field private rangeView:Landroid/widget/TextView;

.field private slideParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private soundImage:Landroid/widget/ImageView;

.field private soundLine:Landroid/widget/RelativeLayout;

.field private soundSlide:Landroid/widget/RelativeLayout;

.field private soundSlideListener:Landroid/view/View$OnTouchListener;

.field private soundWave:Landroid/widget/RelativeLayout;

.field private stopView:Landroid/widget/ImageView;

.field private titleView:Landroid/widget/TextView;

.field private updateLineHandler:Ljava/lang/Runnable;

.field private videoLength:F

.field private waveHeight:I

.field private waveWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "av"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 263
    new-instance v0, Lcom/ui/LapseIt/project/SoundTrackView$1;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/project/SoundTrackView$1;-><init>(Lcom/ui/LapseIt/project/SoundTrackView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->controlsClickHandler:Landroid/view/View$OnClickListener;

    .line 284
    new-instance v0, Lcom/ui/LapseIt/project/SoundTrackView$2;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/project/SoundTrackView$2;-><init>(Lcom/ui/LapseIt/project/SoundTrackView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->soundSlideListener:Landroid/view/View$OnTouchListener;

    .line 328
    new-instance v0, Lcom/ui/LapseIt/project/SoundTrackView$3;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/project/SoundTrackView$3;-><init>(Lcom/ui/LapseIt/project/SoundTrackView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->onInvalidUriDialogHandler:Landroid/content/DialogInterface$OnClickListener;

    .line 521
    new-instance v0, Lcom/ui/LapseIt/project/SoundTrackView$4;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/project/SoundTrackView$4;-><init>(Lcom/ui/LapseIt/project/SoundTrackView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->addSoundHandler:Landroid/view/View$OnClickListener;

    .line 596
    new-instance v0, Lcom/ui/LapseIt/project/SoundTrackView$5;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/project/SoundTrackView$5;-><init>(Lcom/ui/LapseIt/project/SoundTrackView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->onSeekListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 643
    new-instance v0, Lcom/ui/LapseIt/project/SoundTrackView$6;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/project/SoundTrackView$6;-><init>(Lcom/ui/LapseIt/project/SoundTrackView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->updateLineHandler:Ljava/lang/Runnable;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->playView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->soundLine:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$11(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->lineParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$12(Lcom/ui/LapseIt/project/SoundTrackView;Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 656
    invoke-direct {p0, p1, p2}, Lcom/ui/LapseIt/project/SoundTrackView;->requestAudioSpectrum(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$13(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->progressAnalyze:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$14(Lcom/ui/LapseIt/project/SoundTrackView;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/ui/LapseIt/project/SoundTrackView;->progressAnalyze:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$15(Lcom/ui/LapseIt/project/SoundTrackView;)[F
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->normalizedBuffer:[F

    return-object v0
.end method

.method static synthetic access$16(Lcom/ui/LapseIt/project/SoundTrackView;)I
    .locals 1
    .parameter

    .prologue
    .line 71
    iget v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->waveHeight:I

    return v0
.end method

.method static synthetic access$17(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    sput-object p0, Lcom/ui/LapseIt/project/SoundTrackView;->waveBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$18(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->soundImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$19()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/ui/LapseIt/project/SoundTrackView;->waveBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ui/LapseIt/project/SoundTrackView;)V
    .locals 0
    .parameter

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/ui/LapseIt/project/SoundTrackView;->playHandler()V

    return-void
.end method

.method static synthetic access$20(Lcom/ui/LapseIt/project/SoundTrackView;)F
    .locals 1
    .parameter

    .prologue
    .line 74
    iget v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->videoLength:F

    return v0
.end method

.method static synthetic access$21(Lcom/ui/LapseIt/project/SoundTrackView;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 643
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->updateLineHandler:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ui/LapseIt/project/SoundTrackView;)V
    .locals 0
    .parameter

    .prologue
    .line 650
    invoke-direct {p0}, Lcom/ui/LapseIt/project/SoundTrackView;->stopHandler()V

    return-void
.end method

.method static synthetic access$4(Lcom/ui/LapseIt/project/SoundTrackView;)Z
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->isPrepared:Z

    return v0
.end method

.method static synthetic access$5(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->soundWave:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$6(Lcom/ui/LapseIt/project/SoundTrackView;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/ui/LapseIt/project/SoundTrackView;->posRatio:D

    return-void
.end method

.method static synthetic access$7(Lcom/ui/LapseIt/project/SoundTrackView;)D
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->posRatio:D

    return-wide v0
.end method

.method static synthetic access$8(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->buttonText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/ui/LapseIt/project/SoundTrackView;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/ui/LapseIt/project/SoundTrackView;->updateDurationInfo()V

    return-void
.end method

.method private analyzeTrackHandler()V
    .locals 2

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/ui/LapseIt/project/SoundTrackView;->buildAnalyzingDialog()V

    .line 315
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ui/LapseIt/project/SoundTrackView$7;

    invoke-direct {v1, p0}, Lcom/ui/LapseIt/project/SoundTrackView$7;-><init>(Lcom/ui/LapseIt/project/SoundTrackView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 325
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 326
    return-void
.end method

.method private buildAnalyzingDialog()V
    .locals 3

    .prologue
    .line 347
    invoke-static {p0}, Lui/utils/OrientationUtils;->lockScreen(Landroid/app/Activity;)V

    .line 348
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->progressAnalyze:Landroid/app/ProgressDialog;

    .line 349
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->progressAnalyze:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->progressAnalyze:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 351
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->progressAnalyze:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 352
    return-void
.end method

.method private buildInvalidUriDialog()V
    .locals 3

    .prologue
    .line 337
    invoke-static {p0}, Lui/utils/OrientationUtils;->lockScreen(Landroid/app/Activity;)V

    .line 338
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 339
    invoke-virtual {p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 340
    invoke-virtual {p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 341
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 342
    const-string v1, "Ok"

    iget-object v2, p0, Lcom/ui/LapseIt/project/SoundTrackView;->onInvalidUriDialogHandler:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 344
    return-void
.end method

.method private playHandler()V
    .locals 2

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->isPrepared:Z

    if-nez v0, :cond_0

    .line 641
    :goto_0
    return-void

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 613
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->playView:Landroid/widget/ImageView;

    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 615
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ui/LapseIt/project/SoundTrackView$9;

    invoke-direct {v1, p0}, Lcom/ui/LapseIt/project/SoundTrackView$9;-><init>(Lcom/ui/LapseIt/project/SoundTrackView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 639
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private prepareAudioFile()Z
    .locals 4

    .prologue
    .line 580
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v2, Lcom/ui/LapseIt/project/ProjectView;->audioFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 581
    .local v1, fis:Ljava/io/FileInputStream;
    iget-object v2, p0, Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 582
    iget-object v2, p0, Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 583
    const/4 v2, 0x1

    .line 593
    .end local v1           #fis:Ljava/io/FileInputStream;
    :goto_0
    return v2

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 593
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 586
    :catch_1
    move-exception v0

    .line 587
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 588
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 589
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 590
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 591
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private native requestAudioSpectrum(Ljava/lang/String;I)I
.end method

.method private roundToDecimals(DI)D
    .locals 7
    .parameter "d"
    .parameter "c"

    .prologue
    const-wide/high16 v5, 0x4024

    .line 398
    int-to-double v1, p3

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double/2addr v1, p1

    double-to-int v0, v1

    .line 399
    .local v0, temp:I
    int-to-double v1, v0

    int-to-double v3, p3

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double/2addr v1, v3

    return-wide v1
.end method

.method private stopHandler()V
    .locals 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 652
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->playView:Landroid/widget/ImageView;

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 653
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;

    sget v1, Lcom/ui/LapseIt/project/ProjectView;->audioPosition:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 654
    return-void
.end method

.method private updateDurationInfo()V
    .locals 24

    .prologue
    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v12, v20, v21

    .line 357
    .local v12, posPerc:F
    const/16 v20, 0x1

    const/high16 v21, 0x41a0

    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    .line 358
    .local v7, margin:F
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v20, v7

    mul-float v6, v20, v12

    .line 360
    .local v6, linePos:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->lineParams:Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v20, v0

    float-to-int v0, v6

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->updateLineHandler:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/project/SoundTrackView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->slideParams:Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v20, v0

    float-to-int v0, v6

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->soundSlide:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->slideParams:Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v20

    move/from16 v0, v20

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v10, v0

    .line 369
    .local v10, musicaDuration:D
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0800e1

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 370
    .local v8, musicDurationString:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v10, v11, v1}, Lcom/ui/LapseIt/project/SoundTrackView;->roundToDecimals(DI)D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " secs"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v9

    .line 371
    .local v9, musicTimeSpan:Landroid/text/SpannableString;
    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    const/16 v21, -0x1

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v21, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x12

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 372
    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    const/16 v21, -0x4600

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v21

    invoke-virtual {v9}, Landroid/text/SpannableString;->length()I

    move-result v22

    const/16 v23, 0x12

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->musicDurationView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    sget-object v21, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0800e0

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 377
    .local v4, clipDurationString:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->videoLength:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/ui/LapseIt/project/SoundTrackView;->roundToDecimals(DI)D

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " secs"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v5

    .line 378
    .local v5, clipTimeSpan:Landroid/text/SpannableString;
    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    const/16 v21, -0x1

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v21, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x12

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 379
    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    const/16 v21, -0x4600

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v21

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v22

    const/16 v23, 0x12

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->clipDurationView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    sget-object v21, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 383
    sget v20, Lcom/ui/LapseIt/project/ProjectView;->audioPosition:F

    const/high16 v21, 0x447a

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/ui/LapseIt/project/SoundTrackView;->roundToDecimals(DI)D

    move-result-wide v16

    .line 384
    .local v16, videoFrom:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->videoLength:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    add-double v20, v20, v16

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/ui/LapseIt/project/SoundTrackView;->roundToDecimals(DI)D

    move-result-wide v18

    .line 386
    .local v18, videoTo:D
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0800e2

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 387
    .local v14, rangeString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0800f1

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 389
    .local v15, rangeToString:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " secs"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v13

    .line 390
    .local v13, rangeSpan:Landroid/text/SpannableString;
    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    const/16 v21, -0x1

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v21, 0x0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x12

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 391
    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    const/16 v21, -0x4600

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v21

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, 0x2

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    add-int v22, v22, v23

    const/16 v23, 0x12

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 392
    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    const/16 v21, -0x1

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, 0x2

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    add-int v21, v21, v22

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v22

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    add-int v22, v22, v23

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, 0x2

    add-int v22, v22, v23

    const/16 v23, 0x12

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 393
    new-instance v20, Landroid/text/style/ForegroundColorSpan;

    const/16 v21, -0x4600

    invoke-direct/range {v20 .. v21}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v21

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    add-int v21, v21, v22

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    invoke-virtual {v13}, Landroid/text/SpannableString;->length()I

    move-result v22

    const/16 v23, 0x12

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->rangeView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    sget-object v21, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 395
    return-void
.end method


# virtual methods
.method public drawNoWave(IIIZ)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "waveWidth"
    .parameter "waveHeight"
    .parameter "color"
    .parameter "withText"

    .prologue
    const/4 v3, 0x1

    .line 435
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 436
    .local v6, canvasBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 437
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 438
    .local v5, paint:Landroid/graphics/Paint;
    const v1, -0x55000001

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 439
    const/high16 v1, 0x4180

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 440
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 441
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 442
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 444
    const/high16 v1, 0x4040

    invoke-virtual {p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    .line 446
    .local v7, margin:F
    if-eqz p4, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    int-to-float v2, p1

    sub-float/2addr v2, v7

    int-to-float v3, p2

    sub-float/2addr v3, v7

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 450
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 451
    const/4 v1, 0x0

    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    int-to-float v3, p1

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 453
    return-object v6
.end method

.method public drawNotProWave(III)Landroid/graphics/Bitmap;
    .locals 19
    .parameter "waveWidth"
    .parameter "waveHeight"
    .parameter "color"

    .prologue
    .line 457
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 458
    .local v8, canvasBitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 459
    .local v2, canvas:Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 460
    .local v7, paint:Landroid/graphics/Paint;
    move/from16 v0, p3

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 461
    const/high16 v3, 0x4160

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 462
    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 463
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 465
    const/4 v3, 0x1

    const/high16 v4, 0x4000

    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    .line 467
    .local v12, margin:F
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p1

    int-to-float v4, v0

    sub-float/2addr v4, v12

    move/from16 v0, p2

    int-to-float v5, v0

    sub-float/2addr v5, v12

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 469
    const v3, -0x66000001

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 470
    const/4 v3, 0x0

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    move/from16 v0, p1

    int-to-float v5, v0

    div-int/lit8 v6, p2, 0x2

    int-to-float v6, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 472
    const v3, -0x77000001

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 474
    new-instance v16, Ljava/lang/String;

    invoke-direct/range {v16 .. v16}, Ljava/lang/String;-><init>()V

    .line 477
    .local v16, waveString:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f06

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    .line 478
    .local v10, is:Ljava/io/InputStream;
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v14, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 480
    .local v14, reader:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .local v11, line:Ljava/lang/String;
    if-nez v11, :cond_0

    .line 486
    .end local v10           #is:Ljava/io/InputStream;
    .end local v11           #line:Ljava/lang/String;
    .end local v14           #reader:Ljava/io/BufferedReader;
    :goto_1
    const-string v3, " "

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 489
    .local v15, waveArray:[Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, x:I
    :goto_2
    array-length v3, v15

    move/from16 v0, v17

    if-lt v0, v3, :cond_1

    .line 501
    return-object v8

    .line 481
    .end local v15           #waveArray:[Ljava/lang/String;
    .end local v17           #x:I
    .restart local v10       #is:Ljava/io/InputStream;
    .restart local v11       #line:Ljava/lang/String;
    .restart local v14       #reader:Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    goto :goto_0

    .line 483
    .end local v10           #is:Ljava/io/InputStream;
    .end local v11           #line:Ljava/lang/String;
    .end local v14           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v9

    .line 484
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 490
    .end local v9           #e:Ljava/io/IOException;
    .restart local v15       #waveArray:[Ljava/lang/String;
    .restart local v17       #x:I
    :cond_1
    const/4 v13, 0x0

    .line 492
    .local v13, peak:F
    :try_start_2
    aget-object v3, v15, v17

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v13

    .line 497
    :goto_3
    move/from16 v0, v17

    int-to-float v3, v0

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    move/from16 v0, v17

    int-to-float v5, v0

    div-int/lit8 v6, p2, 0x2

    int-to-float v6, v6

    div-int/lit8 v18, p2, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v13

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    add-float v6, v6, v18

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 498
    move/from16 v0, v17

    int-to-float v3, v0

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    move/from16 v0, v17

    int-to-float v5, v0

    div-int/lit8 v6, p2, 0x2

    int-to-float v6, v6

    div-int/lit8 v18, p2, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v13

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    add-float v6, v6, v18

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 489
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 493
    :catch_1
    move-exception v9

    .line 494
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public drawSoundWave(III)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "waveWidth"
    .parameter "waveHeight"
    .parameter "color"

    .prologue
    .line 505
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 506
    .local v6, canvasBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 507
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 508
    .local v5, paint:Landroid/graphics/Paint;
    invoke-virtual {v5, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 510
    const v1, -0x66000001

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 511
    const/4 v1, 0x0

    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    int-to-float v3, p1

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 513
    const v1, -0x77000001

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 514
    const/4 v7, 0x0

    .local v7, x:I
    :goto_0
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lt v7, v1, :cond_0

    .line 518
    return-object v6

    .line 515
    :cond_0
    int-to-float v1, v7

    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    int-to-float v3, v7

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    iget-object v8, p0, Lcom/ui/LapseIt/project/SoundTrackView;->normalizedBuffer:[F

    aget v8, v8, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    neg-float v8, v8

    div-int/lit8 v9, p2, 0x2

    int-to-float v9, v9

    mul-float/2addr v8, v9

    add-float/2addr v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 516
    int-to-float v1, v7

    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    int-to-float v3, v7

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    iget-object v8, p0, Lcom/ui/LapseIt/project/SoundTrackView;->normalizedBuffer:[F

    aget v8, v8, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    div-int/lit8 v9, p2, 0x2

    int-to-float v9, v9

    mul-float/2addr v8, v9

    add-float/2addr v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 514
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "contentUri"

    .prologue
    const/4 v3, 0x0

    .line 545
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "artist"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "title"

    aput-object v1, v2, v0

    .local v2, proj:[Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 546
    invoke-virtual/range {v0 .. v5}, Lcom/ui/LapseIt/project/SoundTrackView;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 548
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    sput-object p1, Lcom/ui/LapseIt/project/ProjectView;->audioUri:Landroid/net/Uri;

    .line 550
    iput-object v7, p0, Lcom/ui/LapseIt/project/SoundTrackView;->mediaCur:Landroid/database/Cursor;

    .line 551
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->mediaCur:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/project/SoundTrackView;->startManagingCursor(Landroid/database/Cursor;)V

    .line 552
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 554
    .local v6, column_index:I
    if-ltz v6, :cond_0

    .line 555
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 560
    .end local v6           #column_index:I
    :cond_0
    return-object v3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 566
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 567
    const/4 v1, 0x0

    sput-object v1, Lcom/ui/LapseIt/project/SoundTrackView;->waveBitmap:Landroid/graphics/Bitmap;

    .line 569
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, uriString:Ljava/lang/String;
    const-string v1, "%20"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 571
    const-string v1, "file://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 573
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/ui/LapseIt/project/ProjectView;->audioUri:Landroid/net/Uri;

    .line 575
    .end local v0           #uriString:Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 576
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/project/SoundTrackView;->setContentView(I)V

    .line 96
    const v0, 0x7f0b008c

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/project/SoundTrackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->addButton:Landroid/widget/ImageView;

    .line 98
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->addButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ui/LapseIt/project/SoundTrackView;->addSoundHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v0, 0x7f0b008d

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/project/SoundTrackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->buttonText:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f0b0082

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/project/SoundTrackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->soundWave:Landroid/widget/RelativeLayout;

    .line 103
    const v0, 0x7f0b0083

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/project/SoundTrackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->soundImage:Landroid/widget/ImageView;

    .line 104
    const v0, 0x7f0b0084

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/project/SoundTrackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->soundSlide:Landroid/widget/RelativeLayout;

    .line 105
    const v0, 0x7f0b0085

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/project/SoundTrackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->soundLine:Landroid/widget/RelativeLayout;

    .line 107
    const v0, 0x7f0b0086

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/project/SoundTrackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->titleView:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f0b0087

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/project/SoundTrackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->clipDurationView:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f0b0088

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/project/SoundTrackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->musicDurationView:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0b0089

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/project/SoundTrackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->rangeView:Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->soundWave:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ui/LapseIt/project/SoundTrackView;->soundSlideListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 114
    const v0, 0x7f0b008a

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/project/SoundTrackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->playView:Landroid/widget/ImageView;

    .line 115
    const v0, 0x7f0b008b

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/project/SoundTrackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->stopView:Landroid/widget/ImageView;

    .line 117
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->playView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ui/LapseIt/project/SoundTrackView;->controlsClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->stopView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ui/LapseIt/project/SoundTrackView;->controlsClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->isPrepared:Z

    .line 253
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 255
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->playView:Landroid/widget/ImageView;

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 260
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 261
    return-void
.end method

.method protected onResume()V
    .locals 23

    .prologue
    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getParent()Landroid/app/Activity;

    move-result-object v18

    check-cast v18, Lcom/ui/LapseIt/project/ProjectView;

    sget-object v19, Lcom/ui/LapseIt/project/ProjectView$TABS;->SOUNDTRACK:Lcom/ui/LapseIt/project/ProjectView$TABS;

    invoke-virtual/range {v18 .. v19}, Lcom/ui/LapseIt/project/ProjectView;->setCurrentTab(Lcom/ui/LapseIt/project/ProjectView$TABS;)V

    .line 126
    new-instance v18, Landroid/media/MediaPlayer;

    invoke-direct/range {v18 .. v18}, Landroid/media/MediaPlayer;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->onSeekListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 129
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ui/LapseIt/project/SoundTrackView;->isPrepared:Z

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v18, v0

    const/16 v19, 0xa0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_1

    .line 132
    const/16 v18, 0x1

    const/high16 v19, 0x41f0

    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ui/LapseIt/project/SoundTrackView;->waveHeight:I

    .line 137
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/ui/LapseIt/Main;->isFullVersion(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_0

    sget-object v18, Lcom/ui/LapseIt/project/ProjectView;->audioUri:Landroid/net/Uri;

    if-eqz v18, :cond_0

    .line 138
    sget-object v18, Lcom/ui/LapseIt/project/ProjectView;->audioUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ui/LapseIt/project/SoundTrackView;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, filePath:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 140
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v18, Lcom/ui/LapseIt/project/ProjectView;->audioFile:Ljava/io/File;

    .line 145
    :goto_1
    sget-object v18, Lcom/ui/LapseIt/project/ProjectView;->audioFile:Ljava/io/File;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_0

    .line 146
    const/16 v18, 0x0

    sput-object v18, Lcom/ui/LapseIt/project/ProjectView;->audioFile:Ljava/io/File;

    .line 147
    invoke-direct/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->buildInvalidUriDialog()V

    .line 151
    .end local v7           #filePath:Ljava/lang/String;
    :cond_0
    sget-object v18, Lcom/ui/LapseIt/project/ProjectView;->audioFile:Ljava/io/File;

    if-eqz v18, :cond_6

    sget-object v18, Lcom/ui/LapseIt/project/ProjectView;->audioFile:Ljava/io/File;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 152
    invoke-direct/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->prepareAudioFile()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ui/LapseIt/project/SoundTrackView;->isPrepared:Z

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->soundImage:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->waveHeight:I

    move/from16 v20, v0

    const/16 v21, -0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ui/LapseIt/project/SoundTrackView;->drawNoWave(IIIZ)Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 156
    const-string v18, "renderfps"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 157
    .local v8, fps:Ljava/lang/String;
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getEndFrame()I

    move-result v18

    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getStartFrame()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ui/LapseIt/project/SoundTrackView;->videoLength:F

    .line 159
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->videoLength:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v19

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v14, v18, v19

    .line 160
    .local v14, slideRatio:F
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v14

    move/from16 v0, v18

    float-to-int v15, v0

    .line 162
    .local v15, sliderWidth:I
    const/16 v18, 0x0

    int-to-float v0, v15

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ui/LapseIt/project/SoundTrackView;->waveWidth:I

    .line 164
    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->waveWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->waveHeight:I

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ui/LapseIt/project/SoundTrackView;->slideParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 166
    const/16 v18, 0x1

    const/high16 v19, 0x4000

    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v18

    move/from16 v0, v18

    float-to-int v11, v0

    .line 168
    .local v11, lineWidth:I
    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->waveHeight:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ui/LapseIt/project/SoundTrackView;->lineParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 170
    sget-object v18, Lcom/ui/LapseIt/project/SoundTrackView;->waveBitmap:Landroid/graphics/Bitmap;

    if-nez v18, :cond_3

    .line 171
    invoke-direct/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->analyzeTrackHandler()V

    .line 176
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->soundSlide:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->slideParams:Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->soundSlide:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->soundLine:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->clipDurationView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->musicDurationView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->rangeView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->playView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->stopView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->mediaCur:Landroid/database/Cursor;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->mediaCur:Landroid/database/Cursor;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->mediaCur:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const-string v19, "title"

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 188
    .local v17, titleIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->mediaCur:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const-string v19, "artist"

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 190
    .local v5, artistIndex:I
    if-ltz v17, :cond_4

    if-ltz v5, :cond_4

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->mediaCur:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 192
    .local v13, mediaTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->mediaCur:Landroid/database/Cursor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 193
    .local v12, mediaArtist:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v16

    .line 194
    .local v16, timeSpan:Landroid/text/SpannableString;
    new-instance v18, Landroid/text/style/ForegroundColorSpan;

    const/16 v19, -0x1

    invoke-direct/range {v18 .. v19}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v19, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x12

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 195
    new-instance v18, Landroid/text/style/ForegroundColorSpan;

    const/16 v19, -0x4600

    invoke-direct/range {v18 .. v19}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {v16 .. v16}, Landroid/text/SpannableString;->length()I

    move-result v20

    const/16 v21, 0x12

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->titleView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    sget-object v19, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v5           #artistIndex:I
    .end local v12           #mediaArtist:Ljava/lang/String;
    .end local v13           #mediaTitle:Ljava/lang/String;
    .end local v16           #timeSpan:Landroid/text/SpannableString;
    .end local v17           #titleIndex:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->buttonText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0800da

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->mediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v18, v0

    sget v19, Lcom/ui/LapseIt/project/ProjectView;->audioPosition:F

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 247
    .end local v8           #fps:Ljava/lang/String;
    .end local v11           #lineWidth:I
    .end local v14           #slideRatio:F
    .end local v15           #sliderWidth:I
    :goto_4
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 248
    return-void

    .line 134
    :cond_1
    const/16 v18, 0x1

    const/high16 v19, 0x4270

    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ui/LapseIt/project/SoundTrackView;->waveHeight:I

    goto/16 :goto_0

    .line 142
    .restart local v7       #filePath:Ljava/lang/String;
    :cond_2
    new-instance v18, Ljava/io/File;

    sget-object v19, Lcom/ui/LapseIt/project/ProjectView;->audioUri:Landroid/net/Uri;

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v18, Lcom/ui/LapseIt/project/ProjectView;->audioFile:Ljava/io/File;

    .line 143
    const-string v18, "trace"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Bla "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v20, Lcom/ui/LapseIt/project/ProjectView;->audioUri:Landroid/net/Uri;

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " / "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/ui/LapseIt/project/ProjectView;->audioFile:Ljava/io/File;

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 173
    .end local v7           #filePath:Ljava/lang/String;
    .restart local v8       #fps:Ljava/lang/String;
    .restart local v11       #lineWidth:I
    .restart local v14       #slideRatio:F
    .restart local v15       #sliderWidth:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->soundImage:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    sget-object v19, Lcom/ui/LapseIt/project/SoundTrackView;->waveBitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 198
    .restart local v5       #artistIndex:I
    .restart local v17       #titleIndex:I
    :cond_4
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f080017

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v16

    .line 199
    .restart local v16       #timeSpan:Landroid/text/SpannableString;
    new-instance v18, Landroid/text/style/ForegroundColorSpan;

    const/16 v19, -0x1

    invoke-direct/range {v18 .. v19}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/text/SpannableString;->length()I

    move-result v20

    const/16 v21, 0x12

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->titleView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    sget-object v19, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 207
    .end local v5           #artistIndex:I
    .end local v16           #timeSpan:Landroid/text/SpannableString;
    .end local v17           #titleIndex:I
    :catch_0
    move-exception v6

    .line 208
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 203
    .end local v6           #e:Ljava/lang/Exception;
    :cond_5
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f080017

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v16

    .line 204
    .restart local v16       #timeSpan:Landroid/text/SpannableString;
    new-instance v18, Landroid/text/style/ForegroundColorSpan;

    const/16 v19, -0x1

    invoke-direct/range {v18 .. v19}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v19, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/text/SpannableString;->length()I

    move-result v20

    const/16 v21, 0x12

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->titleView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    sget-object v19, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 215
    .end local v8           #fps:Ljava/lang/String;
    .end local v11           #lineWidth:I
    .end local v14           #slideRatio:F
    .end local v15           #sliderWidth:I
    .end local v16           #timeSpan:Landroid/text/SpannableString;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0800e5

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 216
    .local v10, infoText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->titleView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->titleView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->titleView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, -0x4600

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextColor(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->soundSlide:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->soundLine:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->musicDurationView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->rangeView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->playView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->stopView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    invoke-static/range {p0 .. p0}, Lcom/ui/LapseIt/Main;->isFullVersion(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->soundImage:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->waveHeight:I

    move/from16 v20, v0

    const/16 v21, -0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ui/LapseIt/project/SoundTrackView;->drawNoWave(IIIZ)Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->buttonText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0800d9

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0800e7

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 232
    .local v9, infoProText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->clipDurationView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->clipDurationView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->clipDurationView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 236
    .end local v9           #infoProText:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->soundImage:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->waveHeight:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/ui/LapseIt/project/SoundTrackView;->drawNotProWave(III)Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->buttonText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0800db

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0800e6

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 240
    .restart local v9       #infoProText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->clipDurationView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->clipDurationView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ui/LapseIt/project/SoundTrackView;->clipDurationView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 87
    invoke-static {}, Lcom/ui/LapseIt/Main;->getFlurryId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public readWave([S)I
    .locals 5
    .parameter "waveBuffer"

    .prologue
    .line 407
    const/4 v2, 0x0

    .line 409
    .local v2, max:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p1

    if-lt v1, v4, :cond_0

    .line 417
    array-length v4, p1

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/ui/LapseIt/project/SoundTrackView;->normalizedBuffer:[F

    .line 418
    const/4 v1, 0x0

    :goto_1
    array-length v4, p1

    if-lt v1, v4, :cond_2

    .line 423
    new-instance v4, Lcom/ui/LapseIt/project/SoundTrackView$8;

    invoke-direct {v4, p0}, Lcom/ui/LapseIt/project/SoundTrackView$8;-><init>(Lcom/ui/LapseIt/project/SoundTrackView;)V

    invoke-virtual {p0, v4}, Lcom/ui/LapseIt/project/SoundTrackView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 431
    const/4 v4, 0x1

    return v4

    .line 410
    :cond_0
    aget-short v4, p1, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 412
    .local v0, cur:I
    int-to-float v4, v0

    cmpl-float v4, v4, v2

    if-lez v4, :cond_1

    .line 413
    int-to-float v2, v0

    .line 409
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    .end local v0           #cur:I
    :cond_2
    aget-short v4, p1, v1

    int-to-float v4, v4

    div-float v3, v4, v2

    .line 420
    .local v3, norm:F
    iget-object v4, p0, Lcom/ui/LapseIt/project/SoundTrackView;->normalizedBuffer:[F

    aput v3, v4, v1

    .line 418
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
