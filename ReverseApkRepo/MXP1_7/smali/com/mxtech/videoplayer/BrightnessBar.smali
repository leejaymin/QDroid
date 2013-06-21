.class public final Lcom/mxtech/videoplayer/BrightnessBar;
.super Lcom/mxtech/videoplayer/ScreenVerticalBar;


# static fields
.field private static final 弱밧:[D


# instance fields
.field private ㅼ꽑嫄:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mxtech/videoplayer/BrightnessBar;->弱밧:[D

    return-void

    :array_0
    .array-data 0x8
        0x9at 0x99t 0x99t 0x99t 0x99t 0x99t 0xa9t 0x3ft
        0xf1t 0x21t 0xbt 0xa5t 0x5ft 0x69t 0xb3t 0x3ft
        0x84t 0x3ft 0x74t 0x83t 0x18t 0x65t 0xbbt 0x3ft
        0xc6t 0x12t 0x4t 0xb4t 0xfbt 0x5ft 0xc2t 0x3ft
        0x0t 0x6at 0x63t 0x29t 0xfet 0xbct 0xc7t 0x3ft
        0x72t 0x25t 0xd8t 0xa1t 0x93t 0xc9t 0xcdt 0x3ft
        0x8et 0x22t 0xb1t 0xet 0xdet 0x42t 0xd2t 0x3ft
        0x80t 0xe4t 0x0t 0xcet 0xbbt 0xf8t 0xd5t 0x3ft
        0x8dt 0x58t 0xdbt 0xet 0x63t 0x6t 0xdat 0x3ft
        0xb6t 0x7et 0x40t 0xd1t 0xd3t 0x6bt 0xdet 0x3ft
        0x7et 0x2bt 0x98t 0xat 0x87t 0x94t 0xe1t 0x3ft
        0xaft 0x70t 0x55t 0xedt 0x8t 0x1ft 0xe4t 0x3ft
        0xeft 0xet 0xd8t 0x90t 0x6ft 0xd5t 0xe6t 0x3ft
        0x3ct 0x6t 0x20t 0xf5t 0xbat 0xb7t 0xe9t 0x3ft
        0x97t 0x56t 0x2dt 0x1at 0xebt 0xc5t 0xect 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0x3ft
    .end array-data
.end method

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

.method public static 癤욱븳援(II)D
    .locals 8

    const-wide v0, 0x3fa999999999999aL

    const/16 v2, 0xf

    if-ne p0, v2, :cond_1

    sget-object v0, Lcom/mxtech/videoplayer/BrightnessBar;->弱밧:[D

    aget-wide v0, v0, p1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    const-wide v2, 0x3fcc9f25c5bfedd9L

    const-wide v4, 0x3fe8d8368e90048aL

    int-to-double v6, p0

    div-double/2addr v4, v6

    int-to-double v6, p1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v2, v2

    cmpg-double v4, v2, v0

    if-ltz v4, :cond_0

    move-wide v0, v2

    goto :goto_0
.end method

.method public static 癤욱븳援(ID)I
    .locals 4

    const-wide v0, 0x3fa999999999999aL

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x3fcc9f25c5bfedd9L

    sub-double/2addr v0, v2

    int-to-double v2, p0

    mul-double/2addr v0, v2

    const-wide v2, 0x3fe8d8368e90048aL

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static 癤욱븳援(Landroid/content/Context;)I
    .locals 3

    const/16 v1, 0xf

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/mxtech/videoplayer/ScreenVerticalBar;->onFinishInflate()V

    iget-object v0, p0, Lcom/mxtech/videoplayer/BrightnessBar;->癤욱븳援:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/BrightnessBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mxtech/videoplayer/BrightnessBar;->癤욱븳援(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->setMax(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/BrightnessBar;->癤욱븳援:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    invoke-virtual {v0}, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->getMax()I

    move-result v0

    invoke-static {}, Lms;->대쫫()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v0, v1, v2}, Lcom/mxtech/videoplayer/BrightnessBar;->癤욱븳援(ID)I

    move-result v0

    iget-object v1, p0, Lcom/mxtech/videoplayer/BrightnessBar;->癤욱븳援:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    invoke-virtual {v1, v0}, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->setProgress(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mxtech/videoplayer/BrightnessBar;->궗(II)V

    :cond_0
    invoke-super {p0, p1}, Lcom/mxtech/videoplayer/ScreenVerticalBar;->setVisibility(I)V

    return-void
.end method

.method protected 궗(II)V
    .locals 3

    iget-object v0, p0, Lcom/mxtech/videoplayer/BrightnessBar;->癤욱븳援:Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;

    invoke-virtual {v0}, Lcom/tokaracamara/android/verticalslidevar/VerticalSeekBar;->getMax()I

    move-result v0

    invoke-static {v0, p1}, Lcom/mxtech/videoplayer/BrightnessBar;->癤욱븳援(II)D

    move-result-wide v0

    double-to-float v0, v0

    sget-boolean v1, Lms;->뚮Ц:Z

    if-nez v1, :cond_0

    sget v1, Lms;->붿슧:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lms;->뚮Ц:Z

    sput v0, Lms;->붿슧:F

    iget-object v0, p0, Lcom/mxtech/videoplayer/BrightnessBar;->먯꽌:Lly;

    check-cast v0, Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lms;->붿슧:F

    invoke-static {v1, v2}, Lee;->癤욱븳援(Landroid/view/Window;F)V

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->ㅼ쬆()V

    :cond_1
    iget-object v0, p0, Lcom/mxtech/videoplayer/BrightnessBar;->ㅼ꽑嫄:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/BrightnessBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lnn;->supreme_brightness:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/videoplayer/BrightnessBar;->ㅼ꽑嫄:Landroid/graphics/drawable/Drawable;

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mxtech/videoplayer/BrightnessBar;->ㅼ꽑嫄:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1}, Lcom/mxtech/videoplayer/BrightnessBar;->setSupremeText(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
