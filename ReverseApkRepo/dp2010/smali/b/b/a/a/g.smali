.class public final Lb/b/a/a/g;
.super Lb/b/a/a/b;


# static fields
.field private static final e:Lb/b/a/a/d/g;

.field private static final f:Lb/b/a/a/d/h;

.field private static final g:Lb/b/a/a/d/i;

.field private static final h:Lb/b/a/a/d/j;


# instance fields
.field private a:[Lb/b/a/a/d/b;

.field private b:I

.field private c:Lb/b/a/a/c;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/b/a/a/d/g;

    invoke-direct {v0}, Lb/b/a/a/d/g;-><init>()V

    sput-object v0, Lb/b/a/a/g;->e:Lb/b/a/a/d/g;

    new-instance v0, Lb/b/a/a/d/h;

    invoke-direct {v0}, Lb/b/a/a/d/h;-><init>()V

    sput-object v0, Lb/b/a/a/g;->f:Lb/b/a/a/d/h;

    new-instance v0, Lb/b/a/a/d/i;

    invoke-direct {v0}, Lb/b/a/a/d/i;-><init>()V

    sput-object v0, Lb/b/a/a/g;->g:Lb/b/a/a/d/i;

    new-instance v0, Lb/b/a/a/d/j;

    invoke-direct {v0}, Lb/b/a/a/d/j;-><init>()V

    sput-object v0, Lb/b/a/a/g;->h:Lb/b/a/a/d/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lb/b/a/a/b;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lb/b/a/a/d/b;

    iput-object v0, p0, Lb/b/a/a/g;->a:[Lb/b/a/a/d/b;

    iget-object v0, p0, Lb/b/a/a/g;->a:[Lb/b/a/a/d/b;

    const/4 v1, 0x0

    new-instance v2, Lb/b/a/a/d/b;

    sget-object v3, Lb/b/a/a/g;->e:Lb/b/a/a/d/g;

    invoke-direct {v2, v3}, Lb/b/a/a/d/b;-><init>(Lb/b/a/a/d/m;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lb/b/a/a/g;->a:[Lb/b/a/a/d/b;

    const/4 v1, 0x1

    new-instance v2, Lb/b/a/a/d/b;

    sget-object v3, Lb/b/a/a/g;->f:Lb/b/a/a/d/h;

    invoke-direct {v2, v3}, Lb/b/a/a/d/b;-><init>(Lb/b/a/a/d/m;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lb/b/a/a/g;->a:[Lb/b/a/a/d/b;

    const/4 v1, 0x2

    new-instance v2, Lb/b/a/a/d/b;

    sget-object v3, Lb/b/a/a/g;->g:Lb/b/a/a/d/i;

    invoke-direct {v2, v3}, Lb/b/a/a/d/b;-><init>(Lb/b/a/a/d/m;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lb/b/a/a/g;->a:[Lb/b/a/a/d/b;

    const/4 v1, 0x3

    new-instance v2, Lb/b/a/a/d/b;

    sget-object v3, Lb/b/a/a/g;->h:Lb/b/a/a/d/j;

    invoke-direct {v2, v3}, Lb/b/a/a/d/b;-><init>(Lb/b/a/a/d/m;)V

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lb/b/a/a/g;->d()V

    return-void
.end method


# virtual methods
.method public final a([BII)Lb/b/a/a/c;
    .locals 6

    add-int v1, p2, p3

    :goto_0
    if-ge p2, v1, :cond_0

    iget-object v0, p0, Lb/b/a/a/g;->c:Lb/b/a/a/c;

    sget-object v2, Lb/b/a/a/c;->a:Lb/b/a/a/c;

    if-eq v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lb/b/a/a/g;->c:Lb/b/a/a/c;

    :goto_1
    return-object v0

    :cond_1
    iget v0, p0, Lb/b/a/a/g;->b:I

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-gez v0, :cond_2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lb/b/a/a/g;->a:[Lb/b/a/a/d/b;

    aget-object v2, v2, v0

    aget-byte v3, p1, p2

    invoke-virtual {v2, v3}, Lb/b/a/a/d/b;->a(B)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    iget v2, p0, Lb/b/a/a/g;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lb/b/a/a/g;->b:I

    iget v2, p0, Lb/b/a/a/g;->b:I

    if-gtz v2, :cond_3

    sget-object v0, Lb/b/a/a/c;->c:Lb/b/a/a/c;

    iput-object v0, p0, Lb/b/a/a/g;->c:Lb/b/a/a/c;

    iget-object v0, p0, Lb/b/a/a/g;->c:Lb/b/a/a/c;

    goto :goto_1

    :cond_3
    iget v2, p0, Lb/b/a/a/g;->b:I

    if-eq v0, v2, :cond_4

    iget-object v2, p0, Lb/b/a/a/g;->a:[Lb/b/a/a/d/b;

    iget v3, p0, Lb/b/a/a/g;->b:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lb/b/a/a/g;->a:[Lb/b/a/a/d/b;

    iget v4, p0, Lb/b/a/a/g;->b:I

    iget-object v5, p0, Lb/b/a/a/g;->a:[Lb/b/a/a/d/b;

    aget-object v5, v5, v0

    aput-object v5, v3, v4

    iget-object v3, p0, Lb/b/a/a/g;->a:[Lb/b/a/a/d/b;

    aput-object v2, v3, v0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    sget-object v1, Lb/b/a/a/c;->b:Lb/b/a/a/c;

    iput-object v1, p0, Lb/b/a/a/g;->c:Lb/b/a/a/c;

    iget-object v1, p0, Lb/b/a/a/g;->a:[Lb/b/a/a/d/b;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lb/b/a/a/d/b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/b/a/a/g;->d:Ljava/lang/String;

    iget-object v0, p0, Lb/b/a/a/g;->c:Lb/b/a/a/c;

    goto :goto_1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/b/a/a/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()F
    .locals 1

    const v0, 0x3f7d70a4

    return v0
.end method

.method public final c()Lb/b/a/a/c;
    .locals 1

    iget-object v0, p0, Lb/b/a/a/g;->c:Lb/b/a/a/c;

    return-object v0
.end method

.method public final d()V
    .locals 2

    sget-object v0, Lb/b/a/a/c;->a:Lb/b/a/a/c;

    iput-object v0, p0, Lb/b/a/a/g;->c:Lb/b/a/a/c;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lb/b/a/a/g;->a:[Lb/b/a/a/d/b;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lb/b/a/a/g;->a:[Lb/b/a/a/d/b;

    array-length v0, v0

    iput v0, p0, Lb/b/a/a/g;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lb/b/a/a/g;->d:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v1, p0, Lb/b/a/a/g;->a:[Lb/b/a/a/d/b;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lb/b/a/a/d/b;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
