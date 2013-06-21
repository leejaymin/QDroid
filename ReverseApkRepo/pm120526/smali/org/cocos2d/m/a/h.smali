.class public final Lorg/cocos2d/m/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Iterable;


# instance fields
.field private a:[Lorg/cocos2d/m/a/i;

.field private final b:F

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/cocos2d/m/a/h;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 4

    const/4 v3, 0x1

    const/high16 v2, 0x3f40

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lorg/cocos2d/m/a/h;->e:I

    :goto_0
    iget v0, p0, Lorg/cocos2d/m/a/h;->e:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iput v2, p0, Lorg/cocos2d/m/a/h;->b:F

    iget v0, p0, Lorg/cocos2d/m/a/h;->e:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lorg/cocos2d/m/a/h;->f:I

    iget v0, p0, Lorg/cocos2d/m/a/h;->e:I

    new-array v0, v0, [Lorg/cocos2d/m/a/i;

    iput-object v0, p0, Lorg/cocos2d/m/a/h;->a:[Lorg/cocos2d/m/a/i;

    iget v0, p0, Lorg/cocos2d/m/a/h;->e:I

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/cocos2d/m/a/h;->d:I

    return-void

    :cond_0
    iget v0, p0, Lorg/cocos2d/m/a/h;->e:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/cocos2d/m/a/h;->e:I

    goto :goto_0
.end method

.method static synthetic a(Lorg/cocos2d/m/a/h;)[Lorg/cocos2d/m/a/i;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/m/a/h;->a:[Lorg/cocos2d/m/a/i;

    return-object v0
.end method

.method static synthetic b(Lorg/cocos2d/m/a/h;)I
    .locals 1

    iget v0, p0, Lorg/cocos2d/m/a/h;->c:I

    return v0
.end method

.method private b()Lorg/cocos2d/m/a/h;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/m/a/h;

    iget-object v1, p0, Lorg/cocos2d/m/a/h;->a:[Lorg/cocos2d/m/a/i;

    array-length v1, v1

    new-array v1, v1, [Lorg/cocos2d/m/a/i;

    iget-object v2, p0, Lorg/cocos2d/m/a/h;->a:[Lorg/cocos2d/m/a/i;

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-gez v2, :cond_0

    iput-object v1, v0, Lorg/cocos2d/m/a/h;->a:[Lorg/cocos2d/m/a/i;

    :goto_1
    return-object v0

    :cond_0
    iget-object v3, p0, Lorg/cocos2d/m/a/h;->a:[Lorg/cocos2d/m/a/i;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/cocos2d/m/a/h;->a:[Lorg/cocos2d/m/a/i;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/cocos2d/m/a/i;->b()Lorg/cocos2d/m/a/i;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lorg/cocos2d/m/a/h;->d:I

    and-int/2addr v0, p1

    iget-object v1, p0, Lorg/cocos2d/m/a/h;->a:[Lorg/cocos2d/m/a/i;

    aget-object v0, v1, v0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    iget v1, v0, Lorg/cocos2d/m/a/i;->a:I

    if-ne v1, p1, :cond_1

    iget-object v0, v0, Lorg/cocos2d/m/a/i;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lorg/cocos2d/m/a/i;->c:Lorg/cocos2d/m/a/i;

    goto :goto_0
.end method

.method public final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget v0, p0, Lorg/cocos2d/m/a/h;->d:I

    and-int/2addr v0, p1

    iget-object v1, p0, Lorg/cocos2d/m/a/h;->a:[Lorg/cocos2d/m/a/i;

    aget-object v1, v1, v0

    :goto_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/cocos2d/m/a/h;->a:[Lorg/cocos2d/m/a/i;

    new-instance v2, Lorg/cocos2d/m/a/i;

    iget-object v3, p0, Lorg/cocos2d/m/a/h;->a:[Lorg/cocos2d/m/a/i;

    aget-object v3, v3, v0

    invoke-direct {v2, p1, p2, v3}, Lorg/cocos2d/m/a/i;-><init>(ILjava/lang/Object;Lorg/cocos2d/m/a/i;)V

    aput-object v2, v1, v0

    iget v0, p0, Lorg/cocos2d/m/a/h;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/cocos2d/m/a/h;->c:I

    iget v1, p0, Lorg/cocos2d/m/a/h;->f:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lorg/cocos2d/m/a/h;->e:I

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [Lorg/cocos2d/m/a/i;

    iget-object v2, p0, Lorg/cocos2d/m/a/h;->a:[Lorg/cocos2d/m/a/i;

    sub-int v3, v0, v9

    const/4 v4, 0x0

    :goto_1
    array-length v5, v2

    if-lt v4, v5, :cond_3

    iput-object v1, p0, Lorg/cocos2d/m/a/h;->a:[Lorg/cocos2d/m/a/i;

    iput v0, p0, Lorg/cocos2d/m/a/h;->e:I

    int-to-float v0, v0

    iget v1, p0, Lorg/cocos2d/m/a/h;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/cocos2d/m/a/h;->f:I

    iget v0, p0, Lorg/cocos2d/m/a/h;->e:I

    sub-int/2addr v0, v9

    iput v0, p0, Lorg/cocos2d/m/a/h;->d:I

    :cond_0
    move-object v0, v10

    :goto_2
    return-object v0

    :cond_1
    iget v2, v1, Lorg/cocos2d/m/a/i;->a:I

    if-ne v2, p1, :cond_2

    iget-object v0, v1, Lorg/cocos2d/m/a/i;->b:Ljava/lang/Object;

    iput-object p2, v1, Lorg/cocos2d/m/a/i;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object v1, v1, Lorg/cocos2d/m/a/i;->c:Lorg/cocos2d/m/a/i;

    goto :goto_0

    :cond_3
    aget-object v5, v2, v4

    if-eqz v5, :cond_4

    aput-object v10, v2, v4

    :goto_3
    iget-object v6, v5, Lorg/cocos2d/m/a/i;->c:Lorg/cocos2d/m/a/i;

    iget v7, v5, Lorg/cocos2d/m/a/i;->a:I

    and-int/2addr v7, v3

    aget-object v8, v1, v7

    iput-object v8, v5, Lorg/cocos2d/m/a/i;->c:Lorg/cocos2d/m/a/i;

    aput-object v5, v1, v7

    if-nez v6, :cond_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    move-object v5, v6

    goto :goto_3
.end method

.method public final a()V
    .locals 3

    iget-object v0, p0, Lorg/cocos2d/m/a/h;->a:[Lorg/cocos2d/m/a/i;

    array-length v1, v0

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/m/a/h;->c:I

    return-void

    :cond_0
    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lorg/cocos2d/m/a/h;->b()Lorg/cocos2d/m/a/h;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lorg/cocos2d/m/a/j;

    invoke-direct {v0, p0}, Lorg/cocos2d/m/a/j;-><init>(Lorg/cocos2d/m/a/h;)V

    return-object v0
.end method
