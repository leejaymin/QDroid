.class public abstract Lcom/mobclix/android/sdk/MobclixAdView;
.super Landroid/widget/ViewFlipper;


# static fields
.field private static G:Ljava/lang/String;

.field static e:I

.field static n:Ljava/util/HashMap;


# instance fields
.field A:Lcom/mobclix/android/sdk/ar;

.field B:Lcom/mobclix/android/sdk/bh;

.field C:Ljava/lang/String;

.field D:Lcom/mobclix/android/sdk/bz;

.field E:I

.field F:Lcom/mobclix/android/sdk/r;

.field private H:Lcom/mobclix/android/sdk/ce;

.field private I:Ljava/lang/Thread;

.field private J:Ljava/lang/String;

.field private K:Ljava/util/Timer;

.field private L:Z

.field private M:J

.field a:Ljava/lang/Object;

.field final b:Lcom/mobclix/android/sdk/p;

.field final c:Lcom/mobclix/android/sdk/s;

.field d:Z

.field f:Ljava/lang/String;

.field g:Z

.field h:Z

.field i:I

.field j:I

.field k:Z

.field l:Z

.field m:J

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:I

.field s:F

.field t:F

.field u:F

.field v:Ljava/util/HashSet;

.field w:Ljava/lang/String;

.field x:Ljava/lang/String;

.field y:I

.field z:Lcom/mobclix/android/sdk/ar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MobclixAdView"

    sput-object v0, Lcom/mobclix/android/sdk/MobclixAdView;->G:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/mobclix/android/sdk/MobclixAdView;->e:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mobclix/android/sdk/MobclixAdView;->n:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->a:Ljava/lang/Object;

    new-instance v0, Lcom/mobclix/android/sdk/p;

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/p;-><init>(B)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->b:Lcom/mobclix/android/sdk/p;

    new-instance v0, Lcom/mobclix/android/sdk/s;

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/s;-><init>(B)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->c:Lcom/mobclix/android/sdk/s;

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->d:Z

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->f:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->g:Z

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->h:Z

    iput v3, p0, Lcom/mobclix/android/sdk/MobclixAdView;->i:I

    iput v3, p0, Lcom/mobclix/android/sdk/MobclixAdView;->j:I

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->k:Z

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->l:Z

    iput-wide v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->m:J

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->o:Ljava/lang/String;

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->p:Ljava/lang/String;

    iput v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->r:I

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->u:F

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->v:Ljava/util/HashSet;

    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->J:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->w:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->x:Ljava/lang/String;

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->K:Ljava/util/Timer;

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->L:Z

    iput-wide v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->M:J

    iput v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->y:I

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->z:Lcom/mobclix/android/sdk/ar;

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->A:Lcom/mobclix/android/sdk/ar;

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->C:Ljava/lang/String;

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->D:Lcom/mobclix/android/sdk/bz;

    iput v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->E:I

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->F:Lcom/mobclix/android/sdk/r;

    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->q:Ljava/lang/String;

    :try_start_0
    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/MobclixAdView;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Lcom/mobclix/android/sdk/m; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->a:Ljava/lang/Object;

    new-instance v0, Lcom/mobclix/android/sdk/p;

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/p;-><init>(B)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->b:Lcom/mobclix/android/sdk/p;

    new-instance v0, Lcom/mobclix/android/sdk/s;

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/s;-><init>(B)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->c:Lcom/mobclix/android/sdk/s;

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->d:Z

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->f:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->g:Z

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->h:Z

    iput v3, p0, Lcom/mobclix/android/sdk/MobclixAdView;->i:I

    iput v3, p0, Lcom/mobclix/android/sdk/MobclixAdView;->j:I

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->k:Z

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->l:Z

    iput-wide v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->m:J

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->o:Ljava/lang/String;

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->p:Ljava/lang/String;

    iput v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->r:I

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->u:F

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->v:Ljava/util/HashSet;

    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->J:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->w:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->x:Ljava/lang/String;

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->K:Ljava/util/Timer;

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->L:Z

    iput-wide v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->M:J

    iput v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->y:I

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->z:Lcom/mobclix/android/sdk/ar;

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->A:Lcom/mobclix/android/sdk/ar;

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->C:Ljava/lang/String;

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->D:Lcom/mobclix/android/sdk/bz;

    iput v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->E:I

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->F:Lcom/mobclix/android/sdk/r;

    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->q:Ljava/lang/String;

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "background"

    invoke-interface {p3, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->r:I

    :cond_0
    :try_start_0
    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/MobclixAdView;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Lcom/mobclix/android/sdk/m; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/mobclix/android/sdk/MobclixAdView;)J
    .locals 2

    iget-wide v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->M:J

    return-wide v0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->b:Lcom/mobclix/android/sdk/p;

    invoke-virtual {v0, p0}, Lcom/mobclix/android/sdk/p;->a(Lcom/mobclix/android/sdk/MobclixAdView;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->c:Lcom/mobclix/android/sdk/s;

    invoke-virtual {v0, p0}, Lcom/mobclix/android/sdk/s;->a(Lcom/mobclix/android/sdk/MobclixAdView;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/mobclix/android/sdk/ce;->a()Lcom/mobclix/android/sdk/ce;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->H:Lcom/mobclix/android/sdk/ce;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mobclix/android/sdk/ce;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mobclix/android/sdk/MobclixAdView;->e:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->f:Ljava/lang/String;

    sget v1, Lcom/mobclix/android/sdk/MobclixAdView;->e:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mobclix/android/sdk/MobclixAdView;->e:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1}, Lcom/mobclix/android/sdk/e;->a(Landroid/app/Activity;)V

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/e;->x()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
    :try_end_1
    .catch Lcom/mobclix/android/sdk/m; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getUserAgentString"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/mobclix/android/sdk/e;->g(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/mobclix/android/sdk/m; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_1
    :try_start_3
    new-instance v0, Lcom/mobclix/android/sdk/bh;

    invoke-direct {v0}, Lcom/mobclix/android/sdk/bh;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->B:Lcom/mobclix/android/sdk/bh;

    new-instance v0, Lcom/mobclix/android/sdk/r;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->F:Lcom/mobclix/android/sdk/r;

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->F:Lcom/mobclix/android/sdk/r;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/r;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->F:Lcom/mobclix/android/sdk/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/r;->setBackgroundColor(I)V
    :try_end_3
    .catch Lcom/mobclix/android/sdk/m; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :goto_2
    sget-object v0, Lcom/mobclix/android/sdk/e;->a:[Ljava/lang/String;

    array-length v1, v0

    move v2, v7

    :goto_3
    if-lt v2, v1, :cond_3

    invoke-virtual {p0, v8}, Lcom/mobclix/android/sdk/MobclixAdView;->requestDisallowInterceptTouchEvent(Z)V

    iget v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->r:I

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixAdView;->setBackgroundColor(I)V

    :try_start_4
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->J:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    const-string v0, "com.admob.android.ads.AdManager"

    :try_start_5
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setTestDevices"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "TEST_EMULATOR"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mobclix/android/sdk/t;

    invoke-direct {v0, v7}, Lcom/mobclix/android/sdk/t;-><init>(B)V

    invoke-virtual {v0, p0}, Lcom/mobclix/android/sdk/t;->a(Lcom/mobclix/android/sdk/MobclixAdView;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :catch_0
    move-exception v0

    :try_start_6
    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    const-string v1, "Mozilla/5.0 (Linux; U; Android 1.1; en-us; dream) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2"

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/e;->g(Ljava/lang/String;)V
    :try_end_6
    .catch Lcom/mobclix/android/sdk/m; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    :catch_1
    move-exception v0

    throw v0

    :cond_3
    aget-object v3, v0, v2

    sget-object v4, Lcom/mobclix/android/sdk/MobclixAdView;->n:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/mobclix/android/sdk/MobclixAdView;->n:Ljava/util/HashMap;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto/16 :goto_2
.end method

.method static synthetic b(Lcom/mobclix/android/sdk/MobclixAdView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->f()V

    return-void
.end method

.method static synthetic c(Lcom/mobclix/android/sdk/MobclixAdView;)Lcom/mobclix/android/sdk/ce;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->H:Lcom/mobclix/android/sdk/ce;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->d:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->I:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->I:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->I:Ljava/lang/Thread;

    :cond_2
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->H:Lcom/mobclix/android/sdk/ce;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->f:Ljava/lang/String;

    sget-object v2, Lcom/mobclix/android/sdk/ce;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mobclix/android/sdk/ce;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->H:Lcom/mobclix/android/sdk/ce;

    const-string v2, "start_request"

    invoke-virtual {v1, v0, v2}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mobclix/android/sdk/q;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->b:Lcom/mobclix/android/sdk/p;

    invoke-direct {v1, v2, p0}, Lcom/mobclix/android/sdk/q;-><init>(Landroid/os/Handler;Lcom/mobclix/android/sdk/MobclixAdView;)V

    if-eqz p1, :cond_3

    invoke-virtual {v1, p1}, Lcom/mobclix/android/sdk/q;->b(Ljava/lang/String;)V

    :cond_3
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->I:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->I:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->H:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method private f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->K:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->K:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->K:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->K:Ljava/util/Timer;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p0

    :goto_0
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/mobclix/android/sdk/MobclixAdView;->z:Lcom/mobclix/android/sdk/ar;

    iget v2, v1, Lcom/mobclix/android/sdk/MobclixAdView;->E:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    iput v4, v1, Lcom/mobclix/android/sdk/MobclixAdView;->E:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v2, v1, Lcom/mobclix/android/sdk/MobclixAdView;->E:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/mobclix/android/sdk/MobclixAdView;->E:I

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/mobclix/android/sdk/MobclixAdView;->m:J

    iget-object v2, v1, Lcom/mobclix/android/sdk/MobclixAdView;->D:Lcom/mobclix/android/sdk/bz;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/mobclix/android/sdk/MobclixAdView;->D:Lcom/mobclix/android/sdk/bz;

    iget-object v2, v2, Lcom/mobclix/android/sdk/bz;->a:Lorg/json/JSONArray;

    if-nez v2, :cond_3

    :cond_2
    invoke-direct {v1, v0}, Lcom/mobclix/android/sdk/MobclixAdView;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v2, v1, Lcom/mobclix/android/sdk/MobclixAdView;->D:Lcom/mobclix/android/sdk/bz;

    iget v3, v2, Lcom/mobclix/android/sdk/bz;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/mobclix/android/sdk/bz;->b:I

    iget v3, v2, Lcom/mobclix/android/sdk/bz;->b:I

    iget-object v2, v2, Lcom/mobclix/android/sdk/bz;->a:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v3, v2, :cond_4

    move v2, v4

    :goto_2
    if-nez v2, :cond_5

    invoke-direct {v1, v0}, Lcom/mobclix/android/sdk/MobclixAdView;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    :try_start_0
    new-instance v0, Lcom/mobclix/android/sdk/ar;

    iget-object v2, v1, Lcom/mobclix/android/sdk/MobclixAdView;->D:Lcom/mobclix/android/sdk/bz;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/bz;->a()Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/mobclix/android/sdk/ar;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Lorg/json/JSONObject;Z)V

    iput-object v0, v1, Lcom/mobclix/android/sdk/MobclixAdView;->z:Lcom/mobclix/android/sdk/ar;

    iget-object v0, v1, Lcom/mobclix/android/sdk/MobclixAdView;->z:Lcom/mobclix/android/sdk/ar;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/ar;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/MobclixAdView;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->i:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->H:Lcom/mobclix/android/sdk/ce;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->f:Ljava/lang/String;

    sget-object v2, Lcom/mobclix/android/sdk/ce;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mobclix/android/sdk/ce;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->H:Lcom/mobclix/android/sdk/ce;

    const-string v2, "build_request"

    invoke-virtual {v1, v0, v2}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v5

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixAdView;->H:Lcom/mobclix/android/sdk/ce;

    const-string v7, "ad_feed_id_params"

    invoke-virtual {v6, v0, v7}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/e;->u()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "?p=android"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixAdView;->x:Ljava/lang/String;

    if-eqz v6, :cond_1a

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixAdView;->x:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    const-string v6, "&cr="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixAdView;->x:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    const-string v6, "&rt="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/e;->e()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "&rtv="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/e;->f()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixAdView;->H:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v6, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixAdView;->H:Lcom/mobclix/android/sdk/ce;

    const-string v7, "software_env"

    invoke-virtual {v6, v0, v7}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "&av="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/e;->h()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "&v="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {}, Lcom/mobclix/android/sdk/e;->s()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "&ct="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/e;->n()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixAdView;->H:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v6, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "&ue="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/e;->j()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "&andide="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/e;->k()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixAdView;->H:Lcom/mobclix/android/sdk/ce;

    const-string v7, "hardware_env"

    invoke-virtual {v6, v0, v7}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "&dm="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/e;->l()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "&hwdm="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/e;->m()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "&sv="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/e;->g()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "&ua="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/e;->x()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/e;->y()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/e;->z()Z

    move-result v6

    if-eqz v6, :cond_1c

    const-string v6, "&jb=1"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixAdView;->H:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v6, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixAdView;->H:Lcom/mobclix/android/sdk/ce;

    const-string v7, "ad_view_state_id_params"

    invoke-virtual {v6, v0, v7}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "&o="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget v7, p0, Lcom/mobclix/android/sdk/MobclixAdView;->y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget v6, p0, Lcom/mobclix/android/sdk/MobclixAdView;->y:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/mobclix/android/sdk/MobclixAdView;->y:I

    iget v6, p0, Lcom/mobclix/android/sdk/MobclixAdView;->i:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1d

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixAdView;->q:Ljava/lang/String;

    invoke-static {v6}, Lcom/mobclix/android/sdk/e;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1d

    const-string v6, "&ap=1"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixAdView;->J:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixAdView;->J:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "&as="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixAdView;->J:Ljava/lang/String;

    invoke-static {v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-boolean v6, p0, Lcom/mobclix/android/sdk/MobclixAdView;->h:Z

    if-eqz v6, :cond_3

    const-string v6, "&t=1"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixAdView;->H:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v6, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixAdView;->H:Lcom/mobclix/android/sdk/ce;

    const-string v7, "geo_lo"

    invoke-virtual {v6, v0, v7}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/e;->o()Ljava/lang/String;

    move-result-object v6

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "&ll="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/e;->o()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const-string v6, "&l="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/e;->p()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixAdView;->H:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v6, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/e;->q()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/e;->q()Ljava/lang/String;

    move-result-object v6

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "&mcc="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/e;->q()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    invoke-virtual {v5}, Lcom/mobclix/android/sdk/e;->r()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/e;->r()Ljava/lang/String;

    move-result-object v6

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "&mnc="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/e;->r()Ljava/lang/String;

    move-result-object v5

    const-string v7, "UTF-8"

    invoke-static {v5, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixAdView;->p:Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixAdView;->p:Ljava/lang/String;

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "&ip="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixAdView;->p:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixAdView;->H:Lcom/mobclix/android/sdk/ce;

    const-string v6, "keywords"

    invoke-virtual {v5, v0, v6}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :try_start_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->v:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_9
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->H:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v0, v5}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :try_start_2
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->H:Lcom/mobclix/android/sdk/ce;

    const-string v3, "query"

    invoke-virtual {v2, v0, v3}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_a
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->H:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v2, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->H:Lcom/mobclix/android/sdk/ce;

    const-string v3, "additional_params"

    invoke-virtual {v2, v0, v3}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    :try_start_3
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    sget-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v3, "dbd"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "&d="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v4, "dbd"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    sget-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v3, "dec"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "&e="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v4, "dec"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d
    sget-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v3, "den"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "&r="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v4, "den"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    sget-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v3, "dg"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "&g="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v4, "dg"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_f
    sget-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v3, "ddg"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "&dg="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v4, "ddg"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    sget-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v3, "dic"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "&m="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v4, "dic"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_11
    sget-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v3, "dms"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "&x="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v4, "dms"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_12
    sget-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v3, "drl"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "&j="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v4, "drl"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_13
    sget-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v3, "dac"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "&c="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v4, "dac"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_14
    sget-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v3, "dci"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "&ci="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v4, "dci"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_15
    sget-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v3, "dco"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "&co="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v4, "dco"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_16
    sget-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v3, "ddc"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "&dc="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v4, "ddc"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_17
    sget-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v3, "dpo"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "&z="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v4, "dpo"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_18
    sget-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v3, "drg"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "&re="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v0, Lcom/mobclix/android/sdk/ca;->b:Ljava/util/HashMap;

    const-string v4, "drg"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_19
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->H:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v0, v2}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    :try_start_4
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->H:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v2, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->H:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "request_url"

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixAdView;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/mobclix/android/sdk/ce;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    return-object v0

    :cond_1a
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixAdView;->w:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const-string v6, "&i="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/e;->b()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "&s="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixAdView;->q:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixAdView;->o:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixAdView;->o:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "&adurl="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixAdView;->o:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :goto_6
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->H:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->H:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->H:Lcom/mobclix/android/sdk/ce;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_4

    :cond_1b
    :try_start_5
    const-string v6, "&a="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixAdView;->w:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_1c
    const-string v6, "&jb=0"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_1d
    const-string v6, "&ap=0"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    :cond_1e
    :try_start_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/u;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Lcom/mobclix/android/sdk/u;->b()Ljava/lang/String;

    move-result-object v3

    :cond_1f
    if-nez v3, :cond_20

    const-string v3, ""

    :cond_20
    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-nez v7, :cond_23

    const-string v7, "&k="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v3, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_21
    :goto_7
    invoke-interface {v0}, Lcom/mobclix/android/sdk/u;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_22

    const-string v0, ""

    :cond_22
    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-nez v7, :cond_24

    const-string v7, "&q="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v0, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object v0, v5

    goto/16 :goto_6

    :cond_23
    const-string v7, "%2C"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v3, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_24
    const-string v7, "%2B"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v0, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    :catch_2
    move-exception v0

    move-object v0, v2

    goto/16 :goto_6
.end method

.method public final b()Z
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->j:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->L:Z

    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->f()V

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mobclix/android/sdk/MobclixAdView;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final e()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->I:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->I:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->f()V

    :goto_0
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->B:Lcom/mobclix/android/sdk/bh;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/bh;->a()V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mobclix/android/sdk/ar;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne v0, v1, :cond_3

    move v1, v3

    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixAdView;->removeViewAt(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/ar;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/ar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/bq;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/bq;->a()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.google.ads.AdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v1

    if-ne v0, v1, :cond_4

    :try_start_6
    const-string v0, "com.google.ads.AdView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "destroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixAdView;->removeViewAt(I)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.millennialmedia.android.MMAdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v1

    if-ne v0, v1, :cond_5

    :try_start_8
    const-string v0, "com.millennialmedia.android.MMAdView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "halt"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixAdView;->removeViewAt(I)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    :try_start_9
    invoke-virtual {p0, v0}, Lcom/mobclix/android/sdk/MobclixAdView;->removeViewAt(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto/16 :goto_0

    :catch_5
    move-exception v0

    goto/16 :goto_3
.end method

.method protected finalize()V
    .locals 1

    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->f()V

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->z:Lcom/mobclix/android/sdk/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->z:Lcom/mobclix/android/sdk/ar;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/ar;->d()V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->k:Z

    invoke-super {p0}, Landroid/widget/ViewFlipper;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    :try_start_1
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    move v1, v4

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildCount()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-result v0

    if-gt v0, v1, :cond_1

    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->k:Z

    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->f()V

    return-void

    :catch_0
    move-exception v0

    :try_start_4
    sget-object v0, Lcom/mobclix/android/sdk/MobclixAdView;->G:Ljava/lang/String;

    const-string v1, "Android project  issue 6191  workaround."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_6
    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    throw v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :cond_1
    :try_start_7
    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/mobclix/android/sdk/ar;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    if-ne v0, v2, :cond_4

    move v2, v4

    :goto_3
    :try_start_8
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildCount()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    move-result v0

    if-lt v2, v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    :try_start_9
    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/ar;

    invoke-virtual {v0, v2}, Lcom/mobclix/android/sdk/ar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/mobclix/android/sdk/bk;

    if-ne v0, v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/ar;

    invoke-virtual {v0, v2}, Lcom/mobclix/android/sdk/ar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/bk;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/bk;->a()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    :cond_3
    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_4
    :try_start_a
    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.google.ads.AdView"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    move-result-object v2

    if-ne v0, v2, :cond_5

    :try_start_b
    const-string v0, "com.google.ads.AdView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "destroy"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->removeViewAt(I)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_1

    :cond_5
    :try_start_c
    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "com.millennialmedia.android.MMAdView"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    move-result-object v2

    if-ne v0, v2, :cond_6

    :try_start_d
    const-string v0, "com.millennialmedia.android.MMAdView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "halt"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->removeViewAt(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto/16 :goto_1

    :cond_6
    :try_start_e
    invoke-virtual {p0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->removeViewAt(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v0

    goto/16 :goto_1

    :catch_5
    move-exception v0

    goto/16 :goto_1

    :catch_6
    move-exception v0

    goto/16 :goto_2

    :catch_7
    move-exception v0

    goto/16 :goto_4
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    sget-object v1, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    invoke-super {p0, v1}, Landroid/widget/ViewFlipper;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    move-object v1, v0

    const-string v2, "response"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->C:Ljava/lang/String;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->C:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_2

    :try_start_1
    new-instance v1, Lcom/mobclix/android/sdk/bz;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->C:Ljava/lang/String;

    check-cast p1, Landroid/os/Bundle;

    const-string v3, "nCreative"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/bz;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->D:Lcom/mobclix/android/sdk/bz;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/mobclix/android/sdk/e;->a(Landroid/app/Activity;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->I:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->I:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/mobclix/android/sdk/e;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->d:Z

    new-instance v1, Lcom/mobclix/android/sdk/ar;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->D:Lcom/mobclix/android/sdk/bz;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/bz;->a()Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/mobclix/android/sdk/ar;-><init>(Lcom/mobclix/android/sdk/MobclixAdView;Lorg/json/JSONObject;Z)V

    iput-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->z:Lcom/mobclix/android/sdk/ar;

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/mobclix/android/sdk/e;->c(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/mobclix/android/sdk/MobclixAdView;->setRefreshTime(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_2
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->l:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_3
    return-void

    :cond_3
    :try_start_5
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->v:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/widget/ViewFlipper;->onSaveInstanceState()Landroid/os/Parcelable;

    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->f()V

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->z:Lcom/mobclix/android/sdk/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->z:Lcom/mobclix/android/sdk/ar;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/ar;->d()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "response"

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "nCreative"

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->D:Lcom/mobclix/android/sdk/bz;

    iget v2, v2, Lcom/mobclix/android/sdk/bz;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->z:Lcom/mobclix/android/sdk/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->z:Lcom/mobclix/android/sdk/ar;

    iget-boolean v0, v0, Lcom/mobclix/android/sdk/ar;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->z:Lcom/mobclix/android/sdk/ar;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/ar;->f()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->z:Lcom/mobclix/android/sdk/ar;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/e;->E()V

    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->L:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/mobclix/android/sdk/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->M:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->M:J

    invoke-virtual {p0, v0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->setRefreshTime(J)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->L:Z

    :cond_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->z:Lcom/mobclix/android/sdk/ar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->z:Lcom/mobclix/android/sdk/ar;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/ar;->c()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/mobclix/android/sdk/e;->c(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->setRefreshTime(J)V

    goto :goto_0

    :cond_4
    :try_start_0
    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    :try_start_1
    invoke-static {}, Lcom/mobclix/android/sdk/e;->C()Lcom/mobclix/android/sdk/e;

    move-result-object v0

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->q:Lcom/mobclix/android/sdk/ch;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v1, v0, Lcom/mobclix/android/sdk/ch;->a:Ljava/util/Timer;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/mobclix/android/sdk/ch;->a:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    iget-object v1, v0, Lcom/mobclix/android/sdk/ch;->a:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mobclix/android/sdk/ch;->a:Ljava/util/Timer;

    :cond_5
    iget-object v1, v0, Lcom/mobclix/android/sdk/ch;->b:Landroid/location/LocationManager;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/mobclix/android/sdk/ch;->f:Landroid/location/LocationListener;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/mobclix/android/sdk/ch;->b:Landroid/location/LocationManager;

    iget-object v2, v0, Lcom/mobclix/android/sdk/ch;->f:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_6
    iget-object v1, v0, Lcom/mobclix/android/sdk/ch;->g:Landroid/location/LocationListener;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/mobclix/android/sdk/ch;->b:Landroid/location/LocationManager;

    iget-object v0, v0, Lcom/mobclix/android/sdk/ch;->g:Landroid/location/LocationListener;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_7
    :goto_3
    :try_start_3
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->z:Lcom/mobclix/android/sdk/ar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->z:Lcom/mobclix/android/sdk/ar;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/ar;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_3
.end method

.method public setAdSpace(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->J:Ljava/lang/String;

    return-void
.end method

.method public setAllowAutoplay(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->i:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCreativeId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->x:Ljava/lang/String;

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->p:Ljava/lang/String;

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->q:Ljava/lang/String;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->q:Ljava/lang/String;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->s:F

    int-to-float v0, v1

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->t:F

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->u:F

    iget v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->s:F

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->t:F

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setRefreshTime(J)V
    .locals 6

    const-wide/16 v4, 0x3a98

    invoke-direct {p0}, Lcom/mobclix/android/sdk/MobclixAdView;->f()V

    iput-wide p1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->M:J

    iget-wide v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->M:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->M:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    iput-wide v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->M:J

    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->K:Ljava/util/Timer;

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->K:Ljava/util/Timer;

    new-instance v1, Lcom/mobclix/android/sdk/q;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->b:Lcom/mobclix/android/sdk/p;

    invoke-direct {v1, v2, p0}, Lcom/mobclix/android/sdk/q;-><init>(Landroid/os/Handler;Lcom/mobclix/android/sdk/MobclixAdView;)V

    iget-wide v2, p0, Lcom/mobclix/android/sdk/MobclixAdView;->M:J

    iget-wide v4, p0, Lcom/mobclix/android/sdk/MobclixAdView;->M:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setRequestedAdUrlForAdView(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->o:Ljava/lang/String;

    return-void
.end method

.method public setRichMediaRequiresUserInteraction(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/mobclix/android/sdk/MobclixAdView;->j:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShouldRotate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->g:Z

    return-void
.end method

.method public setTestMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mobclix/android/sdk/MobclixAdView;->h:Z

    return-void
.end method
