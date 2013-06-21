.class public Lorg/cocos2d/l/e;
.super Ljava/lang/Object;


# static fields
.field private static final c:Lorg/cocos2d/l/e;


# instance fields
.field public a:F

.field public b:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lorg/cocos2d/l/e;

    invoke-direct {v0, v1, v1}, Lorg/cocos2d/l/e;-><init>(FF)V

    sput-object v0, Lorg/cocos2d/l/e;->c:Lorg/cocos2d/l/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/cocos2d/l/e;-><init>(FF)V

    return-void
.end method

.method private constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/cocos2d/l/e;->a:F

    iput p2, p0, Lorg/cocos2d/l/e;->b:F

    return-void
.end method

.method public static a()Lorg/cocos2d/l/e;
    .locals 1

    sget-object v0, Lorg/cocos2d/l/e;->c:Lorg/cocos2d/l/e;

    return-object v0
.end method

.method public static a(FF)Lorg/cocos2d/l/e;
    .locals 1

    new-instance v0, Lorg/cocos2d/l/e;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/l/e;-><init>(FF)V

    return-object v0
.end method

.method public static a(Lorg/cocos2d/l/e;F)Lorg/cocos2d/l/e;
    .locals 2

    iget v0, p0, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v0, p1

    iget v1, p0, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v1, p1

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/cocos2d/l/e;Lorg/cocos2d/l/d;)Lorg/cocos2d/l/e;
    .locals 1

    invoke-virtual {p1, p0}, Lorg/cocos2d/l/d;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;F)Lorg/cocos2d/l/e;
    .locals 6

    invoke-static {p0, p1}, Lorg/cocos2d/l/e;->c(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v0

    iget v1, v0, Lorg/cocos2d/l/e;->a:F

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v4, v1, v2

    iget v5, v0, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    iput v4, v0, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v1, v3

    iget v3, v0, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lorg/cocos2d/l/e;->b:F

    invoke-static {v0, p1}, Lorg/cocos2d/l/e;->b(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Z
    .locals 2

    iget v0, p0, Lorg/cocos2d/l/e;->a:F

    iget v1, p1, Lorg/cocos2d/l/e;->a:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/l/e;->b:F

    iget v1, p1, Lorg/cocos2d/l/e;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Z
    .locals 8

    const/4 v7, 0x0

    invoke-static {p0, p2}, Lorg/cocos2d/l/e;->c(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {p3, p2}, Lorg/cocos2d/l/e;->c(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->h(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p0}, Lorg/cocos2d/l/e;->c(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->h(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->g(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)F

    move-result v3

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->g(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)F

    move-result v4

    invoke-static {v0, v2}, Lorg/cocos2d/l/e;->g(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)F

    move-result v0

    invoke-static {v1, v1}, Lorg/cocos2d/l/e;->g(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)F

    move-result v1

    invoke-static {v2, v2}, Lorg/cocos2d/l/e;->g(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)F

    move-result v2

    mul-float/2addr v2, v1

    mul-float v5, v4, v4

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3400d959

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    move v0, v7

    goto :goto_0

    :cond_2
    mul-float v5, v3, v4

    mul-float/2addr v0, v1

    sub-float v0, v5, v0

    div-float/2addr v0, v2

    iput v0, p4, Lorg/cocos2d/l/e;->a:F

    iget v0, p4, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    div-float/2addr v0, v1

    iput v0, p4, Lorg/cocos2d/l/e;->b:F

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b()Lorg/cocos2d/l/e;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lorg/cocos2d/l/e;

    invoke-direct {v0, v1, v1}, Lorg/cocos2d/l/e;-><init>(FF)V

    return-object v0
.end method

.method public static b(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;
    .locals 2

    iget v0, p0, Lorg/cocos2d/l/e;->a:F

    neg-float v0, v0

    iget v1, p0, Lorg/cocos2d/l/e;->b:F

    neg-float v1, v1

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;
    .locals 3

    iget v0, p0, Lorg/cocos2d/l/e;->a:F

    iget v1, p1, Lorg/cocos2d/l/e;->a:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/cocos2d/l/e;->b:F

    iget v2, p1, Lorg/cocos2d/l/e;->b:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lorg/cocos2d/l/e;)F
    .locals 2

    invoke-static {p0, p0}, Lorg/cocos2d/l/e;->g(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static c(FF)Lorg/cocos2d/l/e;
    .locals 1

    new-instance v0, Lorg/cocos2d/l/e;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/l/e;-><init>(FF)V

    return-object v0
.end method

.method public static c(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;
    .locals 3

    iget v0, p0, Lorg/cocos2d/l/e;->a:F

    iget v1, p1, Lorg/cocos2d/l/e;->a:F

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/cocos2d/l/e;->b:F

    iget v2, p1, Lorg/cocos2d/l/e;->b:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)F
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x4334

    iget v0, p1, Lorg/cocos2d/l/e;->a:F

    iget v1, p0, Lorg/cocos2d/l/e;->a:F

    sub-float/2addr v0, v1

    iget v1, p1, Lorg/cocos2d/l/e;->b:F

    iget v2, p0, Lorg/cocos2d/l/e;->b:F

    sub-float/2addr v1, v2

    div-float v2, v0, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x40490fdb

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    cmpg-float v1, v1, v5

    if-gez v1, :cond_1

    cmpg-float v0, v0, v5

    if-gez v0, :cond_0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v4, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static d(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;
    .locals 2

    const/high16 v0, 0x3f80

    invoke-static {p0}, Lorg/cocos2d/l/e;->c(Lorg/cocos2d/l/e;)F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {p0, v0}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;F)Lorg/cocos2d/l/e;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lorg/cocos2d/l/e;)F
    .locals 4

    iget v0, p0, Lorg/cocos2d/l/e;->b:F

    float-to-double v0, v0

    iget v2, p0, Lorg/cocos2d/l/e;->a:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static e(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;
    .locals 2

    const/high16 v1, 0x3f00

    invoke-static {p0, v1}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;F)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {p1, v1}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;F)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->b(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v0

    return-object v0
.end method

.method public static f(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;
    .locals 3

    iget v0, p0, Lorg/cocos2d/l/e;->a:F

    iget v1, p1, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/cocos2d/l/e;->b:F

    iget v2, p1, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    return-object v0
.end method

.method private static g(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)F
    .locals 3

    iget v0, p0, Lorg/cocos2d/l/e;->a:F

    iget v1, p1, Lorg/cocos2d/l/e;->a:F

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/cocos2d/l/e;->b:F

    iget v2, p1, Lorg/cocos2d/l/e;->b:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private static h(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Z
    .locals 3

    const v2, 0x3400d959

    iget v0, p0, Lorg/cocos2d/l/e;->a:F

    sub-float/2addr v0, v2

    iget v1, p1, Lorg/cocos2d/l/e;->a:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p1, Lorg/cocos2d/l/e;->a:F

    iget v1, p0, Lorg/cocos2d/l/e;->a:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lorg/cocos2d/l/e;->b:F

    sub-float/2addr v0, v2

    iget v1, p1, Lorg/cocos2d/l/e;->b:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p1, Lorg/cocos2d/l/e;->b:F

    iget v1, p0, Lorg/cocos2d/l/e;->b:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/l/e;)V
    .locals 1

    iget v0, p1, Lorg/cocos2d/l/e;->a:F

    iput v0, p0, Lorg/cocos2d/l/e;->a:F

    iget v0, p1, Lorg/cocos2d/l/e;->b:F

    iput v0, p0, Lorg/cocos2d/l/e;->b:F

    return-void
.end method

.method public final b(FF)V
    .locals 0

    iput p1, p0, Lorg/cocos2d/l/e;->a:F

    iput p2, p0, Lorg/cocos2d/l/e;->b:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
