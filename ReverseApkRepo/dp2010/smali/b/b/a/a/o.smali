.class public final Lb/b/a/a/o;
.super Lb/b/a/a/b;


# static fields
.field private static final d:Lb/b/a/a/d/m;


# instance fields
.field private a:Lb/b/a/a/d/b;

.field private b:Lb/b/a/a/c;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/b/a/a/d/n;

    invoke-direct {v0}, Lb/b/a/a/d/n;-><init>()V

    sput-object v0, Lb/b/a/a/o;->d:Lb/b/a/a/d/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lb/b/a/a/b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/b/a/a/o;->c:I

    new-instance v0, Lb/b/a/a/d/b;

    sget-object v1, Lb/b/a/a/o;->d:Lb/b/a/a/d/m;

    invoke-direct {v0, v1}, Lb/b/a/a/d/b;-><init>(Lb/b/a/a/d/m;)V

    iput-object v0, p0, Lb/b/a/a/o;->a:Lb/b/a/a/d/b;

    invoke-virtual {p0}, Lb/b/a/a/o;->d()V

    return-void
.end method


# virtual methods
.method public final a([BII)Lb/b/a/a/c;
    .locals 4

    const/4 v3, 0x2

    add-int v0, p2, p3

    :goto_0
    if-lt p2, v0, :cond_1

    :goto_1
    iget-object v0, p0, Lb/b/a/a/o;->b:Lb/b/a/a/c;

    sget-object v1, Lb/b/a/a/c;->a:Lb/b/a/a/c;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lb/b/a/a/o;->b()F

    move-result v0

    const v1, 0x3f733333

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    sget-object v0, Lb/b/a/a/c;->b:Lb/b/a/a/c;

    iput-object v0, p0, Lb/b/a/a/o;->b:Lb/b/a/a/c;

    :cond_0
    iget-object v0, p0, Lb/b/a/a/o;->b:Lb/b/a/a/c;

    return-object v0

    :cond_1
    iget-object v1, p0, Lb/b/a/a/o;->a:Lb/b/a/a/d/b;

    aget-byte v2, p1, p2

    invoke-virtual {v1, v2}, Lb/b/a/a/d/b;->a(B)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    sget-object v0, Lb/b/a/a/c;->c:Lb/b/a/a/c;

    iput-object v0, p0, Lb/b/a/a/o;->b:Lb/b/a/a/c;

    goto :goto_1

    :cond_2
    if-ne v1, v3, :cond_3

    sget-object v0, Lb/b/a/a/c;->b:Lb/b/a/a/c;

    iput-object v0, p0, Lb/b/a/a/o;->b:Lb/b/a/a/c;

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    iget-object v1, p0, Lb/b/a/a/o;->a:Lb/b/a/a/d/b;

    invoke-virtual {v1}, Lb/b/a/a/d/b;->a()I

    move-result v1

    if-lt v1, v3, :cond_4

    iget v1, p0, Lb/b/a/a/o;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lb/b/a/a/o;->c:I

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lb/b/a/b;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final b()F
    .locals 3

    const v1, 0x3f7d70a4

    iget v0, p0, Lb/b/a/a/o;->c:I

    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lb/b/a/a/o;->c:I

    if-lt v0, v2, :cond_1

    const/high16 v0, 0x3f80

    sub-float v1, v0, v1

    :cond_0
    return v1

    :cond_1
    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final c()Lb/b/a/a/c;
    .locals 1

    iget-object v0, p0, Lb/b/a/a/o;->b:Lb/b/a/a/c;

    return-object v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lb/b/a/a/o;->a:Lb/b/a/a/d/b;

    invoke-virtual {v0}, Lb/b/a/a/d/b;->b()V

    const/4 v0, 0x0

    iput v0, p0, Lb/b/a/a/o;->c:I

    sget-object v0, Lb/b/a/a/c;->a:Lb/b/a/a/c;

    iput-object v0, p0, Lb/b/a/a/o;->b:Lb/b/a/a/c;

    return-void
.end method
