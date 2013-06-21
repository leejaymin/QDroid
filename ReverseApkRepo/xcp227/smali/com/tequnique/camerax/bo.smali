.class public final Lcom/tequnique/camerax/bo;
.super Ljava/lang/Object;


# static fields
.field private static aZ:Lcom/tequnique/camerax/bo;


# instance fields
.field public A:Ljava/lang/String;

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:Z

.field public J:Z

.field public K:I

.field public L:I

.field public M:Z

.field public N:Z

.field public O:I

.field public P:I

.field public Q:I

.field public R:Z

.field public S:I

.field public T:Z

.field public U:[I

.field public V:I

.field public W:I

.field public X:Ljava/lang/String;

.field public Y:Ljava/lang/String;

.field public Z:Z

.field public a:Z

.field public aA:I

.field public aB:Z

.field public aC:[I

.field public aD:I

.field public aE:Z

.field public aF:Z

.field public aG:Ljava/lang/String;

.field public aH:Ljava/lang/String;

.field public aI:Ljava/lang/String;

.field public aJ:Ljava/lang/String;

.field public aK:Ljava/lang/String;

.field public aL:Ljava/lang/String;

.field public aM:Ljava/lang/String;

.field public aN:Ljava/lang/String;

.field public aO:Ljava/lang/String;

.field public aP:Ljava/lang/String;

.field public aQ:Ljava/lang/String;

.field public aR:Z

.field public aS:Z

.field public aT:I

.field public aU:I

.field public aV:F

.field public aW:Ljava/util/List;

.field public aX:Ljava/util/List;

.field public aY:I

.field public aa:Ljava/lang/String;

.field public ab:Ljava/lang/String;

.field public ac:Ljava/lang/String;

.field public ad:Z

.field public ae:I

.field public af:Z

.field public ag:I

.field public ah:I

.field public ai:Z

.field public aj:Z

.field public ak:Z

.field public al:I

.field public am:I

.field public an:I

.field public ao:I

.field public ap:F

.field public aq:I

.field public ar:I

.field public as:I

.field public at:I

.field public au:I

.field public av:I

.field public aw:I

.field public ax:Z

.field public ay:Z

.field public az:Z

.field public b:Z

.field public c:Z

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tequnique/camerax/bo;->aZ:Lcom/tequnique/camerax/bo;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->a:Z

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->e:Z

    iput-boolean v1, p0, Lcom/tequnique/camerax/bo;->f:Z

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->g:Z

    iput-boolean v1, p0, Lcom/tequnique/camerax/bo;->h:Z

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tequnique/camerax/bo;->U:[I

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->ax:Z

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->ay:Z

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->az:Z

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->aB:Z

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tequnique/camerax/bo;->aC:[I

    const-string v0, "facebook"

    iput-object v0, p0, Lcom/tequnique/camerax/bo;->aP:Ljava/lang/String;

    iput-object v3, p0, Lcom/tequnique/camerax/bo;->aQ:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/tequnique/camerax/bo;->aR:Z

    iput-boolean v1, p0, Lcom/tequnique/camerax/bo;->aS:Z

    iput v1, p0, Lcom/tequnique/camerax/bo;->aT:I

    iput v1, p0, Lcom/tequnique/camerax/bo;->aU:I

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/tequnique/camerax/bo;->aV:F

    iput-object v3, p0, Lcom/tequnique/camerax/bo;->aW:Ljava/util/List;

    iput-object v3, p0, Lcom/tequnique/camerax/bo;->aX:Ljava/util/List;

    iput v1, p0, Lcom/tequnique/camerax/bo;->aY:I

    invoke-direct {p0, p1}, Lcom/tequnique/camerax/bo;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tequnique/camerax/bo;
    .locals 1

    sget-object v0, Lcom/tequnique/camerax/bo;->aZ:Lcom/tequnique/camerax/bo;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/tequnique/camerax/bo;

    invoke-direct {v0, p0}, Lcom/tequnique/camerax/bo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tequnique/camerax/bo;->aZ:Lcom/tequnique/camerax/bo;

    :cond_0
    sget-object v0, Lcom/tequnique/camerax/bo;->aZ:Lcom/tequnique/camerax/bo;

    return-object v0
.end method

.method public static a(II)Ljava/lang/String;
    .locals 2

    int-to-float v0, p1

    int-to-float v1, p0

    div-float/2addr v0, v1

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_0

    const-string v0, "4:3"

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    const-string v0, "3:2"

    goto :goto_0

    :cond_1
    const/16 v1, 0x38

    if-ne v0, v1, :cond_2

    const-string v0, "16:9"

    goto :goto_0

    :cond_2
    const/16 v1, 0x3c

    if-ne v0, v1, :cond_3

    const-string v0, "5:3"

    goto :goto_0

    :cond_3
    const-string v0, "-"

    goto :goto_0
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/DCIM/CameraPro/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/CameraPro/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x0

    const/4 v0, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v1, "CameraPro"

    invoke-virtual {p1, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "firstStart"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->a:Z

    const-string v2, "htcFix"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->b:Z

    const-string v2, "lgOrientationFix"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->c:Z

    const-string v2, "manualExifDateFix"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->f:Z

    const-string v2, "useMediaButtonForCapturing"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->g:Z

    const-string v2, "captureAfterTouchFocus"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->h:Z

    const-string v2, "cameraId"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/tequnique/camerax/bo;->i:I

    const-string v2, "jpegQuality"

    const/16 v3, 0x64

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/tequnique/camerax/bo;->d:I

    const-string v2, "menuAlpha"

    const/16 v3, 0x96

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/tequnique/camerax/bo;->aD:I

    const-string v2, "setCameraProAsDefault"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->j:Z

    const-string v2, "showFocusingRect"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->k:Z

    const-string v2, "showFocusingButton"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->l:Z

    const-string v2, "enableTouchFocus"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->m:Z

    const-string v2, "fullscreenViewfinder"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->n:Z

    const-string v2, "useVolumeKeysAsShutter"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->o:Z

    const-string v2, "showPreviewInGallery"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->p:Z

    const-string v2, "enablePossibleUnsupportedControls"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->q:Z

    const-string v2, "playVideoAfterRecording"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->ad:Z

    iget-object v2, p0, Lcom/tequnique/camerax/bo;->aC:[I

    const-string v3, "menuIds0"

    const/16 v4, 0x64

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v6

    iget-object v2, p0, Lcom/tequnique/camerax/bo;->aC:[I

    const-string v3, "menuIds1"

    const/16 v4, 0x66

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v7

    iget-object v2, p0, Lcom/tequnique/camerax/bo;->aC:[I

    const/4 v3, 0x2

    const-string v4, "menuIds2"

    const/16 v5, 0x65

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v3

    iget-object v2, p0, Lcom/tequnique/camerax/bo;->aC:[I

    const-string v3, "menuIds3"

    const/16 v4, 0x68

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v0

    iget-object v2, p0, Lcom/tequnique/camerax/bo;->aC:[I

    const/4 v3, 0x4

    const-string v4, "menuIds4"

    const/16 v5, 0x67

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v3

    iget-object v2, p0, Lcom/tequnique/camerax/bo;->aC:[I

    const-string v3, "menuIds5"

    const/16 v4, 0x69

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v9

    iget-object v2, p0, Lcom/tequnique/camerax/bo;->aC:[I

    const/4 v3, 0x6

    const-string v4, "menuIds6"

    const/16 v5, 0x6a

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v3

    iget-object v2, p0, Lcom/tequnique/camerax/bo;->aC:[I

    const/4 v3, 0x7

    const-string v4, "menuIds7"

    const/16 v5, 0x6b

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v3

    const-string v2, "useWhiteIcons"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->aE:Z

    const-string v2, "showMenuText"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->aF:Z

    const-string v2, "askBeforeExit"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->r:Z

    const-string v2, "enableGps"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->I:Z

    const-string v2, "enableCompass"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->ax:Z

    const-string v2, "enableVirtualHorizon"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->ay:Z

    const-string v2, "enableGrid"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->az:Z

    const-string v2, "nrGridCells"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/tequnique/camerax/bo;->aA:I

    const-string v2, "exposureCompensationIdx"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/tequnique/camerax/bo;->B:I

    const-string v2, "brightnessAdj"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/tequnique/camerax/bo;->C:I

    const-string v2, "contrastAdj"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/tequnique/camerax/bo;->D:I

    const-string v2, "saturationAdj"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/tequnique/camerax/bo;->E:I

    const-string v2, "sharpnessAdj"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/tequnique/camerax/bo;->F:I

    const-string v2, "imageResolutionIdx"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/tequnique/camerax/bo;->G:I

    const-string v2, "previewResolutionIdx"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/tequnique/camerax/bo;->H:I

    const-string v2, "showZoomSlider"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->aB:Z

    const-string v2, "afTimelapse"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->J:Z

    const-string v2, "timeLapseInterval"

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/tequnique/camerax/bo;->K:I

    const-string v2, "selfTimerInterval"

    const/16 v3, 0xa

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/tequnique/camerax/bo;->L:I

    const-string v2, "resetSettingsAfterStart"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->M:Z

    const-string v2, "enableShutterSound"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->N:Z

    const-string v2, "antiShakeSensitivity"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/tequnique/camerax/bo;->O:I

    const-string v2, "burstDelay"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/tequnique/camerax/bo;->P:I

    const-string v2, "burstPicCount"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/tequnique/camerax/bo;->Q:I

    const-string v2, "afBurst"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->R:Z

    const-string v2, "bracketingDelay"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/tequnique/camerax/bo;->S:I

    const-string v2, "adBracketing"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tequnique/camerax/bo;->T:Z

    iget-object v2, p0, Lcom/tequnique/camerax/bo;->U:[I

    const-string v3, "bracketExpCompIdx0"

    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v6

    iget-object v2, p0, Lcom/tequnique/camerax/bo;->U:[I

    const-string v3, "bracketExpCompIdx1"

    invoke-interface {v1, v3, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v7

    iget-object v2, p0, Lcom/tequnique/camerax/bo;->U:[I

    const/4 v3, 0x2

    const-string v4, "bracketExpCompIdx2"

    const/16 v5, 0x9

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v2, v3

    :goto_0
    iget-object v2, p0, Lcom/tequnique/camerax/bo;->U:[I

    array-length v2, v2

    if-lt v0, v2, :cond_5

    const-string v0, "imagePreviewTime"

    const/16 v2, 0xa

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tequnique/camerax/bo;->V:I

    const-string v0, "captureButtonMode"

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tequnique/camerax/bo;->W:I

    const-string v0, "imgStoragePath"

    invoke-interface {v1, v0, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/bo;->X:Ljava/lang/String;

    const-string v0, "imgStorageFn"

    const-string v2, "@y@m@d_@H@M@S"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/bo;->Y:Ljava/lang/String;

    const-string v0, "imgCreateNewDirForEachDate"

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tequnique/camerax/bo;->Z:Z

    const-string v0, "videoStoragePath"

    invoke-interface {v1, v0, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/bo;->aa:Ljava/lang/String;

    const-string v0, "videoStorageFn"

    const-string v2, "@y@m@d_@H@M@S"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/bo;->ab:Ljava/lang/String;

    iget-object v0, p0, Lcom/tequnique/camerax/bo;->X:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/bo;->X:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/tequnique/camerax/bo;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/bo;->X:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/tequnique/camerax/bo;->aa:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tequnique/camerax/bo;->aa:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/tequnique/camerax/bo;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/bo;->aa:Ljava/lang/String;

    :cond_3
    const-string v0, "design"

    const-string v2, "gray"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/bo;->ac:Ljava/lang/String;

    const-string v0, "videoProfile"

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tequnique/camerax/bo;->ae:I

    const-string v0, "videoRecordAudio"

    invoke-interface {v1, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tequnique/camerax/bo;->af:Z

    const-string v0, "videoMaxDuration"

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tequnique/camerax/bo;->ag:I

    const-string v0, "videoMaxFilesize"

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tequnique/camerax/bo;->ah:I

    const-string v0, "videoSplitFiles"

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tequnique/camerax/bo;->ai:Z

    const-string v0, "videoExpertMode"

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tequnique/camerax/bo;->aj:Z

    const-string v0, "videoCopySettingsFromProfile"

    invoke-interface {v1, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tequnique/camerax/bo;->ak:Z

    const-string v0, "videoAudioChannels"

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tequnique/camerax/bo;->al:I

    const-string v0, "videoAudioCodec"

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tequnique/camerax/bo;->am:I

    const-string v0, "videoAudioBitrate"

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tequnique/camerax/bo;->an:I

    const-string v0, "videoAudioSamplingRate"

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tequnique/camerax/bo;->ao:I

    const-string v0, "videoCaptureRate"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/tequnique/camerax/bo;->ap:F

    const-string v0, "videoOutputFormat"

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tequnique/camerax/bo;->aq:I

    const-string v0, "videoVideoCodec"

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tequnique/camerax/bo;->ar:I

    const-string v0, "videoVideoBitrate"

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tequnique/camerax/bo;->as:I

    const-string v0, "videoVideoFramerate"

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tequnique/camerax/bo;->at:I

    const-string v0, "videoWidth"

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tequnique/camerax/bo;->au:I

    const-string v0, "videoHeight"

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tequnique/camerax/bo;->av:I

    const-string v0, "videoSplitDelay"

    const/16 v2, 0x3e8

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tequnique/camerax/bo;->aw:I

    const-string v0, "facebookToken"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/bo;->aG:Ljava/lang/String;

    const-string v0, "twitPicToken"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/bo;->aH:Ljava/lang/String;

    const-string v0, "twitPicSecret"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/bo;->aI:Ljava/lang/String;

    const-string v0, "picasaToken"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/bo;->aJ:Ljava/lang/String;

    const-string v0, "flickrToken"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/bo;->aK:Ljava/lang/String;

    const-string v0, "flickrSecret"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/bo;->aL:Ljava/lang/String;

    const-string v0, "facebookLastAlbumId"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/bo;->aM:Ljava/lang/String;

    const-string v0, "flickrLastAlbumId"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/bo;->aN:Ljava/lang/String;

    const-string v0, "picasaLastAlbumId"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/bo;->aO:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/tequnique/camerax/bo;->M:Z

    if-eqz v0, :cond_4

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    const-string v0, "antiBandMode"

    const-string v2, "off"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/bo;->s:Ljava/lang/String;

    const-string v0, "colorEffect"

    const-string v2, "none"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/bo;->t:Ljava/lang/String;

    const-string v0, "flashMode"

    const-string v2, "off"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/bo;->u:Ljava/lang/String;

    const-string v0, "sceneMode"

    const-string v2, "auto"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/bo;->v:Ljava/lang/String;

    const-string v0, "whiteBalance"

    const-string v2, "auto"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/bo;->w:Ljava/lang/String;

    const-string v0, "focusMode"

    const-string v2, "auto"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/bo;->x:Ljava/lang/String;

    const-string v0, "isoMode"

    invoke-interface {v1, v0, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/bo;->y:Ljava/lang/String;

    const-string v0, "meteringMode"

    invoke-interface {v1, v0, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/bo;->z:Ljava/lang/String;

    const-string v0, "cameraMode"

    const-string v2, "normal"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/bo;->A:Ljava/lang/String;

    return-void

    :cond_5
    iget-object v2, p0, Lcom/tequnique/camerax/bo;->U:[I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bracketExpCompIdx"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Lcom/tequnique/camerax/bo;->ac:Ljava/lang/String;

    const-string v1, "black"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f020011

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tequnique/camerax/bo;->ac:Ljava/lang/String;

    const-string v1, "blue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f020012

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tequnique/camerax/bo;->ac:Ljava/lang/String;

    const-string v1, "green"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f02003d

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tequnique/camerax/bo;->ac:Ljava/lang/String;

    const-string v1, "pink"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f02004c

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tequnique/camerax/bo;->ac:Ljava/lang/String;

    const-string v1, "red"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f02004d

    goto :goto_0

    :cond_4
    const v0, 0x7f02003c

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 11

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/tequnique/camerax/bo;->aa:Ljava/lang/String;

    iget-object v0, p0, Lcom/tequnique/camerax/bo;->ab:Ljava/lang/String;

    :goto_0
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    const-string v4, "@y"

    const-string v5, "%02d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/Date;->getYear()I

    move-result v7

    add-int/lit16 v7, v7, 0x76c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "@m"

    const-string v5, "%02d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/Date;->getMonth()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "@d"

    const-string v5, "%02d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "@H"

    const-string v5, "%02d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/Date;->getHours()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "@M"

    const-string v5, "%02d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/Date;->getMinutes()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "@S"

    const-string v5, "%02d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/Date;->getSeconds()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "@COUNTER"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v0, "@COUNTER"

    const-string v3, "%06d"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    move v0, v2

    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tequnique/camerax/bo;->X:Ljava/lang/String;

    iget-object v1, p0, Lcom/tequnique/camerax/bo;->Y:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/tequnique/camerax/bo;->Z:Z

    if-eqz v4, :cond_5

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "%02d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/Date;->getYear()I

    move-result v6

    add-int/lit16 v6, v6, 0x76c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "%02d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/Date;->getMonth()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "%02d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    if-eqz v6, :cond_4

    const-string v3, "@COUNTER"

    const-string v4, "%06d"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    :goto_2
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%06d"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    goto :goto_2

    :cond_5
    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "CameraPro"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v0, "firstStart"

    iget-boolean v3, p0, Lcom/tequnique/camerax/bo;->a:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "htcFix"

    iget-boolean v3, p0, Lcom/tequnique/camerax/bo;->b:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "lgOrientationFix"

    iget-boolean v3, p0, Lcom/tequnique/camerax/bo;->c:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "cameraId"

    iget v3, p0, Lcom/tequnique/camerax/bo;->i:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "manualExifDateFix"

    iget-boolean v3, p0, Lcom/tequnique/camerax/bo;->f:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "useMediaButtonForCapturing"

    iget-boolean v3, p0, Lcom/tequnique/camerax/bo;->g:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "captureAfterTouchFocus"

    iget-boolean v3, p0, Lcom/tequnique/camerax/bo;->h:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "jpegQuality"

    iget v3, p0, Lcom/tequnique/camerax/bo;->d:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "menuAlpha"

    iget v3, p0, Lcom/tequnique/camerax/bo;->aD:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "setCameraProAsDefault"

    iget-boolean v3, p0, Lcom/tequnique/camerax/bo;->j:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "showFocusingRect"

    iget-boolean v3, p0, Lcom/tequnique/camerax/bo;->k:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "showFocusingButton"

    iget-boolean v3, p0, Lcom/tequnique/camerax/bo;->l:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "enableTouchFocus"

    iget-boolean v3, p0, Lcom/tequnique/camerax/bo;->m:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "fullscreenViewfinder"

    iget-boolean v3, p0, Lcom/tequnique/camerax/bo;->n:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "useVolumeKeysAsShutter"

    iget-boolean v3, p0, Lcom/tequnique/camerax/bo;->o:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "showPreviewInGallery"

    iget-boolean v3, p0, Lcom/tequnique/camerax/bo;->p:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "enablePossibleUnsupportedControls"

    iget-boolean v3, p0, Lcom/tequnique/camerax/bo;->q:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/tequnique/camerax/bo;->aC:[I

    array-length v3, v3

    if-lt v0, v3, :cond_0

    const-string v0, "useWhiteIcons"

    iget-boolean v3, p0, Lcom/tequnique/camerax/bo;->aE:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "showMenuText"

    iget-boolean v3, p0, Lcom/tequnique/camerax/bo;->aF:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "askBeforeExit"

    iget-boolean v3, p0, Lcom/tequnique/camerax/bo;->r:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "antiBandMode"

    iget-object v3, p0, Lcom/tequnique/camerax/bo;->s:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "colorEffect"

    iget-object v3, p0, Lcom/tequnique/camerax/bo;->t:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "flashMode"

    iget-object v3, p0, Lcom/tequnique/camerax/bo;->u:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "sceneMode"

    iget-object v3, p0, Lcom/tequnique/camerax/bo;->v:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "whiteBalance"

    iget-object v3, p0, Lcom/tequnique/camerax/bo;->w:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "focusMode"

    iget-object v3, p0, Lcom/tequnique/camerax/bo;->x:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "isoMode"

    iget-object v3, p0, Lcom/tequnique/camerax/bo;->y:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "meteringMode"

    iget-object v3, p0, Lcom/tequnique/camerax/bo;->z:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "cameraMode"

    iget-object v3, p0, Lcom/tequnique/camerax/bo;->A:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "enableGps"

    iget-boolean v3, p0, Lcom/tequnique/camerax/bo;->I:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "enableCompass"

    iget-boolean v3, p0, Lcom/tequnique/camerax/bo;->ax:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "enableVirtualHorizon"

    iget-boolean v3, p0, Lcom/tequnique/camerax/bo;->ay:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "enableGrid"

    iget-boolean v3, p0, Lcom/tequnique/camerax/bo;->az:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "nrGridCells"

    iget v3, p0, Lcom/tequnique/camerax/bo;->aA:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "exposureCompensationIdx"

    iget v3, p0, Lcom/tequnique/camerax/bo;->B:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "brightnessAdj"

    iget v3, p0, Lcom/tequnique/camerax/bo;->C:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "contrastAdj"

    iget v3, p0, Lcom/tequnique/camerax/bo;->D:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "saturationAdj"

    iget v3, p0, Lcom/tequnique/camerax/bo;->E:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "sharpnessAdj"

    iget v3, p0, Lcom/tequnique/camerax/bo;->F:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "imageResolutionIdx"

    iget v3, p0, Lcom/tequnique/camerax/bo;->G:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "previewResolutionIdx"

    iget v3, p0, Lcom/tequnique/camerax/bo;->H:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "afTimelapse"

    iget-boolean v3, p0, Lcom/tequnique/camerax/bo;->J:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "timeLapseInterval"

    iget v3, p0, Lcom/tequnique/camerax/bo;->K:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "selfTimerInterval"

    iget v3, p0, Lcom/tequnique/camerax/bo;->L:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "resetSettingsAfterStart"

    iget-boolean v3, p0, Lcom/tequnique/camerax/bo;->M:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "enableShutterSound"

    iget-boolean v3, p0, Lcom/tequnique/camerax/bo;->N:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "antiShakeSensitivity"

    iget v3, p0, Lcom/tequnique/camerax/bo;->O:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "burstDelay"

    iget v3, p0, Lcom/tequnique/camerax/bo;->P:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "burstPicCount"

    iget v3, p0, Lcom/tequnique/camerax/bo;->Q:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "afBurst"

    iget-boolean v3, p0, Lcom/tequnique/camerax/bo;->R:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "bracketingDelay"

    iget v3, p0, Lcom/tequnique/camerax/bo;->S:I

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "adBracketing"

    iget-boolean v3, p0, Lcom/tequnique/camerax/bo;->T:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_1
    iget-object v0, p0, Lcom/tequnique/camerax/bo;->U:[I

    array-length v0, v0

    if-lt v1, v0, :cond_1

    const-string v0, "imagePreviewTime"

    iget v1, p0, Lcom/tequnique/camerax/bo;->V:I

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "captureButtonMode"

    iget v1, p0, Lcom/tequnique/camerax/bo;->W:I

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "imgStoragePath"

    iget-object v1, p0, Lcom/tequnique/camerax/bo;->X:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "imgStorageFn"

    iget-object v1, p0, Lcom/tequnique/camerax/bo;->Y:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "imgCreateNewDirForEachDate"

    iget-boolean v1, p0, Lcom/tequnique/camerax/bo;->Z:Z

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "videoStoragePath"

    iget-object v1, p0, Lcom/tequnique/camerax/bo;->aa:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "videoStorageFn"

    iget-object v1, p0, Lcom/tequnique/camerax/bo;->ab:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "design"

    iget-object v1, p0, Lcom/tequnique/camerax/bo;->ac:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "showZoomSlider"

    iget-boolean v1, p0, Lcom/tequnique/camerax/bo;->aB:Z

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "playVideoAfterRecording"

    iget-boolean v1, p0, Lcom/tequnique/camerax/bo;->ad:Z

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "videoProfile"

    iget v1, p0, Lcom/tequnique/camerax/bo;->ae:I

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "videoRecordAudio"

    iget-boolean v1, p0, Lcom/tequnique/camerax/bo;->af:Z

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "videoMaxDuration"

    iget v1, p0, Lcom/tequnique/camerax/bo;->ag:I

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "videoMaxFilesize"

    iget v1, p0, Lcom/tequnique/camerax/bo;->ah:I

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "videoSplitFiles"

    iget-boolean v1, p0, Lcom/tequnique/camerax/bo;->ai:Z

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "videoExpertMode"

    iget-boolean v1, p0, Lcom/tequnique/camerax/bo;->aj:Z

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "videoCopySettingsFromProfile"

    iget-boolean v1, p0, Lcom/tequnique/camerax/bo;->ak:Z

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "videoAudioChannels"

    iget v1, p0, Lcom/tequnique/camerax/bo;->al:I

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "videoAudioCodec"

    iget v1, p0, Lcom/tequnique/camerax/bo;->am:I

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "videoAudioBitrate"

    iget v1, p0, Lcom/tequnique/camerax/bo;->an:I

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "videoAudioSamplingRate"

    iget v1, p0, Lcom/tequnique/camerax/bo;->ao:I

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "videoCaptureRate"

    iget v1, p0, Lcom/tequnique/camerax/bo;->ap:F

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v0, "videoOutputFormat"

    iget v1, p0, Lcom/tequnique/camerax/bo;->aq:I

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "videoVideoCodec"

    iget v1, p0, Lcom/tequnique/camerax/bo;->ar:I

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "videoVideoBitrate"

    iget v1, p0, Lcom/tequnique/camerax/bo;->as:I

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "videoVideoFramerate"

    iget v1, p0, Lcom/tequnique/camerax/bo;->at:I

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "videoWidth"

    iget v1, p0, Lcom/tequnique/camerax/bo;->au:I

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "videoHeight"

    iget v1, p0, Lcom/tequnique/camerax/bo;->av:I

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "videoSplitDelay"

    iget v1, p0, Lcom/tequnique/camerax/bo;->aw:I

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "facebookToken"

    iget-object v1, p0, Lcom/tequnique/camerax/bo;->aG:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "twitPicToken"

    iget-object v1, p0, Lcom/tequnique/camerax/bo;->aH:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "twitPicSecret"

    iget-object v1, p0, Lcom/tequnique/camerax/bo;->aI:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "picasaToken"

    iget-object v1, p0, Lcom/tequnique/camerax/bo;->aJ:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "flickrToken"

    iget-object v1, p0, Lcom/tequnique/camerax/bo;->aK:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "flickrSecret"

    iget-object v1, p0, Lcom/tequnique/camerax/bo;->aL:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "facebookLastAlbumId"

    iget-object v1, p0, Lcom/tequnique/camerax/bo;->aM:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "flickrLastAlbumId"

    iget-object v1, p0, Lcom/tequnique/camerax/bo;->aN:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "picasaLastAlbumId"

    iget-object v1, p0, Lcom/tequnique/camerax/bo;->aO:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "menuIds"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tequnique/camerax/bo;->aC:[I

    aget v4, v4, v0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "bracketExpCompIdx"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/tequnique/camerax/bo;->U:[I

    aget v3, v3, v1

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method
