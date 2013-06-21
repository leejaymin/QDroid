.class public final Lcom/thinkyeah/common/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/activation/DataSource;


# instance fields
.field final synthetic a:Lcom/thinkyeah/common/f;

.field private b:[B

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/thinkyeah/common/f;[BLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/common/g;->a:Lcom/thinkyeah/common/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/thinkyeah/common/g;->b:[B

    iput-object p3, p0, Lcom/thinkyeah/common/g;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/common/g;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "application/octet-stream"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/common/g;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/thinkyeah/common/g;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ByteArrayDataSource"

    return-object v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not Supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
