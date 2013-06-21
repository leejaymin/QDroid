.class public final La/b/l;
.super La/b/m;


# instance fields
.field private c:La/b/b;

.field private d:La/b/b;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/b/m;-><init>()V

    new-instance v0, La/b/b;

    invoke-direct {v0}, La/b/b;-><init>()V

    iput-object v0, p0, La/b/l;->c:La/b/b;

    new-instance v0, La/b/b;

    invoke-direct {v0}, La/b/b;-><init>()V

    iput-object v0, p0, La/b/l;->d:La/b/b;

    return-void
.end method

.method public constructor <init>(La/b/b;La/b/b;)V
    .locals 1

    invoke-direct {p0}, La/b/m;-><init>()V

    const/16 v0, 0x81

    iput v0, p0, La/b/l;->a:I

    iput-object p1, p0, La/b/l;->c:La/b/b;

    iput-object p2, p0, La/b/l;->d:La/b/b;

    return-void
.end method


# virtual methods
.method final a([B)I
    .locals 2

    iget-object v0, p0, La/b/l;->c:La/b/b;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, La/b/b;->a([BI)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, La/b/l;->d:La/b/b;

    invoke-virtual {v1, p1, v0}, La/b/b;->a([BI)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x4

    return v0
.end method
