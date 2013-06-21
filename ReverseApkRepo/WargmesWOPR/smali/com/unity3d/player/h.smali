.class final Lcom/unity3d/player/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/location/LocationListener;


# static fields
.field private static final d:[I


# instance fields
.field private A:Ljava/lang/Runnable;

.field private B:Ljava/lang/Runnable;

.field private C:Ljava/lang/Runnable;

.field private D:Ljava/lang/Runnable;

.field private E:Ljava/lang/Runnable;

.field private F:[F

.field private G:D

.field private H:Ljava/lang/Runnable;

.field private I:[F

.field private J:[F

.field private K:I

.field private L:Ljava/lang/Runnable;

.field private M:Landroid/location/Location;

.field private N:F

.field private O:Z

.field private P:I

.field private Q:Z

.field private R:I

.field private final a:Landroid/content/Context;

.field private final b:Lcom/unity3d/player/UnityPlayer;

.field private final c:Landroid/view/WindowManager;

.field private e:[F

.field private f:[F

.field private g:F

.field private h:F

.field private i:F

.field private j:J

.field private k:F

.field private l:F

.field private m:F

.field private n:J

.field private o:F

.field private p:F

.field private q:F

.field private r:J

.field private s:F

.field private t:F

.field private u:F

.field private v:J

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/unity3d/player/h;->d:[I

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayer;)V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/unity3d/player/h;->e:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/unity3d/player/h;->f:[F

    new-instance v0, Lcom/unity3d/player/i;

    invoke-direct {v0, p0}, Lcom/unity3d/player/i;-><init>(Lcom/unity3d/player/h;)V

    iput-object v0, p0, Lcom/unity3d/player/h;->A:Ljava/lang/Runnable;

    new-instance v0, Lcom/unity3d/player/j;

    invoke-direct {v0, p0}, Lcom/unity3d/player/j;-><init>(Lcom/unity3d/player/h;)V

    iput-object v0, p0, Lcom/unity3d/player/h;->B:Ljava/lang/Runnable;

    new-instance v0, Lcom/unity3d/player/k;

    invoke-direct {v0, p0}, Lcom/unity3d/player/k;-><init>(Lcom/unity3d/player/h;)V

    iput-object v0, p0, Lcom/unity3d/player/h;->C:Ljava/lang/Runnable;

    new-instance v0, Lcom/unity3d/player/l;

    invoke-direct {v0, p0}, Lcom/unity3d/player/l;-><init>(Lcom/unity3d/player/h;)V

    iput-object v0, p0, Lcom/unity3d/player/h;->D:Ljava/lang/Runnable;

    new-instance v0, Lcom/unity3d/player/m;

    invoke-direct {v0, p0}, Lcom/unity3d/player/m;-><init>(Lcom/unity3d/player/h;)V

    iput-object v0, p0, Lcom/unity3d/player/h;->E:Ljava/lang/Runnable;

    const/4 v0, 0x5

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/unity3d/player/h;->F:[F

    new-instance v0, Lcom/unity3d/player/n;

    invoke-direct {v0, p0}, Lcom/unity3d/player/n;-><init>(Lcom/unity3d/player/h;)V

    iput-object v0, p0, Lcom/unity3d/player/h;->H:Ljava/lang/Runnable;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/unity3d/player/h;->I:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/unity3d/player/h;->J:[F

    new-instance v0, Lcom/unity3d/player/o;

    invoke-direct {v0, p0}, Lcom/unity3d/player/o;-><init>(Lcom/unity3d/player/h;)V

    iput-object v0, p0, Lcom/unity3d/player/h;->L:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/player/h;->N:F

    iput-boolean v1, p0, Lcom/unity3d/player/h;->O:Z

    iput v1, p0, Lcom/unity3d/player/h;->P:I

    iput-boolean v1, p0, Lcom/unity3d/player/h;->Q:Z

    iput v1, p0, Lcom/unity3d/player/h;->R:I

    iput-object p1, p0, Lcom/unity3d/player/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/unity3d/player/h;->b:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, p0, Lcom/unity3d/player/h;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/unity3d/player/h;->c:Landroid/view/WindowManager;

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/h;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/h;->g:F

    return v0
.end method

.method private a(Landroid/location/Location;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/unity3d/player/h;->M:Landroid/location/Location;

    if-nez v7, :cond_3

    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/unity3d/player/h;->M:Landroid/location/Location;

    iget-object v0, p0, Lcom/unity3d/player/h;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    long-to-double v5, v5

    const-wide v7, 0x408f400000000000L

    div-double/2addr v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/unity3d/player/UnityPlayer;->nativeSetLocation(FFFFD)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v7}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long v4, v3, v5

    const-wide/32 v8, 0x1d4c0

    cmp-long v0, v4, v8

    if-lez v0, :cond_6

    move v3, v1

    :goto_2
    const-wide/32 v8, -0x1d4c0

    cmp-long v0, v4, v8

    if-gez v0, :cond_7

    move v0, v1

    :goto_3
    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_8

    move v6, v1

    :goto_4
    if-nez v3, :cond_2

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {v7}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    if-lez v0, :cond_9

    move v5, v1

    :goto_5
    if-gez v0, :cond_a

    move v4, v1

    :goto_6
    const/16 v3, 0xc8

    if-le v0, v3, :cond_b

    move v0, v1

    :goto_7
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    const/4 v8, 0x0

    cmpl-float v3, v3, v8

    if-nez v3, :cond_c

    move v3, v1

    :goto_8
    or-int/2addr v3, v0

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    if-nez v0, :cond_e

    if-nez v7, :cond_d

    move v0, v1

    :goto_9
    if-nez v4, :cond_2

    if-eqz v6, :cond_4

    if-eqz v5, :cond_2

    :cond_4
    if-eqz v6, :cond_5

    if-nez v3, :cond_5

    if-nez v0, :cond_2

    :cond_5
    move v1, v2

    goto/16 :goto_1

    :cond_6
    move v3, v2

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    move v6, v2

    goto :goto_4

    :cond_9
    move v5, v2

    goto :goto_5

    :cond_a
    move v4, v2

    goto :goto_6

    :cond_b
    move v0, v2

    goto :goto_7

    :cond_c
    move v3, v2

    goto :goto_8

    :cond_d
    move v0, v2

    goto :goto_9

    :cond_e
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9
.end method

.method static synthetic b(Lcom/unity3d/player/h;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/h;->h:F

    return v0
.end method

.method static synthetic c(Lcom/unity3d/player/h;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/h;->i:F

    return v0
.end method

.method static synthetic d(Lcom/unity3d/player/h;)J
    .locals 2

    iget-wide v0, p0, Lcom/unity3d/player/h;->j:J

    return-wide v0
.end method

.method static synthetic e(Lcom/unity3d/player/h;)Lcom/unity3d/player/UnityPlayer;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/h;->b:Lcom/unity3d/player/UnityPlayer;

    return-object v0
.end method

.method static synthetic f(Lcom/unity3d/player/h;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/h;->k:F

    return v0
.end method

.method static synthetic f()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static synthetic g(Lcom/unity3d/player/h;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/h;->l:F

    return v0
.end method

.method static synthetic h(Lcom/unity3d/player/h;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/h;->m:F

    return v0
.end method

.method static synthetic i(Lcom/unity3d/player/h;)J
    .locals 2

    iget-wide v0, p0, Lcom/unity3d/player/h;->n:J

    return-wide v0
.end method

.method static synthetic j(Lcom/unity3d/player/h;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/h;->o:F

    return v0
.end method

.method static synthetic k(Lcom/unity3d/player/h;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/h;->p:F

    return v0
.end method

.method static synthetic l(Lcom/unity3d/player/h;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/h;->q:F

    return v0
.end method

.method static synthetic m(Lcom/unity3d/player/h;)J
    .locals 2

    iget-wide v0, p0, Lcom/unity3d/player/h;->r:J

    return-wide v0
.end method

.method static synthetic n(Lcom/unity3d/player/h;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/h;->s:F

    return v0
.end method

.method static synthetic o(Lcom/unity3d/player/h;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/h;->t:F

    return v0
.end method

.method static synthetic p(Lcom/unity3d/player/h;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/h;->u:F

    return v0
.end method

.method static synthetic q(Lcom/unity3d/player/h;)J
    .locals 2

    iget-wide v0, p0, Lcom/unity3d/player/h;->v:J

    return-wide v0
.end method

.method static synthetic r(Lcom/unity3d/player/h;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/h;->w:F

    return v0
.end method

.method static synthetic s(Lcom/unity3d/player/h;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/h;->x:F

    return v0
.end method

.method static synthetic t(Lcom/unity3d/player/h;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/h;->y:F

    return v0
.end method

.method static synthetic u(Lcom/unity3d/player/h;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/h;->z:F

    return v0
.end method

.method static synthetic v(Lcom/unity3d/player/h;)[F
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/h;->F:[F

    return-object v0
.end method

.method static synthetic w(Lcom/unity3d/player/h;)D
    .locals 2

    iget-wide v0, p0, Lcom/unity3d/player/h;->G:D

    return-wide v0
.end method

.method static synthetic x(Lcom/unity3d/player/h;)I
    .locals 1

    iget v0, p0, Lcom/unity3d/player/h;->K:I

    return v0
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    iput p1, p0, Lcom/unity3d/player/h;->N:F

    return-void
.end method

.method public final a()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/unity3d/player/h;->a:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    new-instance v2, Landroid/location/Criteria;

    invoke-direct {v2}, Landroid/location/Criteria;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 10

    const/4 v6, 0x2

    const/4 v2, 0x3

    const/4 v9, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/player/h;->Q:Z

    iget-boolean v0, p0, Lcom/unity3d/player/h;->O:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    const-string v1, "Location_StartUpdatingLocation already started!"

    invoke-static {v0, v1}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/player/h;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iput v2, p0, Lcom/unity3d/player/h;->R:I

    iget-object v0, p0, Lcom/unity3d/player/h;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, v2}, Lcom/unity3d/player/UnityPlayer;->nativeSetLocationStatus(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/unity3d/player/h;->a:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput v9, p0, Lcom/unity3d/player/h;->R:I

    iget-object v1, p0, Lcom/unity3d/player/h;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v1, v9}, Lcom/unity3d/player/UnityPlayer;->nativeSetLocationStatus(I)V

    invoke-virtual {v0, v9}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iput v2, p0, Lcom/unity3d/player/h;->R:I

    iget-object v0, p0, Lcom/unity3d/player/h;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, v2}, Lcom/unity3d/player/UnityPlayer;->nativeSetLocationStatus(I)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    iget v1, p0, Lcom/unity3d/player/h;->P:I

    if-ne v1, v6, :cond_7

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v5

    if-ne v5, v6, :cond_4

    move-object v7, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v7, :cond_6

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v2

    if-eq v2, v9, :cond_5

    :cond_6
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/unity3d/player/h;->a(Landroid/location/Location;)V

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/unity3d/player/h;->N:F

    iget-object v5, p0, Lcom/unity3d/player/h;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    iput-boolean v9, p0, Lcom/unity3d/player/h;->O:Z

    goto :goto_2

    :cond_7
    move-object v7, v2

    goto :goto_1
.end method

.method public final b(F)V
    .locals 2

    const/4 v1, 0x1

    const/high16 v0, 0x42c8

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iput v1, p0, Lcom/unity3d/player/h;->P:I

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x43fa

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iput v1, p0, Lcom/unity3d/player/h;->P:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/unity3d/player/h;->P:I

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unity3d/player/h;->a:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iput-boolean v2, p0, Lcom/unity3d/player/h;->O:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/h;->M:Landroid/location/Location;

    iput v2, p0, Lcom/unity3d/player/h;->R:I

    iget-object v0, p0, Lcom/unity3d/player/h;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, v2}, Lcom/unity3d/player/UnityPlayer;->nativeSetLocationStatus(I)V

    return-void
.end method

.method public final d()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/unity3d/player/h;->R:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/unity3d/player/h;->R:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iput-boolean v2, p0, Lcom/unity3d/player/h;->Q:Z

    invoke-virtual {p0}, Lcom/unity3d/player/h;->c()V

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/h;->Q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/player/h;->b()V

    :cond_0
    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 2

    const/4 v1, 0x2

    iput v1, p0, Lcom/unity3d/player/h;->R:I

    iget-object v0, p0, Lcom/unity3d/player/h;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->nativeSetLocationStatus(I)V

    invoke-direct {p0, p1}, Lcom/unity3d/player/h;->a(Landroid/location/Location;)V

    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/h;->M:Landroid/location/Location;

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12

    const/high16 v10, 0x43b4

    const/4 v5, 0x1

    const/4 v2, 0x0

    const v9, -0x422f2981

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/unity3d/player/h;->c:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    and-int/lit8 v0, v0, 0x3

    sget-object v4, Lcom/unity3d/player/h;->d:[I

    mul-int/lit8 v6, v0, 0x4

    add-int/lit8 v6, v6, 0x0

    aget v4, v4, v6

    int-to-float v4, v4

    sget-object v6, Lcom/unity3d/player/h;->d:[I

    mul-int/lit8 v7, v0, 0x4

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    int-to-float v6, v6

    sget-object v7, Lcom/unity3d/player/h;->d:[I

    mul-int/lit8 v8, v0, 0x4

    add-int/lit8 v8, v8, 0x2

    aget v7, v7, v8

    sget-object v8, Lcom/unity3d/player/h;->d:[I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x3

    aget v0, v8, v0

    iget-object v8, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v8}, Landroid/hardware/Sensor;->getType()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/unity3d/player/h;->e:[F

    iget-object v0, p0, Lcom/unity3d/player/h;->c:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    and-int/lit8 v0, v0, 0x3

    sget-object v3, Lcom/unity3d/player/h;->d:[I

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget-object v4, Lcom/unity3d/player/h;->d:[I

    mul-int/lit8 v6, v0, 0x4

    add-int/lit8 v6, v6, 0x1

    aget v4, v4, v6

    int-to-float v4, v4

    sget-object v6, Lcom/unity3d/player/h;->d:[I

    mul-int/lit8 v8, v0, 0x4

    add-int/lit8 v8, v8, 0x2

    aget v6, v6, v8

    sget-object v8, Lcom/unity3d/player/h;->d:[I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x3

    aget v0, v8, v0

    mul-float/2addr v3, v9

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v8, v6

    mul-float/2addr v3, v6

    iput v3, p0, Lcom/unity3d/player/h;->g:F

    mul-float v3, v4, v9

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v4, v0

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/unity3d/player/h;->h:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    mul-float/2addr v0, v9

    iput v0, p0, Lcom/unity3d/player/h;->i:F

    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v3, p0, Lcom/unity3d/player/h;->j:J

    iget-object v0, p0, Lcom/unity3d/player/h;->b:Lcom/unity3d/player/UnityPlayer;

    iget-object v3, p0, Lcom/unity3d/player/h;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v5

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v1

    const/high16 v6, 0x3f80

    mul-float v8, v0, v0

    mul-float v9, v3, v3

    add-float/2addr v8, v9

    mul-float v9, v4, v4

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    div-float v8, v6, v8

    mul-float v6, v0, v8

    mul-float v0, v3, v8

    mul-float v3, v4, v8

    iget-object v4, p0, Lcom/unity3d/player/h;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v4}, Lcom/unity3d/player/UnityPlayer;->getOrientation()I

    move-result v4

    if-ne v4, v5, :cond_6

    move v4, v2

    :goto_1
    sub-int v4, v7, v4

    and-int/lit8 v4, v4, 0x3

    if-ne v4, v5, :cond_9

    move v4, v0

    :goto_2
    const/high16 v0, -0x4080

    const/high16 v7, -0x4080

    cmpg-float v7, v7, v6

    if-gez v7, :cond_12

    move v0, v5

    move v5, v6

    :goto_3
    neg-float v7, v6

    cmpg-float v7, v5, v7

    if-gez v7, :cond_11

    neg-float v0, v6

    move v11, v1

    move v1, v0

    move v0, v11

    :goto_4
    cmpg-float v5, v1, v4

    if-gez v5, :cond_1

    const/4 v0, 0x3

    move v1, v4

    :cond_1
    neg-float v5, v4

    cmpg-float v5, v1, v5

    if-gez v5, :cond_2

    neg-float v1, v4

    const/4 v0, 0x4

    :cond_2
    cmpg-float v4, v1, v3

    if-gez v4, :cond_3

    const/4 v0, 0x5

    move v1, v3

    :cond_3
    neg-float v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_4

    neg-float v1, v3

    const/4 v0, 0x6

    :cond_4
    float-to-double v3, v1

    const-wide/high16 v5, 0x3fe0

    const-wide/high16 v7, 0x4008

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    cmpg-double v1, v3, v5

    if-gez v1, :cond_5

    move v0, v2

    :cond_5
    iput v0, p0, Lcom/unity3d/player/h;->K:I

    iget-object v0, p0, Lcom/unity3d/player/h;->b:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/h;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_6
    if-nez v4, :cond_7

    move v4, v5

    goto :goto_1

    :cond_7
    const/16 v8, 0x9

    if-ne v4, v8, :cond_8

    move v4, v1

    goto :goto_1

    :cond_8
    const/16 v8, 0x8

    if-ne v4, v8, :cond_14

    const/4 v4, 0x3

    goto :goto_1

    :cond_9
    const/4 v7, 0x3

    if-ne v4, v7, :cond_13

    neg-float v6, v6

    move v4, v0

    goto :goto_2

    :pswitch_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/unity3d/player/h;->f:[F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L

    div-double/2addr v6, v8

    iput-wide v6, p0, Lcom/unity3d/player/h;->G:D

    iget-object v0, p0, Lcom/unity3d/player/h;->I:[F

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/unity3d/player/h;->e:[F

    iget-object v7, p0, Lcom/unity3d/player/h;->f:[F

    invoke-static {v0, v4, v6, v7}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/h;->I:[F

    iget-object v4, p0, Lcom/unity3d/player/h;->J:[F

    invoke-static {v0, v4}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    iget-object v0, p0, Lcom/unity3d/player/h;->J:[F

    aget v0, v0, v2

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v0, v6

    packed-switch v3, :pswitch_data_1

    :goto_5
    cmpl-float v3, v0, v10

    if-ltz v3, :cond_c

    sub-float/2addr v0, v10

    goto :goto_5

    :pswitch_3
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v7

    mul-float/2addr v2, v4

    iput v2, p0, Lcom/unity3d/player/h;->k:F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v0

    mul-float/2addr v0, v6

    iput v0, p0, Lcom/unity3d/player/h;->l:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    iput v0, p0, Lcom/unity3d/player/h;->m:F

    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/unity3d/player/h;->n:J

    iget-object v0, p0, Lcom/unity3d/player/h;->b:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/h;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :pswitch_4
    mul-float v2, v4, v9

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v7

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/unity3d/player/h;->o:F

    mul-float v2, v6, v9

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v3, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/unity3d/player/h;->p:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    mul-float/2addr v0, v9

    iput v0, p0, Lcom/unity3d/player/h;->q:F

    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/unity3d/player/h;->r:J

    iget-object v0, p0, Lcom/unity3d/player/h;->b:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/h;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :pswitch_5
    mul-float v2, v4, v9

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v7

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/unity3d/player/h;->s:F

    mul-float v2, v6, v9

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v3, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/unity3d/player/h;->t:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    mul-float/2addr v0, v9

    iput v0, p0, Lcom/unity3d/player/h;->u:F

    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/unity3d/player/h;->v:J

    iget-object v0, p0, Lcom/unity3d/player/h;->b:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/h;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iput v0, p0, Lcom/unity3d/player/h;->x:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    iput v0, p0, Lcom/unity3d/player/h;->y:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    iput v0, p0, Lcom/unity3d/player/h;->z:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    move-object v1, p0

    :goto_6
    iput v0, v1, Lcom/unity3d/player/h;->w:F

    iget-object v0, p0, Lcom/unity3d/player/h;->b:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/h;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_a
    iget v0, p0, Lcom/unity3d/player/h;->x:F

    iget v1, p0, Lcom/unity3d/player/h;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/unity3d/player/h;->y:F

    iget v2, p0, Lcom/unity3d/player/h;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/unity3d/player/h;->z:F

    iget v2, p0, Lcom/unity3d/player/h;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3f80

    cmpg-float v1, v0, v1

    if-gez v1, :cond_b

    const/high16 v1, 0x3f80

    sub-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    move-object v1, p0

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    move-object v1, p0

    goto :goto_6

    :pswitch_7
    const/high16 v3, 0x42b4

    add-float/2addr v0, v3

    goto/16 :goto_5

    :pswitch_8
    const/high16 v3, 0x4334

    add-float/2addr v0, v3

    goto/16 :goto_5

    :pswitch_9
    const/high16 v3, 0x4387

    add-float/2addr v0, v3

    goto/16 :goto_5

    :cond_c
    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_10

    add-float/2addr v0, v10

    move v6, v0

    :goto_7
    iget-object v0, p0, Lcom/unity3d/player/h;->F:[F

    iget-object v3, p0, Lcom/unity3d/player/h;->f:[F

    aget v3, v3, v2

    aput v3, v0, v2

    iget-object v0, p0, Lcom/unity3d/player/h;->F:[F

    iget-object v2, p0, Lcom/unity3d/player/h;->f:[F

    aget v2, v2, v5

    aput v2, v0, v5

    iget-object v0, p0, Lcom/unity3d/player/h;->F:[F

    iget-object v2, p0, Lcom/unity3d/player/h;->f:[F

    aget v2, v2, v1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/unity3d/player/h;->F:[F

    const/4 v1, 0x3

    aput v6, v0, v1

    iget-object v0, p0, Lcom/unity3d/player/h;->M:Landroid/location/Location;

    if-eqz v0, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/unity3d/player/h;->M:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x124f80

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    new-instance v0, Landroid/hardware/GeomagneticField;

    iget-object v1, p0, Lcom/unity3d/player/h;->M:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lcom/unity3d/player/h;->M:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, p0, Lcom/unity3d/player/h;->M:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, p0, Lcom/unity3d/player/h;->M:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v0

    add-float/2addr v6, v0

    move v0, v6

    :goto_8
    cmpl-float v1, v0, v10

    if-ltz v1, :cond_d

    sub-float v6, v0, v10

    move v0, v6

    goto :goto_8

    :cond_d
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_e

    add-float/2addr v0, v10

    :cond_e
    iget-object v1, p0, Lcom/unity3d/player/h;->F:[F

    const/4 v2, 0x4

    aput v0, v1, v2

    iget-object v0, p0, Lcom/unity3d/player/h;->b:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/h;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_f
    move v0, v6

    goto :goto_8

    :cond_10
    move v6, v0

    goto :goto_7

    :cond_11
    move v1, v5

    goto/16 :goto_4

    :cond_12
    move v5, v0

    move v0, v2

    goto/16 :goto_3

    :cond_13
    move v4, v6

    move v6, v0

    goto/16 :goto_2

    :cond_14
    move v4, v2

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
