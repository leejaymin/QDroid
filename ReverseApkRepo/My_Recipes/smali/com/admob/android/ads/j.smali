.class public final Lcom/admob/android/ads/j;
.super Ljava/lang/Object;
.source "Ad.java"

# interfaces
.implements Lcom/admob/android/ads/u$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/admob/android/ads/j$d;,
        Lcom/admob/android/ads/j$c;,
        Lcom/admob/android/ads/j$b;,
        Lcom/admob/android/ads/j$a;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:Landroid/graphics/Rect;

.field private static final c:Landroid/graphics/PointF;

.field private static final d:Landroid/graphics/PointF;

.field private static final e:Landroid/graphics/PointF;

.field private static final f:Landroid/graphics/Matrix;

.field private static final g:Landroid/graphics/RectF;

.field private static h:F

.field private static i:Landroid/os/Handler;


# instance fields
.field private A:Lcom/admob/android/ads/j$c;

.field private B:D

.field private C:D

.field private D:Lcom/admob/android/ads/q;

.field private E:Lcom/admob/android/ads/j$b;

.field private F:Z

.field private G:Lcom/admob/android/ads/s;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/graphics/Rect;

.field private o:J

.field private p:I

.field private q:I

.field private r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admob/android/ads/m;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/admob/android/ads/k;

.field private t:I

.field private u:I

.field private v:I

.field private w:Lorg/json/JSONObject;

.field private x:Lcom/admob/android/ads/u;

.field private y:I

.field private z:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f00

    const/16 v0, 0x66

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 146
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/admob/android/ads/j;->a:I

    .line 149
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/admob/android/ads/j;->b:Landroid/graphics/Rect;

    .line 160
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 161
    sput-object v0, Lcom/admob/android/ads/j;->c:Landroid/graphics/PointF;

    sput-object v0, Lcom/admob/android/ads/j;->d:Landroid/graphics/PointF;

    .line 163
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Lcom/admob/android/ads/j;->e:Landroid/graphics/PointF;

    .line 178
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/admob/android/ads/j;->f:Landroid/graphics/Matrix;

    .line 180
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/admob/android/ads/j;->g:Landroid/graphics/RectF;

    .line 210
    const/high16 v0, -0x4080

    sput v0, Lcom/admob/android/ads/j;->h:F

    .line 212
    const/4 v0, 0x0

    sput-object v0, Lcom/admob/android/ads/j;->i:Landroid/os/Handler;

    return-void
.end method

.method protected constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/high16 v4, -0x4010

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/j;->m:Ljava/util/Vector;

    .line 413
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/admob/android/ads/j;->o:J

    .line 414
    invoke-direct {p0, v2}, Lcom/admob/android/ads/j;->a(Lcom/admob/android/ads/m;)V

    .line 415
    iput-object v2, p0, Lcom/admob/android/ads/j;->j:Ljava/lang/String;

    .line 416
    iput-object v2, p0, Lcom/admob/android/ads/j;->n:Landroid/graphics/Rect;

    .line 417
    iput v3, p0, Lcom/admob/android/ads/j;->p:I

    .line 418
    iput v3, p0, Lcom/admob/android/ads/j;->q:I

    .line 419
    iput-object v2, p0, Lcom/admob/android/ads/j;->A:Lcom/admob/android/ads/j$c;

    .line 420
    iput v3, p0, Lcom/admob/android/ads/j;->u:I

    iput v3, p0, Lcom/admob/android/ads/j;->t:I

    .line 421
    const/high16 v0, -0x100

    iput v0, p0, Lcom/admob/android/ads/j;->v:I

    .line 422
    new-instance v0, Lcom/admob/android/ads/u;

    invoke-direct {v0, p0}, Lcom/admob/android/ads/u;-><init>(Lcom/admob/android/ads/u$a;)V

    iput-object v0, p0, Lcom/admob/android/ads/j;->x:Lcom/admob/android/ads/u;

    .line 423
    iput v6, p0, Lcom/admob/android/ads/j;->y:I

    .line 424
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/j;->z:Ljava/util/Vector;

    .line 425
    iput-wide v4, p0, Lcom/admob/android/ads/j;->B:D

    .line 426
    iput-wide v4, p0, Lcom/admob/android/ads/j;->C:D

    .line 429
    new-instance v0, Lcom/admob/android/ads/q;

    invoke-direct {v0}, Lcom/admob/android/ads/q;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/j;->D:Lcom/admob/android/ads/q;

    .line 430
    sget-object v0, Lcom/admob/android/ads/j$b;->c:Lcom/admob/android/ads/j$b;

    iput-object v0, p0, Lcom/admob/android/ads/j;->E:Lcom/admob/android/ads/j$b;

    .line 431
    const/high16 v0, 0x40a0

    sput v0, Lcom/admob/android/ads/j;->h:F

    .line 432
    iput-boolean v6, p0, Lcom/admob/android/ads/j;->F:Z

    .line 433
    iput-object v2, p0, Lcom/admob/android/ads/j;->G:Lcom/admob/android/ads/s;

    .line 434
    return-void
.end method

.method public static a(Landroid/content/Context;)F
    .locals 3
    .parameter

    .prologue
    .line 2869
    sget v0, Lcom/admob/android/ads/j;->h:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 2870
    const-string v0, "admob_prefs"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2871
    const-string v1, "timeout"

    const/high16 v2, 0x40a0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/admob/android/ads/j;->h:F

    .line 2873
    :cond_0
    sget v0, Lcom/admob/android/ads/j;->h:F

    return v0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;F)F
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2713
    float-to-double v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static a(ID)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 531
    int-to-double v0, p0

    const-wide/16 v2, 0x0

    cmpl-double v2, p1, v2

    if-lez v2, :cond_0

    mul-double/2addr v0, p1

    :cond_0
    double-to-int v0, v0

    return v0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide v6, 0x406fe00000000000L

    .line 2740
    .line 2742
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2746
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2748
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    mul-double/2addr v1, v6

    double-to-int v1, v1

    .line 2749
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    .line 2750
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    mul-double/2addr v3, v6

    double-to-int v3, v3

    .line 2751
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 2753
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2761
    :goto_0
    return v0

    .line 2757
    :catch_0
    move-exception v0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONArray;)Landroid/graphics/Matrix;
    .locals 4
    .parameter

    .prologue
    .line 2630
    const/4 v0, 0x0

    .line 2631
    invoke-static {p0}, Lcom/admob/android/ads/j;->b(Lorg/json/JSONArray;)[F

    move-result-object v1

    .line 2632
    if-eqz v1, :cond_0

    array-length v2, v1

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    .line 2634
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 2635
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 2639
    :cond_0
    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2644
    .line 2646
    invoke-static {p0, p1}, Lcom/admob/android/ads/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)[F

    move-result-object v0

    .line 2648
    if-eqz v0, :cond_0

    array-length v1, v0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 2650
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 2651
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    move-object v0, v1

    .line 2655
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method private static a(Landroid/graphics/RectF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 2044
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 2045
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 2046
    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    iget v3, p0, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2833
    .line 2835
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2839
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2841
    invoke-static {v0}, Lcom/admob/android/ads/j;->e(Lorg/json/JSONArray;)Landroid/graphics/PointF;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2849
    :goto_0
    return-object v0

    .line 2845
    :catch_0
    move-exception v0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2806
    .line 2808
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2812
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    double-to-int v2, v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    double-to-int v3, v3

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    double-to-int v0, v4

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v3, v1

    add-int/2addr v0, v2

    invoke-direct {v4, v1, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 2819
    :goto_0
    return-object v0

    .line 2816
    :catch_0
    move-exception v0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2777
    .line 2779
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2783
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/admob/android/ads/j;->d(Lorg/json/JSONArray;)Landroid/graphics/RectF;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2790
    :goto_0
    return-object v0

    .line 2787
    :catch_0
    move-exception v0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;Landroid/graphics/Rect;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 2242
    iget-object v0, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_1

    .line 2244
    const-string v0, "ia"

    const/high16 v1, 0x3f00

    invoke-static {p1, v0, v1}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v1

    .line 2245
    const-string v0, "epy"

    const/high16 v2, 0x3ee0

    invoke-static {p1, v0, v2}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v5

    .line 2246
    const-string v0, "bc"

    iget v2, p0, Lcom/admob/android/ads/j;->v:I

    invoke-static {p1, v0, v2}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    .line 2251
    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2254
    if-nez v6, :cond_0

    move-object v0, v7

    .line 2280
    :goto_0
    return-object v0

    .line 2259
    :cond_0
    iget-object v0, p0, Lcom/admob/android/ads/j;->z:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2262
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2264
    const/high16 v3, 0x437f

    mul-float/2addr v1, v3

    float-to-int v4, v1

    .line 2266
    const/4 v3, -0x1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/admob/android/ads/j;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIF)V

    .line 2268
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    invoke-virtual {v1}, Lcom/admob/android/ads/k;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2269
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2275
    :catch_0
    move-exception v0

    move-object v0, v7

    goto :goto_0

    :cond_1
    move-object v0, v7

    .line 2280
    goto :goto_0
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;[FLorg/json/JSONArray;[Ljava/lang/String;JLandroid/view/View;Landroid/graphics/Rect;Lorg/json/JSONObject;Lorg/json/JSONArray;)Landroid/view/animation/Animation;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1880
    const/4 v5, 0x0

    .line 1882
    add-int/lit8 v6, p0, 0x1

    .line 1884
    aget v7, p3, p0

    .line 1885
    aget p3, p3, v6

    .line 1887
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 1889
    :cond_0
    const-string p4, "AdMobSDK"

    const/16 p8, 0x6

    move-object/from16 v0, p4

    move/from16 v1, p8

    invoke-static {v0, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_a

    .line 1891
    const-string p4, "AdMobSDK"

    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct/range {p8 .. p8}, Ljava/lang/StringBuilder;-><init>()V

    const-string p9, "Could not read keyframe animation: keyPath("

    invoke-virtual/range {p8 .. p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p8

    move-object/from16 v0, p8

    move-object v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p8, ") or valueType("

    move-object v0, p1

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") is null."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p4

    move-object v1, p1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v5

    .line 1973
    :goto_0
    if-eqz p1, :cond_1

    .line 1976
    move-wide/from16 v0, p6

    long-to-float v0, v0

    move p2, v0

    mul-float/2addr p2, v7

    float-to-int p2, p2

    .line 1977
    sub-float/2addr p3, v7

    move-wide/from16 v0, p6

    long-to-float v0, v0

    move/from16 p4, v0

    mul-float p3, p3, p4

    float-to-int p3, p3

    int-to-long v8, p3

    .line 1981
    move-object v0, p1

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1983
    aget-object v5, p5, p0

    int-to-long v6, p2

    move-wide/from16 v10, p6

    invoke-static/range {v5 .. v11}, Lcom/admob/android/ads/j;->a(Ljava/lang/String;JJJ)Landroid/view/animation/Interpolator;

    move-result-object p0

    .line 1984
    if-eqz p0, :cond_1

    .line 1986
    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1990
    :cond_1
    return-object p1

    .line 1900
    :cond_2
    :try_start_0
    const-string v8, "position"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "P"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1906
    move-object/from16 v0, p4

    move v1, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/admob/android/ads/j;->e(Lorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object p1

    .line 1907
    move-object/from16 v0, p4

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p2

    invoke-static {p2}, Lcom/admob/android/ads/j;->e(Lorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object p2

    .line 1909
    move-object v0, p1

    move-object v1, p2

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    invoke-static {v0, v1, v2, v3}, Lcom/admob/android/ads/j;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/View;Landroid/graphics/Rect;)Lcom/admob/android/ads/am;

    move-result-object p1

    goto :goto_0

    .line 1911
    :cond_3
    const-string v8, "opacity"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "F"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1914
    move-object/from16 v0, p4

    move v1, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide p1

    double-to-float p1, p1

    .line 1915
    move-object/from16 v0, p4

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide p8

    move-wide/from16 v0, p8

    double-to-float v0, v0

    move p2, v0

    .line 1917
    invoke-static {p1, p2}, Lcom/admob/android/ads/j;->a(FF)Lcom/admob/android/ads/ak;

    move-result-object p1

    goto :goto_0

    .line 1919
    :cond_4
    const-string v8, "bounds"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "R"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1922
    move-object/from16 v0, p4

    move v1, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/admob/android/ads/j;->d(Lorg/json/JSONArray;)Landroid/graphics/RectF;

    move-result-object p1

    .line 1923
    move-object/from16 v0, p4

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p2

    invoke-static {p2}, Lcom/admob/android/ads/j;->d(Lorg/json/JSONArray;)Landroid/graphics/RectF;

    move-result-object p2

    .line 1925
    move-object v0, p1

    move-object v1, p2

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    invoke-static {v0, v1, v2, v3}, Lcom/admob/android/ads/j;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/view/View;Landroid/graphics/Rect;)Lcom/admob/android/ads/al;

    move-result-object p1

    goto/16 :goto_0

    .line 1927
    :cond_5
    const-string v8, "zPosition"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "F"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1930
    move-object/from16 v0, p4

    move v1, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide p1

    double-to-float p1, p1

    .line 1931
    move-object/from16 v0, p4

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide p9

    move-wide/from16 v0, p9

    double-to-float v0, v0

    move p2, v0

    .line 1933
    move v0, p1

    move v1, p2

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/j;->a(FFLandroid/view/View;)Lcom/admob/android/ads/ap;

    move-result-object p1

    goto/16 :goto_0

    .line 1935
    :cond_6
    const-string v8, "backgroundColor"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "C"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1938
    move-object/from16 v0, p4

    move v1, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/admob/android/ads/j;->c(Lorg/json/JSONArray;)I

    move-result p1

    .line 1939
    move-object/from16 v0, p4

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p2

    invoke-static {p2}, Lcom/admob/android/ads/j;->c(Lorg/json/JSONArray;)I

    move-result p2

    .line 1941
    move v0, p1

    move v1, p2

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/j;->a(IILandroid/view/View;)Lcom/admob/android/ads/aj;

    move-result-object p1

    goto/16 :goto_0

    .line 1943
    :cond_7
    const-string v8, "transform"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "AT"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1946
    if-eqz p11, :cond_9

    .line 1948
    move-object/from16 v0, p4

    move v1, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONArray;)Landroid/graphics/Matrix;

    .line 1949
    move-object/from16 v0, p4

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONArray;)Landroid/graphics/Matrix;

    .line 1952
    move-object/from16 v0, p11

    move v1, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p1

    .line 1953
    move-object/from16 v0, p11

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p2

    .line 1955
    move-object/from16 v0, p8

    move-object/from16 v1, p9

    move-object/from16 v2, p10

    move-object v3, p1

    move-object v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/admob/android/ads/j;->a(Landroid/view/View;Landroid/graphics/Rect;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;)Landroid/view/animation/Animation;

    move-result-object p1

    goto/16 :goto_0

    .line 1960
    :cond_8
    const-string p4, "AdMobSDK"

    const/16 p8, 0x6

    move-object/from16 v0, p4

    move/from16 v1, p8

    invoke-static {v0, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_9

    .line 1962
    const-string p4, "AdMobSDK"

    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct/range {p8 .. p8}, Ljava/lang/StringBuilder;-><init>()V

    const-string p9, "Could not read keyframe animation: could not interpret keyPath("

    invoke-virtual/range {p8 .. p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p8

    move-object/from16 v0, p8

    move-object v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p8, ") and valueType("

    move-object v0, p1

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") combination."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p4

    move-object v1, p1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    move-object p1, v5

    .line 1970
    goto/16 :goto_0

    :catch_0
    move-exception p1

    :cond_a
    move-object p1, v5

    goto/16 :goto_0
.end method

.method private static a(Landroid/view/View;Landroid/graphics/Rect;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;)Landroid/view/animation/Animation;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1715
    const-string v0, "tt"

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1719
    if-eqz v0, :cond_4

    .line 1722
    const-string v1, "t"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1726
    invoke-static {p3}, Lcom/admob/android/ads/j;->e(Lorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1727
    invoke-static {p4}, Lcom/admob/android/ads/j;->e(Lorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v1

    .line 1729
    invoke-static {v0, v1, p0, p1}, Lcom/admob/android/ads/j;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/View;Landroid/graphics/Rect;)Lcom/admob/android/ads/am;

    move-result-object v0

    .line 1762
    :goto_0
    return-object v0

    .line 1731
    :cond_0
    const-string v1, "r"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1734
    invoke-static {p3}, Lcom/admob/android/ads/j;->b(Lorg/json/JSONArray;)[F

    move-result-object v1

    .line 1735
    invoke-static {p4}, Lcom/admob/android/ads/j;->b(Lorg/json/JSONArray;)[F

    move-result-object v2

    .line 1738
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lcom/admob/android/ads/ah;->b(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v0

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v3, v0}, Lcom/admob/android/ads/j;->a(Landroid/graphics/RectF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v4

    new-instance v0, Lcom/admob/android/ads/an;

    iget v3, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/admob/android/ads/an;-><init>([F[FFFFZ)V

    goto :goto_0

    .line 1740
    :cond_1
    const-string v1, "sc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1742
    invoke-static {p3}, Lcom/admob/android/ads/j;->b(Lorg/json/JSONArray;)[F

    move-result-object v3

    .line 1743
    invoke-static {p4}, Lcom/admob/android/ads/j;->b(Lorg/json/JSONArray;)[F

    move-result-object v4

    .line 1745
    invoke-static {p0}, Lcom/admob/android/ads/ah;->b(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v7

    .line 1746
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    aget v1, v3, v6

    aget v2, v4, v6

    aget v3, v3, v5

    aget v4, v4, v5

    iget v6, v7, Landroid/graphics/PointF;->x:F

    iget v8, v7, Landroid/graphics/PointF;->y:F

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    goto :goto_0

    .line 1749
    :cond_2
    const-string v1, "sk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1751
    invoke-static {p3}, Lcom/admob/android/ads/j;->b(Lorg/json/JSONArray;)[F

    move-result-object v0

    .line 1752
    invoke-static {p4}, Lcom/admob/android/ads/j;->b(Lorg/json/JSONArray;)[F

    move-result-object v1

    .line 1754
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p0}, Lcom/admob/android/ads/ah;->b(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v2

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v3, v2}, Lcom/admob/android/ads/j;->a(Landroid/graphics/RectF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    new-instance v3, Lcom/admob/android/ads/ao;

    invoke-direct {v3, v0, v1, v2}, Lcom/admob/android/ads/ao;-><init>([F[FLandroid/graphics/PointF;)V

    move-object v0, v3

    goto/16 :goto_0

    .line 1756
    :cond_3
    const-string v1, "p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_4
    move-object v0, v3

    goto/16 :goto_0

    :cond_5
    move-object v0, v3

    goto/16 :goto_0

    :cond_6
    move-object v0, v3

    goto/16 :goto_0
.end method

.method private a(Lorg/json/JSONArray;Lorg/json/JSONObject;Landroid/view/View;Landroid/graphics/Rect;)Landroid/view/animation/AnimationSet;
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1442
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x0

    invoke-direct {v12, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1444
    const/4 v5, 0x0

    move v13, v5

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v13, v5, :cond_e

    .line 1449
    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 1452
    const/4 v5, 0x0

    .line 1456
    const-string v6, "t"

    const/4 v7, 0x0

    invoke-virtual {v14, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1459
    const-string v7, "d"

    const/high16 v8, 0x3e80

    invoke-static {v14, v7, v8}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v7

    .line 1460
    float-to-double v7, v7

    const-wide v9, 0x408f400000000000L

    mul-double/2addr v7, v9

    double-to-int v15, v7

    .line 1462
    const-string v7, "B"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1464
    const/4 v5, 0x0

    const-string v6, "kp"

    const/4 v7, 0x0

    invoke-virtual {v14, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "vt"

    const/4 v8, 0x0

    invoke-virtual {v14, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_0

    if-nez v7, :cond_5

    :cond_0
    const-string v8, "AdMobSDK"

    const/4 v9, 0x6

    invoke-static {v8, v9}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "AdMobSDK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not read basic animation: keyPath("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ") or valueType("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") is null."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v5

    :goto_1
    if-eqz v16, :cond_2

    const-string v5, "tf"

    const/4 v6, 0x0

    invoke-virtual {v14, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    invoke-static/range {v5 .. v11}, Lcom/admob/android/ads/j;->a(Ljava/lang/String;JJJ)Landroid/view/animation/Interpolator;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :cond_1
    if-eqz v5, :cond_2

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_2
    move-object/from16 v5, v16

    .line 1472
    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    .line 1474
    int-to-long v6, v15

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1477
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v5

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Landroid/view/animation/Animation;Landroid/view/animation/AnimationSet;)V

    .line 1479
    invoke-virtual {v12, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1481
    invoke-virtual {v5}, Landroid/view/animation/Animation;->getDuration()J

    .line 1482
    :cond_4
    add-int/lit8 v5, v13, 0x1

    move v13, v5

    goto/16 :goto_0

    .line 1464
    :cond_5
    const-string v8, "position"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "P"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v5, "fv"

    sget-object v6, Lcom/admob/android/ads/j;->c:Landroid/graphics/PointF;

    invoke-static {v14, v5, v6}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v5

    const-string v6, "tv"

    sget-object v7, Lcom/admob/android/ads/j;->d:Landroid/graphics/PointF;

    invoke-static {v14, v6, v7}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/admob/android/ads/j;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/View;Landroid/graphics/Rect;)Lcom/admob/android/ads/am;

    move-result-object v5

    move-object/from16 v16, v5

    goto :goto_1

    :cond_6
    const-string v8, "opacity"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "F"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v5, "fv"

    const/4 v6, 0x0

    invoke-static {v14, v5, v6}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v5

    const-string v6, "tv"

    const/4 v7, 0x0

    invoke-static {v14, v6, v7}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v6

    invoke-static {v5, v6}, Lcom/admob/android/ads/j;->a(FF)Lcom/admob/android/ads/ak;

    move-result-object v5

    move-object/from16 v16, v5

    goto/16 :goto_1

    :cond_7
    const-string v8, "transform"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "AT"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v5, "fv"

    sget-object v6, Lcom/admob/android/ads/j;->f:Landroid/graphics/Matrix;

    invoke-static {v14, v5, v6}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    const-string v5, "fv"

    sget-object v6, Lcom/admob/android/ads/j;->f:Landroid/graphics/Matrix;

    invoke-static {v14, v5, v6}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    const-string v5, "tfv"

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const-string v6, "ttv"

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object v2, v14

    move-object v3, v5

    move-object v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/admob/android/ads/j;->a(Landroid/view/View;Landroid/graphics/Rect;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;)Landroid/view/animation/Animation;

    move-result-object v5

    move-object/from16 v16, v5

    goto/16 :goto_1

    :cond_8
    const-string v8, "bounds"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "R"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v5, "fv"

    sget-object v6, Lcom/admob/android/ads/j;->g:Landroid/graphics/RectF;

    invoke-static {v14, v5, v6}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v5

    const-string v6, "tv"

    sget-object v7, Lcom/admob/android/ads/j;->g:Landroid/graphics/RectF;

    invoke-static {v14, v6, v7}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/admob/android/ads/j;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/view/View;Landroid/graphics/Rect;)Lcom/admob/android/ads/al;

    move-result-object v5

    move-object/from16 v16, v5

    goto/16 :goto_1

    :cond_9
    const-string v8, "zPosition"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, "F"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v5, "fv"

    const/4 v6, 0x0

    invoke-static {v14, v5, v6}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v5

    const-string v6, "tv"

    const/4 v7, 0x0

    invoke-static {v14, v6, v7}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v6

    move v0, v5

    move v1, v6

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/j;->a(FFLandroid/view/View;)Lcom/admob/android/ads/ap;

    move-result-object v5

    move-object/from16 v16, v5

    goto/16 :goto_1

    :cond_a
    const-string v8, "backgroundColor"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "C"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v5, "fv"

    const/4 v6, 0x0

    invoke-static {v14, v5, v6}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "tv"

    const/4 v7, 0x0

    invoke-static {v14, v6, v7}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v6

    move v0, v5

    move v1, v6

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/j;->a(IILandroid/view/View;)Lcom/admob/android/ads/aj;

    move-result-object v5

    move-object/from16 v16, v5

    goto/16 :goto_1

    :cond_b
    const-string v8, "AdMobSDK"

    const/4 v9, 0x6

    invoke-static {v8, v9}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "AdMobSDK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not read basic animation: could not interpret keyPath("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ") and valueType("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") combination."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object/from16 v16, v5

    goto/16 :goto_1

    .line 1467
    :cond_d
    const-string v7, "K"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1469
    int-to-long v9, v15

    move-object/from16 v5, p0

    move-object v6, v14

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v5 .. v10}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Landroid/view/View;Landroid/graphics/Rect;J)Landroid/view/animation/AnimationSet;

    move-result-object v5

    goto/16 :goto_2

    .line 1490
    :cond_e
    if-eqz p2, :cond_f

    .line 1493
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v12

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Landroid/view/animation/Animation;Landroid/view/animation/AnimationSet;)V

    .line 1496
    :cond_f
    return-object v12
.end method

.method private a(Lorg/json/JSONObject;Landroid/view/View;Landroid/graphics/Rect;J)Landroid/view/animation/AnimationSet;
    .locals 18
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1825
    const-string v3, "vt"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1826
    const-string v3, "kt"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/admob/android/ads/j;->b(Lorg/json/JSONObject;Ljava/lang/String;)[F

    move-result-object v6

    .line 1828
    const-string v3, "vs"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 1830
    const-string v3, "tfs"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1831
    const-string v3, "ttvs"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 1834
    array-length v15, v6

    .line 1835
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 1836
    array-length v4, v8

    .line 1838
    if-ne v15, v3, :cond_0

    add-int/lit8 v9, v4, 0x1

    if-eq v3, v9, :cond_2

    :cond_0
    const/4 v9, 0x0

    aget v9, v6, v9

    float-to-double v9, v9

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_2

    const/4 v9, 0x1

    sub-int v9, v15, v9

    aget v9, v6, v9

    float-to-double v9, v9

    const-wide/high16 v11, 0x3ff0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_2

    .line 1841
    const-string v5, "AdMobSDK"

    const/4 v7, 0x6

    invoke-static {v5, v7}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1843
    const-string v5, "AdMobSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keyframe animations were invalid: numKeyTimes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " numKeyValues="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " numKeyFunctions="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " keyTimes[0]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v6, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " keyTimes["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    sub-int v4, v15, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    sub-int v4, v15, v4

    aget v4, v6, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    :cond_1
    const/4 v3, 0x0

    .line 1873
    :goto_0
    return-object v3

    .line 1850
    :cond_2
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    move v1, v3

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1852
    const-string v3, "kp"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1853
    invoke-static/range {p1 .. p1}, Lcom/admob/android/ads/j;->c(Lorg/json/JSONObject;)I

    move-result v17

    .line 1856
    const/4 v3, 0x0

    :goto_1
    const/4 v9, 0x1

    sub-int v9, v15, v9

    if-ge v3, v9, :cond_4

    move-wide/from16 v9, p4

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p1

    .line 1859
    invoke-static/range {v3 .. v14}, Lcom/admob/android/ads/j;->a(ILjava/lang/String;Ljava/lang/String;[FLorg/json/JSONArray;[Ljava/lang/String;JLandroid/view/View;Landroid/graphics/Rect;Lorg/json/JSONObject;Lorg/json/JSONArray;)Landroid/view/animation/Animation;

    move-result-object v9

    .line 1862
    if-eqz v9, :cond_3

    .line 1865
    move-object v0, v9

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 1867
    move-object/from16 v0, v16

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1856
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1870
    :cond_4
    const-string v3, "fm"

    const-string v4, "r"

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1871
    move-object v0, v3

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/admob/android/ads/j;->a(Ljava/lang/String;Landroid/view/animation/Animation;)V

    move-object/from16 v3, v16

    .line 1873
    goto :goto_0
.end method

.method private static a(Ljava/lang/String;JJJ)Landroid/view/animation/Interpolator;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 2605
    const/4 v0, 0x0

    const-string v1, "i"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object v1, v0

    .line 2607
    :goto_0
    if-eqz v1, :cond_3

    .line 2609
    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    cmp-long v0, p3, v2

    if-eqz v0, :cond_3

    cmp-long v0, p5, v2

    if-eqz v0, :cond_3

    new-instance v0, Lcom/admob/android/ads/ai;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/admob/android/ads/ai;-><init>(Landroid/view/animation/Interpolator;JJJ)V

    .line 2611
    :goto_1
    return-object v0

    .line 2605
    :cond_0
    const-string v1, "o"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object v1, v0

    goto :goto_0

    :cond_1
    const-string v1, "io"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string v1, "l"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method private static a(IILandroid/view/View;)Lcom/admob/android/ads/aj;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1996
    const/4 v0, 0x0

    .line 1998
    if-eq p0, p1, :cond_0

    .line 2000
    new-instance v0, Lcom/admob/android/ads/aj;

    invoke-direct {v0, p0, p1, p2}, Lcom/admob/android/ads/aj;-><init>(IILandroid/view/View;)V

    .line 2003
    :cond_0
    return-object v0
.end method

.method private static a(FF)Lcom/admob/android/ads/ak;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1799
    const/4 v0, 0x0

    .line 1801
    cmpl-float v1, p0, p1

    if-eqz v1, :cond_0

    .line 1803
    new-instance v0, Lcom/admob/android/ads/ak;

    invoke-direct {v0, p0, p1}, Lcom/admob/android/ads/ak;-><init>(FF)V

    .line 1806
    :cond_0
    return-object v0
.end method

.method private static a(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/view/View;Landroid/graphics/Rect;)Lcom/admob/android/ads/al;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2021
    const/4 v0, 0x0

    .line 2023
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2025
    invoke-static {p2}, Lcom/admob/android/ads/ah;->b(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v0

    .line 2026
    invoke-static {p0, v0}, Lcom/admob/android/ads/j;->a(Landroid/graphics/RectF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v6

    .line 2028
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 2029
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v4, v1

    .line 2031
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v0

    .line 2032
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float v3, v2, v4

    .line 2033
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v0

    .line 2034
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v4, v0, v4

    .line 2036
    new-instance v0, Lcom/admob/android/ads/al;

    iget v5, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-direct/range {v0 .. v6}, Lcom/admob/android/ads/al;-><init>(FFFFFF)V

    .line 2039
    :cond_0
    return-object v0
.end method

.method private static a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/View;Landroid/graphics/Rect;)Lcom/admob/android/ads/am;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1811
    const/4 v0, 0x0

    .line 1812
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1814
    invoke-static {p2}, Lcom/admob/android/ads/ah;->b(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    iget v3, p3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v3

    iget v3, p3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget v3, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v2

    iput v3, p0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v0

    iput v3, p0, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    sub-float v2, v3, v2

    iput v2, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    sub-float v0, v2, v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 1816
    new-instance v0, Lcom/admob/android/ads/am;

    iget v2, p0, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v6, p0, Landroid/graphics/PointF;->y:F

    iget v8, p1, Landroid/graphics/PointF;->y:F

    move v3, v1

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Lcom/admob/android/ads/am;-><init>(IFIFIFIF)V

    .line 1819
    :cond_0
    return-object v0
.end method

.method private static a(FFLandroid/view/View;)Lcom/admob/android/ads/ap;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2008
    const/4 v0, 0x0

    .line 2010
    cmpl-float v1, p0, p1

    if-eqz v1, :cond_0

    .line 2012
    new-instance v0, Lcom/admob/android/ads/ap;

    invoke-direct {v0, p0, p1, p2}, Lcom/admob/android/ads/ap;-><init>(FFLandroid/view/View;)V

    .line 2015
    :cond_0
    return-object v0
.end method

.method public static a(Lcom/admob/android/ads/m;Landroid/content/Context;Lorg/json/JSONObject;IIILcom/admob/android/ads/k;Lcom/admob/android/ads/j$b;)Lcom/admob/android/ads/j;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "timeout"

    .line 349
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v5

    .line 373
    :cond_1
    :goto_0
    return-object v0

    .line 358
    :cond_2
    new-instance v0, Lcom/admob/android/ads/j;

    invoke-direct {v0}, Lcom/admob/android/ads/j;-><init>()V

    .line 359
    iput-object p7, v0, Lcom/admob/android/ads/j;->E:Lcom/admob/android/ads/j$b;

    .line 360
    invoke-direct {v0, p0}, Lcom/admob/android/ads/j;->a(Lcom/admob/android/ads/m;)V

    .line 361
    iput p3, v0, Lcom/admob/android/ads/j;->t:I

    .line 362
    iput p4, v0, Lcom/admob/android/ads/j;->u:I

    .line 363
    iput p5, v0, Lcom/admob/android/ads/j;->v:I

    .line 364
    iput-object p6, v0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    .line 365
    invoke-static {p1}, Lcom/admob/android/ads/s;->a(Landroid/content/Context;)Lcom/admob/android/ads/s;

    move-result-object v1

    iput-object v1, v0, Lcom/admob/android/ads/j;->G:Lcom/admob/android/ads/s;

    iget-object v1, v0, Lcom/admob/android/ads/j;->x:Lcom/admob/android/ads/u;

    iget-object v2, v0, Lcom/admob/android/ads/j;->G:Lcom/admob/android/ads/s;

    iput-object v2, v1, Lcom/admob/android/ads/u;->c:Lcom/admob/android/ads/s;

    .line 367
    iget-object v1, v0, Lcom/admob/android/ads/j;->E:Lcom/admob/android/ads/j$b;

    sget-object v2, Lcom/admob/android/ads/j$b;->b:Lcom/admob/android/ads/j$b;

    if-ne v1, v2, :cond_6

    const-string v1, "timeout"

    invoke-static {p2, v6, v3}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v1

    cmpl-float v2, v1, v3

    if-lez v2, :cond_3

    sput v1, Lcom/admob/android/ads/j;->h:F

    const-string v1, "admob_prefs"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "timeout"

    sget v2, Lcom/admob/android/ads/j;->h:F

    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    iget-object v1, v0, Lcom/admob/android/ads/j;->D:Lcom/admob/android/ads/q;

    iget-object v2, v0, Lcom/admob/android/ads/j;->x:Lcom/admob/android/ads/u;

    invoke-virtual {v1, p1, p2, v2}, Lcom/admob/android/ads/q;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/admob/android/ads/u;)V

    iget-object v1, v0, Lcom/admob/android/ads/j;->D:Lcom/admob/android/ads/q;

    iget-object v1, v1, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    iput-boolean v4, v1, Lcom/admob/android/ads/r;->l:Z

    iget-object v1, v0, Lcom/admob/android/ads/j;->D:Lcom/admob/android/ads/q;

    iget-object v1, v1, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    iget-object v1, v1, Lcom/admob/android/ads/r;->a:Lcom/admob/android/ads/j$a;

    sget-object v2, Lcom/admob/android/ads/j$a;->d:Lcom/admob/android/ads/j$a;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/admob/android/ads/j$a;->c:Lcom/admob/android/ads/j$a;

    if-eq v1, v2, :cond_4

    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    move-object v0, v5

    .line 373
    goto :goto_0

    .line 367
    :cond_4
    iget-object v1, v0, Lcom/admob/android/ads/j;->x:Lcom/admob/android/ads/u;

    invoke-virtual {v1}, Lcom/admob/android/ads/u;->b()V

    iget-object v1, v0, Lcom/admob/android/ads/j;->x:Lcom/admob/android/ads/u;

    invoke-virtual {v1}, Lcom/admob/android/ads/u;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/admob/android/ads/j;->k()V

    :cond_5
    move v1, v4

    goto :goto_1

    :cond_6
    invoke-direct {v0, p1, p2}, Lcom/admob/android/ads/j;->a(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v1

    goto :goto_1
.end method

.method public static a(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIIF)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2306
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p5

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 2307
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2309
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 2310
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2311
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2313
    invoke-virtual {p0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2316
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {p4, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 2321
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v2, 0x1

    aput p2, v3, v2

    .line 2324
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v2, v4, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 2327
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2328
    invoke-virtual {v2, p0}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 2331
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2333
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 2334
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2335
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2337
    invoke-virtual {p0, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2338
    return-void
.end method

.method public static a(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    sput-object p0, Lcom/admob/android/ads/j;->i:Landroid/os/Handler;

    .line 216
    return-void
.end method

.method private static a(Landroid/view/animation/Animation;IIFLjava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1551
    if-eqz p5, :cond_0

    .line 1553
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 1555
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 1556
    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1557
    invoke-virtual {p0}, Landroid/view/animation/Animation;->startNow()V

    .line 1558
    invoke-virtual {p0, p3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 1560
    invoke-static {p4, p0}, Lcom/admob/android/ads/j;->a(Ljava/lang/String;Landroid/view/animation/Animation;)V

    .line 1561
    return-void
.end method

.method private a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lorg/json/JSONObject;)V
    .locals 19
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2456
    const-string v5, "bw"

    const/high16 v6, 0x3f00

    move-object/from16 v0, p3

    move-object v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v5

    .line 2457
    const-string v6, "bdc"

    sget v7, Lcom/admob/android/ads/j;->a:I

    move-object/from16 v0, p3

    move-object v1, v6

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v6

    .line 2458
    const-string v7, "br"

    const/high16 v8, 0x40d0

    move-object/from16 v0, p3

    move-object v1, v7

    move v2, v8

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v7

    .line 2461
    const/high16 v8, 0x3f80

    cmpg-float v8, v5, v8

    if-gez v8, :cond_0

    .line 2463
    const/high16 v5, 0x3f80

    .line 2466
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 2467
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 2473
    :try_start_0
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 2474
    if-nez v10, :cond_1

    .line 2529
    :goto_0
    return-void

    .line 2478
    :cond_1
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 2480
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2482
    new-instance v12, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-direct {v12, v13, v14}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    .line 2483
    invoke-virtual {v11, v12}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 2486
    add-float v12, v7, v5

    .line 2488
    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    .line 2489
    new-instance v14, Landroid/graphics/RectF;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move v0, v8

    int-to-float v0, v0

    move/from16 v17, v0

    move v0, v9

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2490
    sget-object v15, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v13, v14, v12, v12, v15}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 2493
    sget-object v12, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v11, v13, v12}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 2494
    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v15, Landroid/graphics/Paint;

    const/16 v16, 0x3

    invoke-direct/range {v15 .. v16}, Landroid/graphics/Paint;-><init>(I)V

    move-object v0, v11

    move-object/from16 v1, p2

    move v2, v12

    move v3, v13

    move-object v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2497
    sget-object v12, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v11, v14, v12}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 2503
    new-instance v12, Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Landroid/graphics/Paint;-><init>(I)V

    .line 2504
    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2505
    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2506
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2508
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 2509
    const/high16 v13, 0x4000

    div-float/2addr v5, v13

    .line 2510
    new-instance v13, Landroid/graphics/RectF;

    int-to-float v8, v8

    sub-float/2addr v8, v5

    int-to-float v9, v9

    sub-float/2addr v9, v5

    invoke-direct {v13, v5, v5, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v13, v7, v7, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 2513
    invoke-virtual {v11, v6, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2517
    if-eqz p2, :cond_2

    .line 2519
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v5, v10

    .line 2526
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admob/android/ads/j;->z:Ljava/util/Vector;

    move-object v6, v0

    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2528
    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 2522
    :catch_0
    move-exception v5

    move-object/from16 v5, p2

    .line 2524
    goto :goto_1
.end method

.method static synthetic a(Lcom/admob/android/ads/j;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/admob/android/ads/j;->r()V

    return-void
.end method

.method static synthetic a(Lcom/admob/android/ads/j;Lorg/json/JSONArray;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 79
    iget-object v0, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/admob/android/ads/k;->setPadding(IIII)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v0, v5

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/admob/android/ads/j;->b(Lorg/json/JSONObject;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/admob/android/ads/j;->r()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    move v4, v5

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    :cond_3
    iget-object v5, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    invoke-virtual {v5, v0}, Lcom/admob/android/ads/k;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    invoke-virtual {v0}, Lcom/admob/android/ads/k;->invalidate()V

    iget-object v0, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    invoke-virtual {v0}, Lcom/admob/android/ads/k;->requestLayout()V

    iget-boolean v0, p0, Lcom/admob/android/ads/j;->F:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    invoke-virtual {v0}, Lcom/admob/android/ads/k;->b()V

    :cond_5
    iget-object v0, p0, Lcom/admob/android/ads/j;->x:Lcom/admob/android/ads/u;

    invoke-virtual {v0}, Lcom/admob/android/ads/u;->d()V

    invoke-direct {p0}, Lcom/admob/android/ads/j;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/admob/android/ads/j;->q()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/admob/android/ads/j;->r()V

    goto :goto_1
.end method

.method private a(Lcom/admob/android/ads/m;)V
    .locals 1
    .parameter

    .prologue
    .line 606
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/j;->r:Ljava/lang/ref/WeakReference;

    .line 607
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 499
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/admob/android/ads/j;->m:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/view/animation/Animation;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v7, "r"

    .line 1565
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 1569
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1572
    :try_start_0
    const-string v1, "setFillEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1573
    if-eqz v0, :cond_0

    .line 1575
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1583
    :cond_0
    :goto_0
    const-string v0, "b"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1585
    invoke-virtual {p1, v5}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 1586
    invoke-virtual {p1, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1606
    :cond_1
    :goto_1
    return-void

    .line 1588
    :cond_2
    const-string v0, "fb"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "r"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1591
    :cond_3
    invoke-virtual {p1, v5}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 1592
    invoke-virtual {p1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    goto :goto_1

    .line 1594
    :cond_4
    const-string v0, "f"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1596
    invoke-virtual {p1, v6}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 1597
    invoke-virtual {p1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    goto :goto_1

    .line 1599
    :cond_5
    const-string v0, "r"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1602
    invoke-virtual {p1, v6}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 1603
    invoke-virtual {p1, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    goto :goto_1

    .line 1578
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;Landroid/view/animation/Animation;Landroid/view/animation/AnimationSet;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v10, 0x3f80

    const/4 v6, 0x0

    .line 1520
    const-string v0, "bt"

    invoke-static {p1, v0, v6}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v0

    .line 1522
    const-string v1, "to"

    invoke-static {p1, v1, v6}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v2

    .line 1524
    invoke-static {p1}, Lcom/admob/android/ads/j;->c(Lorg/json/JSONObject;)I

    move-result v1

    .line 1526
    const-string v3, "ar"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1530
    const-string v3, "fm"

    const-string v4, "r"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1531
    const-string v3, "s"

    invoke-static {p1, v3, v10}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v3

    .line 1537
    add-float/2addr v0, v6

    add-float/2addr v0, v2

    float-to-double v6, v0

    const-wide v8, 0x408f400000000000L

    mul-double/2addr v6, v8

    double-to-int v2, v6

    .line 1538
    div-float v3, v10, v3

    move-object v0, p2

    .line 1540
    invoke-static/range {v0 .. v5}, Lcom/admob/android/ads/j;->a(Landroid/view/animation/Animation;IIFLjava/lang/String;Z)V

    .line 1542
    if-eqz p3, :cond_0

    move-object v0, p3

    .line 1544
    invoke-static/range {v0 .. v5}, Lcom/admob/android/ads/j;->a(Landroid/view/animation/Animation;IIFLjava/lang/String;Z)V

    .line 1546
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v6, "AdMobSDK"

    .line 914
    const-string v0, "o"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 915
    if-eqz v0, :cond_4

    .line 916
    iget-object v1, p0, Lcom/admob/android/ads/j;->D:Lcom/admob/android/ads/q;

    invoke-virtual {v1, p1, v0, v3}, Lcom/admob/android/ads/q;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/admob/android/ads/u;)V

    .line 944
    :cond_0
    :goto_0
    const-string v0, "jsonp_url"

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 945
    const-string v1, "tracking_url"

    invoke-virtual {p2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 948
    iget-object v2, p0, Lcom/admob/android/ads/j;->D:Lcom/admob/android/ads/q;

    iget-object v2, v2, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    invoke-virtual {v2, v0, v5}, Lcom/admob/android/ads/r;->a(Ljava/lang/String;Z)V

    .line 949
    iget-object v0, p0, Lcom/admob/android/ads/j;->D:Lcom/admob/android/ads/q;

    iget-object v0, v0, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    invoke-virtual {v0, v1, v4}, Lcom/admob/android/ads/r;->a(Ljava/lang/String;Z)V

    .line 952
    const-string v0, "refreshInterval"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 954
    const-string v0, "refreshInterval"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/admob/android/ads/j;->B:D

    .line 957
    :cond_1
    const-string v0, "density"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 959
    const-string v0, "density"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/admob/android/ads/j;->C:D

    .line 968
    :goto_1
    const-string v0, "d"

    invoke-static {p2, v0, v3}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 969
    if-nez v0, :cond_2

    .line 971
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x43a0

    const/high16 v2, 0x4240

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 974
    :cond_2
    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v1, v1, v7

    if-ltz v1, :cond_3

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v7

    if-gez v1, :cond_7

    :cond_3
    move v0, v4

    .line 1044
    :goto_2
    return v0

    .line 920
    :cond_4
    const-string v0, "text"

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/j;->j:Ljava/lang/String;

    .line 922
    const-string v0, "6"

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 924
    iget-object v1, p0, Lcom/admob/android/ads/j;->D:Lcom/admob/android/ads/q;

    const-string v2, "8"

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    iput-object v2, v1, Lcom/admob/android/ads/r;->b:Ljava/lang/String;

    .line 926
    invoke-static {v0}, Lcom/admob/android/ads/j$a;->a(Ljava/lang/String;)Lcom/admob/android/ads/j$a;

    move-result-object v0

    .line 927
    iget-object v1, p0, Lcom/admob/android/ads/j;->D:Lcom/admob/android/ads/q;

    iget-object v1, v1, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    iput-object v0, v1, Lcom/admob/android/ads/r;->a:Lcom/admob/android/ads/j$a;

    .line 933
    const-string v0, "ac"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 934
    if-eqz v0, :cond_5

    .line 935
    iget-object v1, p0, Lcom/admob/android/ads/j;->D:Lcom/admob/android/ads/q;

    invoke-virtual {v1, p1, v0}, Lcom/admob/android/ads/q;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 937
    :cond_5
    const-string v0, "ac"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 938
    if-eqz v0, :cond_0

    .line 939
    iget-object v1, p0, Lcom/admob/android/ads/j;->D:Lcom/admob/android/ads/q;

    invoke-virtual {v1, p1, v0}, Lcom/admob/android/ads/q;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 963
    :cond_6
    invoke-static {}, Lcom/admob/android/ads/k;->d()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/admob/android/ads/j;->C:D

    goto :goto_1

    .line 979
    :cond_7
    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iput v1, p0, Lcom/admob/android/ads/j;->p:I

    iput v0, p0, Lcom/admob/android/ads/j;->q:I

    .line 983
    const-string v0, "cpm_url"

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 984
    if-eqz v0, :cond_8

    .line 989
    iput-boolean v5, p0, Lcom/admob/android/ads/j;->k:Z

    .line 990
    invoke-direct {p0, v0}, Lcom/admob/android/ads/j;->a(Ljava/lang/String;)V

    .line 993
    :cond_8
    const-string v0, "tracking_pixel"

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 994
    if-eqz v0, :cond_9

    .line 999
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    :cond_9
    :goto_3
    if-eqz v0, :cond_a

    .line 1016
    invoke-direct {p0, v0}, Lcom/admob/android/ads/j;->a(Ljava/lang/String;)V

    .line 1019
    :cond_a
    const-string v0, "markup"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1028
    iget-object v1, p0, Lcom/admob/android/ads/j;->D:Lcom/admob/android/ads/q;

    iget-object v1, v1, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    iget-object v1, v1, Lcom/admob/android/ads/r;->a:Lcom/admob/android/ads/j$a;

    sget-object v2, Lcom/admob/android/ads/j$a;->b:Lcom/admob/android/ads/j$a;

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    invoke-virtual {v1}, Lcom/admob/android/ads/k;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_b

    .line 1029
    invoke-direct {p0}, Lcom/admob/android/ads/j;->r()V

    move v0, v4

    .line 1030
    goto/16 :goto_2

    :catch_0
    move-exception v1

    .line 1006
    :try_start_1
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    goto :goto_3

    .line 1031
    :cond_b
    if-nez v0, :cond_c

    move v0, v4

    .line 1033
    goto/16 :goto_2

    .line 1034
    :cond_c
    iget-object v1, p0, Lcom/admob/android/ads/j;->D:Lcom/admob/android/ads/q;

    iget-object v2, v1, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    iget-object v2, v2, Lcom/admob/android/ads/r;->c:Ljava/util/Vector;

    if-eqz v2, :cond_e

    iget-object v1, v1, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    iget-object v1, v1, Lcom/admob/android/ads/r;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_e

    move v1, v5

    :goto_4
    if-nez v1, :cond_f

    .line 1036
    const-string v0, "AdMobSDK"

    const/4 v0, 0x6

    invoke-static {v6, v0}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1038
    const-string v0, "AdMobSDK"

    const-string v0, "Bad response:  didn\'t get clickURLString.  erroring out."

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move v0, v4

    .line 1040
    goto/16 :goto_2

    :cond_e
    move v1, v4

    .line 1034
    goto :goto_4

    .line 1042
    :cond_f
    iput-object v0, p0, Lcom/admob/android/ads/j;->w:Lorg/json/JSONObject;

    :try_start_2
    iget-object v0, p0, Lcom/admob/android/ads/j;->w:Lorg/json/JSONObject;

    const-string v1, "$"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    invoke-virtual {v1}, Lcom/admob/android/ads/k;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/admob/android/ads/AdManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    iget-object v2, p0, Lcom/admob/android/ads/j;->x:Lcom/admob/android/ads/u;

    invoke-virtual {v2, v0, v1}, Lcom/admob/android/ads/u;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/admob/android/ads/j;->p()V

    iget-object v0, p0, Lcom/admob/android/ads/j;->w:Lorg/json/JSONObject;

    const-string v1, "itid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_10

    const-wide v2, 0x408f400000000000L

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/admob/android/ads/j;->o:J
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_10
    :goto_6
    iget-object v0, p0, Lcom/admob/android/ads/j;->x:Lcom/admob/android/ads/u;

    invoke-virtual {v0}, Lcom/admob/android/ads/u;->b()V

    iget-object v0, p0, Lcom/admob/android/ads/j;->x:Lcom/admob/android/ads/u;

    invoke-virtual {v0}, Lcom/admob/android/ads/u;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/admob/android/ads/j;->k()V

    :cond_11
    move v0, v5

    .line 1044
    goto/16 :goto_2

    .line 1042
    :catch_1
    move-exception v0

    const-string v1, "AdMobSDK"

    const/4 v1, 0x6

    invoke-static {v6, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "AdMobSDK"

    const-string v1, "Could not read in the flex ad."

    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_2
    move-exception v1

    goto/16 :goto_3

    :cond_12
    move-object v1, v3

    goto :goto_5
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 2660
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2661
    if-nez v0, :cond_0

    move-object v0, v5

    .line 2679
    :goto_0
    return-object v0

    .line 2665
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 2669
    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    .line 2670
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    .line 2672
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2670
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 2678
    goto :goto_0

    .line 2677
    :catch_0
    move-exception v0

    move-object v0, v5

    goto :goto_0
.end method

.method private b(Lorg/json/JSONObject;)Landroid/view/View;
    .locals 14
    .parameter

    .prologue
    .line 1306
    const/4 v0, 0x0

    .line 1309
    :try_start_0
    iget-object v1, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    if-eqz v1, :cond_c

    if-eqz p1, :cond_c

    .line 1311
    const-string v0, "t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1313
    const-string v1, "f"

    sget-object v2, Lcom/admob/android/ads/j;->b:Landroid/graphics/Rect;

    invoke-static {p1, v1, v2}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1315
    invoke-virtual {p0, v1}, Lcom/admob/android/ads/j;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1318
    const/4 v2, 0x0

    .line 1320
    const/4 v3, 0x1

    .line 1321
    const/4 v4, 0x1

    .line 1323
    const-string v5, "l"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1325
    iget-object v0, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_f

    const-string v0, "x"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "fs"

    const/high16 v5, 0x4150

    invoke-static {p1, v2, v5}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v2

    const-string v5, "fa"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-eqz v5, :cond_20

    const/4 v8, 0x0

    move v13, v8

    move v8, v6

    move v6, v13

    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v6, v9, :cond_5

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "b"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    or-int/lit8 v8, v8, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-string v10, "i"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    or-int/lit8 v8, v8, 0x2

    goto :goto_1

    :cond_2
    const-string v10, "m"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v7, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_1

    :cond_3
    const-string v10, "s"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v7, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_1

    :cond_4
    const-string v10, "ss"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v7, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_1

    :cond_5
    invoke-static {v7, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    :goto_2
    iget v6, p0, Lcom/admob/android/ads/j;->t:I

    const-string v7, "fco"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "fco"

    invoke-static {p1, v7, v6}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v6, :cond_6

    move v6, v7

    :cond_6
    :goto_3
    const-string v7, "afstfw"

    const/4 v8, 0x1

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v8, "mfs"

    const/high16 v9, 0x4100

    invoke-static {p1, v8, v9}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v8

    const-string v9, "nol"

    const/4 v10, 0x1

    invoke-virtual {p1, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    new-instance v10, Lcom/admob/android/ads/af;

    iget-object v11, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    invoke-virtual {v11}, Lcom/admob/android/ads/k;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {}, Lcom/admob/android/ads/k;->d()F

    move-result v12

    invoke-direct {v10, v11, v12}, Lcom/admob/android/ads/af;-><init>(Landroid/content/Context;F)V

    iput-boolean v7, v10, Lcom/admob/android/ads/af;->b:Z

    iget v7, v10, Lcom/admob/android/ads/af;->c:F

    mul-float/2addr v7, v8

    iput v7, v10, Lcom/admob/android/ads/af;->a:F

    const/4 v7, 0x0

    invoke-virtual {v10, v7}, Lcom/admob/android/ads/af;->setBackgroundColor(I)V

    invoke-virtual {v10, v0}, Lcom/admob/android/ads/af;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v6}, Lcom/admob/android/ads/af;->setTextColor(I)V

    invoke-virtual {v10, v2}, Lcom/admob/android/ads/af;->setTextSize(F)V

    invoke-virtual {v10, v5}, Lcom/admob/android/ads/af;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v10, v9}, Lcom/admob/android/ads/af;->setLines(I)V

    move-object v0, v10

    :goto_4
    move v2, v3

    move-object v3, v0

    move v0, v4

    .line 1346
    :goto_5
    if-eqz v3, :cond_1d

    .line 1348
    if-eqz v2, :cond_1c

    .line 1351
    const-string v0, "bgc"

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 1352
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1361
    :cond_7
    :goto_6
    const-string v0, "ap"

    sget-object v2, Lcom/admob/android/ads/j;->e:Landroid/graphics/PointF;

    invoke-static {p1, v0, v2}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1362
    invoke-static {v3}, Lcom/admob/android/ads/ah;->c(Landroid/view/View;)Lcom/admob/android/ads/ah;

    move-result-object v2

    iput-object v0, v2, Lcom/admob/android/ads/ah;->b:Landroid/graphics/PointF;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1364
    const/4 v0, 0x0

    const-string v2, "a"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v4, "ag"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v2, :cond_8

    invoke-direct {p0, v2, v4, v3, v1}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONArray;Lorg/json/JSONObject;Landroid/view/View;Landroid/graphics/Rect;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 1367
    :cond_8
    const-string v2, "ut"

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1368
    if-eqz v3, :cond_9

    if-eqz v2, :cond_9

    invoke-static {v3}, Lcom/admob/android/ads/ah;->c(Landroid/view/View;)Lcom/admob/android/ads/ah;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1371
    :cond_9
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1373
    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1374
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1376
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1378
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1379
    if-eqz v0, :cond_a

    .line 1380
    invoke-virtual {v3, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1384
    :cond_a
    const-string v0, "cav"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1386
    iget-object v0, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_b

    .line 1388
    iget-object v0, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    invoke-virtual {v0, v3, v2}, Lcom/admob/android/ads/k;->a(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    :cond_b
    move-object v0, v3

    .line 1412
    :cond_c
    :goto_7
    return-object v0

    .line 1325
    :cond_d
    const-string v6, "fc"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_e

    iget v6, p0, Lcom/admob/android/ads/j;->u:I

    goto/16 :goto_3

    :cond_e
    iget v6, p0, Lcom/admob/android/ads/j;->t:I

    goto/16 :goto_3

    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 1327
    :cond_10
    const-string v5, "bg"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1329
    invoke-direct {p0, p1, v1}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Landroid/graphics/Rect;)Landroid/view/View;

    move-result-object v0

    .line 1330
    const/4 v2, 0x0

    .line 1331
    const/4 v3, 0x0

    move v13, v3

    move-object v3, v0

    move v0, v13

    goto/16 :goto_5

    .line 1334
    :cond_11
    const-string v5, "i"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1336
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    if-eqz v2, :cond_12

    const/4 v0, 0x0

    const-string v2, "$"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    iget-object v0, p0, Lcom/admob/android/ads/j;->x:Lcom/admob/android/ads/u;

    iget-object v5, v0, Lcom/admob/android/ads/u;->a:Ljava/util/Hashtable;

    if-eqz v5, :cond_13

    iget-object v0, v0, Lcom/admob/android/ads/u;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_8
    if-eqz v0, :cond_15

    new-instance v2, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    invoke-virtual {v5}, Lcom/admob/android/ads/k;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const-string v5, "b"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-direct {p0, v2, v0, p1}, Lcom/admob/android/ads/j;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lorg/json/JSONObject;)V

    move-object v0, v2

    :cond_12
    :goto_9
    move v2, v3

    move-object v3, v0

    move v0, v4

    goto/16 :goto_5

    :cond_13
    const/4 v0, 0x0

    goto :goto_8

    :cond_14
    iget-object v5, p0, Lcom/admob/android/ads/j;->z:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object v0, v2

    goto :goto_9

    :cond_15
    const-string v0, "AdMobSDK"

    const/4 v5, 0x6

    invoke-static {v0, v5}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "AdMobSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t find Bitmap "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const/4 v0, 0x0

    goto :goto_9

    :cond_17
    const-string v2, "AdMobSDK"

    const/4 v5, 0x3

    invoke-static {v2, v5}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "AdMobSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find asset name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    .line 1403
    :catch_0
    move-exception v0

    .line 1406
    const-string v1, "AdMobSDK"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1408
    const-string v1, "AdMobSDK"

    const-string v2, "exception while trying to create a flex view."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1410
    :cond_18
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 1338
    :cond_19
    :try_start_1
    const-string v5, "P"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1340
    iget-object v0, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_1a

    new-instance v0, Landroid/view/View;

    iget-object v2, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    invoke-virtual {v2}, Lcom/admob/android/ads/k;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :goto_a
    move v2, v3

    move-object v3, v0

    move v0, v4

    goto/16 :goto_5

    :cond_1a
    const/4 v0, 0x0

    goto :goto_a

    .line 1341
    :cond_1b
    const-string v5, "wv"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1342
    invoke-direct {p0, p1}, Lcom/admob/android/ads/j;->d(Lorg/json/JSONObject;)Landroid/view/View;

    move-result-object v0

    move v2, v3

    move-object v3, v0

    move v0, v4

    goto/16 :goto_5

    .line 1354
    :cond_1c
    if-eqz v0, :cond_7

    .line 1357
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 1395
    :cond_1d
    const-string v0, "AdMobSDK"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1397
    const-string v0, "AdMobSDK"

    const-string v1, "created a null view."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1399
    :cond_1e
    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_1f
    move v0, v4

    move v13, v3

    move-object v3, v2

    move v2, v13

    goto/16 :goto_5

    :cond_20
    move-object v5, v7

    goto/16 :goto_2
.end method

.method private static b(I)Lorg/json/JSONArray;
    .locals 2
    .parameter

    .prologue
    .line 2719
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2721
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 2722
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 2723
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 2724
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 2726
    return-object v0
.end method

.method private static b(Lorg/json/JSONArray;)[F
    .locals 5
    .parameter

    .prologue
    .line 2684
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 2688
    :try_start_0
    new-array v1, v0, [F

    .line 2689
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2691
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v1, v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2689
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2698
    :goto_1
    return-object v0

    .line 2696
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static b(Lorg/json/JSONObject;Ljava/lang/String;)[F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2703
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2704
    if-nez v0, :cond_0

    .line 2706
    const/4 v0, 0x0

    .line 2708
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/admob/android/ads/j;->b(Lorg/json/JSONArray;)[F

    move-result-object v0

    goto :goto_0
.end method

.method private static c(Lorg/json/JSONArray;)I
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide v5, 0x406fe00000000000L

    .line 2730
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    mul-double/2addr v0, v5

    double-to-int v0, v0

    .line 2731
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    mul-double/2addr v1, v5

    double-to-int v1, v1

    .line 2732
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    .line 2733
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 2735
    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private static c(Lorg/json/JSONObject;)I
    .locals 2
    .parameter

    .prologue
    .line 1507
    const-string v0, "rc"

    const/high16 v1, 0x3f80

    invoke-static {p0, v0, v1}, Lcom/admob/android/ads/j;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v0

    .line 1508
    float-to-int v0, v0

    .line 1509
    if-lez v0, :cond_0

    .line 1511
    add-int/lit8 v0, v0, -0x1

    .line 1514
    :cond_0
    return v0
.end method

.method private static d(Lorg/json/JSONArray;)Landroid/graphics/RectF;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 2767
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    double-to-float v0, v0

    .line 2768
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    double-to-float v1, v1

    .line 2769
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    double-to-float v2, v2

    .line 2770
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    double-to-float v3, v3

    .line 2772
    new-instance v4, Landroid/graphics/RectF;

    add-float/2addr v2, v0

    add-float/2addr v3, v1

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4
.end method

.method private d(Lorg/json/JSONObject;)Landroid/view/View;
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    const-string v6, ""

    .line 2404
    iget-object v0, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_3

    .line 2406
    const-string v0, "u"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2407
    const-string v0, "html"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2408
    const-string v0, "base"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2410
    iget v0, p0, Lcom/admob/android/ads/j;->y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/admob/android/ads/j;->y:I

    .line 2411
    new-instance v0, Lcom/admob/android/ads/z;

    iget-object v5, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    invoke-virtual {v5}, Lcom/admob/android/ads/k;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5, p0}, Lcom/admob/android/ads/z;-><init>(Landroid/content/Context;Lcom/admob/android/ads/j;)V

    .line 2413
    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2414
    invoke-virtual {v0, v4}, Lcom/admob/android/ads/z;->b(Ljava/lang/String;)V

    .line 2415
    invoke-virtual {v0, v4}, Lcom/admob/android/ads/z;->loadUrl(Ljava/lang/String;)V

    .line 2426
    :goto_0
    const-string v1, "d"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2427
    if-eqz v1, :cond_0

    .line 2428
    iput-object v1, v0, Lcom/admob/android/ads/z;->a:Lorg/json/JSONObject;

    .line 2432
    :cond_0
    iget-object v1, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    iget-object v1, v1, Lcom/admob/android/ads/k;->b:Lcom/admob/android/ads/AdView;

    .line 2433
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2435
    :try_start_0
    const-string v3, "ptc"

    invoke-virtual {v1}, Lcom/admob/android/ads/AdView;->getPrimaryTextColor()I

    move-result v4

    invoke-static {v4}, Lcom/admob/android/ads/j;->b(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2436
    const-string v3, "stc"

    invoke-virtual {v1}, Lcom/admob/android/ads/AdView;->getSecondaryTextColor()I

    move-result v4

    invoke-static {v4}, Lcom/admob/android/ads/j;->b(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2437
    const-string v3, "bgc"

    invoke-virtual {v1}, Lcom/admob/android/ads/AdView;->getBackgroundColor()I

    move-result v1

    invoke-static {v1}, Lcom/admob/android/ads/j;->b(I)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2441
    :goto_1
    iput-object v2, v0, Lcom/admob/android/ads/z;->b:Lorg/json/JSONObject;

    .line 2443
    invoke-virtual {v0}, Lcom/admob/android/ads/z;->b()V

    .line 2445
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/admob/android/ads/j;->F:Z

    .line 2449
    :goto_2
    return-object v0

    .line 2416
    :cond_1
    if-eqz v2, :cond_2

    const-string v4, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    const-string v4, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v3

    move-object v5, v3

    .line 2418
    invoke-virtual/range {v0 .. v5}, Lcom/admob/android/ads/z;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2420
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/j;->a(Z)V

    move-object v0, v3

    .line 2422
    goto :goto_2

    :cond_3
    move-object v0, v3

    .line 2449
    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static e(Lorg/json/JSONArray;)Landroid/graphics/PointF;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 2825
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    double-to-float v0, v0

    .line 2826
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    double-to-float v1, v1

    .line 2828
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method public static n()F
    .locals 1

    .prologue
    .line 2880
    sget v0, Lcom/admob/android/ads/j;->h:F

    return v0
.end method

.method private o()Z
    .locals 1

    .prologue
    .line 1106
    iget v0, p0, Lcom/admob/android/ads/j;->y:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()V
    .locals 9

    .prologue
    const/16 v7, 0x2c

    const/4 v6, 0x3

    const/4 v3, 0x0

    const-string v4, "ta"

    const-string v8, "AdMobSDK"

    .line 1123
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/admob/android/ads/j;->p:I

    iget v2, p0, Lcom/admob/android/ads/j;->q:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1126
    iget-object v1, p0, Lcom/admob/android/ads/j;->w:Lorg/json/JSONObject;

    const-string v2, "ta"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1131
    :try_start_0
    iget-object v1, p0, Lcom/admob/android/ads/j;->w:Lorg/json/JSONObject;

    const-string v2, "ta"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1133
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    .line 1134
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    .line 1135
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    .line 1136
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    .line 1140
    new-instance v5, Landroid/graphics/Rect;

    add-int/2addr v4, v2

    add-int/2addr v1, v3

    invoke-direct {v5, v2, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1141
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v7, :cond_0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lt v1, v7, :cond_0

    move-object v0, v5

    .line 1157
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/admob/android/ads/j;->n:Landroid/graphics/Rect;

    .line 1158
    return-void

    .line 1151
    :catch_0
    move-exception v1

    const-string v1, "AdMobSDK"

    invoke-static {v8, v6}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1153
    const-string v1, "AdMobSDK"

    const-string v1, "could not read in the touchable area for the ad."

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/admob/android/ads/j;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admob/android/ads/m;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/admob/android/ads/m;->a(Lcom/admob/android/ads/j;)V

    :cond_0
    iget-object v0, p0, Lcom/admob/android/ads/j;->G:Lcom/admob/android/ads/s;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/admob/android/ads/s;->a()V

    .line 1228
    :cond_1
    return-void
.end method

.method private r()V
    .locals 1

    .prologue
    .line 2542
    iget-object v0, p0, Lcom/admob/android/ads/j;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admob/android/ads/m;

    .line 2543
    if-eqz v0, :cond_0

    .line 2544
    invoke-interface {v0}, Lcom/admob/android/ads/m;->a()V

    .line 2546
    :cond_0
    iget-object v0, p0, Lcom/admob/android/ads/j;->G:Lcom/admob/android/ads/s;

    if-eqz v0, :cond_1

    .line 2547
    invoke-static {}, Lcom/admob/android/ads/s;->a()V

    .line 2549
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 6
    .parameter

    .prologue
    .line 509
    int-to-double v0, p1

    iget-wide v2, p0, Lcom/admob/android/ads/j;->C:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/admob/android/ads/j;->C:D

    mul-double/2addr v0, v2

    :cond_0
    double-to-int v0, v0

    return v0
.end method

.method final a(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5
    .parameter

    .prologue
    .line 548
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 550
    iget-wide v1, p0, Lcom/admob/android/ads/j;->C:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 552
    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Lcom/admob/android/ads/j;->a(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 553
    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v1}, Lcom/admob/android/ads/j;->a(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 554
    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v1}, Lcom/admob/android/ads/j;->a(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 555
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1}, Lcom/admob/android/ads/j;->a(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 557
    :cond_0
    return-object v0
.end method

.method public final a()Lcom/admob/android/ads/q;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/admob/android/ads/j;->D:Lcom/admob/android/ads/q;

    return-object v0
.end method

.method public final a(Lcom/admob/android/ads/j$c;)V
    .locals 0
    .parameter

    .prologue
    .line 632
    iput-object p1, p0, Lcom/admob/android/ads/j;->A:Lcom/admob/android/ads/j$c;

    .line 633
    return-void
.end method

.method public final a(Lcom/admob/android/ads/k;)V
    .locals 0
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    .line 575
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x4

    const-string v3, "AdMobSDK"

    .line 768
    iget-boolean v0, p0, Lcom/admob/android/ads/j;->l:Z

    if-eqz v0, :cond_3

    .line 771
    const-string v0, "AdMobSDK"

    invoke-static {v3, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    const-string v0, "AdMobSDK"

    const-string v0, "Ad clicked again.  Stats on admob.com will only reflect the first click."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    invoke-virtual {v0}, Lcom/admob/android/ads/k;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_6

    check-cast v0, Landroid/app/Activity;

    :goto_1
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/admob/android/ads/j;->D:Lcom/admob/android/ads/q;

    iget-object v2, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    invoke-virtual {v1, v0, v2}, Lcom/admob/android/ads/q;->a(Landroid/app/Activity;Landroid/view/View;)V

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/admob/android/ads/j;->A:Lcom/admob/android/ads/j$c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/admob/android/ads/j;->A:Lcom/admob/android/ads/j$c;

    invoke-interface {v0}, Lcom/admob/android/ads/j$c;->a()V

    .line 792
    :cond_2
    return-void

    .line 778
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admob/android/ads/j;->l:Z

    .line 779
    const-string v0, "AdMobSDK"

    invoke-static {v3, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 780
    const-string v0, "AdMobSDK"

    const-string v0, "Ad clicked."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_4
    iget-object v0, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    invoke-virtual {v0}, Lcom/admob/android/ads/k;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 787
    iget-object v1, p0, Lcom/admob/android/ads/j;->D:Lcom/admob/android/ads/q;

    invoke-static {v0}, Lcom/admob/android/ads/AdManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/admob/android/ads/q;->a:Lcom/admob/android/ads/r;

    iget-object v1, v1, Lcom/admob/android/ads/r;->c:Ljava/util/Vector;

    invoke-static {v1, p1, v0}, Lcom/admob/android/ads/q;->a(Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 791
    :cond_5
    const-string v0, "AdMobSDK"

    const/4 v0, 0x3

    invoke-static {v3, v0}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AdMobSDK"

    const-string v0, "Context null, not able to finish click."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1093
    iget v0, p0, Lcom/admob/android/ads/j;->y:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/admob/android/ads/j;->y:I

    .line 1094
    if-eqz p1, :cond_1

    .line 1095
    invoke-direct {p0}, Lcom/admob/android/ads/j;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1096
    invoke-direct {p0}, Lcom/admob/android/ads/j;->q()V

    .line 1102
    :cond_0
    :goto_0
    return-void

    .line 1100
    :cond_1
    iget-object v0, p0, Lcom/admob/android/ads/j;->x:Lcom/admob/android/ads/u;

    invoke-virtual {v0}, Lcom/admob/android/ads/u;->c()V

    goto :goto_0
.end method

.method public final b()D
    .locals 2

    .prologue
    .line 446
    iget-wide v0, p0, Lcom/admob/android/ads/j;->B:D

    return-wide v0
.end method

.method public final c()Lcom/admob/android/ads/k;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    return-object v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 582
    iget-wide v0, p0, Lcom/admob/android/ads/j;->o:J

    return-wide v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/admob/android/ads/j;->k:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 858
    instance-of v0, p1, Lcom/admob/android/ads/j;

    if-eqz v0, :cond_0

    .line 860
    check-cast p1, Lcom/admob/android/ads/j;

    .line 861
    invoke-virtual {p0}, Lcom/admob/android/ads/j;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/admob/android/ads/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 865
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 659
    iget v0, p0, Lcom/admob/android/ads/j;->p:I

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 670
    iget v0, p0, Lcom/admob/android/ads/j;->q:I

    return v0
.end method

.method public final h()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 682
    iget-object v0, p0, Lcom/admob/android/ads/j;->n:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 684
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/admob/android/ads/j;->p:I

    iget v2, p0, Lcom/admob/android/ads/j;->q:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/admob/android/ads/j;->n:Landroid/graphics/Rect;

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/admob/android/ads/j;->n:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 877
    invoke-virtual {p0}, Lcom/admob/android/ads/j;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method final i()V
    .locals 2

    .prologue
    .line 715
    iget-object v0, p0, Lcom/admob/android/ads/j;->z:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 717
    if-eqz v0, :cond_0

    .line 719
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/admob/android/ads/j;->z:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 724
    iget-object v0, p0, Lcom/admob/android/ads/j;->D:Lcom/admob/android/ads/q;

    if-eqz v0, :cond_2

    .line 725
    iget-object v0, p0, Lcom/admob/android/ads/j;->D:Lcom/admob/android/ads/q;

    invoke-virtual {v0}, Lcom/admob/android/ads/q;->a()V

    .line 748
    :cond_2
    return-void
.end method

.method final j()V
    .locals 4

    .prologue
    .line 796
    iget-object v0, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/admob/android/ads/j;->s:Lcom/admob/android/ads/k;

    invoke-virtual {v0}, Lcom/admob/android/ads/k;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 799
    iget-object v1, p0, Lcom/admob/android/ads/j;->m:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 801
    const-string v2, "impression_request"

    invoke-static {v0}, Lcom/admob/android/ads/AdManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/admob/android/ads/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/admob/android/ads/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/admob/android/ads/e;->f()V

    goto :goto_0

    .line 804
    :cond_0
    return-void
.end method

.method public final k()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "AdMobSDK"

    .line 1175
    iget-object v0, p0, Lcom/admob/android/ads/j;->D:Lcom/admob/android/ads/q;

    if-eqz v0, :cond_1

    .line 1176
    iget-object v0, p0, Lcom/admob/android/ads/j;->D:Lcom/admob/android/ads/q;

    invoke-virtual {v0}, Lcom/admob/android/ads/q;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/admob/android/ads/j;->D:Lcom/admob/android/ads/q;

    iget-object v1, p0, Lcom/admob/android/ads/j;->x:Lcom/admob/android/ads/u;

    iget-object v1, v1, Lcom/admob/android/ads/u;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/q;->a(Ljava/util/Hashtable;)V

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/admob/android/ads/j;->D:Lcom/admob/android/ads/q;

    invoke-virtual {v0}, Lcom/admob/android/ads/q;->b()V

    .line 1182
    :cond_1
    iget-object v0, p0, Lcom/admob/android/ads/j;->w:Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    .line 1184
    iget-object v0, p0, Lcom/admob/android/ads/j;->w:Lorg/json/JSONObject;

    .line 1185
    iput-object v2, p0, Lcom/admob/android/ads/j;->w:Lorg/json/JSONObject;

    .line 1190
    :try_start_0
    const-string v1, "v"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/admob/android/ads/j$d;

    invoke-direct {v1, p0, v0}, Lcom/admob/android/ads/j$d;-><init>(Lcom/admob/android/ads/j;Lorg/json/JSONArray;)V

    sget-object v0, Lcom/admob/android/ads/j;->i:Landroid/os/Handler;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/admob/android/ads/j;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1201
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/admob/android/ads/j;->x:Lcom/admob/android/ads/u;

    iget-object v1, v0, Lcom/admob/android/ads/u;->b:Ljava/util/HashSet;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/admob/android/ads/u;->b:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_1
    iget-object v2, v0, Lcom/admob/android/ads/u;->b:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/admob/android/ads/u;->b:Ljava/util/HashSet;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1210
    :cond_3
    :goto_1
    return-void

    .line 1190
    :cond_4
    :try_start_2
    invoke-direct {p0}, Lcom/admob/android/ads/j;->r()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1192
    :catch_0
    move-exception v0

    .line 1194
    const-string v1, "AdMobSDK"

    const/4 v1, 0x3

    invoke-static {v3, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1196
    const-string v1, "AdMobSDK"

    const-string v1, "couldn\'t construct the views."

    invoke-static {v3, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1201
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1205
    :cond_5
    invoke-direct {p0}, Lcom/admob/android/ads/j;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1208
    invoke-direct {p0}, Lcom/admob/android/ads/j;->q()V

    goto :goto_1
.end method

.method public final l()V
    .locals 2

    .prologue
    const-string v1, "AdMobSDK"

    .line 1213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/j;->w:Lorg/json/JSONObject;

    .line 1215
    const-string v0, "AdMobSDK"

    const/4 v0, 0x4

    invoke-static {v1, v0}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    const-string v0, "AdMobSDK"

    const-string v0, "assetsDidFailToLoad()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    :cond_0
    invoke-direct {p0}, Lcom/admob/android/ads/j;->r()V

    .line 1220
    return-void
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 1301
    iget-boolean v0, p0, Lcom/admob/android/ads/j;->F:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/admob/android/ads/j;->j:Ljava/lang/String;

    .line 842
    if-nez v0, :cond_0

    .line 844
    const-string v0, ""

    .line 847
    :cond_0
    return-object v0
.end method
