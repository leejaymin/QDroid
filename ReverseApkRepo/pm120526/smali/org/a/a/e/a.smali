.class public final Lorg/a/a/e/a;
.super Lorg/a/a/i;


# static fields
.field private static final b:I


# instance fields
.field private final c:Lorg/a/a/i;

.field private transient d:[Lorg/a/a/e/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x1

    :try_start_0
    const-string v0, "org.joda.time.tz.CachedDateTimeZone.size"

    invoke-static {v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const/16 v0, 0x200

    :goto_1
    sub-int/2addr v0, v2

    sput v0, Lorg/a/a/e/a;->b:I

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v3, v1

    move v1, v0

    move v0, v3

    :goto_2
    if-lez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    shl-int v0, v2, v0

    goto :goto_1
.end method

.method private constructor <init>(Lorg/a/a/i;)V
    .locals 1

    invoke-virtual {p1}, Lorg/a/a/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/a/a/i;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/a/a/e/a;->c:Lorg/a/a/i;

    sget v0, Lorg/a/a/e/a;->b:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lorg/a/a/e/b;

    iput-object v0, p0, Lorg/a/a/e/a;->d:[Lorg/a/a/e/b;

    return-void
.end method

.method public static a(Lorg/a/a/i;)Lorg/a/a/e/a;
    .locals 1

    instance-of v0, p0, Lorg/a/a/e/a;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/a/a/e/a;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/a/a/e/a;

    invoke-direct {v0, p0}, Lorg/a/a/e/a;-><init>(Lorg/a/a/i;)V

    goto :goto_0
.end method

.method private g(J)Lorg/a/a/e/b;
    .locals 10

    const/16 v6, 0x20

    shr-long v0, p1, v6

    long-to-int v0, v0

    iget-object v1, p0, Lorg/a/a/e/a;->d:[Lorg/a/a/e/b;

    sget v2, Lorg/a/a/e/a;->b:I

    and-int/2addr v2, v0

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    iget-wide v4, v3, Lorg/a/a/e/b;->a:J

    shr-long/2addr v4, v6

    long-to-int v4, v4

    if-eq v4, v0, :cond_2

    :cond_0
    const-wide v3, -0x100000000L

    and-long/2addr v3, p1

    new-instance v0, Lorg/a/a/e/b;

    iget-object v5, p0, Lorg/a/a/e/a;->c:Lorg/a/a/i;

    invoke-direct {v0, v5, v3, v4}, Lorg/a/a/e/b;-><init>(Lorg/a/a/i;J)V

    const-wide v5, 0xffffffffL

    or-long/2addr v5, v3

    move-object v7, v0

    :goto_0
    iget-object v8, p0, Lorg/a/a/e/a;->c:Lorg/a/a/i;

    invoke-virtual {v8, v3, v4}, Lorg/a/a/i;->e(J)J

    move-result-wide v8

    cmp-long v3, v8, v3

    if-eqz v3, :cond_1

    cmp-long v3, v8, v5

    if-gtz v3, :cond_1

    new-instance v3, Lorg/a/a/e/b;

    iget-object v4, p0, Lorg/a/a/e/a;->c:Lorg/a/a/i;

    invoke-direct {v3, v4, v8, v9}, Lorg/a/a/e/b;-><init>(Lorg/a/a/i;J)V

    iput-object v3, v7, Lorg/a/a/e/b;->c:Lorg/a/a/e/b;

    move-object v7, v3

    move-wide v3, v8

    goto :goto_0

    :cond_1
    aput-object v0, v1, v2

    :goto_1
    return-object v0

    :cond_2
    move-object v0, v3

    goto :goto_1
.end method


# virtual methods
.method public final a(J)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/a/a/e/a;->g(J)Lorg/a/a/e/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/a/a/e/b;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(J)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/a/a/e/a;->g(J)Lorg/a/a/e/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/a/a/e/b;->b(J)I

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lorg/a/a/e/a;->c:Lorg/a/a/i;

    invoke-virtual {v0}, Lorg/a/a/i;->d()Z

    move-result v0

    return v0
.end method

.method public final e(J)J
    .locals 2

    iget-object v0, p0, Lorg/a/a/e/a;->c:Lorg/a/a/i;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/i;->e(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/a/a/e/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/a/a/e/a;->c:Lorg/a/a/i;

    check-cast p1, Lorg/a/a/e/a;

    iget-object v1, p1, Lorg/a/a/e/a;->c:Lorg/a/a/i;

    invoke-virtual {v0, v1}, Lorg/a/a/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f(J)J
    .locals 2

    iget-object v0, p0, Lorg/a/a/e/a;->c:Lorg/a/a/i;

    invoke-virtual {v0, p1, p2}, Lorg/a/a/i;->f(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/a/a/e/a;->c:Lorg/a/a/i;

    invoke-virtual {v0}, Lorg/a/a/i;->hashCode()I

    move-result v0

    return v0
.end method
