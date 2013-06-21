.class final Ljavax/mail/util/a;
.super Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    iget-object v0, p0, Ljavax/mail/util/a;->buf:[B

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Ljavax/mail/util/a;->count:I

    return v0
.end method
