.class public final La/a/a/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HMAC-SHA1"

    iput-object v0, p0, La/a/a/a/a;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, La/a/a/a/a;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, La/a/a/a/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Lb/a/a/b/a;

    new-instance v1, Lb/a/a/a/b;

    invoke-direct {v1}, Lb/a/a/a/b;-><init>()V

    invoke-direct {v0, v1}, Lb/a/a/b/a;-><init>(Lb/a/a/b;)V

    new-instance v1, Lb/a/a/c/a;

    iget-object v2, p0, La/a/a/a/a;->c:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lb/a/a/c/a;-><init>([B)V

    invoke-virtual {v0, v1}, Lb/a/a/b/a;->a(Lb/a/a/a;)V

    iget-object v1, p0, La/a/a/a/a;->b:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v2, v1

    invoke-virtual {v0, v1, v2}, Lb/a/a/b/a;->a([BI)V

    invoke-virtual {v0}, Lb/a/a/b/a;->a()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lb/a/a/b/a;->a([B)I

    new-instance v0, Ljava/lang/String;

    invoke-static {v1}, La/a/a/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, La/a/a/a/a;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, La/a/a/a/a;->d:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/a;->b:Ljava/lang/String;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/a;->c:Ljava/lang/String;

    return-void
.end method
