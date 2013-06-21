.class public final Lb/b/a/a/i;
.super Lb/b/a/a/b;


# instance fields
.field private a:I

.field private b:I

.field private c:B

.field private d:B

.field private e:Lb/b/a/a/b;

.field private f:Lb/b/a/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lb/b/a/a/b;-><init>()V

    iput-object v0, p0, Lb/b/a/a/i;->e:Lb/b/a/a/b;

    iput-object v0, p0, Lb/b/a/a/i;->f:Lb/b/a/a/b;

    invoke-virtual {p0}, Lb/b/a/a/i;->d()V

    return-void
.end method

.method private static a(B)Z
    .locals 2

    and-int/lit16 v0, p0, 0xff

    const/16 v1, 0xea

    if-eq v0, v1, :cond_0

    const/16 v1, 0xed

    if-eq v0, v1, :cond_0

    const/16 v1, 0xef

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf3

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a([BII)Lb/b/a/a/c;
    .locals 5

    const/16 v4, 0x20

    invoke-virtual {p0}, Lb/b/a/a/i;->c()Lb/b/a/a/c;

    move-result-object v0

    sget-object v1, Lb/b/a/a/c;->c:Lb/b/a/a/c;

    if-ne v0, v1, :cond_0

    sget-object v0, Lb/b/a/a/c;->c:Lb/b/a/a/c;

    :goto_0
    return-object v0

    :cond_0
    add-int v1, p2, p3

    :goto_1
    if-lt p2, v1, :cond_1

    sget-object v0, Lb/b/a/a/c;->a:Lb/b/a/a/c;

    goto :goto_0

    :cond_1
    aget-byte v2, p1, p2

    if-ne v2, v4, :cond_5

    iget-byte v0, p0, Lb/b/a/a/i;->d:B

    if-eq v0, v4, :cond_2

    iget-byte v0, p0, Lb/b/a/a/i;->c:B

    invoke-static {v0}, Lb/b/a/a/i;->a(B)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lb/b/a/a/i;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/b/a/a/i;->a:I

    :cond_2
    :goto_2
    iget-byte v0, p0, Lb/b/a/a/i;->c:B

    iput-byte v0, p0, Lb/b/a/a/i;->d:B

    iput-byte v2, p0, Lb/b/a/a/i;->c:B

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    iget-byte v0, p0, Lb/b/a/a/i;->c:B

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0xeb

    if-eq v0, v3, :cond_4

    const/16 v3, 0xee

    if-eq v0, v3, :cond_4

    const/16 v3, 0xf0

    if-eq v0, v3, :cond_4

    const/16 v3, 0xf4

    if-eq v0, v3, :cond_4

    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_2

    iget v0, p0, Lb/b/a/a/i;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/b/a/a/i;->b:I

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    iget-byte v0, p0, Lb/b/a/a/i;->d:B

    if-ne v0, v4, :cond_2

    iget-byte v0, p0, Lb/b/a/a/i;->c:B

    invoke-static {v0}, Lb/b/a/a/i;->a(B)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eq v2, v4, :cond_2

    iget v0, p0, Lb/b/a/a/i;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/b/a/a/i;->b:I

    goto :goto_2
.end method

.method public final a()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lb/b/a/a/i;->a:I

    iget v1, p0, Lb/b/a/a/i;->b:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    sget-object v0, Lb/b/a/b;->t:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, -0x5

    if-gt v0, v1, :cond_1

    sget-object v0, Lb/b/a/b;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lb/b/a/a/i;->e:Lb/b/a/a/b;

    invoke-virtual {v1}, Lb/b/a/a/b;->b()F

    move-result v1

    iget-object v2, p0, Lb/b/a/a/i;->f:Lb/b/a/a/b;

    invoke-virtual {v2}, Lb/b/a/a/b;->b()F

    move-result v2

    sub-float/2addr v1, v2

    const v2, 0x3c23d70a

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    sget-object v0, Lb/b/a/b;->t:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const v2, -0x43dc28f6

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    sget-object v0, Lb/b/a/b;->f:Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-gez v0, :cond_4

    sget-object v0, Lb/b/a/b;->f:Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-object v0, Lb/b/a/b;->t:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Lb/b/a/a/b;Lb/b/a/a/b;)V
    .locals 0

    iput-object p1, p0, Lb/b/a/a/i;->e:Lb/b/a/a/b;

    iput-object p2, p0, Lb/b/a/a/i;->f:Lb/b/a/a/b;

    return-void
.end method

.method public final b()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()Lb/b/a/a/c;
    .locals 2

    iget-object v0, p0, Lb/b/a/a/i;->e:Lb/b/a/a/b;

    invoke-virtual {v0}, Lb/b/a/a/b;->c()Lb/b/a/a/c;

    move-result-object v0

    sget-object v1, Lb/b/a/a/c;->c:Lb/b/a/a/c;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb/b/a/a/i;->f:Lb/b/a/a/b;

    invoke-virtual {v0}, Lb/b/a/a/b;->c()Lb/b/a/a/c;

    move-result-object v0

    sget-object v1, Lb/b/a/a/c;->c:Lb/b/a/a/c;

    if-ne v0, v1, :cond_0

    sget-object v0, Lb/b/a/a/c;->c:Lb/b/a/a/c;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lb/b/a/a/c;->a:Lb/b/a/a/c;

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    const/16 v1, 0x20

    const/4 v0, 0x0

    iput v0, p0, Lb/b/a/a/i;->a:I

    iput v0, p0, Lb/b/a/a/i;->b:I

    iput-byte v1, p0, Lb/b/a/a/i;->c:B

    iput-byte v1, p0, Lb/b/a/a/i;->d:B

    return-void
.end method
