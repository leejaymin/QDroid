.class public final Lcom/a/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/a/a/a;->a:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x4dt
        0x54t
        0x68t
        0x64t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/a/a/a;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/a/a/a;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/a/a/a;->d:I

    if-eqz p1, :cond_0

    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/a/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/a/a/a;->c:I

    iget v0, p0, Lcom/a/a/a;->c:I

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/a/a/a;->b:I

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/io/File;)V
    .locals 4

    const/4 v3, 0x2

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v1, Lcom/a/a/a;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    const/4 v1, 0x6

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/a/a/b/a;->a(II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    iget v1, p0, Lcom/a/a/a;->b:I

    invoke-static {v1, v3}, Lcom/a/a/b/a;->a(II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    iget v1, p0, Lcom/a/a/a;->c:I

    invoke-static {v1, v3}, Lcom/a/a/b/a;->a(II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    iget v1, p0, Lcom/a/a/a;->d:I

    invoke-static {v1, v3}, Lcom/a/a/b/a;->a(II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v1, p0, Lcom/a/a/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/a/a/b;

    invoke-virtual {p0, v0}, Lcom/a/a/b;->a(Ljava/io/OutputStream;)V

    goto :goto_0
.end method
