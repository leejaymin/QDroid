.class public final La/a/a;
.super La/a/g;


# static fields
.field static final a:[Ljava/lang/String;


# instance fields
.field b:La/a/b;

.field c:I

.field d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DCERPC_BIND_ERR_ABSTRACT_SYNTAX_NOT_SUPPORTED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "DCERPC_BIND_ERR_PROPOSED_TRANSFER_SYNTAXES_NOT_SUPPORTED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "DCERPC_BIND_ERR_LOCAL_LIMIT_EXCEEDED"

    aput-object v2, v0, v1

    sput-object v0, La/a/a;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/a/g;-><init>()V

    return-void
.end method

.method constructor <init>(La/a/b;La/a/f;)V
    .locals 1

    invoke-direct {p0}, La/a/g;-><init>()V

    iput-object p1, p0, La/a/a;->b:La/a/b;

    iget v0, p2, La/a/f;->b:I

    iput v0, p0, La/a/a;->c:I

    iget v0, p2, La/a/f;->c:I

    iput v0, p0, La/a/a;->d:I

    const/16 v0, 0xb

    iput v0, p0, La/a/a;->f:I

    const/4 v0, 0x3

    iput v0, p0, La/a/a;->g:I

    return-void
.end method


# virtual methods
.method public final a()La/a/e;
    .locals 5

    const/4 v4, 0x4

    iget v0, p0, La/a/a;->k:I

    if-eqz v0, :cond_1

    new-instance v1, La/a/e;

    iget v0, p0, La/a/a;->k:I

    if-ge v0, v4, :cond_0

    sget-object v2, La/a/a;->a:[Ljava/lang/String;

    aget-object v0, v2, v0

    :goto_0
    invoke-direct {v1, v0}, La/a/e;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4}, La/e/d;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(La/a/b/a;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, La/a/a;->c:I

    invoke-virtual {p1, v0}, La/a/b/a;->f(I)V

    iget v0, p0, La/a/a;->d:I

    invoke-virtual {p1, v0}, La/a/b/a;->f(I)V

    invoke-virtual {p1, v1}, La/a/b/a;->g(I)V

    invoke-virtual {p1, v2}, La/a/b/a;->e(I)V

    invoke-virtual {p1, v1}, La/a/b/a;->e(I)V

    invoke-virtual {p1, v1}, La/a/b/a;->f(I)V

    invoke-virtual {p1, v1}, La/a/b/a;->f(I)V

    invoke-virtual {p1, v2}, La/a/b/a;->e(I)V

    invoke-virtual {p1, v1}, La/a/b/a;->e(I)V

    iget-object v0, p0, La/a/a;->b:La/a/b;

    iget-object v0, v0, La/a/b;->e:La/a/j;

    invoke-virtual {v0, p1}, La/a/j;->e(La/a/b/a;)V

    iget-object v0, p0, La/a/a;->b:La/a/b;

    iget v0, v0, La/a/b;->f:I

    invoke-virtual {p1, v0}, La/a/b/a;->f(I)V

    iget-object v0, p0, La/a/a;->b:La/a/b;

    iget v0, v0, La/a/b;->g:I

    invoke-virtual {p1, v0}, La/a/b/a;->f(I)V

    sget-object v0, La/a/a;->e:La/a/j;

    invoke-virtual {v0, p1}, La/a/j;->e(La/a/b/a;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, La/a/b/a;->g(I)V

    return-void
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b(La/a/b/a;)V
    .locals 2

    const/4 v1, 0x4

    invoke-virtual {p1}, La/a/b/a;->c()I

    invoke-virtual {p1}, La/a/b/a;->c()I

    invoke-virtual {p1}, La/a/b/a;->d()I

    invoke-virtual {p1}, La/a/b/a;->c()I

    move-result v0

    invoke-virtual {p1, v0}, La/a/b/a;->c(I)V

    invoke-virtual {p1, v1}, La/a/b/a;->d(I)I

    invoke-virtual {p1}, La/a/b/a;->b()I

    invoke-virtual {p1, v1}, La/a/b/a;->d(I)I

    invoke-virtual {p1}, La/a/b/a;->c()I

    move-result v0

    iput v0, p0, La/a/a;->k:I

    invoke-virtual {p1}, La/a/b/a;->c()I

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, La/a/b/a;->c(I)V

    return-void
.end method
