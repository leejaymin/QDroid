.class public final Lb/b/a/a/d;
.super Lb/b/a/a/b;


# static fields
.field private static final f:Lb/b/a/a/d/m;


# instance fields
.field private a:Lb/b/a/a/d/b;

.field private b:Lb/b/a/a/c;

.field private c:Lb/b/a/a/a/a;

.field private d:Lb/b/a/a/b/c;

.field private e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/b/a/a/d/c;

    invoke-direct {v0}, Lb/b/a/a/d/c;-><init>()V

    sput-object v0, Lb/b/a/a/d;->f:Lb/b/a/a/d/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lb/b/a/a/b;-><init>()V

    new-instance v0, Lb/b/a/a/d/b;

    sget-object v1, Lb/b/a/a/d;->f:Lb/b/a/a/d/m;

    invoke-direct {v0, v1}, Lb/b/a/a/d/b;-><init>(Lb/b/a/a/d/m;)V

    iput-object v0, p0, Lb/b/a/a/d;->a:Lb/b/a/a/d/b;

    new-instance v0, Lb/b/a/a/a/a;

    invoke-direct {v0}, Lb/b/a/a/a/a;-><init>()V

    iput-object v0, p0, Lb/b/a/a/d;->c:Lb/b/a/a/a/a;

    new-instance v0, Lb/b/a/a/b/c;

    invoke-direct {v0}, Lb/b/a/a/b/c;-><init>()V

    iput-object v0, p0, Lb/b/a/a/d;->d:Lb/b/a/a/b/c;

    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lb/b/a/a/d;->e:[B

    invoke-virtual {p0}, Lb/b/a/a/d;->d()V

    return-void
.end method


# virtual methods
.method public final a([BII)Lb/b/a/a/c;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    add-int v1, p2, p3

    move v0, p2

    :goto_0
    if-lt v0, v1, :cond_1

    :goto_1
    iget-object v0, p0, Lb/b/a/a/d;->e:[B

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    aput-byte v1, v0, v5

    iget-object v0, p0, Lb/b/a/a/d;->b:Lb/b/a/a/c;

    sget-object v1, Lb/b/a/a/c;->a:Lb/b/a/a/c;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb/b/a/a/d;->c:Lb/b/a/a/a/a;

    invoke-virtual {v0}, Lb/b/a/a/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/b/a/a/d;->b()F

    move-result v0

    const v1, 0x3f733333

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    sget-object v0, Lb/b/a/a/c;->b:Lb/b/a/a/c;

    iput-object v0, p0, Lb/b/a/a/d;->b:Lb/b/a/a/c;

    :cond_0
    iget-object v0, p0, Lb/b/a/a/d;->b:Lb/b/a/a/c;

    return-object v0

    :cond_1
    iget-object v2, p0, Lb/b/a/a/d;->a:Lb/b/a/a/d/b;

    aget-byte v3, p1, v0

    invoke-virtual {v2, v3}, Lb/b/a/a/d/b;->a(B)I

    move-result v2

    if-ne v2, v6, :cond_2

    sget-object v0, Lb/b/a/a/c;->c:Lb/b/a/a/c;

    iput-object v0, p0, Lb/b/a/a/d;->b:Lb/b/a/a/c;

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    sget-object v0, Lb/b/a/a/c;->b:Lb/b/a/a/c;

    iput-object v0, p0, Lb/b/a/a/d;->b:Lb/b/a/a/c;

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    iget-object v2, p0, Lb/b/a/a/d;->a:Lb/b/a/a/d/b;

    invoke-virtual {v2}, Lb/b/a/a/d/b;->a()I

    move-result v2

    if-ne v0, p2, :cond_5

    iget-object v3, p0, Lb/b/a/a/d;->e:[B

    aget-byte v4, p1, p2

    aput-byte v4, v3, v6

    iget-object v3, p0, Lb/b/a/a/d;->c:Lb/b/a/a/a/a;

    iget-object v4, p0, Lb/b/a/a/d;->e:[B

    invoke-virtual {v3, v4, v5, v2}, Lb/b/a/a/a/a;->a([BII)V

    iget-object v3, p0, Lb/b/a/a/d;->d:Lb/b/a/a/b/c;

    iget-object v4, p0, Lb/b/a/a/d;->e:[B

    invoke-virtual {v3, v4, v5, v2}, Lb/b/a/a/b/c;->a([BII)V

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lb/b/a/a/d;->c:Lb/b/a/a/a/a;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, p1, v4, v2}, Lb/b/a/a/a/a;->a([BII)V

    iget-object v3, p0, Lb/b/a/a/d;->d:Lb/b/a/a/b/c;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, p1, v4, v2}, Lb/b/a/a/b/c;->a([BII)V

    goto :goto_2
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lb/b/a/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final b()F
    .locals 2

    iget-object v0, p0, Lb/b/a/a/d;->c:Lb/b/a/a/a/a;

    invoke-virtual {v0}, Lb/b/a/a/a/a;->a()F

    move-result v0

    iget-object v1, p0, Lb/b/a/a/d;->d:Lb/b/a/a/b/c;

    invoke-virtual {v1}, Lb/b/a/a/b/c;->a()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public final c()Lb/b/a/a/c;
    .locals 1

    iget-object v0, p0, Lb/b/a/a/d;->b:Lb/b/a/a/c;

    return-object v0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lb/b/a/a/d;->a:Lb/b/a/a/d/b;

    invoke-virtual {v0}, Lb/b/a/a/d/b;->b()V

    sget-object v0, Lb/b/a/a/c;->a:Lb/b/a/a/c;

    iput-object v0, p0, Lb/b/a/a/d;->b:Lb/b/a/a/c;

    iget-object v0, p0, Lb/b/a/a/d;->c:Lb/b/a/a/a/a;

    invoke-virtual {v0}, Lb/b/a/a/a/a;->b()V

    iget-object v0, p0, Lb/b/a/a/d;->d:Lb/b/a/a/b/c;

    invoke-virtual {v0}, Lb/b/a/a/b/c;->b()V

    iget-object v0, p0, Lb/b/a/a/d;->e:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method
