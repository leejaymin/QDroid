.class public Lcom/tequnique/camerax/CameraProActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Landroid/hardware/Camera$PictureCallback;
.implements Landroid/hardware/Camera$ShutterCallback;


# static fields
.field private static J:Ljava/util/List;

.field private static final an:[B

.field private static b:Z


# instance fields
.field private A:Lcom/tequnique/camerax/bw;

.field private B:F

.field private C:Landroid/hardware/SensorEventListener;

.field private D:Landroid/hardware/SensorEventListener;

.field private E:Landroid/location/LocationListener;

.field private F:Landroid/location/LocationManager;

.field private G:Landroid/location/Location;

.field private H:F

.field private I:I

.field private K:Ljava/util/List;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/TextView;

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Landroid/graphics/RectF;

.field private S:Landroid/graphics/PointF;

.field private T:[F

.field private U:Z

.field private V:I

.field private W:Z

.field private X:Z

.field private Y:I

.field private Z:I

.field a:Landroid/content/ComponentName;

.field private aa:I

.field private ab:Z

.field private ac:Z

.field private ad:Z

.field private ae:Ljava/util/List;

.field private af:I

.field private ag:Landroid/media/MediaScannerConnection;

.field private ah:Landroid/media/MediaRecorder;

.field private ai:Z

.field private aj:Z

.field private ak:Ljava/util/List;

.field private al:Lcom/a/a/a/a/m;

.field private am:Lcom/a/a/a/a/i;

.field private ao:Landroid/content/BroadcastReceiver;

.field private c:Ljava/lang/String;

.field private d:Lcom/tequnique/camerax/bo;

.field private e:Landroid/hardware/Camera;

.field private f:Landroid/view/SurfaceView;

.field private g:Lcom/tequnique/camerax/bk;

.field private h:Landroid/os/Handler;

.field private i:Ljava/lang/Runnable;

.field private j:[Landroid/widget/ImageButton;

.field private k:[Landroid/widget/TextView;

.field private l:Landroid/widget/ImageButton;

.field private m:Landroid/widget/ImageButton;

.field private n:Lcom/tequnique/camerax/VerticalSeekBar;

.field private o:Z

.field private p:Landroid/widget/LinearLayout;

.field private q:I

.field private r:I

.field private s:Ljava/util/List;

.field private t:Landroid/widget/GridView;

.field private u:I

.field private v:Lcom/tequnique/camerax/bf;

.field private w:Landroid/hardware/SensorManager;

.field private x:Landroid/view/OrientationEventListener;

.field private y:I

.field private z:Lcom/tequnique/camerax/bv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tequnique/camerax/CameraProActivity;->b:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/tequnique/camerax/CameraProActivity;->J:Ljava/util/List;

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tequnique/camerax/CameraProActivity;->an:[B

    return-void

    :array_0
    .array-data 0x1
        0xf0t
        0x2dt
        0x20t
        0x80t
        0x8ft
        0x33t
        0x4at
        0xc0t
        0x33t
        0x58t
        0xa1t
        0xd3t
        0x4dt
        0x8bt
        0xdct
        0xf2t
        0xf5t
        0x20t
        0xc2t
        0x7at
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->f:Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->g:Lcom/tequnique/camerax/bk;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->h:Landroid/os/Handler;

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->i:Ljava/lang/Runnable;

    new-array v0, v5, [Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->j:[Landroid/widget/ImageButton;

    new-array v0, v5, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->k:[Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->l:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->m:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->n:Lcom/tequnique/camerax/VerticalSeekBar;

    iput-boolean v2, p0, Lcom/tequnique/camerax/CameraProActivity;->o:Z

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    iput v3, p0, Lcom/tequnique/camerax/CameraProActivity;->q:I

    iput v3, p0, Lcom/tequnique/camerax/CameraProActivity;->r:I

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->s:Ljava/util/List;

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->t:Landroid/widget/GridView;

    iput v3, p0, Lcom/tequnique/camerax/CameraProActivity;->u:I

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->v:Lcom/tequnique/camerax/bf;

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->w:Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->x:Landroid/view/OrientationEventListener;

    iput v2, p0, Lcom/tequnique/camerax/CameraProActivity;->y:I

    new-instance v0, Lcom/tequnique/camerax/bv;

    invoke-direct {v0}, Lcom/tequnique/camerax/bv;-><init>()V

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->z:Lcom/tequnique/camerax/bv;

    new-instance v0, Lcom/tequnique/camerax/bw;

    invoke-direct {v0}, Lcom/tequnique/camerax/bw;-><init>()V

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->A:Lcom/tequnique/camerax/bw;

    iput v4, p0, Lcom/tequnique/camerax/CameraProActivity;->B:F

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->C:Landroid/hardware/SensorEventListener;

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->D:Landroid/hardware/SensorEventListener;

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->E:Landroid/location/LocationListener;

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->F:Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->G:Landroid/location/Location;

    iput v4, p0, Lcom/tequnique/camerax/CameraProActivity;->H:F

    iput v2, p0, Lcom/tequnique/camerax/CameraProActivity;->I:I

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->K:Ljava/util/List;

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->L:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->M:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->N:Landroid/widget/TextView;

    iput-boolean v2, p0, Lcom/tequnique/camerax/CameraProActivity;->O:Z

    iput-boolean v2, p0, Lcom/tequnique/camerax/CameraProActivity;->P:Z

    iput-boolean v2, p0, Lcom/tequnique/camerax/CameraProActivity;->Q:Z

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->R:Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->S:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->T:[F

    iput-boolean v2, p0, Lcom/tequnique/camerax/CameraProActivity;->U:Z

    iput v2, p0, Lcom/tequnique/camerax/CameraProActivity;->V:I

    iput-boolean v2, p0, Lcom/tequnique/camerax/CameraProActivity;->W:Z

    iput-boolean v2, p0, Lcom/tequnique/camerax/CameraProActivity;->X:Z

    iput v2, p0, Lcom/tequnique/camerax/CameraProActivity;->Y:I

    iput v2, p0, Lcom/tequnique/camerax/CameraProActivity;->Z:I

    iput v2, p0, Lcom/tequnique/camerax/CameraProActivity;->aa:I

    iput-boolean v2, p0, Lcom/tequnique/camerax/CameraProActivity;->ab:Z

    iput-boolean v2, p0, Lcom/tequnique/camerax/CameraProActivity;->ac:Z

    iput-boolean v2, p0, Lcom/tequnique/camerax/CameraProActivity;->ad:Z

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ae:Ljava/util/List;

    iput v3, p0, Lcom/tequnique/camerax/CameraProActivity;->af:I

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ag:Landroid/media/MediaScannerConnection;

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->a:Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    iput-boolean v2, p0, Lcom/tequnique/camerax/CameraProActivity;->ai:Z

    iput-boolean v2, p0, Lcom/tequnique/camerax/CameraProActivity;->aj:Z

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ak:Ljava/util/List;

    new-instance v0, Lcom/tequnique/camerax/h;

    invoke-direct {v0, p0}, Lcom/tequnique/camerax/h;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ao:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A(Lcom/tequnique/camerax/CameraProActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->W:Z

    return-void
.end method

.method static synthetic B(Lcom/tequnique/camerax/CameraProActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->Q:Z

    return-void
.end method

.method static synthetic C(Lcom/tequnique/camerax/CameraProActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->N:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic D(Lcom/tequnique/camerax/CameraProActivity;)I
    .locals 1

    iget v0, p0, Lcom/tequnique/camerax/CameraProActivity;->u:I

    return v0
.end method

.method static synthetic E(Lcom/tequnique/camerax/CameraProActivity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->c(Z)V

    return-void
.end method

.method static synthetic F(Lcom/tequnique/camerax/CameraProActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->aj:Z

    return v0
.end method

.method static synthetic G(Lcom/tequnique/camerax/CameraProActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->o:Z

    return v0
.end method

.method static synthetic H(Lcom/tequnique/camerax/CameraProActivity;)I
    .locals 1

    iget v0, p0, Lcom/tequnique/camerax/CameraProActivity;->Y:I

    return v0
.end method

.method static synthetic I(Lcom/tequnique/camerax/CameraProActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->i:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic J(Lcom/tequnique/camerax/CameraProActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->L:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic K(Lcom/tequnique/camerax/CameraProActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ai:Z

    return-void
.end method

.method static synthetic L(Lcom/tequnique/camerax/CameraProActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ab:Z

    return-void
.end method

.method static synthetic M(Lcom/tequnique/camerax/CameraProActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ae:Ljava/util/List;

    return-object v0
.end method

.method static synthetic N(Lcom/tequnique/camerax/CameraProActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ad:Z

    return-void
.end method

.method static synthetic O(Lcom/tequnique/camerax/CameraProActivity;)I
    .locals 1

    iget v0, p0, Lcom/tequnique/camerax/CameraProActivity;->aa:I

    return v0
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;)I
    .locals 4

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v0, v0

    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x40e9

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    const/16 v0, 0x8

    if-gt v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-lt v0, v1, :cond_0

    :goto_1
    return v0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    goto :goto_1
.end method

.method private static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    const/high16 v3, 0x4000

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq p0, v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a([B)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    const/4 v4, -0x1

    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v2, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v2, v4, :cond_0

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v2, v4, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v1}, Lcom/tequnique/camerax/CameraProActivity;->a(Landroid/graphics/BitmapFactory$Options;)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CameraPro"

    const-string v3, "Got out of memory exception "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/tequnique/camerax/CameraProActivity;)Landroid/hardware/Camera;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/tequnique/camerax/bj;
    .locals 9

    const v2, 0x7f020034

    const v1, 0x7f020033

    const v0, 0x7f020032

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v5

    const/4 v4, -0x1

    const/4 v3, 0x0

    if-eqz v5, :cond_e

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v3, "auto"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_0

    const v0, 0x7f020030

    :goto_0
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f050038

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v3, v5

    move v8, v0

    move-object v0, v1

    move v1, v8

    :goto_1
    if-nez v3, :cond_c

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_b

    :goto_2
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v1, Lcom/tequnique/camerax/bj;

    invoke-direct {v1, p1, v2, v0}, Lcom/tequnique/camerax/bj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1

    :cond_0
    const v0, 0x7f020031

    goto :goto_0

    :cond_1
    const-string v3, "on"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v3, v3, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v3, :cond_2

    :goto_4
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f050039

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v3, v5

    move v8, v0

    move-object v0, v1

    move v1, v8

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_4

    :cond_3
    const-string v3, "red-eye"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_4

    const v0, 0x7f020036

    :goto_5
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f05003a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v3, v5

    move v8, v0

    move-object v0, v1

    move v1, v8

    goto :goto_1

    :cond_4
    const v0, 0x7f020037

    goto :goto_5

    :cond_5
    const-string v3, "torch"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_6

    const v0, 0x7f020038

    :goto_6
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f05003b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v3, v5

    move v8, v0

    move-object v0, v1

    move v1, v8

    goto/16 :goto_1

    :cond_6
    const v0, 0x7f020039

    goto :goto_6

    :cond_7
    const-string v3, "off"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_8

    move v0, v2

    :goto_7
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f05003c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v3, v5

    move v8, v0

    move-object v0, v1

    move v1, v8

    goto/16 :goto_1

    :cond_8
    const v0, 0x7f020035

    goto :goto_7

    :cond_9
    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v3, v3, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v3, :cond_a

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v3, v5

    move v8, v0

    move-object v0, v1

    move v1, v8

    goto/16 :goto_1

    :cond_a
    move v0, v1

    goto :goto_8

    :cond_b
    const v2, 0x7f020035

    goto/16 :goto_2

    :cond_c
    move v2, v1

    goto/16 :goto_3

    :cond_d
    move-object v0, v3

    move v1, v4

    move v3, v5

    goto/16 :goto_1

    :cond_e
    move-object v0, v3

    move v1, v4

    move v3, v6

    goto/16 :goto_1
.end method

.method private a(I)V
    .locals 12

    const/4 v11, -0x2

    const/high16 v10, 0x3f80

    const/4 v3, 0x1

    const/4 v9, -0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->W:Z

    if-eqz v0, :cond_a

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x6d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/16 v0, 0x6a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x70

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0x65

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v0, 0x69

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/16 v0, 0x6f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x67

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-static {v0}, Lcom/tequnique/camerax/f;->a(Landroid/hardware/Camera;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v0, 0x6c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-static {v0}, Lcom/tequnique/camerax/g;->a(Landroid/hardware/Camera;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v0, 0x6e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    const/16 v0, 0x68

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const/16 v0, 0x6b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v0, 0x66

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    move v2, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_8

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f05000a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/tequnique/camerax/x;

    invoke-direct {v1, p0, v4, p1}, Lcom/tequnique/camerax/x;-><init>(Lcom/tequnique/camerax/CameraProActivity;Ljava/util/List;I)V

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tequnique/camerax/y;

    invoke-direct {v3, p0}, Lcom/tequnique/camerax/y;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_1
    return-void

    :cond_8
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->aC:[I

    aget v6, v0, p1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v6, v0, :cond_9

    move v2, v1

    :cond_9
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f050018

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f050019

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f05001a

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f05001b

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f05001c

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f050015

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    goto :goto_2

    :pswitch_6
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f05001d

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    goto :goto_2

    :pswitch_7
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f050013

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    goto :goto_2

    :pswitch_8
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f05001e

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f05001f

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f050020

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f050017

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f050021

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    goto/16 :goto_2

    :cond_a
    iget v0, p0, Lcom/tequnique/camerax/CameraProActivity;->q:I

    if-ne v0, p1, :cond_b

    invoke-direct {p0, v1}, Lcom/tequnique/camerax/CameraProActivity;->c(Z)V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iput p1, p0, Lcom/tequnique/camerax/CameraProActivity;->q:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->s:Ljava/util/List;

    const/4 v2, 0x0

    iget v0, p0, Lcom/tequnique/camerax/CameraProActivity;->q:I

    iget-object v4, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v4, v4, Lcom/tequnique/camerax/bo;->aC:[I

    array-length v4, v4

    if-ge v0, v4, :cond_c

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->aC:[I

    iget v4, p0, Lcom/tequnique/camerax/CameraProActivity;->q:I

    aget v0, v0, v4

    iput v0, p0, Lcom/tequnique/camerax/CameraProActivity;->u:I

    :goto_3
    iget v0, p0, Lcom/tequnique/camerax/CameraProActivity;->u:I

    sparse-switch v0, :sswitch_data_0

    move-object v0, v2

    :goto_4
    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_32

    invoke-direct {p0, v1}, Lcom/tequnique/camerax/CameraProActivity;->c(Z)V

    goto/16 :goto_1

    :cond_c
    iget v0, p0, Lcom/tequnique/camerax/CameraProActivity;->q:I

    iput v0, p0, Lcom/tequnique/camerax/CameraProActivity;->u:I

    goto :goto_3

    :sswitch_0
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_d

    iput v9, p0, Lcom/tequnique/camerax/CameraProActivity;->q:I

    move-object v0, v2

    goto :goto_4

    :cond_d
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f05002c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v2, v1

    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_e

    move-object v0, v4

    goto :goto_4

    :cond_e
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->a(Ljava/lang/String;)Lcom/tequnique/camerax/bj;

    move-result-object v0

    iget-object v6, v0, Lcom/tequnique/camerax/bj;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v7, v7, Lcom/tequnique/camerax/bo;->u:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/tequnique/camerax/bj;->d:Z

    iget-boolean v6, v0, Lcom/tequnique/camerax/bj;->d:Z

    if-eqz v6, :cond_f

    iput v2, p0, Lcom/tequnique/camerax/CameraProActivity;->r:I

    :cond_f
    iget-object v6, p0, Lcom/tequnique/camerax/CameraProActivity;->s:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :sswitch_1
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_10

    iput v9, p0, Lcom/tequnique/camerax/CameraProActivity;->q:I

    move-object v0, v2

    goto :goto_4

    :cond_10
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f05002f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v2, v1

    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_11

    move-object v0, v4

    goto :goto_4

    :cond_11
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->b(Ljava/lang/String;)Lcom/tequnique/camerax/bj;

    move-result-object v0

    iget-object v6, v0, Lcom/tequnique/camerax/bj;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v7, v7, Lcom/tequnique/camerax/bo;->w:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/tequnique/camerax/bj;->d:Z

    iget-boolean v6, v0, Lcom/tequnique/camerax/bj;->d:Z

    if-eqz v6, :cond_12

    iput v2, p0, Lcom/tequnique/camerax/CameraProActivity;->r:I

    :cond_12
    iget-object v6, p0, Lcom/tequnique/camerax/CameraProActivity;->s:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :sswitch_2
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_13

    iput v9, p0, Lcom/tequnique/camerax/CameraProActivity;->q:I

    move-object v0, v2

    goto/16 :goto_4

    :cond_13
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f05002b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v2, v1

    :goto_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_14

    move-object v0, v4

    goto/16 :goto_4

    :cond_14
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->c(Ljava/lang/String;)Lcom/tequnique/camerax/bj;

    move-result-object v0

    iget-object v6, v0, Lcom/tequnique/camerax/bj;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v7, v7, Lcom/tequnique/camerax/bo;->t:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/tequnique/camerax/bj;->d:Z

    iget-boolean v6, v0, Lcom/tequnique/camerax/bj;->d:Z

    if-eqz v6, :cond_15

    iput v2, p0, Lcom/tequnique/camerax/CameraProActivity;->r:I

    :cond_15
    iget-object v6, p0, Lcom/tequnique/camerax/CameraProActivity;->s:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :sswitch_3
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_16

    iput v9, p0, Lcom/tequnique/camerax/CameraProActivity;->q:I

    move-object v0, v2

    goto/16 :goto_4

    :cond_16
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f05002e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v2, v1

    :goto_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_17

    move-object v0, v4

    goto/16 :goto_4

    :cond_17
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->d(Ljava/lang/String;)Lcom/tequnique/camerax/bj;

    move-result-object v0

    iget-object v6, v0, Lcom/tequnique/camerax/bj;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v7, v7, Lcom/tequnique/camerax/bo;->v:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/tequnique/camerax/bj;->d:Z

    iget-boolean v6, v0, Lcom/tequnique/camerax/bj;->d:Z

    if-eqz v6, :cond_18

    iput v2, p0, Lcom/tequnique/camerax/CameraProActivity;->r:I

    :cond_18
    iget-object v6, p0, Lcom/tequnique/camerax/CameraProActivity;->s:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :sswitch_4
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_19

    iput v9, p0, Lcom/tequnique/camerax/CameraProActivity;->q:I

    move-object v0, v2

    goto/16 :goto_4

    :cond_19
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f05002d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v2, v1

    :goto_9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_1a

    move-object v0, v4

    goto/16 :goto_4

    :cond_1a
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->e(Ljava/lang/String;)Lcom/tequnique/camerax/bj;

    move-result-object v0

    iget-object v6, v0, Lcom/tequnique/camerax/bj;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v7, v7, Lcom/tequnique/camerax/bo;->x:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/tequnique/camerax/bj;->d:Z

    iget-boolean v6, v0, Lcom/tequnique/camerax/bj;->d:Z

    if-eqz v6, :cond_1b

    iput v2, p0, Lcom/tequnique/camerax/CameraProActivity;->r:I

    :cond_1b
    iget-object v6, p0, Lcom/tequnique/camerax/CameraProActivity;->s:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    :sswitch_5
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_1c

    iput v9, p0, Lcom/tequnique/camerax/CameraProActivity;->q:I

    move-object v0, v2

    goto/16 :goto_4

    :cond_1c
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050029

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v2, v1

    :goto_a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_1d

    move-object v0, v4

    goto/16 :goto_4

    :cond_1d
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->f(Ljava/lang/String;)Lcom/tequnique/camerax/bj;

    move-result-object v0

    iget-object v6, v0, Lcom/tequnique/camerax/bj;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v7, v7, Lcom/tequnique/camerax/bo;->s:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/tequnique/camerax/bj;->d:Z

    iget-boolean v6, v0, Lcom/tequnique/camerax/bj;->d:Z

    if-eqz v6, :cond_1e

    iput v2, p0, Lcom/tequnique/camerax/CameraProActivity;->r:I

    :cond_1e
    iget-object v6, p0, Lcom/tequnique/camerax/CameraProActivity;->s:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    :sswitch_6
    sget-object v5, Lcom/tequnique/camerax/CameraProActivity;->J:Ljava/util/List;

    if-nez v5, :cond_1f

    iput v9, p0, Lcom/tequnique/camerax/CameraProActivity;->q:I

    move-object v0, v2

    goto/16 :goto_4

    :cond_1f
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f05002a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->i:I

    if-lez v0, :cond_20

    const-string v0, "video"

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_20
    move v2, v1

    :goto_b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_21

    move-object v0, v4

    goto/16 :goto_4

    :cond_21
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->i(Ljava/lang/String;)Lcom/tequnique/camerax/bj;

    move-result-object v0

    iget-object v6, v0, Lcom/tequnique/camerax/bj;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v7, v7, Lcom/tequnique/camerax/bo;->A:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/tequnique/camerax/bj;->d:Z

    iget-boolean v6, v0, Lcom/tequnique/camerax/bj;->d:Z

    if-eqz v6, :cond_22

    iput v2, p0, Lcom/tequnique/camerax/CameraProActivity;->r:I

    :cond_22
    iget-object v6, p0, Lcom/tequnique/camerax/CameraProActivity;->s:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    :sswitch_7
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050032

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->f()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->s:Ljava/util/List;

    goto/16 :goto_4

    :sswitch_8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tequnique/camerax/SettingsViewTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :sswitch_9
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tequnique/camerax/InfoViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :sswitch_a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/tequnique/camerax/z;

    invoke-direct {v6, p0}, Lcom/tequnique/camerax/z;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/tequnique/camerax/aa;

    invoke-direct {v6, p0}, Lcom/tequnique/camerax/aa;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move-object v0, v2

    goto/16 :goto_4

    :sswitch_b
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "http://www.facebook.com/CameraProApp"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->startActivity(Landroid/content/Intent;)V

    move-object v0, v2

    goto/16 :goto_4

    :sswitch_c
    iget-object v4, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->az:Z

    if-eqz v0, :cond_23

    move v0, v1

    :goto_c
    iput-boolean v0, v4, Lcom/tequnique/camerax/bo;->az:Z

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    invoke-virtual {v0, p0}, Lcom/tequnique/camerax/bo;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->v:Lcom/tequnique/camerax/bf;

    invoke-virtual {v0}, Lcom/tequnique/camerax/bf;->invalidate()V

    move-object v0, v2

    goto/16 :goto_4

    :cond_23
    move v0, v3

    goto :goto_c

    :sswitch_d
    iget-object v4, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->ay:Z

    if-eqz v0, :cond_24

    move v0, v1

    :goto_d
    iput-boolean v0, v4, Lcom/tequnique/camerax/bo;->ay:Z

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    invoke-virtual {v0, p0}, Lcom/tequnique/camerax/bo;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->v:Lcom/tequnique/camerax/bf;

    invoke-virtual {v0}, Lcom/tequnique/camerax/bf;->invalidate()V

    move-object v0, v2

    goto/16 :goto_4

    :cond_24
    move v0, v3

    goto :goto_d

    :sswitch_e
    iget-object v4, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->ax:Z

    if-eqz v0, :cond_25

    move v0, v1

    :goto_e
    iput-boolean v0, v4, Lcom/tequnique/camerax/bo;->ax:Z

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    invoke-virtual {v0, p0}, Lcom/tequnique/camerax/bo;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->ax:Z

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->b(Z)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->v:Lcom/tequnique/camerax/bf;

    invoke-virtual {v0}, Lcom/tequnique/camerax/bf;->invalidate()V

    move-object v0, v2

    goto/16 :goto_4

    :cond_25
    move v0, v3

    goto :goto_e

    :sswitch_f
    invoke-direct {p0, v1}, Lcom/tequnique/camerax/CameraProActivity;->c(Z)V

    iput-boolean v3, p0, Lcom/tequnique/camerax/CameraProActivity;->Q:Z

    iput-boolean v3, p0, Lcom/tequnique/camerax/CameraProActivity;->W:Z

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->N:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0022

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->N:Landroid/widget/TextView;

    new-instance v1, Lcom/tequnique/camerax/ab;

    invoke-direct {v1, p0}, Lcom/tequnique/camerax/ab;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :sswitch_10
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f050016

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x4000

    const v4, -0xbbbbbc

    invoke-virtual {v0, v2, v10, v10, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x1030042

    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/tequnique/camerax/ad;

    invoke-direct {v2, p0}, Lcom/tequnique/camerax/ad;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->aS:Z

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-eqz v2, :cond_26

    new-instance v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    :try_start_0
    iget-object v4, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v4, v4, Lcom/tequnique/camerax/bo;->B:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    mul-float/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050033

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " EV):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x4000

    const v5, -0xbbbbbc

    invoke-virtual {v2, v4, v10, v10, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1030044

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v9, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/SeekBar;

    iget-object v6, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget-object v7, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setMax(I)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v9, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v6, v6, Lcom/tequnique/camerax/bo;->B:I

    iget-object v7, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v6, Lcom/tequnique/camerax/ae;

    invoke-direct {v6, p0, v2}, Lcom/tequnique/camerax/ae;-><init>(Lcom/tequnique/camerax/CameraProActivity;Landroid/widget/TextView;)V

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_26
    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-static {v2}, Lcom/tequnique/camerax/b;->a(Landroid/hardware/Camera;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-static {v2}, Lcom/tequnique/camerax/b;->b(Landroid/hardware/Camera;)[I

    move-result-object v2

    if-eqz v2, :cond_27

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050034

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v6, v6, Lcom/tequnique/camerax/bo;->C:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x4000

    const v6, -0xbbbbbc

    invoke-virtual {v4, v5, v10, v10, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1030044

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v9, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    aget v7, v2, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    aget v8, v2, v3

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setMax(I)V

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v9, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v7, v7, Lcom/tequnique/camerax/bo;->C:I

    aget v8, v2, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v7, Lcom/tequnique/camerax/af;

    invoke-direct {v7, p0, v2, v4}, Lcom/tequnique/camerax/af;-><init>(Lcom/tequnique/camerax/CameraProActivity;[ILandroid/widget/TextView;)V

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_27
    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-static {v2}, Lcom/tequnique/camerax/c;->a(Landroid/hardware/Camera;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-static {v2}, Lcom/tequnique/camerax/c;->b(Landroid/hardware/Camera;)[I

    move-result-object v2

    if-eqz v2, :cond_28

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050035

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v6, v6, Lcom/tequnique/camerax/bo;->D:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x4000

    const v6, -0xbbbbbc

    invoke-virtual {v4, v5, v10, v10, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1030044

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v9, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    aget v7, v2, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    aget v8, v2, v3

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setMax(I)V

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v9, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v7, v7, Lcom/tequnique/camerax/bo;->D:I

    aget v8, v2, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v7, Lcom/tequnique/camerax/ah;

    invoke-direct {v7, p0, v2, v4}, Lcom/tequnique/camerax/ah;-><init>(Lcom/tequnique/camerax/CameraProActivity;[ILandroid/widget/TextView;)V

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_28
    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-static {v2}, Lcom/tequnique/camerax/e;->a(Landroid/hardware/Camera;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-static {v2}, Lcom/tequnique/camerax/e;->b(Landroid/hardware/Camera;)[I

    move-result-object v2

    if-eqz v2, :cond_29

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050036

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v6, v6, Lcom/tequnique/camerax/bo;->F:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x4000

    const v6, -0xbbbbbc

    invoke-virtual {v4, v5, v10, v10, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1030044

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v9, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    aget v7, v2, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    aget v8, v2, v3

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setMax(I)V

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v9, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v7, v7, Lcom/tequnique/camerax/bo;->F:I

    aget v8, v2, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v7, Lcom/tequnique/camerax/ai;

    invoke-direct {v7, p0, v2, v4}, Lcom/tequnique/camerax/ai;-><init>(Lcom/tequnique/camerax/CameraProActivity;[ILandroid/widget/TextView;)V

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_29
    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-static {v2}, Lcom/tequnique/camerax/d;->a(Landroid/hardware/Camera;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-static {v2}, Lcom/tequnique/camerax/d;->b(Landroid/hardware/Camera;)[I

    move-result-object v2

    if-eqz v2, :cond_2a

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050037

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v6, v6, Lcom/tequnique/camerax/bo;->E:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x4000

    const v6, -0xbbbbbc

    invoke-virtual {v4, v5, v10, v10, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1030044

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v9, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/SeekBar;

    iget-object v6, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    aget v6, v2, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    aget v7, v2, v3

    add-int/2addr v6, v7

    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->setMax(I)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v9, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v6, v6, Lcom/tequnique/camerax/bo;->E:I

    aget v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v1, Lcom/tequnique/camerax/aj;

    invoke-direct {v1, p0, v2, v4}, Lcom/tequnique/camerax/aj;-><init>(Lcom/tequnique/camerax/CameraProActivity;[ILandroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2a
    invoke-direct {p0, v3}, Lcom/tequnique/camerax/CameraProActivity;->c(Z)V

    goto/16 :goto_1

    :sswitch_11
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-static {v0}, Lcom/tequnique/camerax/g;->b(Landroid/hardware/Camera;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_2b

    iput v9, p0, Lcom/tequnique/camerax/CameraProActivity;->q:I

    move-object v0, v2

    goto/16 :goto_4

    :cond_2b
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050031

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v2, v1

    :goto_f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_2c

    move-object v0, v4

    goto/16 :goto_4

    :cond_2c
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->g(Ljava/lang/String;)Lcom/tequnique/camerax/bj;

    move-result-object v0

    iget-object v6, v0, Lcom/tequnique/camerax/bj;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v7, v7, Lcom/tequnique/camerax/bo;->z:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/tequnique/camerax/bj;->d:Z

    iget-boolean v6, v0, Lcom/tequnique/camerax/bj;->d:Z

    if-eqz v6, :cond_2d

    iput v2, p0, Lcom/tequnique/camerax/CameraProActivity;->r:I

    :cond_2d
    iget-object v6, p0, Lcom/tequnique/camerax/CameraProActivity;->s:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_f

    :sswitch_12
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-static {v0}, Lcom/tequnique/camerax/f;->b(Landroid/hardware/Camera;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_2e

    iput v9, p0, Lcom/tequnique/camerax/CameraProActivity;->q:I

    move-object v0, v2

    goto/16 :goto_4

    :cond_2e
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050030

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v2, v1

    :goto_10
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_2f

    move-object v0, v4

    goto/16 :goto_4

    :cond_2f
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->h(Ljava/lang/String;)Lcom/tequnique/camerax/bj;

    move-result-object v0

    iget-object v6, v0, Lcom/tequnique/camerax/bj;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v7, v7, Lcom/tequnique/camerax/bo;->y:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/tequnique/camerax/bj;->d:Z

    iget-boolean v6, v0, Lcom/tequnique/camerax/bj;->d:Z

    if-eqz v6, :cond_30

    iput v2, p0, Lcom/tequnique/camerax/CameraProActivity;->r:I

    :cond_30
    iget-object v6, p0, Lcom/tequnique/camerax/CameraProActivity;->s:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_10

    :sswitch_13
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/tequnique/camerax/CameraProActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    :sswitch_14
    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->g()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->W:I

    if-lez v0, :cond_31

    invoke-direct {p0, v3}, Lcom/tequnique/camerax/CameraProActivity;->d(Z)V

    goto/16 :goto_1

    :cond_31
    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->h()V

    goto/16 :goto_1

    :cond_32
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x4000

    const v2, -0xbbbbbc

    invoke-virtual {v1, v0, v10, v10, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x1030042

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/GridView;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->t:Landroid/widget/GridView;

    new-instance v0, Lcom/tequnique/camerax/bg;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->s:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1}, Lcom/tequnique/camerax/bg;-><init>(Lcom/tequnique/camerax/CameraProActivity;Landroid/content/Context;Ljava/util/List;)V

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->t:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->t:Landroid/widget/GridView;

    invoke-virtual {v0, v9}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->t:Landroid/widget/GridView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setStretchMode(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->t:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setScrollContainer(Z)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->t:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->t:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x428c

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->t:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setColumnWidth(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->t:Landroid/widget/GridView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->t:Landroid/widget/GridView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setGravity(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->t:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, v3}, Lcom/tequnique/camerax/CameraProActivity;->c(Z)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->t:Landroid/widget/GridView;

    new-instance v1, Lcom/tequnique/camerax/ac;

    invoke-direct {v1, p0}, Lcom/tequnique/camerax/ac;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_1
        :pswitch_7
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_2
        0x66 -> :sswitch_1
        0x67 -> :sswitch_10
        0x68 -> :sswitch_3
        0x69 -> :sswitch_4
        0x6a -> :sswitch_6
        0x6b -> :sswitch_7
        0x6c -> :sswitch_12
        0x6d -> :sswitch_5
        0x6e -> :sswitch_11
        0x6f -> :sswitch_13
        0x70 -> :sswitch_14
        0xc8 -> :sswitch_c
        0xc9 -> :sswitch_d
        0xca -> :sswitch_e
        0xcb -> :sswitch_9
        0xcc -> :sswitch_a
        0xcd -> :sswitch_b
        0xce -> :sswitch_f
        0xcf -> :sswitch_8
    .end sparse-switch
.end method

.method private a(Landroid/hardware/Camera$Parameters;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->o:Z

    if-eqz v0, :cond_0

    const-string v0, "taking-picture-zoom"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    goto :goto_0
.end method

.method private a(Landroid/widget/ImageButton;Landroid/widget/TextView;)V
    .locals 3

    const/high16 v2, 0x3f80

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    invoke-virtual {v0}, Lcom/tequnique/camerax/bo;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v1, v1, Lcom/tequnique/camerax/bo;->aD:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    const/high16 v1, 0x4140

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x4000

    const v1, -0xbbbbbc

    invoke-virtual {p2, v0, v2, v2, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tequnique/camerax/CameraProActivity;F)V
    .locals 0

    iput p1, p0, Lcom/tequnique/camerax/CameraProActivity;->B:F

    return-void
.end method

.method static synthetic a(Lcom/tequnique/camerax/CameraProActivity;I)V
    .locals 7

    const/16 v1, 0x6b

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/tequnique/camerax/CameraProActivity;->u:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->K:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tequnique/camerax/bj;

    iget-object v0, v0, Lcom/tequnique/camerax/bj;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/tequnique/camerax/CameraProActivity;->r:I

    if-ne p1, v0, :cond_2

    invoke-direct {p0, v2}, Lcom/tequnique/camerax/CameraProActivity;->c(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->s:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iput p1, p0, Lcom/tequnique/camerax/CameraProActivity;->r:I

    iget v0, p0, Lcom/tequnique/camerax/CameraProActivity;->u:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/tequnique/camerax/CameraProActivity;->u:I

    const/16 v1, 0x67

    if-eq v0, v1, :cond_3

    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_5

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->t:Landroid/widget/GridView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->t:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->invalidateViews()V

    :cond_3
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tequnique/camerax/bj;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iget v3, p0, Lcom/tequnique/camerax/CameraProActivity;->u:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v0, v2

    :goto_2
    if-nez v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    :goto_3
    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->g()Z

    move-result v1

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->m:Landroid/widget/ImageButton;

    if-eqz v1, :cond_d

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->l:Z

    if-eqz v0, :cond_d

    move v0, v2

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-eqz v1, :cond_e

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->k:Z

    if-eqz v0, :cond_e

    :goto_5
    iput-boolean v4, p0, Lcom/tequnique/camerax/CameraProActivity;->U:Z

    iput v2, p0, Lcom/tequnique/camerax/CameraProActivity;->V:I

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->v:Lcom/tequnique/camerax/bf;

    invoke-virtual {v0}, Lcom/tequnique/camerax/bf;->invalidate()V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    invoke-virtual {v0, p0}, Lcom/tequnique/camerax/bo;->b(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->e()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tequnique/camerax/bj;

    iget v3, p0, Lcom/tequnique/camerax/CameraProActivity;->r:I

    if-ne v1, v3, :cond_6

    move v3, v4

    :goto_6
    iput-boolean v3, v0, Lcom/tequnique/camerax/bj;->d:Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_6
    move v3, v2

    goto :goto_6

    :pswitch_1
    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bj;->b:Ljava/lang/String;

    iput-object v0, v3, Lcom/tequnique/camerax/bo;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->u:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    move v0, v2

    goto :goto_2

    :pswitch_2
    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bj;->b:Ljava/lang/String;

    iput-object v0, v3, Lcom/tequnique/camerax/bo;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->w:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    move v0, v2

    goto :goto_2

    :pswitch_3
    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bj;->b:Ljava/lang/String;

    iput-object v0, v3, Lcom/tequnique/camerax/bo;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->t:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    move v0, v2

    goto :goto_2

    :pswitch_4
    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bj;->b:Ljava/lang/String;

    iput-object v0, v3, Lcom/tequnique/camerax/bo;->v:Ljava/lang/String;

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->v:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_2

    :pswitch_5
    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bj;->b:Ljava/lang/String;

    iput-object v0, v3, Lcom/tequnique/camerax/bo;->x:Ljava/lang/String;

    :try_start_1
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_7
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->x:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_2

    :pswitch_6
    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bj;->b:Ljava/lang/String;

    iput-object v0, v3, Lcom/tequnique/camerax/bo;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->s:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_2

    :pswitch_7
    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v3, v3, Lcom/tequnique/camerax/bo;->A:Ljava/lang/String;

    iget-object v5, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bj;->b:Ljava/lang/String;

    iput-object v0, v5, Lcom/tequnique/camerax/bo;->A:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->aj:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->o:Z

    if-eqz v0, :cond_9

    :cond_7
    const-string v0, "video"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->A:Ljava/lang/String;

    const-string v3, "video"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tequnique/camerax/CameraProActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->finish()V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, v4}, Lcom/tequnique/camerax/CameraProActivity;->e(Z)Z

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->N:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0, p0}, Lcom/tequnique/camerax/a;->a(ZLandroid/app/Activity;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_a
    :goto_8
    iget-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->aj:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->A:Ljava/lang/String;

    const-string v3, "video"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, v4}, Lcom/tequnique/camerax/CameraProActivity;->a(Z)V

    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->i()V

    :try_start_3
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v3, v3, Lcom/tequnique/camerax/bo;->aQ:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_b
    :goto_9
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->A:Ljava/lang/String;

    const-string v3, "antishake"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->w:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->C:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/tequnique/camerax/CameraProActivity;->w:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    invoke-virtual {v0, v3, v5, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :goto_a
    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->c()V

    move v0, v4

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const-string v3, "CameraPro"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Msg: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_c
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->w:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->C:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_a

    :pswitch_8
    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bj;->b:Ljava/lang/String;

    iput-object v0, v3, Lcom/tequnique/camerax/bo;->z:Ljava/lang/String;

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v3, v3, Lcom/tequnique/camerax/bo;->z:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/tequnique/camerax/g;->a(Landroid/hardware/Camera;Ljava/lang/String;)Z

    move v0, v4

    goto/16 :goto_2

    :pswitch_9
    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bj;->b:Ljava/lang/String;

    iput-object v0, v3, Lcom/tequnique/camerax/bo;->y:Ljava/lang/String;

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v3, v3, Lcom/tequnique/camerax/bo;->y:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/tequnique/camerax/f;->a(Landroid/hardware/Camera;Ljava/lang/String;)Z

    move v0, v4

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :cond_d
    const/16 v0, 0x8

    goto/16 :goto_4

    :cond_e
    move v4, v2

    goto/16 :goto_5

    :catch_2
    move-exception v0

    goto/16 :goto_8

    :catch_3
    move-exception v0

    goto/16 :goto_7

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method static synthetic a(Lcom/tequnique/camerax/CameraProActivity;Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/CameraProActivity;->S:Landroid/graphics/PointF;

    return-void
.end method

.method static synthetic a(Lcom/tequnique/camerax/CameraProActivity;Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/CameraProActivity;->R:Landroid/graphics/RectF;

    return-void
.end method

.method static synthetic a(Lcom/tequnique/camerax/CameraProActivity;Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/CameraProActivity;->G:Landroid/location/Location;

    return-void
.end method

.method static synthetic a(Lcom/tequnique/camerax/CameraProActivity;Landroid/widget/ImageButton;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tequnique/camerax/CameraProActivity;->a(Landroid/widget/ImageButton;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic a(Lcom/tequnique/camerax/CameraProActivity;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/CameraProActivity;->i:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/tequnique/camerax/CameraProActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tequnique/camerax/CameraProActivity;->j(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tequnique/camerax/CameraProActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tequnique/camerax/CameraProActivity;->d(Z)V

    return-void
.end method

.method static synthetic a(Lcom/tequnique/camerax/CameraProActivity;[F)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/CameraProActivity;->T:[F

    return-void
.end method

.method private a(Z)V
    .locals 8

    const/16 v7, 0x9

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_22

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->l()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    :cond_0
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v7, :cond_c

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->i:I

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->g:Lcom/tequnique/camerax/bk;

    iget-object v5, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v2, v5}, Lcom/tequnique/camerax/bk;->a(Landroid/hardware/Camera;)V

    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v6

    iput-object v6, v0, Lcom/tequnique/camerax/bo;->aW:Ljava/util/List;

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    iput-object v6, v0, Lcom/tequnique/camerax/bo;->aX:Ljava/util/List;

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->G:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->G:I

    iget-object v6, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v6, v6, Lcom/tequnique/camerax/bo;->aW:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v0, v6, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iput v4, v0, Lcom/tequnique/camerax/bo;->G:I

    :cond_2
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->A:Ljava/lang/String;

    const-string v6, "video"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->aj:Z

    if-nez v0, :cond_e

    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->b:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->n:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->f:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->g:Lcom/tequnique/camerax/bk;

    invoke-virtual {v1}, Lcom/tequnique/camerax/bk;->a()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->f:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->g:Lcom/tequnique/camerax/bk;

    invoke-virtual {v1}, Lcom/tequnique/camerax/bk;->a()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->aW:Ljava/util/List;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v1, v1, Lcom/tequnique/camerax/bo;->G:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v1, v0}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->d:I

    invoke-virtual {v5, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    move-object v1, v5

    :goto_4
    if-ltz v2, :cond_5

    invoke-direct {p0, v1, v2}, Lcom/tequnique/camerax/CameraProActivity;->a(Landroid/hardware/Camera$Parameters;I)V

    :cond_5
    iget-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->o:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->A:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    :try_start_1
    const-string v0, "continuous-af-values"

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v4

    :goto_5
    array-length v5, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-lt v0, v5, :cond_11

    :cond_6
    :goto_6
    :try_start_2
    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v5

    if-eq v0, v5, :cond_14

    move v0, v3

    :goto_7
    iput-boolean v0, v2, Lcom/tequnique/camerax/bo;->aS:Z

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v2

    iput v2, v0, Lcom/tequnique/camerax/bo;->aU:I

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    iput v2, v0, Lcom/tequnique/camerax/bo;->aT:I

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v2

    iput v2, v0, Lcom/tequnique/camerax/bo;->aV:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_8
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->u:Ljava/lang/String;

    if-eqz v0, :cond_15

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v2, v2, Lcom/tequnique/camerax/bo;->u:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->u:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :goto_9
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->w:Ljava/lang/String;

    if-eqz v0, :cond_16

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v2, v2, Lcom/tequnique/camerax/bo;->w:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->w:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    :goto_a
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->t:Ljava/lang/String;

    if-eqz v0, :cond_17

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v2, v2, Lcom/tequnique/camerax/bo;->t:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->t:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    :goto_b
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->v:Ljava/lang/String;

    if-eqz v0, :cond_18

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v2, v2, Lcom/tequnique/camerax/bo;->v:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->v:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    :goto_c
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->x:Ljava/lang/String;

    if-eqz v0, :cond_19

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v2, v2, Lcom/tequnique/camerax/bo;->x:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    :try_start_3
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_d
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->x:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :goto_e
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->s:Ljava/lang/String;

    if-eqz v0, :cond_1a

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v2, v2, Lcom/tequnique/camerax/bo;->s:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->s:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    :goto_f
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-static {v0}, Lcom/tequnique/camerax/g;->b(Landroid/hardware/Camera;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v2, v2, Lcom/tequnique/camerax/bo;->z:Ljava/lang/String;

    if-eqz v2, :cond_1b

    if-eqz v0, :cond_1b

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v2, v2, Lcom/tequnique/camerax/bo;->z:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v2, v2, Lcom/tequnique/camerax/bo;->z:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/tequnique/camerax/g;->a(Landroid/hardware/Camera;Ljava/lang/String;)Z

    :goto_10
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-static {v0}, Lcom/tequnique/camerax/f;->b(Landroid/hardware/Camera;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v2, v2, Lcom/tequnique/camerax/bo;->y:Ljava/lang/String;

    if-eqz v2, :cond_1c

    if-eqz v0, :cond_1c

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v2, v2, Lcom/tequnique/camerax/bo;->y:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v2, v2, Lcom/tequnique/camerax/bo;->y:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/tequnique/camerax/f;->a(Landroid/hardware/Camera;Ljava/lang/String;)Z

    :goto_11
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aS:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->B:I

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    :cond_7
    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->c()V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-static {v0}, Lcom/tequnique/camerax/b;->a(Landroid/hardware/Camera;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->a:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-static {v1}, Lcom/tequnique/camerax/b;->c(Landroid/hardware/Camera;)I

    move-result v1

    iput v1, v0, Lcom/tequnique/camerax/bo;->C:I

    :cond_8
    :goto_12
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-static {v0}, Lcom/tequnique/camerax/e;->a(Landroid/hardware/Camera;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->a:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-static {v1}, Lcom/tequnique/camerax/e;->c(Landroid/hardware/Camera;)I

    move-result v1

    iput v1, v0, Lcom/tequnique/camerax/bo;->F:I

    :cond_9
    :goto_13
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-static {v0}, Lcom/tequnique/camerax/d;->a(Landroid/hardware/Camera;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->a:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-static {v1}, Lcom/tequnique/camerax/d;->c(Landroid/hardware/Camera;)I

    move-result v1

    iput v1, v0, Lcom/tequnique/camerax/bo;->E:I

    :cond_a
    :goto_14
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-static {v0}, Lcom/tequnique/camerax/c;->a(Landroid/hardware/Camera;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->a:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-static {v1}, Lcom/tequnique/camerax/c;->c(Landroid/hardware/Camera;)I

    move-result v1

    iput v1, v0, Lcom/tequnique/camerax/bo;->D:I

    :cond_b
    :goto_15
    return-void

    :cond_c
    :try_start_4
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f05000d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tequnique/camerax/w;

    invoke-direct {v3, p0}, Lcom/tequnique/camerax/w;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_15

    :cond_d
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->f:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->f:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    :cond_e
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v1, v0, Lcom/tequnique/camerax/bo;->au:I

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->av:I

    iget-object v5, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v5, v5, Lcom/tequnique/camerax/bo;->aj:Z

    if-eqz v5, :cond_10

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v1, v0, Lcom/tequnique/camerax/bo;->au:I

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->av:I

    :cond_f
    :goto_16
    iget-object v5, p0, Lcom/tequnique/camerax/CameraProActivity;->f:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v5, p0, Lcom/tequnique/camerax/CameraProActivity;->f:Landroid/view/SurfaceView;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v5, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "cam_mode"

    invoke-virtual {v5, v6, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v6, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    invoke-virtual {v5, v1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_4

    :cond_10
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x8

    if-lt v5, v6, :cond_f

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->ae:I

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v1, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->ae:I

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    goto :goto_16

    :cond_11
    :try_start_5
    aget-object v5, v2, v0

    const-string v6, "caf-on"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v0, "continuous-af"

    const-string v2, "caf-on"

    invoke-virtual {v1, v0, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    :cond_13
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->A:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_6

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string v2, "continuous-video"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    const-string v2, "continuous-video"

    iput-object v2, v0, Lcom/tequnique/camerax/bo;->x:Ljava/lang/String;

    goto/16 :goto_6

    :cond_14
    move v0, v4

    goto/16 :goto_7

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iput-boolean v4, v0, Lcom/tequnique/camerax/bo;->aS:Z

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iput v4, v0, Lcom/tequnique/camerax/bo;->aU:I

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iput v4, v0, Lcom/tequnique/camerax/bo;->aT:I

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    const/high16 v2, 0x3f80

    iput v2, v0, Lcom/tequnique/camerax/bo;->aV:F

    goto/16 :goto_8

    :cond_15
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tequnique/camerax/bo;->u:Ljava/lang/String;

    goto/16 :goto_9

    :cond_16
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tequnique/camerax/bo;->w:Ljava/lang/String;

    goto/16 :goto_a

    :cond_17
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tequnique/camerax/bo;->t:Ljava/lang/String;

    goto/16 :goto_b

    :cond_18
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tequnique/camerax/bo;->v:Ljava/lang/String;

    goto/16 :goto_c

    :cond_19
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tequnique/camerax/bo;->x:Ljava/lang/String;

    goto/16 :goto_e

    :cond_1a
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getAntibanding()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tequnique/camerax/bo;->s:Ljava/lang/String;

    goto/16 :goto_f

    :cond_1b
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-static {v2}, Lcom/tequnique/camerax/g;->a(Landroid/hardware/Camera;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tequnique/camerax/bo;->z:Ljava/lang/String;

    goto/16 :goto_10

    :cond_1c
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-static {v2}, Lcom/tequnique/camerax/f;->a(Landroid/hardware/Camera;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tequnique/camerax/bo;->y:Ljava/lang/String;

    goto/16 :goto_11

    :cond_1d
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v1, v1, Lcom/tequnique/camerax/bo;->C:I

    invoke-static {v0, v1}, Lcom/tequnique/camerax/b;->a(Landroid/hardware/Camera;I)Z

    goto/16 :goto_12

    :cond_1e
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v1, v1, Lcom/tequnique/camerax/bo;->F:I

    invoke-static {v0, v1}, Lcom/tequnique/camerax/e;->a(Landroid/hardware/Camera;I)Z

    goto/16 :goto_13

    :cond_1f
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v1, v1, Lcom/tequnique/camerax/bo;->E:I

    invoke-static {v0, v1}, Lcom/tequnique/camerax/d;->a(Landroid/hardware/Camera;I)Z

    goto/16 :goto_14

    :cond_20
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v1, v1, Lcom/tequnique/camerax/bo;->D:I

    invoke-static {v0, v1}, Lcom/tequnique/camerax/c;->a(Landroid/hardware/Camera;I)Z

    goto/16 :goto_15

    :catch_3
    move-exception v0

    goto/16 :goto_d

    :cond_21
    move v0, v1

    goto/16 :goto_0

    :cond_22
    move v2, v1

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/tequnique/camerax/CameraProActivity;Ljava/lang/String;[B)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tequnique/camerax/CameraProActivity;->a(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;[B)Z
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->f:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    const-string v1, "yyyy-MM-dd hh:mm:ss"

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v2, "DateTime"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V

    :cond_1
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ag:Landroid/media/MediaScannerConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/io/File;)[B
    .locals 4

    invoke-static {p0}, LeYjHRUz/bY0lyFPrrq;->zhYGQhi46snbn(Ljava/io/File;)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "File is too large!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    long-to-int v0, v0

    new-array v1, v0, [B

    const/4 v0, 0x0

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_0
    :try_start_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    array-length v3, v1

    sub-int/2addr v3, v0

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-gez v3, :cond_2

    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    array-length v2, v1

    if-ge v0, v2, :cond_3

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not completely read file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/2addr v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_3
    return-object v1
.end method

.method static synthetic b(Lcom/tequnique/camerax/CameraProActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lcom/tequnique/camerax/bj;
    .locals 9

    const v7, 0x7f05003d

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v2, 0x7f02006b

    const v1, 0x7f02006a

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v4

    const/4 v3, -0x1

    const/4 v0, 0x0

    if-eqz v4, :cond_14

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_1

    const v0, 0x7f02006c

    :goto_0
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    :cond_0
    :goto_1
    if-nez v4, :cond_13

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_12

    :goto_2
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v2, Lcom/tequnique/camerax/bj;

    invoke-direct {v2, p1, v1, v0}, Lcom/tequnique/camerax/bj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    :cond_1
    const v0, 0x7f02006d

    goto :goto_0

    :cond_2
    const-string v0, "cloudy-daylight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_3

    const v0, 0x7f02006e

    :goto_4
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f05003e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto :goto_1

    :cond_3
    const v0, 0x7f02006f

    goto :goto_4

    :cond_4
    const-string v0, "daylight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_5

    const v0, 0x7f020070

    :goto_5
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f05003f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto :goto_1

    :cond_5
    const v0, 0x7f020071

    goto :goto_5

    :cond_6
    const-string v0, "fluorescent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_7

    const v0, 0x7f020072

    :goto_6
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050040

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto/16 :goto_1

    :cond_7
    const v0, 0x7f020073

    goto :goto_6

    :cond_8
    const-string v0, "incandescent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_9

    const v0, 0x7f020074

    :goto_7
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050041

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto/16 :goto_1

    :cond_9
    const v0, 0x7f020075

    goto :goto_7

    :cond_a
    const-string v0, "shade"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_8
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050042

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto/16 :goto_1

    :cond_b
    move v0, v2

    goto :goto_8

    :cond_c
    const-string v0, "twilight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_9
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050043

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto/16 :goto_1

    :cond_d
    move v0, v2

    goto :goto_9

    :cond_e
    const-string v0, "warm-fluorescent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_f

    move v0, v1

    :goto_a
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050044

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto/16 :goto_1

    :cond_f
    move v0, v2

    goto :goto_a

    :cond_10
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_11

    move v0, v1

    :goto_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto/16 :goto_1

    :cond_11
    move v0, v2

    goto :goto_b

    :cond_12
    move v1, v2

    goto/16 :goto_2

    :cond_13
    move v1, v3

    goto/16 :goto_3

    :cond_14
    move v4, v5

    goto/16 :goto_1
.end method

.method private b()V
    .locals 10

    const/16 v2, 0x1e0

    const/16 v7, 0x8

    const/16 v9, 0x9

    const/4 v8, 0x1

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/tequnique/camerax/CameraProActivity;->ai:Z

    iput v6, p0, Lcom/tequnique/camerax/CameraProActivity;->V:I

    iput-boolean v6, p0, Lcom/tequnique/camerax/CameraProActivity;->W:Z

    iput v6, p0, Lcom/tequnique/camerax/CameraProActivity;->Y:I

    iput v6, p0, Lcom/tequnique/camerax/CameraProActivity;->Z:I

    iput-boolean v6, p0, Lcom/tequnique/camerax/CameraProActivity;->ab:Z

    :try_start_0
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aj:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->au:I

    const/16 v1, 0x2d0

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->av:I

    if-le v0, v2, :cond_b

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->aj:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v9, :cond_f

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iput v6, v0, Lcom/tequnique/camerax/bo;->i:I

    :cond_1
    :goto_1
    move v1, v6

    :goto_2
    const/4 v0, 0x2

    if-lt v1, v0, :cond_10

    :goto_3
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->i:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->A:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    const-string v1, "normal"

    iput-object v1, v0, Lcom/tequnique/camerax/bo;->A:Ljava/lang/String;

    :cond_2
    iput-boolean v8, p0, Lcom/tequnique/camerax/CameraProActivity;->O:Z

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->I:Z

    iput-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->P:Z

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->M:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v6, p0, Lcom/tequnique/camerax/CameraProActivity;->Q:Z

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->I:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->M:Landroid/widget/TextView;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->F:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tequnique/camerax/CameraProActivity;->E:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_3
    invoke-direct {p0, v6}, Lcom/tequnique/camerax/CameraProActivity;->c(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_4

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_4

    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {v6, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v6

    :goto_4
    iget v3, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v8, :cond_13

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v2

    rem-int/lit16 v0, v0, 0x168

    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    :goto_5
    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    :cond_4
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->c:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0, v6}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    :cond_5
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->a:Z

    if-eqz v0, :cond_6

    :try_start_1
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "htc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/tequnique/camerax/bo;->b:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :cond_6
    :goto_6
    new-instance v0, Lcom/tequnique/camerax/bk;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->f:Landroid/view/SurfaceView;

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->b:Z

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v3, v3, Lcom/tequnique/camerax/bo;->H:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/tequnique/camerax/bk;-><init>(Landroid/content/Context;Landroid/view/SurfaceView;ZI)V

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->g:Lcom/tequnique/camerax/bk;

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->g:Lcom/tequnique/camerax/bk;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/tequnique/camerax/bk;->a(Landroid/hardware/Camera;)V

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->a(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_7
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->n:Lcom/tequnique/camerax/VerticalSeekBar;

    invoke-virtual {v1}, Lcom/tequnique/camerax/VerticalSeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/tequnique/camerax/CameraProActivity;->a(Landroid/hardware/Camera$Parameters;I)V

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_7
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->A:Ljava/lang/String;

    const-string v1, "antishake"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->w:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->C:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->w:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_8
    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->e()V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->l:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tequnique/camerax/CameraProActivity;->a(Landroid/widget/ImageButton;Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->m:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tequnique/camerax/CameraProActivity;->a(Landroid/widget/ImageButton;Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->l:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_14

    const v0, 0x7f020068

    :goto_8
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->m:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_15

    const v0, 0x7f02003a

    :goto_9
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->a()Z

    move-result v1

    iput-boolean v1, v0, Lcom/tequnique/camerax/bo;->aR:Z

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aB:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->n:Lcom/tequnique/camerax/VerticalSeekBar;

    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tequnique/camerax/VerticalSeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->n:Lcom/tequnique/camerax/VerticalSeekBar;

    invoke-virtual {v0, v6}, Lcom/tequnique/camerax/VerticalSeekBar;->setVisibility(I)V

    :goto_a
    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->g()Z

    move-result v1

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->m:Landroid/widget/ImageButton;

    if-eqz v1, :cond_17

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->l:Z

    if-eqz v0, :cond_17

    move v0, v6

    :goto_b
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-eqz v1, :cond_18

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->k:Z

    if-eqz v0, :cond_18

    move v0, v8

    :goto_c
    iput-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->U:Z

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->x:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->ax:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, v8}, Lcom/tequnique/camerax/CameraProActivity;->b(Z)V

    :cond_9
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ag:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tequnique/camerax/u;

    invoke-direct {v3, p0}, Lcom/tequnique/camerax/u;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_a
    :goto_d
    return-void

    :cond_b
    :try_start_3
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->ae:I

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->ae:I

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v1, 0x2d0

    if-gt v0, v1, :cond_d

    :cond_c
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->ae:I

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-le v0, v2, :cond_e

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->aj:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iput-boolean v6, p0, Lcom/tequnique/camerax/CameraProActivity;->aj:Z

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->aj:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->i:I

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iput v6, v0, Lcom/tequnique/camerax/bo;->i:I

    goto/16 :goto_1

    :cond_10
    :try_start_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v9, :cond_11

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-ne v1, v8, :cond_12

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tequnique/camerax/t;

    invoke-direct {v3, p0}, Lcom/tequnique/camerax/t;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_d

    :cond_11
    :try_start_6
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->i:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    :cond_12
    const-wide/16 v2, 0xa

    :try_start_7
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :goto_e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    :pswitch_0
    move v0, v6

    goto/16 :goto_4

    :pswitch_1
    const/16 v0, 0x5a

    goto/16 :goto_4

    :pswitch_2
    const/16 v0, 0xb4

    goto/16 :goto_4

    :pswitch_3
    const/16 v0, 0x10e

    goto/16 :goto_4

    :cond_13
    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int v0, v2, v0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto/16 :goto_5

    :cond_14
    const v0, 0x7f020069

    goto/16 :goto_8

    :cond_15
    const v0, 0x7f02003b

    goto/16 :goto_9

    :cond_16
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->n:Lcom/tequnique/camerax/VerticalSeekBar;

    invoke-virtual {v0, v7}, Lcom/tequnique/camerax/VerticalSeekBar;->setVisibility(I)V

    goto/16 :goto_a

    :cond_17
    move v0, v7

    goto/16 :goto_b

    :cond_18
    move v0, v6

    goto/16 :goto_c

    :catch_2
    move-exception v0

    goto :goto_e

    :catch_3
    move-exception v0

    goto/16 :goto_7

    :catch_4
    move-exception v0

    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b(I)V
    .locals 2

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->k()I

    move-result v1

    if-gt p1, v1, :cond_0

    if-ltz p1, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/tequnique/camerax/CameraProActivity;->a(Landroid/hardware/Camera$Parameters;I)V

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->n:Lcom/tequnique/camerax/VerticalSeekBar;

    invoke-virtual {v0, p1}, Lcom/tequnique/camerax/VerticalSeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tequnique/camerax/CameraProActivity;F)V
    .locals 0

    iput p1, p0, Lcom/tequnique/camerax/CameraProActivity;->H:F

    return-void
.end method

.method static synthetic b(Lcom/tequnique/camerax/CameraProActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tequnique/camerax/CameraProActivity;->a(I)V

    return-void
.end method

.method private b(Z)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->w:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->D:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->w:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->D:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->w:Landroid/hardware/SensorManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/tequnique/camerax/CameraProActivity;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->S:Landroid/graphics/PointF;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Lcom/tequnique/camerax/bj;
    .locals 9

    const v7, 0x7f050045

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v2, 0x7f020028

    const v1, 0x7f020027

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v4

    const/4 v3, -0x1

    const/4 v0, 0x0

    if-eqz v4, :cond_16

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    :cond_0
    :goto_1
    if-nez v4, :cond_15

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_14

    :goto_2
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v2, Lcom/tequnique/camerax/bj;

    invoke-direct {v2, p1, v1, v0}, Lcom/tequnique/camerax/bj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const-string v0, "aqua"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_4
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050046

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_4

    :cond_4
    const-string v0, "blackboard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050047

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    const-string v0, "mono"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_6
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050048

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_6

    :cond_8
    const-string v0, "negative"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_7
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050049

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto :goto_7

    :cond_a
    const-string v0, "posterize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_8
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f05004a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto/16 :goto_1

    :cond_b
    move v0, v2

    goto :goto_8

    :cond_c
    const-string v0, "sepia"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_9
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f05004b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto/16 :goto_1

    :cond_d
    move v0, v2

    goto :goto_9

    :cond_e
    const-string v0, "solarize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_f

    move v0, v1

    :goto_a
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f05004c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto/16 :goto_1

    :cond_f
    move v0, v2

    goto :goto_a

    :cond_10
    const-string v0, "whiteboard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_11

    move v0, v1

    :goto_b
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f05004d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto/16 :goto_1

    :cond_11
    move v0, v2

    goto :goto_b

    :cond_12
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_13

    move v0, v1

    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto/16 :goto_1

    :cond_13
    move v0, v2

    goto :goto_c

    :cond_14
    move v1, v2

    goto/16 :goto_2

    :cond_15
    move v1, v3

    goto/16 :goto_3

    :cond_16
    move v4, v5

    goto/16 :goto_1
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->A:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->L:Landroid/widget/TextView;

    const-string v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->d()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/tequnique/camerax/CameraProActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tequnique/camerax/CameraProActivity;->b(I)V

    return-void
.end method

.method private c(Z)V
    .locals 6

    const v5, 0x7f0a0048

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    const v0, 0x7f0a0022

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->v:Lcom/tequnique/camerax/bf;

    if-eqz p1, :cond_3

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Lcom/tequnique/camerax/bf;->setVisibility(I)V

    if-nez p1, :cond_7

    invoke-virtual {p0, v5}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->t:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iput v4, p0, Lcom/tequnique/camerax/CameraProActivity;->r:I

    iput v4, p0, Lcom/tequnique/camerax/CameraProActivity;->q:I

    iput v4, p0, Lcom/tequnique/camerax/CameraProActivity;->u:I

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->s:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aB:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->n:Lcom/tequnique/camerax/VerticalSeekBar;

    invoke-virtual {v0, v3}, Lcom/tequnique/camerax/VerticalSeekBar;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->L:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->O:Z

    if-eqz v0, :cond_4

    move v0, v3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->M:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->P:Z

    if-eqz v0, :cond_5

    move v0, v3

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->N:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/tequnique/camerax/CameraProActivity;->Q:Z

    if-eqz v1, :cond_6

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v3, v2

    goto :goto_4

    :cond_7
    invoke-virtual {p0, v5}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->n:Lcom/tequnique/camerax/VerticalSeekBar;

    invoke-virtual {v0, v2}, Lcom/tequnique/camerax/VerticalSeekBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->L:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->M:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5
.end method

.method private d(Ljava/lang/String;)Lcom/tequnique/camerax/bj;
    .locals 9

    const v1, 0x7f020052

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v2, 0x7f020051

    const v0, 0x7f020050

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v5

    const/4 v4, -0x1

    const/4 v3, 0x0

    if-eqz v5, :cond_24

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    const-string v3, "auto"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v3, v5

    move v8, v0

    move-object v0, v2

    move v2, v8

    :goto_1
    if-nez v3, :cond_22

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_21

    :goto_2
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f05004e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v2, Lcom/tequnique/camerax/bj;

    invoke-direct {v2, p1, v1, v0}, Lcom/tequnique/camerax/bj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    :cond_0
    const v0, 0x7f020053

    goto :goto_0

    :cond_1
    const-string v3, "action"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v3, v3, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v3, :cond_2

    :goto_4
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v3, v5

    move v8, v0

    move-object v0, v2

    move v2, v8

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_4

    :cond_3
    const-string v3, "barcode"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v3, v3, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v3, :cond_4

    :goto_5
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v3, v5

    move v8, v0

    move-object v0, v2

    move v2, v8

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_5

    :cond_5
    const-string v3, "beach"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_6

    const v0, 0x7f020054

    :goto_6
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v3, v5

    move v8, v0

    move-object v0, v2

    move v2, v8

    goto :goto_1

    :cond_6
    const v0, 0x7f020055

    goto :goto_6

    :cond_7
    const-string v3, "candlelight"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_8

    const v0, 0x7f020056

    :goto_7
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v3, v5

    move v8, v0

    move-object v0, v2

    move v2, v8

    goto/16 :goto_1

    :cond_8
    const v0, 0x7f020057

    goto :goto_7

    :cond_9
    const-string v3, "fireworks"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_a

    const v0, 0x7f020058

    :goto_8
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v3, v5

    move v8, v0

    move-object v0, v2

    move v2, v8

    goto/16 :goto_1

    :cond_a
    const v0, 0x7f020059

    goto :goto_8

    :cond_b
    const-string v3, "landscape"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v3, v3, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v3, :cond_c

    :goto_9
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v3, v5

    move v8, v0

    move-object v0, v2

    move v2, v8

    goto/16 :goto_1

    :cond_c
    move v0, v2

    goto :goto_9

    :cond_d
    const-string v3, "night"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_e

    const v0, 0x7f02005a

    :goto_a
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v3, v5

    move v8, v0

    move-object v0, v2

    move v2, v8

    goto/16 :goto_1

    :cond_e
    const v0, 0x7f02005b

    goto :goto_a

    :cond_f
    const-string v3, "night-portrait"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_10

    const v0, 0x7f02005c

    :goto_b
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050056

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v3, v5

    move v8, v0

    move-object v0, v2

    move v2, v8

    goto/16 :goto_1

    :cond_10
    const v0, 0x7f02005d

    goto :goto_b

    :cond_11
    const-string v3, "party"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_12

    const v0, 0x7f02005e

    :goto_c
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v3, v5

    move v8, v0

    move-object v0, v2

    move v2, v8

    goto/16 :goto_1

    :cond_12
    const v0, 0x7f02005f

    goto :goto_c

    :cond_13
    const-string v3, "portrait"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_14

    const v0, 0x7f020060

    :goto_d
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v3, v5

    move v8, v0

    move-object v0, v2

    move v2, v8

    goto/16 :goto_1

    :cond_14
    const v0, 0x7f020061

    goto :goto_d

    :cond_15
    const-string v3, "snow"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_16

    const v0, 0x7f020062

    :goto_e
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v3, v5

    move v8, v0

    move-object v0, v2

    move v2, v8

    goto/16 :goto_1

    :cond_16
    const v0, 0x7f020063

    goto :goto_e

    :cond_17
    const-string v3, "sports"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_18

    const v0, 0x7f020064

    :goto_f
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v3, v5

    move v8, v0

    move-object v0, v2

    move v2, v8

    goto/16 :goto_1

    :cond_18
    const v0, 0x7f020065

    goto :goto_f

    :cond_19
    const-string v3, "steadyphoto"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v3, v3, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v3, :cond_1a

    :goto_10
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v3, v5

    move v8, v0

    move-object v0, v2

    move v2, v8

    goto/16 :goto_1

    :cond_1a
    move v0, v2

    goto :goto_10

    :cond_1b
    const-string v3, "sunset"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_1c

    const v0, 0x7f020066

    :goto_11
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v3, v5

    move v8, v0

    move-object v0, v2

    move v2, v8

    goto/16 :goto_1

    :cond_1c
    const v0, 0x7f020067

    goto :goto_11

    :cond_1d
    const-string v3, "theatre"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v3, v3, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v3, :cond_1e

    :goto_12
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v3, v5

    move v8, v0

    move-object v0, v2

    move v2, v8

    goto/16 :goto_1

    :cond_1e
    move v0, v2

    goto :goto_12

    :cond_1f
    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v3, v3, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v3, :cond_20

    :goto_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, v5

    move v8, v0

    move-object v0, v2

    move v2, v8

    goto/16 :goto_1

    :cond_20
    move v0, v2

    goto :goto_13

    :cond_21
    const v1, 0x7f020053

    goto/16 :goto_2

    :cond_22
    move v1, v2

    goto/16 :goto_3

    :cond_23
    move-object v0, v3

    move v2, v4

    move v3, v5

    goto/16 :goto_1

    :cond_24
    move-object v0, v3

    move v2, v4

    move v3, v6

    goto/16 :goto_1
.end method

.method private d()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->aW:Ljava/util/List;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v1, v1, Lcom/tequnique/camerax/bo;->G:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->L:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/tequnique/camerax/CameraProActivity;I)V
    .locals 0

    iput p1, p0, Lcom/tequnique/camerax/CameraProActivity;->y:I

    return-void
.end method

.method private d(Z)V
    .locals 8

    const/high16 v4, 0x44fa

    const/high16 v7, 0x447a

    const/high16 v6, -0x3b86

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->R:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v1, v1, Lcom/tequnique/camerax/bo;->m:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    :goto_0
    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_1
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_3

    :goto_1
    return-void

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-float v3, v3

    div-float v3, v4, v3

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-float v2, v2

    div-float v2, v4, v2

    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/tequnique/camerax/CameraProActivity;->R:Landroid/graphics/RectF;

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v5, v4, Landroid/graphics/RectF;->left:F

    mul-float/2addr v5, v3

    iput v5, v4, Landroid/graphics/RectF;->left:F

    iget v5, v4, Landroid/graphics/RectF;->right:F

    mul-float/2addr v3, v5

    iput v3, v4, Landroid/graphics/RectF;->right:F

    iget v3, v4, Landroid/graphics/RectF;->top:F

    mul-float/2addr v3, v2

    iput v3, v4, Landroid/graphics/RectF;->top:F

    iget v3, v4, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v2, v3

    iput v2, v4, Landroid/graphics/RectF;->bottom:F

    iget v2, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v6

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v4, Landroid/graphics/RectF;->left:F

    iget v2, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v6

    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v4, Landroid/graphics/RectF;->right:F

    iget v2, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v6

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v4, Landroid/graphics/RectF;->top:F

    iget v2, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v6

    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    iput-boolean p1, p0, Lcom/tequnique/camerax/CameraProActivity;->ac:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/tequnique/camerax/CameraProActivity;->V:I

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->v:Lcom/tequnique/camerax/bf;

    invoke-virtual {v0}, Lcom/tequnique/camerax/bf;->invalidate()V

    :try_start_0
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic d(Lcom/tequnique/camerax/CameraProActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->U:Z

    return v0
.end method

.method private e(Ljava/lang/String;)Lcom/tequnique/camerax/bj;
    .locals 9

    const v2, 0x7f020005

    const v1, 0x7f020004

    const v0, 0x7f020003

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v5

    const/4 v4, -0x1

    const/4 v3, 0x0

    if-eqz v5, :cond_14

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v3, "auto"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v2, v5

    move v8, v0

    move-object v0, v1

    move v1, v8

    :goto_1
    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_12

    const v0, 0x7f02000d

    :goto_2
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    :cond_0
    new-instance v2, Lcom/tequnique/camerax/bj;

    invoke-direct {v2, p1, v1, v0}, Lcom/tequnique/camerax/bj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_4

    const-string v3, "continuous-video"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v2, v5

    move v8, v0

    move-object v0, v1

    move v1, v8

    goto :goto_1

    :cond_3
    const v0, 0x7f020006

    goto :goto_3

    :cond_4
    const-string v3, "edof"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_5

    const v0, 0x7f020007

    :goto_4
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v2, v5

    move v8, v0

    move-object v0, v1

    move v1, v8

    goto :goto_1

    :cond_5
    const v0, 0x7f020008

    goto :goto_4

    :cond_6
    const-string v3, "fixed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_7

    const v0, 0x7f02000d

    :goto_5
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v2, v5

    move v8, v0

    move-object v0, v1

    move v1, v8

    goto/16 :goto_1

    :cond_7
    const v0, 0x7f02000e

    goto :goto_5

    :cond_8
    const-string v3, "infinity"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_9

    const v0, 0x7f020009

    :goto_6
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v2, v5

    move v8, v0

    move-object v0, v1

    move v1, v8

    goto/16 :goto_1

    :cond_9
    const v0, 0x7f02000a

    goto :goto_6

    :cond_a
    const-string v3, "macro"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_b

    const v0, 0x7f02000b

    :goto_7
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v2, v5

    move v8, v0

    move-object v0, v1

    move v1, v8

    goto/16 :goto_1

    :cond_b
    const v0, 0x7f02000c

    goto :goto_7

    :cond_c
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_10

    const-string v3, "continuous-picture"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_d

    :goto_8
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    move v2, v5

    goto/16 :goto_1

    :cond_d
    const v2, 0x7f020006

    goto :goto_8

    :cond_e
    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v2, :cond_f

    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, v5

    move v8, v0

    move-object v0, v1

    move v1, v8

    goto/16 :goto_1

    :cond_f
    move v0, v1

    goto :goto_9

    :cond_10
    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v2, :cond_11

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, v5

    move v8, v0

    move-object v0, v1

    move v1, v8

    goto/16 :goto_1

    :cond_11
    move v0, v1

    goto :goto_a

    :cond_12
    const v0, 0x7f02000e

    goto/16 :goto_2

    :cond_13
    move-object v0, v3

    move v1, v4

    move v2, v5

    goto/16 :goto_1

    :cond_14
    move-object v0, v3

    move v1, v4

    move v2, v6

    goto/16 :goto_1
.end method

.method private e()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->j:[Landroid/widget/ImageButton;

    array-length v0, v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->j:[Landroid/widget/ImageButton;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->k:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-direct {p0, v0, v2}, Lcom/tequnique/camerax/CameraProActivity;->a(Landroid/widget/ImageButton;Landroid/widget/TextView;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v2, v2, Lcom/tequnique/camerax/bo;->aC:[I

    aget v2, v2, v1

    packed-switch v2, :pswitch_data_0

    :goto_1
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->j:[Landroid/widget/ImageButton;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->k:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    iget v4, v0, Lcom/tequnique/camerax/bj;->a:I

    iget-object v0, v0, Lcom/tequnique/camerax/bj;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->aF:Z

    if-eqz v2, :cond_6

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->u:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->a(Ljava/lang/String;)Lcom/tequnique/camerax/bj;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->w:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->b(Ljava/lang/String;)Lcom/tequnique/camerax/bj;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->t:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->c(Ljava/lang/String;)Lcom/tequnique/camerax/bj;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->v:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->d(Ljava/lang/String;)Lcom/tequnique/camerax/bj;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->x:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->e(Ljava/lang/String;)Lcom/tequnique/camerax/bj;

    move-result-object v0

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->s:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->f(Ljava/lang/String;)Lcom/tequnique/camerax/bj;

    move-result-object v0

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->A:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->i(Ljava/lang/String;)Lcom/tequnique/camerax/bj;

    move-result-object v0

    goto :goto_1

    :pswitch_7
    new-instance v2, Lcom/tequnique/camerax/bj;

    const-string v3, "settings"

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_2

    const v0, 0x7f02007b

    :goto_3
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/tequnique/camerax/bj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_1

    :cond_2
    const v0, 0x7f02007c

    goto :goto_3

    :pswitch_8
    new-instance v2, Lcom/tequnique/camerax/bj;

    const-string v3, "imagecontrol"

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_3

    const v0, 0x7f020042

    :goto_4
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/tequnique/camerax/bj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_1

    :cond_3
    const v0, 0x7f020043

    goto :goto_4

    :pswitch_9
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->z:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->g(Ljava/lang/String;)Lcom/tequnique/camerax/bj;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_a
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->y:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->h(Ljava/lang/String;)Lcom/tequnique/camerax/bj;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_b
    new-instance v2, Lcom/tequnique/camerax/bj;

    const-string v3, "settings"

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_4

    const v0, 0x7f02002a

    :goto_5
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/tequnique/camerax/bj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_1

    :cond_4
    const v0, 0x7f02002b

    goto :goto_5

    :pswitch_c
    new-instance v2, Lcom/tequnique/camerax/bj;

    const-string v3, "settings"

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_5

    const v0, 0x7f020019

    :goto_6
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050021

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/tequnique/camerax/bj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_1

    :cond_5
    const v0, 0x7f02001a

    goto :goto_6

    :cond_6
    const-string v0, ""

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_5
        :pswitch_9
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method static synthetic e(Lcom/tequnique/camerax/CameraProActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tequnique/camerax/CameraProActivity;->V:I

    return-void
.end method

.method static synthetic e(Lcom/tequnique/camerax/CameraProActivity;I)V
    .locals 0

    iput p1, p0, Lcom/tequnique/camerax/CameraProActivity;->Z:I

    return-void
.end method

.method private e(Z)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ab:Z

    iput-boolean v3, p0, Lcom/tequnique/camerax/CameraProActivity;->ab:Z

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->i:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v4, p0, Lcom/tequnique/camerax/CameraProActivity;->i:Ljava/lang/Runnable;

    move v0, v1

    :cond_0
    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->reset()V

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    iput-object v4, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    :try_start_1
    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->ag:Landroid/media/MediaScannerConnection;

    iget-object v4, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v4, v4, Lcom/tequnique/camerax/bo;->aQ:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->reconnect()V

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->h:Landroid/os/Handler;

    new-instance v4, Lcom/tequnique/camerax/ak;

    invoke-direct {v4, p0}, Lcom/tequnique/camerax/ak;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    const-wide/16 v5, 0x1

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->ad:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->ai:Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_3
    iget-boolean v4, p0, Lcom/tequnique/camerax/CameraProActivity;->ai:Z

    if-eqz v4, :cond_6

    move v4, v3

    :goto_4
    and-int/2addr v2, v4

    if-eqz v2, :cond_2

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "file://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v5, v5, Lcom/tequnique/camerax/bo;->aQ:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "video/*"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/tequnique/camerax/CameraProActivity;->h:Landroid/os/Handler;

    new-instance v5, Lcom/tequnique/camerax/am;

    invoke-direct {v5, p0, v2}, Lcom/tequnique/camerax/am;-><init>(Lcom/tequnique/camerax/CameraProActivity;Landroid/content/Intent;)V

    const-wide/16 v6, 0xa

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iput-boolean v3, p0, Lcom/tequnique/camerax/CameraProActivity;->ai:Z

    :cond_3
    iput-boolean v3, p0, Lcom/tequnique/camerax/CameraProActivity;->ad:Z

    iput-boolean v3, p0, Lcom/tequnique/camerax/CameraProActivity;->ac:Z

    iget v2, p0, Lcom/tequnique/camerax/CameraProActivity;->Y:I

    if-lez v2, :cond_4

    move v0, v1

    :cond_4
    iget v2, p0, Lcom/tequnique/camerax/CameraProActivity;->Z:I

    if-lez v2, :cond_7

    :goto_5
    iput v3, p0, Lcom/tequnique/camerax/CameraProActivity;->Y:I

    iput v3, p0, Lcom/tequnique/camerax/CameraProActivity;->Z:I

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->N:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->c()V

    return v1

    :catch_0
    move-exception v2

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f05000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f05

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tequnique/camerax/al;

    invoke-direct {v5, p0}, Lcom/tequnique/camerax/al;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    :cond_5
    move v2, v1

    goto/16 :goto_3

    :cond_6
    move v4, v1

    goto/16 :goto_4

    :catch_1
    move-exception v2

    goto/16 :goto_1

    :catch_2
    move-exception v2

    goto/16 :goto_0

    :cond_7
    move v1, v0

    goto :goto_5
.end method

.method private f(Ljava/lang/String;)Lcom/tequnique/camerax/bj;
    .locals 9

    const v7, 0x7f050066

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v2, 0x7f020002

    const v1, 0x7f020001

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v4

    const/4 v3, -0x1

    const/4 v0, 0x0

    if-eqz v4, :cond_c

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "50hz"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "50Hz"

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    :cond_0
    :goto_1
    if-nez v4, :cond_b

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_a

    :goto_2
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v2, Lcom/tequnique/camerax/bj;

    invoke-direct {v2, p1, v1, v0}, Lcom/tequnique/camerax/bj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const-string v0, "60hz"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_4
    const-string v3, "60Hz"

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_4

    :cond_4
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050067

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_6
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto :goto_7

    :cond_a
    move v1, v2

    goto/16 :goto_2

    :cond_b
    move v1, v3

    goto/16 :goto_3

    :cond_c
    move v4, v5

    goto/16 :goto_1
.end method

.method static synthetic f(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bo;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    return-object v0
.end method

.method private f()Ljava/util/List;
    .locals 11

    const/16 v10, 0x68

    const/16 v9, 0x66

    const/16 v8, 0x65

    const/16 v7, 0x64

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->K:Ljava/util/List;

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->K:Ljava/util/List;

    new-instance v3, Lcom/tequnique/camerax/bj;

    const/16 v0, 0xcf

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_b

    const v0, 0x7f02007b

    :goto_0
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v0, v5, v1}, Lcom/tequnique/camerax/bj;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->K:Ljava/util/List;

    new-instance v3, Lcom/tequnique/camerax/bj;

    const/16 v0, 0xce

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_c

    const v0, 0x7f02000f

    :goto_1
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050022

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v0, v5, v1}, Lcom/tequnique/camerax/bj;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->K:Ljava/util/List;

    new-instance v3, Lcom/tequnique/camerax/bj;

    const/16 v0, 0xc8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_d

    const v0, 0x7f02003e

    :goto_2
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050023

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v6, v6, Lcom/tequnique/camerax/bo;->az:Z

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/tequnique/camerax/bj;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->K:Ljava/util/List;

    new-instance v3, Lcom/tequnique/camerax/bj;

    const/16 v0, 0xc9

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_e

    const v0, 0x7f020040

    :goto_3
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050024

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v6, v6, Lcom/tequnique/camerax/bo;->ay:Z

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/tequnique/camerax/bj;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->K:Ljava/util/List;

    new-instance v3, Lcom/tequnique/camerax/bj;

    const/16 v0, 0xca

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_f

    const v0, 0x7f020021

    :goto_4
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050025

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v6, v6, Lcom/tequnique/camerax/bo;->ax:Z

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/tequnique/camerax/bj;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->K:Ljava/util/List;

    new-instance v3, Lcom/tequnique/camerax/bj;

    const/16 v0, 0xcb

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_10

    const v0, 0x7f020044

    :goto_5
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050026

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v0, v5, v1}, Lcom/tequnique/camerax/bj;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->K:Ljava/util/List;

    new-instance v3, Lcom/tequnique/camerax/bj;

    const/16 v0, 0xcd

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_11

    const v0, 0x7f02002c

    :goto_6
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050027

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v0, v5, v1}, Lcom/tequnique/camerax/bj;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->K:Ljava/util/List;

    new-instance v3, Lcom/tequnique/camerax/bj;

    const/16 v0, 0xcc

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_12

    const v0, 0x7f02002e

    :goto_7
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050028

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v0, v5, v1}, Lcom/tequnique/camerax/bj;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_8
    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v3, v3, Lcom/tequnique/camerax/bo;->aC:[I

    array-length v3, v3

    if-lt v0, v3, :cond_13

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->u:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->a(Ljava/lang/String;)Lcom/tequnique/camerax/bj;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tequnique/camerax/bj;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->K:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->w:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->b(Ljava/lang/String;)Lcom/tequnique/camerax/bj;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tequnique/camerax/bj;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->K:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->t:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->c(Ljava/lang/String;)Lcom/tequnique/camerax/bj;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tequnique/camerax/bj;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->K:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->v:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->d(Ljava/lang/String;)Lcom/tequnique/camerax/bj;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tequnique/camerax/bj;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->K:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v0, 0x69

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->x:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->e(Ljava/lang/String;)Lcom/tequnique/camerax/bj;

    move-result-object v0

    const/16 v3, 0x69

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tequnique/camerax/bj;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->K:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v0, 0x6a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->A:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->i(Ljava/lang/String;)Lcom/tequnique/camerax/bj;

    move-result-object v0

    const/16 v3, 0x6a

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tequnique/camerax/bj;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->K:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    const/16 v0, 0x6d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->s:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->f(Ljava/lang/String;)Lcom/tequnique/camerax/bj;

    move-result-object v0

    const/16 v3, 0x6d

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tequnique/camerax/bj;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->K:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const/16 v0, 0x6f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->K:Ljava/util/List;

    new-instance v4, Lcom/tequnique/camerax/bj;

    const/16 v0, 0x6f

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_14

    const v0, 0x7f02002a

    :goto_9
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050017

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v0, v6, v1}, Lcom/tequnique/camerax/bj;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    const/16 v0, 0x70

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->K:Ljava/util/List;

    new-instance v4, Lcom/tequnique/camerax/bj;

    const/16 v0, 0x70

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_15

    const v0, 0x7f020019

    :goto_a
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050021

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v0, v6, v1}, Lcom/tequnique/camerax/bj;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-static {v0}, Lcom/tequnique/camerax/g;->b(Landroid/hardware/Camera;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    const/16 v0, 0x6e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->z:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->g(Ljava/lang/String;)Lcom/tequnique/camerax/bj;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tequnique/camerax/bj;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->K:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-static {v0}, Lcom/tequnique/camerax/f;->b(Landroid/hardware/Camera;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    const/16 v0, 0x6c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->y:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->h(Ljava/lang/String;)Lcom/tequnique/camerax/bj;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tequnique/camerax/bj;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->K:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->K:Ljava/util/List;

    return-object v0

    :cond_b
    const v0, 0x7f02007c

    goto/16 :goto_0

    :cond_c
    const v0, 0x7f020010

    goto/16 :goto_1

    :cond_d
    const v0, 0x7f02003f

    goto/16 :goto_2

    :cond_e
    const v0, 0x7f020041

    goto/16 :goto_3

    :cond_f
    const v0, 0x7f020022

    goto/16 :goto_4

    :cond_10
    const v0, 0x7f020045

    goto/16 :goto_5

    :cond_11
    const v0, 0x7f02002d

    goto/16 :goto_6

    :cond_12
    const v0, 0x7f02002f

    goto/16 :goto_7

    :cond_13
    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v3, v3, Lcom/tequnique/camerax/bo;->aC:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    :cond_14
    const v0, 0x7f02002b

    goto/16 :goto_9

    :cond_15
    const v0, 0x7f02001a

    goto/16 :goto_a
.end method

.method static synthetic f(Lcom/tequnique/camerax/CameraProActivity;I)V
    .locals 0

    iput p1, p0, Lcom/tequnique/camerax/CameraProActivity;->I:I

    return-void
.end method

.method private g(Ljava/lang/String;)Lcom/tequnique/camerax/bj;
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v2, 0x7f020049

    const v1, 0x7f020048

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-static {v0}, Lcom/tequnique/camerax/g;->b(Landroid/hardware/Camera;)Ljava/util/List;

    move-result-object v4

    const/4 v3, -0x1

    const/4 v0, 0x0

    if-eqz v4, :cond_d

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "average"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "meter-average"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050069

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move v3, v0

    move-object v0, v7

    :cond_1
    :goto_1
    if-nez v4, :cond_c

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_b

    :goto_2
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050068

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v2, Lcom/tequnique/camerax/bj;

    invoke-direct {v2, p1, v1, v0}, Lcom/tequnique/camerax/bj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    const-string v0, "center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "meter-center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f05006a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move v3, v0

    move-object v0, v7

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_4

    :cond_6
    const-string v0, "spot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "meter-spot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f05006b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move v3, v0

    move-object v0, v7

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move v3, v0

    move-object v0, v7

    goto/16 :goto_1

    :cond_a
    move v0, v2

    goto :goto_6

    :cond_b
    move v1, v2

    goto/16 :goto_2

    :cond_c
    move v1, v3

    goto/16 :goto_3

    :cond_d
    move v4, v5

    goto/16 :goto_1
.end method

.method static synthetic g(Lcom/tequnique/camerax/CameraProActivity;I)V
    .locals 0

    iput p1, p0, Lcom/tequnique/camerax/CameraProActivity;->Y:I

    return-void
.end method

.method private g()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "edof"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "fixed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "infinity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic g(Lcom/tequnique/camerax/CameraProActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->g()Z

    move-result v0

    return v0
.end method

.method private h(Ljava/lang/String;)Lcom/tequnique/camerax/bj;
    .locals 9

    const v7, 0x7f05006c

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v2, 0x7f020047

    const v1, 0x7f020046

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-static {v0}, Lcom/tequnique/camerax/f;->b(Landroid/hardware/Camera;)Ljava/util/List;

    move-result-object v4

    const/4 v3, -0x1

    const/4 v0, 0x0

    if-eqz v4, :cond_12

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    :cond_0
    :goto_1
    if-nez v4, :cond_11

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_10

    :goto_2
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v2, Lcom/tequnique/camerax/bj;

    invoke-direct {v2, p1, v1, v0}, Lcom/tequnique/camerax/bj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const-string v0, "deblur"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_4
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f05006d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_4

    :cond_4
    const-string v0, "100"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    const-string v3, "100"

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    const-string v0, "200"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_6
    const-string v3, "200"

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_6

    :cond_8
    const-string v0, "400"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_7
    const-string v3, "400"

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_7

    :cond_a
    const-string v0, "800"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_8
    const-string v3, "800"

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto/16 :goto_1

    :cond_b
    move v0, v2

    goto :goto_8

    :cond_c
    const-string v0, "1250"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_9
    const-string v3, "1250"

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto/16 :goto_1

    :cond_d
    move v0, v2

    goto :goto_9

    :cond_e
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_f

    move v0, v1

    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto/16 :goto_1

    :cond_f
    move v0, v2

    goto :goto_a

    :cond_10
    move v1, v2

    goto/16 :goto_2

    :cond_11
    move v1, v3

    goto/16 :goto_3

    :cond_12
    move v4, v5

    goto/16 :goto_1
.end method

.method private h()V
    .locals 9

    const v8, 0x7f05007c

    const v7, 0x7f05007a

    const-wide/16 v5, 0x3e8

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->A:Ljava/lang/String;

    const-string v2, "antishake"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->N:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput v4, p0, Lcom/tequnique/camerax/CameraProActivity;->Z:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->A:Ljava/lang/String;

    const-string v2, "bracketing"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ae:Ljava/util/List;

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v2, v2, Lcom/tequnique/camerax/bo;->U:[I

    array-length v2, v2

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ae:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ae:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ae:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/tequnique/camerax/CameraProActivity;->Z:I

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ae:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tequnique/camerax/CameraProActivity;->af:I

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->S:I

    iput v0, p0, Lcom/tequnique/camerax/CameraProActivity;->Y:I

    iget v0, p0, Lcom/tequnique/camerax/CameraProActivity;->Y:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->N:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tequnique/camerax/CameraProActivity;->Y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/tequnique/camerax/an;

    invoke-direct {v0, p0}, Lcom/tequnique/camerax/an;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->i:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v2, v2, Lcom/tequnique/camerax/bo;->U:[I

    aget v2, v2, v0

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v2, v2, Lcom/tequnique/camerax/bo;->U:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v3, v3, Lcom/tequnique/camerax/bo;->aT:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v3, v3, Lcom/tequnique/camerax/bo;->aT:I

    if-lt v2, v3, :cond_3

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v3, v3, Lcom/tequnique/camerax/bo;->aU:I

    if-gt v2, v3, :cond_3

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->ae:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->N:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tequnique/camerax/CameraProActivity;->Z:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->j()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->A:Ljava/lang/String;

    const-string v2, "burst"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->Q:I

    iput v0, p0, Lcom/tequnique/camerax/CameraProActivity;->Z:I

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->P:I

    iput v0, p0, Lcom/tequnique/camerax/CameraProActivity;->Y:I

    iget v0, p0, Lcom/tequnique/camerax/CameraProActivity;->Y:I

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->N:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tequnique/camerax/CameraProActivity;->Y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/tequnique/camerax/ao;

    invoke-direct {v0, p0}, Lcom/tequnique/camerax/ao;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->i:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->N:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tequnique/camerax/CameraProActivity;->Z:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->j()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->A:Ljava/lang/String;

    const-string v2, "selftimer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->L:I

    iput v0, p0, Lcom/tequnique/camerax/CameraProActivity;->Y:I

    iget v0, p0, Lcom/tequnique/camerax/CameraProActivity;->Y:I

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->N:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tequnique/camerax/CameraProActivity;->Y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/tequnique/camerax/ap;

    invoke-direct {v0, p0}, Lcom/tequnique/camerax/ap;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->i:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->j()V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->A:Ljava/lang/String;

    const-string v2, "timelapse"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iput v1, p0, Lcom/tequnique/camerax/CameraProActivity;->aa:I

    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->j()V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->A:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->o:Z

    if-eqz v0, :cond_c

    invoke-direct {p0, v4}, Lcom/tequnique/camerax/CameraProActivity;->a(Z)V

    :cond_b
    :goto_2
    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->i()V

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0, p0}, Lcom/tequnique/camerax/a;->a(ZLandroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    :try_start_1
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    iput v1, p0, Lcom/tequnique/camerax/CameraProActivity;->Y:I

    new-instance v0, Lcom/tequnique/camerax/aq;

    invoke-direct {v0, p0}, Lcom/tequnique/camerax/aq;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->i:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_c
    iget-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->aj:Z

    if-eqz v0, :cond_b

    invoke-direct {p0, v4}, Lcom/tequnique/camerax/CameraProActivity;->a(Z)V

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(0) "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05007f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->j(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/tequnique/camerax/CameraProActivity;->ai:Z

    invoke-direct {p0, v4}, Lcom/tequnique/camerax/CameraProActivity;->e(Z)Z

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->j()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method static synthetic h(Lcom/tequnique/camerax/CameraProActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->h()V

    return-void
.end method

.method static synthetic h(Lcom/tequnique/camerax/CameraProActivity;I)V
    .locals 0

    iput p1, p0, Lcom/tequnique/camerax/CameraProActivity;->af:I

    return-void
.end method

.method private i(Ljava/lang/String;)Lcom/tequnique/camerax/bj;
    .locals 8

    const v6, 0x7f05006e

    const v2, 0x7f02001a

    const v1, 0x7f020019

    sget-object v5, Lcom/tequnique/camerax/CameraProActivity;->J:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v0, 0x0

    if-eqz v5, :cond_0

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v5, "normal"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move v3, v0

    move-object v0, v7

    :cond_0
    :goto_1
    if-nez v4, :cond_f

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_e

    :goto_2
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v2, Lcom/tequnique/camerax/bj;

    invoke-direct {v2, p1, v1, v0}, Lcom/tequnique/camerax/bj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const-string v5, "antishake"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_3

    const v0, 0x7f020013

    :goto_4
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f05006f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move v3, v0

    move-object v0, v7

    goto :goto_1

    :cond_3
    const v0, 0x7f020014

    goto :goto_4

    :cond_4
    const-string v5, "video"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_5

    const v0, 0x7f02001f

    :goto_5
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050070

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move v3, v0

    move-object v0, v7

    goto :goto_1

    :cond_5
    const v0, 0x7f020020

    goto :goto_5

    :cond_6
    const-string v5, "burst"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_7

    const v0, 0x7f020017

    :goto_6
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050071

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move v3, v0

    move-object v0, v7

    goto :goto_1

    :cond_7
    const v0, 0x7f020018

    goto :goto_6

    :cond_8
    const-string v5, "timelapse"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_9

    const v0, 0x7f02001d

    :goto_7
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050072

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move v3, v0

    move-object v0, v7

    goto/16 :goto_1

    :cond_9
    const v0, 0x7f02001e

    goto :goto_7

    :cond_a
    const-string v5, "selftimer"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_b

    const v0, 0x7f02001b

    :goto_8
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050073

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move v3, v0

    move-object v0, v7

    goto/16 :goto_1

    :cond_b
    const v0, 0x7f02001c

    goto :goto_8

    :cond_c
    const-string v5, "bracketing"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->aE:Z

    if-eqz v0, :cond_d

    const v0, 0x7f020015

    :goto_9
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050074

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move v3, v0

    move-object v0, v7

    goto/16 :goto_1

    :cond_d
    const v0, 0x7f020016

    goto :goto_9

    :cond_e
    move v1, v2

    goto/16 :goto_2

    :cond_f
    move v1, v3

    goto/16 :goto_3
.end method

.method private i()V
    .locals 6

    const/4 v5, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->ae:I

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    if-nez v1, :cond_2

    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    new-instance v2, Lcom/tequnique/camerax/au;

    invoke-direct {v2, p0}, Lcom/tequnique/camerax/au;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    new-instance v2, Lcom/tequnique/camerax/av;

    invoke-direct {v2, p0, v0}, Lcom/tequnique/camerax/av;-><init>(Lcom/tequnique/camerax/CameraProActivity;Landroid/media/CamcorderProfile;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    invoke-direct {p0, v3}, Lcom/tequnique/camerax/CameraProActivity;->e(Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->unlock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_10

    :goto_1
    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    :cond_2
    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v4}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->f:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    const-string v3, "mp4"

    invoke-virtual {v2, v3, v4}, Lcom/tequnique/camerax/bo;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tequnique/camerax/bo;->aQ:Ljava/lang/String;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v2, v2, Lcom/tequnique/camerax/bo;->aQ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v1, v1, Lcom/tequnique/camerax/bo;->aj:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v1, v1, Lcom/tequnique/camerax/bo;->af:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v5}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->aq:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v1, v1, Lcom/tequnique/camerax/bo;->af:Z

    if-eqz v1, :cond_4

    :try_start_2
    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v1, v1, Lcom/tequnique/camerax/bo;->an:I

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->an:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v1, v1, Lcom/tequnique/camerax/bo;->al:I

    if-lez v1, :cond_a

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->al:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioChannels(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v1, v1, Lcom/tequnique/camerax/bo;->ao:I

    if-lez v1, :cond_b

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->ao:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->am:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_5

    :try_start_6
    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v1, v1, Lcom/tequnique/camerax/bo;->ap:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->ap:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setCaptureRate(D)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :cond_5
    :try_start_7
    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v1, v1, Lcom/tequnique/camerax/bo;->as:I

    if-lez v1, :cond_c

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->as:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :goto_5
    :try_start_8
    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v1, v1, Lcom/tequnique/camerax/bo;->at:I

    if-lez v1, :cond_d

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->at:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    :goto_6
    :try_start_9
    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v1, v1, Lcom/tequnique/camerax/bo;->au:I

    if-lez v1, :cond_e

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v1, v1, Lcom/tequnique/camerax/bo;->av:I

    if-lez v1, :cond_e

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v1, v1, Lcom/tequnique/camerax/bo;->au:I

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v2, v2, Lcom/tequnique/camerax/bo;->av:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    :goto_7
    :try_start_a
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v1, v1, Lcom/tequnique/camerax/bo;->ar:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    :goto_8
    :try_start_b
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->ag:I

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v1, v1, Lcom/tequnique/camerax/bo;->ag:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    :cond_6
    :try_start_c
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->ah:I

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v1, v1, Lcom/tequnique/camerax/bo;->ah:I

    mul-int/lit16 v1, v1, 0x400

    mul-int/lit16 v1, v1, 0x400

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d

    :cond_7
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->I:Z

    :try_start_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_8

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    :cond_8
    :goto_9
    const/4 v0, 0x1

    :try_start_e
    invoke-static {v0, p0}, Lcom/tequnique/camerax/a;->a(ZLandroid/app/Activity;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_f

    :goto_a
    :try_start_f
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(0) "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->j(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/tequnique/camerax/CameraProActivity;->ai:Z

    invoke-direct {p0, v4}, Lcom/tequnique/camerax/CameraProActivity;->e(Z)Z

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    :try_start_10
    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    iget v2, v0, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    :try_start_11
    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    iget v2, v0, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioChannels(I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050084

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    :try_start_12
    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    iget v2, v0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4

    goto/16 :goto_4

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050086

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050087

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    :try_start_13
    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    iget v2, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    goto/16 :goto_5

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050088

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    :try_start_14
    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    iget v2, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8

    goto/16 :goto_6

    :catch_8
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050089

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    :try_start_15
    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaRecorder;->setVideoSize(II)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9

    goto/16 :goto_7

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05008b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v5}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :try_start_16
    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ah:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_b

    goto/16 :goto_8

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05008c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_c
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_d
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05008e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_e
    move-exception v0

    const-string v0, "CameraPro"

    const-string v1, "Error setting orientation hint."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :catch_f
    move-exception v0

    goto/16 :goto_a

    :catch_10
    move-exception v1

    goto/16 :goto_1
.end method

.method static synthetic i(Lcom/tequnique/camerax/CameraProActivity;I)V
    .locals 0

    iput p1, p0, Lcom/tequnique/camerax/CameraProActivity;->aa:I

    return-void
.end method

.method static synthetic i(Lcom/tequnique/camerax/CameraProActivity;)[F
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->T:[F

    return-object v0
.end method

.method static synthetic j(Lcom/tequnique/camerax/CameraProActivity;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->R:Landroid/graphics/RectF;

    return-object v0
.end method

.method private j()V
    .locals 7

    const/16 v6, 0x13b

    const/16 v5, 0xe1

    const/16 v4, 0x87

    const/16 v3, 0x2d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ab:Z

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v1, v1, Lcom/tequnique/camerax/bo;->N:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1, p0}, Lcom/tequnique/camerax/a;->a(ZLandroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {v2}, Landroid/view/Display;->getOrientation()I

    move-result v2

    if-nez v2, :cond_8

    iget v2, p0, Lcom/tequnique/camerax/CameraProActivity;->y:I

    if-ge v2, v6, :cond_1

    iget v2, p0, Lcom/tequnique/camerax/CameraProActivity;->y:I

    if-ge v2, v3, :cond_4

    :cond_1
    const/4 v0, 0x3

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_2
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->I:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->G:Landroid/location/Location;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->G:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->G:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->G:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->G:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->G:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_3
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    return-void

    :cond_4
    iget v2, p0, Lcom/tequnique/camerax/CameraProActivity;->y:I

    if-ge v2, v6, :cond_5

    iget v2, p0, Lcom/tequnique/camerax/CameraProActivity;->y:I

    if-lt v2, v5, :cond_5

    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/tequnique/camerax/CameraProActivity;->y:I

    if-ge v2, v5, :cond_6

    iget v2, p0, Lcom/tequnique/camerax/CameraProActivity;->y:I

    if-lt v2, v4, :cond_6

    const/4 v0, 0x4

    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/tequnique/camerax/CameraProActivity;->y:I

    if-ge v2, v4, :cond_7

    iget v2, p0, Lcom/tequnique/camerax/CameraProActivity;->y:I

    if-gt v2, v3, :cond_2

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    iget v2, p0, Lcom/tequnique/camerax/CameraProActivity;->y:I

    if-ge v2, v6, :cond_2

    iget v2, p0, Lcom/tequnique/camerax/CameraProActivity;->y:I

    if-lt v2, v3, :cond_2

    iget v0, p0, Lcom/tequnique/camerax/CameraProActivity;->y:I

    if-ge v0, v6, :cond_9

    iget v0, p0, Lcom/tequnique/camerax/CameraProActivity;->y:I

    if-lt v0, v5, :cond_9

    const/4 v0, 0x3

    goto/16 :goto_1

    :cond_9
    iget v0, p0, Lcom/tequnique/camerax/CameraProActivity;->y:I

    if-ge v0, v5, :cond_a

    iget v0, p0, Lcom/tequnique/camerax/CameraProActivity;->y:I

    if-lt v0, v4, :cond_a

    const/4 v0, 0x2

    goto/16 :goto_1

    :cond_a
    iget v0, p0, Lcom/tequnique/camerax/CameraProActivity;->y:I

    if-ge v0, v4, :cond_7

    iget v0, p0, Lcom/tequnique/camerax/CameraProActivity;->y:I

    if-le v0, v3, :cond_7

    const/4 v0, 0x4

    goto/16 :goto_1

    :pswitch_0
    const/16 v0, 0x5a

    goto/16 :goto_2

    :pswitch_1
    const/4 v0, 0x0

    goto/16 :goto_2

    :pswitch_2
    const/16 v0, 0x10e

    goto/16 :goto_2

    :pswitch_3
    const/16 v0, 0xb4

    goto/16 :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_3

    :catch_2
    move-exception v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private j(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f05

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tequnique/camerax/ax;

    invoke-direct {v2, p0}, Lcom/tequnique/camerax/ax;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private k()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "taking-picture-zoom-max"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tequnique/camerax/CameraProActivity;->o:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    return v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic k(Lcom/tequnique/camerax/CameraProActivity;)I
    .locals 1

    iget v0, p0, Lcom/tequnique/camerax/CameraProActivity;->V:I

    return v0
.end method

.method private static k(Ljava/lang/String;)I
    .locals 6

    const/4 v5, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "Orientation"

    invoke-virtual {v1, v2, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v5, :cond_0

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    return v0

    :catch_0
    move-exception v1

    const-string v3, "CameraPro"

    const-string v4, "cannot read exif"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_1

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private l()I
    .locals 2

    iget-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->o:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "taking-picture-zoom"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic l(Lcom/tequnique/camerax/CameraProActivity;)I
    .locals 1

    iget v0, p0, Lcom/tequnique/camerax/CameraProActivity;->y:I

    return v0
.end method

.method static synthetic m(Lcom/tequnique/camerax/CameraProActivity;)F
    .locals 1

    iget v0, p0, Lcom/tequnique/camerax/CameraProActivity;->H:F

    return v0
.end method

.method private m()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->aQ:Ljava/lang/String;

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tequnique/camerax/CameraProActivity;->a(Ljava/io/File;)[B

    move-result-object v1

    invoke-static {v0}, Lcom/tequnique/camerax/CameraProActivity;->k(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1}, Lcom/tequnique/camerax/CameraProActivity;->a([B)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tequnique/camerax/CameraProActivity;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic n(Lcom/tequnique/camerax/CameraProActivity;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method static synthetic o(Lcom/tequnique/camerax/CameraProActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic p(Lcom/tequnique/camerax/CameraProActivity;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->e(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic q(Lcom/tequnique/camerax/CameraProActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->d()V

    return-void
.end method

.method static synthetic r(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bv;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->z:Lcom/tequnique/camerax/bv;

    return-object v0
.end method

.method static synthetic s(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bf;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->v:Lcom/tequnique/camerax/bf;

    return-object v0
.end method

.method static synthetic t(Lcom/tequnique/camerax/CameraProActivity;)F
    .locals 1

    iget v0, p0, Lcom/tequnique/camerax/CameraProActivity;->B:F

    return v0
.end method

.method static synthetic u(Lcom/tequnique/camerax/CameraProActivity;)Lcom/tequnique/camerax/bw;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->A:Lcom/tequnique/camerax/bw;

    return-object v0
.end method

.method static synthetic v(Lcom/tequnique/camerax/CameraProActivity;)I
    .locals 1

    iget v0, p0, Lcom/tequnique/camerax/CameraProActivity;->Z:I

    return v0
.end method

.method static synthetic w(Lcom/tequnique/camerax/CameraProActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->j()V

    return-void
.end method

.method static synthetic x(Lcom/tequnique/camerax/CameraProActivity;)Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->G:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic y(Lcom/tequnique/camerax/CameraProActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->M:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic z(Lcom/tequnique/camerax/CameraProActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->e()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->k()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    :cond_1
    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->o:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v3}, Lcom/tequnique/camerax/CameraProActivity;->d(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->l()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/tequnique/camerax/CameraProActivity;->b(I)V

    goto :goto_0

    :sswitch_1
    if-eqz v1, :cond_3

    if-ne v1, v4, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v2, v2, Lcom/tequnique/camerax/bo;->o:Z

    if-eqz v2, :cond_5

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v1, v1, Lcom/tequnique/camerax/bo;->W:I

    if-lez v1, :cond_4

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->d(Z)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->h()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->l()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/tequnique/camerax/CameraProActivity;->b(I)V

    goto :goto_0

    :sswitch_2
    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v3}, Lcom/tequnique/camerax/CameraProActivity;->d(Z)V

    goto :goto_0

    :sswitch_3
    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->e(Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->h()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_1
        0x1b -> :sswitch_3
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 3

    sget-boolean v0, Lcom/tequnique/camerax/CameraProActivity;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->aQ:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v1, v1, Lcom/tequnique/camerax/bo;->aQ:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->aQ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v2, v2, Lcom/tequnique/camerax/bo;->aQ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/tequnique/camerax/CameraProActivity;->setResult(ILandroid/content/Intent;)V

    :cond_1
    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v1, v1, Lcom/tequnique/camerax/bo;->aQ:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->m()Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tequnique/camerax/CameraProActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    sget-boolean v0, Lcom/tequnique/camerax/CameraProActivity;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/tequnique/camerax/CameraProActivity;->V:I

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->v:Lcom/tequnique/camerax/bf;

    invoke-virtual {v0}, Lcom/tequnique/camerax/bf;->invalidate()V

    iget-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ad:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->j()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ac:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ac:Z

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->W:I

    if-ne v0, v2, :cond_3

    invoke-direct {p0, v2}, Lcom/tequnique/camerax/CameraProActivity;->e(Z)Z

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->h()V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->t:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    invoke-direct {p0, v3}, Lcom/tequnique/camerax/CameraProActivity;->c(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->r:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tequnique/camerax/v;

    invoke-direct {v3, p0}, Lcom/tequnique/camerax/v;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tequnique/camerax/ag;

    invoke-direct {v3, p0}, Lcom/tequnique/camerax/ag;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x7

    const/4 v8, 0x3

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/tequnique/camerax/bo;->a(Landroid/content/Context;)Lcom/tequnique/camerax/bo;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iput-object v1, v0, Lcom/tequnique/camerax/bo;->aQ:Ljava/lang/String;

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->c:Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/tequnique/camerax/MediaButtonControlReceiver;

    invoke-direct {v0, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->a:Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraPro"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Action from: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    sput-boolean v7, Lcom/tequnique/camerax/CameraProActivity;->b:Z

    :goto_0
    sget-boolean v0, Lcom/tequnique/camerax/CameraProActivity;->b:Z

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "output"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/net/Uri;

    if-eqz v2, :cond_5

    check-cast v0, Landroid/net/Uri;

    move-object v1, v0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tequnique/camerax/CameraProActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :cond_2
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tequnique/camerax/ar;

    invoke-direct {v1, p0}, Lcom/tequnique/camerax/ar;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->al:Lcom/a/a/a/a/m;

    new-instance v1, Lcom/a/a/a/a/i;

    new-instance v2, Lcom/a/a/a/a/t;

    new-instance v3, Lcom/a/a/a/a/a;

    sget-object v4, Lcom/tequnique/camerax/CameraProActivity;->an:[B

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/a/a/a/a/a;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, p0, v3}, Lcom/a/a/a/a/t;-><init>(Landroid/content/Context;Lcom/a/a/a/a/p;)V

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAlvRNsuerFubp5+t8dEEYmoVmoM8CkCMoG7pG0AyNbvjd7PSMy3l32D6Hefk4m6oVnNi/t332u4BKHBeVKg5mkFw6uk/B51yxvwcgq99/iwjUtX7l0pItzebtEuH5kKjTjY58Bnynq3Iu6VMQXMDa8csgyF3tvGIFhFdK5B4Uj/YF7bnsnoIKVZ4QCnPAfMz94CcmaY/dNbeJz3ha9yuI6bqwdL5z7sF2vaRVQv3Ahumc52b4sRIp4oy5o9CAhQHQ+FDE5v2cbstyudZbgLIUOXrbWL78aavYr86QwHkSSVVmxT87ebrqNV6dcQGBGo49N/JJrDFLFZvhfNEbEpswvwIDAQAB"

    invoke-direct {v1, p0, v2, v0}, Lcom/a/a/a/a/i;-><init>(Landroid/content/Context;Lcom/a/a/a/a/q;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->am:Lcom/a/a/a/a/i;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v7

    :goto_3
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->am:Lcom/a/a/a/a/i;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->al:Lcom/a/a/a/a/m;

    invoke-virtual {v0, v1}, Lcom/a/a/a/a/i;->a(Lcom/a/a/a/a/m;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    :goto_4
    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/tequnique/camerax/bf;

    invoke-direct {v1, p0, p0}, Lcom/tequnique/camerax/bf;-><init>(Lcom/tequnique/camerax/CameraProActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->v:Lcom/tequnique/camerax/bf;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->v:Lcom/tequnique/camerax/bf;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/tequnique/camerax/bf;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->v:Lcom/tequnique/camerax/bf;

    invoke-virtual {v0, v1, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/tequnique/camerax/CameraProActivity;->J:Ljava/util/List;

    const-string v1, "normal"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/tequnique/camerax/CameraProActivity;->J:Ljava/util/List;

    const-string v1, "video"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/tequnique/camerax/CameraProActivity;->J:Ljava/util/List;

    const-string v1, "antishake"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/tequnique/camerax/CameraProActivity;->J:Ljava/util/List;

    const-string v1, "burst"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/tequnique/camerax/CameraProActivity;->J:Ljava/util/List;

    const-string v1, "timelapse"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/tequnique/camerax/CameraProActivity;->J:Ljava/util/List;

    const-string v1, "selftimer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/tequnique/camerax/CameraProActivity;->J:Ljava/util/List;

    const-string v1, "bracketing"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0a0021

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->f:Landroid/view/SurfaceView;

    :try_start_2
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->f:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_5
    const v0, 0x7f0a0049

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->j:[Landroid/widget/ImageButton;

    const v0, 0x7f0a0038

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v6

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->j:[Landroid/widget/ImageButton;

    const v0, 0x7f0a003b

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v7

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->j:[Landroid/widget/ImageButton;

    const/4 v2, 0x2

    const v0, 0x7f0a003e

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->j:[Landroid/widget/ImageButton;

    const v0, 0x7f0a0041

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v8

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->j:[Landroid/widget/ImageButton;

    const/4 v2, 0x4

    const v0, 0x7f0a002b

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->j:[Landroid/widget/ImageButton;

    const/4 v2, 0x5

    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->j:[Landroid/widget/ImageButton;

    const/4 v2, 0x6

    const v0, 0x7f0a0031

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->j:[Landroid/widget/ImageButton;

    const v0, 0x7f0a0034

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    aput-object v0, v1, v9

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->k:[Landroid/widget/TextView;

    const v0, 0x7f0a0039

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v6

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->k:[Landroid/widget/TextView;

    const v0, 0x7f0a003c

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v7

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->k:[Landroid/widget/TextView;

    const/4 v2, 0x2

    const v0, 0x7f0a003f

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->k:[Landroid/widget/TextView;

    const v0, 0x7f0a0042

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v8

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->k:[Landroid/widget/TextView;

    const/4 v2, 0x4

    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->k:[Landroid/widget/TextView;

    const/4 v2, 0x5

    const v0, 0x7f0a002f

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->k:[Landroid/widget/TextView;

    const/4 v2, 0x6

    const v0, 0x7f0a0032

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->k:[Landroid/widget/TextView;

    const v0, 0x7f0a0035

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v9

    move v0, v6

    :goto_6
    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->j:[Landroid/widget/ImageButton;

    array-length v1, v1

    if-lt v0, v1, :cond_7

    const v0, 0x7f0a0026

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->l:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->l:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tequnique/camerax/bc;

    invoke-direct {v1, p0}, Lcom/tequnique/camerax/bc;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0027

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->m:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->m:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tequnique/camerax/bd;

    invoke-direct {v1, p0}, Lcom/tequnique/camerax/bd;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0044

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tequnique/camerax/VerticalSeekBar;

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->n:Lcom/tequnique/camerax/VerticalSeekBar;

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->n:Lcom/tequnique/camerax/VerticalSeekBar;

    new-instance v1, Lcom/tequnique/camerax/be;

    invoke-direct {v1, p0}, Lcom/tequnique/camerax/be;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    invoke-virtual {v0, v1}, Lcom/tequnique/camerax/VerticalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v0, 0x7f0a0045

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->L:Landroid/widget/TextView;

    const v0, 0x7f0a0046

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->M:Landroid/widget/TextView;

    const v0, 0x7f0a0047

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->N:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->L:Landroid/widget/TextView;

    new-instance v1, Lcom/tequnique/camerax/i;

    invoke-direct {v1, p0}, Lcom/tequnique/camerax/i;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->w:Landroid/hardware/SensorManager;

    new-instance v0, Lcom/tequnique/camerax/l;

    invoke-direct {v0, p0, p0}, Lcom/tequnique/camerax/l;-><init>(Lcom/tequnique/camerax/CameraProActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->x:Landroid/view/OrientationEventListener;

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->x:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    new-instance v0, Lcom/tequnique/camerax/m;

    invoke-direct {v0, p0}, Lcom/tequnique/camerax/m;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->C:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/tequnique/camerax/o;

    invoke-direct {v0, p0}, Lcom/tequnique/camerax/o;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->D:Landroid/hardware/SensorEventListener;

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->F:Landroid/location/LocationManager;

    :try_start_3
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->F:Landroid/location/LocationManager;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->G:Landroid/location/Location;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_7
    new-instance v0, Lcom/tequnique/camerax/p;

    invoke-direct {v0, p0}, Lcom/tequnique/camerax/p;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->E:Landroid/location/LocationListener;

    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/tequnique/camerax/q;

    invoke-direct {v2, p0}, Lcom/tequnique/camerax/q;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ag:Landroid/media/MediaScannerConnection;

    return-void

    :cond_4
    sput-boolean v6, Lcom/tequnique/camerax/CameraProActivity;->b:Z

    goto/16 :goto_0

    :cond_5
    :try_start_4
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v1

    goto/16 :goto_1

    :cond_6
    move v0, v6

    goto/16 :goto_3

    :cond_7
    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->k:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    new-instance v2, Lcom/tequnique/camerax/ba;

    invoke-direct {v2, p0, v0}, Lcom/tequnique/camerax/ba;-><init>(Lcom/tequnique/camerax/CameraProActivity;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->j:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    new-instance v2, Lcom/tequnique/camerax/bb;

    invoke-direct {v2, p0, v0}, Lcom/tequnique/camerax/bb;-><init>(Lcom/tequnique/camerax/CameraProActivity;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_5

    :catch_2
    move-exception v0

    goto/16 :goto_4

    :catch_3
    move-exception v0

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/tequnique/camerax/CameraProActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    :try_start_0
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->am:Lcom/a/a/a/a/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->am:Lcom/a/a/a/a/i;

    invoke-virtual {v0}, Lcom/a/a/a/a/i;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x4

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v2

    :pswitch_0
    iget-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->X:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/tequnique/camerax/CameraProActivity;->X:Z

    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-boolean v3, p0, Lcom/tequnique/camerax/CameraProActivity;->X:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0a0023

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-boolean v3, p0, Lcom/tequnique/camerax/CameraProActivity;->X:Z

    if-eqz v3, :cond_2

    move v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0a0048

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-boolean v3, p0, Lcom/tequnique/camerax/CameraProActivity;->X:Z

    if-eqz v3, :cond_3

    move v3, v4

    :goto_4
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0a0043

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-boolean v3, p0, Lcom/tequnique/camerax/CameraProActivity;->X:Z

    if-eqz v3, :cond_4

    :goto_5
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/tequnique/camerax/CameraProActivity;->c(Z)V

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v1

    goto :goto_4

    :cond_4
    move v4, v1

    goto :goto_5

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tequnique/camerax/SettingsViewTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tequnique/camerax/InfoViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a005a
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ao:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :try_start_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->a:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/tequnique/camerax/MediaButtonControlReceiver;->a:Lcom/tequnique/camerax/bu;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_5

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0, v2}, Lcom/tequnique/camerax/CameraProActivity;->e(Z)Z

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->N:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0, p0}, Lcom/tequnique/camerax/a;->a(ZLandroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->w:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->C:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->x:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->x:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_1
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->I:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->F:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->E:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_2
    invoke-direct {p0, v2}, Lcom/tequnique/camerax/CameraProActivity;->b(Z)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->g:Lcom/tequnique/camerax/bk;

    invoke-virtual {v0, v4}, Lcom/tequnique/camerax/bk;->a(Landroid/hardware/Camera;)V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    iput-object v4, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    :cond_3
    iput-object v4, p0, Lcom/tequnique/camerax/CameraProActivity;->g:Lcom/tequnique/camerax/bk;

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tequnique/camerax/CameraProActivity;->q:I

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ag:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ag:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    :cond_4
    return-void

    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ak:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/tequnique/camerax/bo;->aQ:Ljava/lang/String;

    :cond_0
    :goto_0
    sget-boolean v0, Lcom/tequnique/camerax/CameraProActivity;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget v0, v0, Lcom/tequnique/camerax/bo;->V:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->A:Ljava/lang/String;

    const-string v1, "antishake"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->A:Ljava/lang/String;

    const-string v1, "selftimer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->A:Ljava/lang/String;

    const-string v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->aQ:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/tequnique/camerax/CameraProActivity;->a(Ljava/lang/String;[B)Z

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->p:Z

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v2, v2, Lcom/tequnique/camerax/bo;->aQ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    const-string v2, "jpg"

    invoke-virtual {v1, v2, v6}, Lcom/tequnique/camerax/bo;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tequnique/camerax/bo;->aQ:Ljava/lang/String;

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v0, v0, Lcom/tequnique/camerax/bo;->A:Ljava/lang/String;

    const-string v1, "bracketing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget v0, p0, Lcom/tequnique/camerax/CameraProActivity;->af:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->e:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v1

    mul-float/2addr v0, v1

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v3, v3, Lcom/tequnique/camerax/bo;->aQ:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v5, v5, Lcom/tequnique/camerax/bo;->aQ:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tequnique/camerax/bo;->aQ:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tequnique/camerax/ImagePreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v6}, Lcom/tequnique/camerax/CameraProActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/tequnique/camerax/bi;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-object v1, v1, Lcom/tequnique/camerax/bo;->aQ:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/tequnique/camerax/bi;-><init>(Lcom/tequnique/camerax/CameraProActivity;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [[B

    aput-object p1, v1, v6

    invoke-virtual {v0, v1}, Lcom/tequnique/camerax/bi;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->h:Landroid/os/Handler;

    new-instance v1, Lcom/tequnique/camerax/ay;

    invoke-direct {v1, p0}, Lcom/tequnique/camerax/ay;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->g:Z

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/tequnique/camerax/CameraProActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->a:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    new-instance v0, Lcom/tequnique/camerax/r;

    invoke-direct {v0, p0}, Lcom/tequnique/camerax/r;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    sput-object v0, Lcom/tequnique/camerax/MediaButtonControlReceiver;->a:Lcom/tequnique/camerax/bu;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->ak:Ljava/util/List;

    invoke-direct {p0}, Lcom/tequnique/camerax/CameraProActivity;->b()V

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tequnique/camerax/bo;->a:Z

    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->d:Lcom/tequnique/camerax/bo;

    invoke-virtual {v0, p0}, Lcom/tequnique/camerax/bo;->b(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/tequnique/camerax/CameraProActivity;->h:Landroid/os/Handler;

    new-instance v1, Lcom/tequnique/camerax/s;

    invoke-direct {v1, p0}, Lcom/tequnique/camerax/s;-><init>(Lcom/tequnique/camerax/CameraProActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tequnique/camerax/CameraProActivity;->ao:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/tequnique/camerax/CameraProActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onShutter()V
    .locals 0

    return-void
.end method
