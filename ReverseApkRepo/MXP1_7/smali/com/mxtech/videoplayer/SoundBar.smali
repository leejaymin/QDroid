.class public final Lcom/mxtech/videoplayer/SoundBar;
.super Lcom/mxtech/videoplayer/ScreenVerticalBar;


# instance fields
.field private ㅼ꽑嫄:I

.field private 弱밧:Landroid/graphics/drawable/Drawable;

.field private 대쫫:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

.field private 쇰뒗:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mxtech/videoplayer/ScreenVerticalBar;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mxtech/videoplayer/ScreenVerticalBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/mxtech/videoplayer/ScreenVerticalBar;->onFinishInflate()V

    sget-object v0, Lcom/mxtech/videoplayer/L;->뚮Ц:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/mxtech/videoplayer/SoundBar;->ㅼ꽑嫄:I

    iget-object v0, p0, Lcom/mxtech/videoplayer/SoundBar;->궗:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    iput-object v0, p0, Lcom/mxtech/videoplayer/SoundBar;->대쫫:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    iget-object v0, p0, Lcom/mxtech/videoplayer/SoundBar;->癤욱븳援:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    iget v1, p0, Lcom/mxtech/videoplayer/SoundBar;->ㅼ꽑嫄:I

    invoke-virtual {v0, v1}, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/SoundBar;->궗:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    iget v1, p0, Lcom/mxtech/videoplayer/SoundBar;->ㅼ꽑嫄:I

    invoke-virtual {v0, v1}, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->setMax(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    if-nez p1, :cond_1

    invoke-static {}, Lms;->먯꽌()I

    move-result v1

    iget v0, p0, Lcom/mxtech/videoplayer/SoundBar;->ㅼ꽑嫄:I

    if-le v1, v0, :cond_2

    iget v0, p0, Lcom/mxtech/videoplayer/SoundBar;->ㅼ꽑嫄:I

    sub-int v0, v1, v0

    iget v1, p0, Lcom/mxtech/videoplayer/SoundBar;->ㅼ꽑嫄:I

    :goto_0
    iget-object v2, p0, Lcom/mxtech/videoplayer/SoundBar;->癤욱븳援:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    invoke-virtual {v2, v1}, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->setProgress(I)V

    iget-object v2, p0, Lcom/mxtech/videoplayer/SoundBar;->궗:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mxtech/videoplayer/SoundBar;->궗:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    invoke-virtual {v2, v0}, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->setProgress(I)V

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/mxtech/videoplayer/SoundBar;->궗(II)V

    :cond_1
    invoke-super {p0, p1}, Lcom/mxtech/videoplayer/ScreenVerticalBar;->setVisibility(I)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public 癤욱븳援(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SoundBar;->getCurrent()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/SoundBar;->setValue(I)V

    return-void
.end method

.method protected 궗(II)V
    .locals 3

    const/4 v2, 0x3

    sget-object v0, Lcom/mxtech/videoplayer/L;->뚮Ц:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/mxtech/videoplayer/L;->뚮Ц:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/SoundBar;->궗:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    if-eqz v0, :cond_1

    sget v0, Lms;->먮:I

    if-eq v0, p2, :cond_1

    sput p2, Lms;->먮:I

    iget-object v0, p0, Lcom/mxtech/videoplayer/SoundBar;->먯꽌:Lly;

    check-cast v0, Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->弱방떙()V

    :cond_1
    if-lez p1, :cond_4

    iget-object v0, p0, Lcom/mxtech/videoplayer/SoundBar;->弱밧:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SoundBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lnn;->supreme_volume:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/videoplayer/SoundBar;->弱밧:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v0, p0, Lcom/mxtech/videoplayer/SoundBar;->궗:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    if-eqz v0, :cond_3

    add-int/2addr p1, p2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mxtech/videoplayer/SoundBar;->弱밧:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1}, Lcom/mxtech/videoplayer/SoundBar;->setSupremeText(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/mxtech/videoplayer/SoundBar;->쇰뒗:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/SoundBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lnn;->supreme_volume_mute:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/videoplayer/SoundBar;->쇰뒗:Landroid/graphics/drawable/Drawable;

    :cond_5
    const-string v0, ""

    iget-object v1, p0, Lcom/mxtech/videoplayer/SoundBar;->쇰뒗:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1}, Lcom/mxtech/videoplayer/SoundBar;->setSupremeText(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public 궗(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/SoundBar;->대쫫:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/SoundBar;->대쫫:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    iput-object v0, p0, Lcom/mxtech/videoplayer/SoundBar;->궗:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mxtech/videoplayer/SoundBar;->대쫫:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mxtech/videoplayer/SoundBar;->궗:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    goto :goto_0
.end method
