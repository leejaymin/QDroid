.class final Lcom/mobclix/android/sdk/cf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static k:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private final D:I

.field private final E:I

.field private F:Landroid/hardware/SensorManager;

.field private G:Ljava/util/List;

.field private H:Ljava/util/HashMap;

.field private I:Ljava/util/HashMap;

.field private J:Landroid/location/LocationManager;

.field private K:F

.field private L:Ljava/lang/String;

.field private M:Z

.field private N:Z

.field private O:Z

.field private final P:I

.field private Q:Z

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field a:Landroid/app/Activity;

.field b:Lcom/mobclix/android/sdk/ae;

.field c:Z

.field d:Z

.field e:I

.field f:Z

.field g:I

.field h:I

.field i:Ljava/lang/String;

.field j:Ljava/lang/Thread;

.field private l:Lcom/mobclix/android/sdk/cq;

.field private m:Lcom/mobclix/android/sdk/e;

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/util/HashMap;

.field private final r:I

.field private final s:I

.field private final t:I

.field private final u:I

.field private final v:Lcom/mobclix/android/sdk/aq;

.field private w:Landroid/hardware/Camera;

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MobclixJavascriptInterface"

    sput-object v0, Lcom/mobclix/android/sdk/cf;->k:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/mobclix/android/sdk/cq;Z)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/cf;->c:Z

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/cf;->d:Z

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/mobclix/android/sdk/cf;->e:I

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->m:Lcom/mobclix/android/sdk/e;

    iput-boolean v3, p0, Lcom/mobclix/android/sdk/cf;->n:Z

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/cf;->o:Z

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/cf;->f:Z

    iput-object v2, p0, Lcom/mobclix/android/sdk/cf;->p:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->q:Ljava/util/HashMap;

    iput v1, p0, Lcom/mobclix/android/sdk/cf;->r:I

    iput v3, p0, Lcom/mobclix/android/sdk/cf;->s:I

    iput v4, p0, Lcom/mobclix/android/sdk/cf;->t:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/mobclix/android/sdk/cf;->u:I

    invoke-static {}, Lcom/mobclix/android/sdk/aq;->a()Lcom/mobclix/android/sdk/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->v:Lcom/mobclix/android/sdk/aq;

    iput-object v2, p0, Lcom/mobclix/android/sdk/cf;->w:Landroid/hardware/Camera;

    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->x:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/cf;->y:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->z:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->A:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->B:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->C:Ljava/lang/String;

    const/16 v0, 0x539

    iput v0, p0, Lcom/mobclix/android/sdk/cf;->D:I

    const/16 v0, 0x53a

    iput v0, p0, Lcom/mobclix/android/sdk/cf;->E:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->G:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->H:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->I:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/mobclix/android/sdk/cf;->J:Landroid/location/LocationManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mobclix/android/sdk/cf;->K:F

    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->L:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/cf;->M:Z

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/cf;->N:Z

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/cf;->O:Z

    const/16 v0, 0x4b

    iput v0, p0, Lcom/mobclix/android/sdk/cf;->P:I

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/cf;->Q:Z

    iput-object v2, p0, Lcom/mobclix/android/sdk/cf;->R:Ljava/lang/String;

    iput-object v2, p0, Lcom/mobclix/android/sdk/cf;->S:Ljava/lang/String;

    iput-object v2, p0, Lcom/mobclix/android/sdk/cf;->T:Ljava/lang/String;

    iput-object v2, p0, Lcom/mobclix/android/sdk/cf;->U:Ljava/lang/String;

    iput-object v2, p0, Lcom/mobclix/android/sdk/cf;->V:Ljava/lang/String;

    iput-object v2, p0, Lcom/mobclix/android/sdk/cf;->W:Ljava/lang/String;

    iput-object p1, p0, Lcom/mobclix/android/sdk/cf;->l:Lcom/mobclix/android/sdk/cq;

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->l:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->a:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/mobclix/android/sdk/cf;->d:Z

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->l:Lcom/mobclix/android/sdk/cq;

    iget-object v0, v0, Lcom/mobclix/android/sdk/cq;->a:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/cf;->o:Z

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->l:Lcom/mobclix/android/sdk/cq;

    iget-object v0, v0, Lcom/mobclix/android/sdk/cq;->a:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/cf;->n:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    if-eqz p2, :cond_0

    iput-boolean v3, p0, Lcom/mobclix/android/sdk/cf;->n:Z

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/cf;->o:Z

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->a:Landroid/app/Activity;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->F:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->F:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->q:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->q:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->q:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->q:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/mobclix/android/sdk/cf;->l()V

    :goto_2
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/mobclix/android/sdk/cf;->G:Ljava/util/List;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/mobclix/android/sdk/cf;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->z:Ljava/lang/String;

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, "(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string v1, "\");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private a(Landroid/location/Location;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->L:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "altitude"

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "coordinate"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "course"

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "speed"

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "horizontalAccuracy"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "verticalAccuracy"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/mobclix/android/sdk/cf;->l:Lcom/mobclix/android/sdk/cq;

    iget-object v2, p0, Lcom/mobclix/android/sdk/cf;->L:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "eval(\'("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")\')"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/mobclix/android/sdk/cf;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/cq;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/mobclix/android/sdk/cf;)Lcom/mobclix/android/sdk/cq;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->l:Lcom/mobclix/android/sdk/cq;

    return-object v0
.end method

.method private declared-synchronized l()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->a:Landroid/app/Activity;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->J:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->l:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/cq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/cf;->l:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/cq;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/mobclix/android/sdk/cf;->m:Lcom/mobclix/android/sdk/e;

    iget-object v2, v2, Lcom/mobclix/android/sdk/e;->q:Lcom/mobclix/android/sdk/ch;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Lcom/mobclix/android/sdk/ch;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mobclix/android/sdk/cf;->J:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mobclix/android/sdk/cf;->N:Z

    :goto_0
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->m:Lcom/mobclix/android/sdk/e;

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->q:Lcom/mobclix/android/sdk/ch;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/ch;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->J:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/cf;->O:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/cf;->N:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/mobclix/android/sdk/cf;->N:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/cf;->O:Z

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/cf;->O:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized m()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->m:Lcom/mobclix/android/sdk/e;

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->r:Ljava/util/HashMap;

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Application does not have the CAMERA permission."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->w:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->w:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    :cond_1
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->w:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->w:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->x:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :try_start_2
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v2, "getFlashMode"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->x:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_0
    :try_start_3
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string v2, "setFlashMode"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "torch"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->w:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/cf;->y:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized n()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->m:Lcom/mobclix/android/sdk/e;

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->r:Ljava/util/HashMap;

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Application does not have the CAMERA permission."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->w:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Flashlight isn\'t on."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->w:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "auto"

    iget-object v2, p0, Lcom/mobclix/android/sdk/cf;->x:Ljava/lang/String;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/mobclix/android/sdk/cf;->x:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    const-class v2, Landroid/hardware/Camera$Parameters;

    const-string v3, "setFlashMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    :try_start_3
    iget-object v1, p0, Lcom/mobclix/android/sdk/cf;->w:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->w:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->w:Landroid/hardware/Camera;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method final declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/cf;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/cf;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->l:Lcom/mobclix/android/sdk/cq;

    iget-object v0, v0, Lcom/mobclix/android/sdk/cq;->a:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/cf;->o:Z

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->l:Lcom/mobclix/android/sdk/cq;

    iget-object v0, v0, Lcom/mobclix/android/sdk/cq;->a:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ar;->a:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/cf;->n:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/cf;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/cf;->n:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/cf;->o:Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/cf;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->p:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->w:Landroid/hardware/Camera;

    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->x:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/cf;->y:Z

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->q:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->q:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->q:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->q:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->j:Ljava/lang/Thread;

    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->z:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->A:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->B:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->C:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->H:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->I:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->J:Landroid/location/LocationManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mobclix/android/sdk/cf;->K:F

    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->L:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/cf;->M:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-direct {p0}, Lcom/mobclix/android/sdk/cf;->l()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_1
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/mobclix/android/sdk/cf;->Q:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->R:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->S:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->T:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->U:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->V:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->W:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_5
    iput-boolean v0, p0, Lcom/mobclix/android/sdk/cf;->N:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/cf;->O:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method final declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->z:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->l:Lcom/mobclix/android/sdk/cq;

    iget-object v1, p0, Lcom/mobclix/android/sdk/cf;->z:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/mobclix/android/sdk/cf;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cq;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript: try { window.MOBCLIX.checkPermissionsForUserInteractionResponse(mAdViewPermissionsKey, \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"); } catch(e) { "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(\'User hasnt interacted with the ad yet.\'); }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/mobclix/android/sdk/cf;->l:Lcom/mobclix/android/sdk/cq;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/cq;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/cf;->Q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->H:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :try_start_2
    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->J:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    invoke-direct {p0}, Lcom/mobclix/android/sdk/cf;->n()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/mobclix/android/sdk/cf;->Q:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v2, p0, Lcom/mobclix/android/sdk/cf;->F:Landroid/hardware/SensorManager;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method final declared-synchronized b(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->A:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->l:Lcom/mobclix/android/sdk/cq;

    iget-object v1, p0, Lcom/mobclix/android/sdk/cf;->A:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/mobclix/android/sdk/cf;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cq;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/cf;->Q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->H:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    :try_start_2
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/cf;->M:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/mobclix/android/sdk/cf;->N:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->J:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/mobclix/android/sdk/cf;->K:F

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_1
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/cf;->O:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->J:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/mobclix/android/sdk/cf;->K:F

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    :try_start_3
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/cf;->y:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/mobclix/android/sdk/cf;->m()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_3
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/mobclix/android/sdk/cf;->Q:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v2, p0, Lcom/mobclix/android/sdk/cf;->F:Landroid/hardware/SensorManager;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_4
    :try_start_7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x539

    if-ne v1, v2, :cond_5

    iget-object v2, p0, Lcom/mobclix/android/sdk/cf;->F:Landroid/hardware/SensorManager;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/mobclix/android/sdk/cf;->F:Landroid/hardware/SensorManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iget-object v5, p0, Lcom/mobclix/android/sdk/cf;->I:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v1, v4, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/mobclix/android/sdk/cf;->F:Landroid/hardware/SensorManager;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/mobclix/android/sdk/cf;->F:Landroid/hardware/SensorManager;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget-object v5, p0, Lcom/mobclix/android/sdk/cf;->I:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v1, v2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_2

    :catch_3
    move-exception v1

    goto :goto_4
.end method

.method final declared-synchronized c(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->C:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->l:Lcom/mobclix/android/sdk/cq;

    iget-object v1, p0, Lcom/mobclix/android/sdk/cf;->C:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/mobclix/android/sdk/cf;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cq;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized d()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->B:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->l:Lcom/mobclix/android/sdk/cq;

    iget-object v1, p0, Lcom/mobclix/android/sdk/cf;->B:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/mobclix/android/sdk/cf;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cq;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final d(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->j:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->A:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->l:Lcom/mobclix/android/sdk/cq;

    iget-object v1, p0, Lcom/mobclix/android/sdk/cf;->A:Ljava/lang/String;

    const-string v2, "Image already being sent."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/mobclix/android/sdk/cf;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cq;->loadUrl(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/cg;

    iget-object v2, p0, Lcom/mobclix/android/sdk/cf;->i:Ljava/lang/String;

    invoke-direct {v1, p0, v2, p1}, Lcom/mobclix/android/sdk/cg;-><init>(Lcom/mobclix/android/sdk/cf;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/cf;->j:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->j:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto :goto_0
.end method

.method final declared-synchronized e()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/mobclix/android/sdk/cf;->b:Lcom/mobclix/android/sdk/ae;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobclix/android/sdk/cf;->b:Lcom/mobclix/android/sdk/ae;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/mobclix/android/sdk/ae;->o:Z

    :cond_0
    iget-object v1, p0, Lcom/mobclix/android/sdk/cf;->v:Lcom/mobclix/android/sdk/aq;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/aq;->d()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/mobclix/android/sdk/cf;->C:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->l:Lcom/mobclix/android/sdk/cq;

    iget-object v1, p0, Lcom/mobclix/android/sdk/cf;->C:Ljava/lang/String;

    const-string v2, "Error getting contact."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/mobclix/android/sdk/cf;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cq;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/mobclix/android/sdk/cf;->B:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eval(\'("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobclix/android/sdk/cm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")\')"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->l:Lcom/mobclix/android/sdk/cq;

    iget-object v2, p0, Lcom/mobclix/android/sdk/cf;->B:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/mobclix/android/sdk/cf;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cq;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized f()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->R:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->l:Lcom/mobclix/android/sdk/cq;

    iget-object v1, p0, Lcom/mobclix/android/sdk/cf;->R:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/mobclix/android/sdk/cf;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cq;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized g()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->S:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->l:Lcom/mobclix/android/sdk/cq;

    iget-object v1, p0, Lcom/mobclix/android/sdk/cf;->S:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/mobclix/android/sdk/cf;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cq;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized h()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->T:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->l:Lcom/mobclix/android/sdk/cq;

    iget-object v1, p0, Lcom/mobclix/android/sdk/cf;->T:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/mobclix/android/sdk/cf;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cq;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized i()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->U:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->l:Lcom/mobclix/android/sdk/cq;

    iget-object v1, p0, Lcom/mobclix/android/sdk/cf;->U:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/mobclix/android/sdk/cf;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cq;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized j()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->V:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->l:Lcom/mobclix/android/sdk/cq;

    iget-object v1, p0, Lcom/mobclix/android/sdk/cf;->V:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/mobclix/android/sdk/cf;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cq;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized k()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->W:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->l:Lcom/mobclix/android/sdk/cq;

    iget-object v1, p0, Lcom/mobclix/android/sdk/cf;->W:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/mobclix/android/sdk/cf;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/cq;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 6

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/mobclix/android/sdk/cf;->N:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mobclix/android/sdk/cf;->J:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    :goto_0
    iget-boolean v1, p0, Lcom/mobclix/android/sdk/cf;->O:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mobclix/android/sdk/cf;->J:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/mobclix/android/sdk/cf;->a(Landroid/location/Location;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    invoke-direct {p0, v1}, Lcom/mobclix/android/sdk/cf;->a(Landroid/location/Location;)V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/mobclix/android/sdk/cf;->a(Landroid/location/Location;)V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/mobclix/android/sdk/cf;->a(Landroid/location/Location;)V

    goto :goto_2

    :cond_4
    move-object v1, v2

    goto :goto_1

    :cond_5
    move-object v0, v2

    goto :goto_0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
