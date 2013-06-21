.class final Lorg/a/a/e/g;
.super Ljava/lang/Object;


# instance fields
.field final a:Lorg/a/a/e/e;

.field final b:Ljava/lang/String;

.field final c:I


# direct methods
.method private constructor <init>(Lorg/a/a/e/e;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/a/a/e/g;->a:Lorg/a/a/e/e;

    iput-object p2, p0, Lorg/a/a/e/g;->b:Ljava/lang/String;

    iput p3, p0, Lorg/a/a/e/g;->c:I

    return-void
.end method

.method static a(Ljava/io/DataInput;)Lorg/a/a/e/g;
    .locals 10

    new-instance v7, Lorg/a/a/e/g;

    new-instance v0, Lorg/a/a/e/e;

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    int-to-char v1, v1

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v2

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    invoke-interface {p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result v5

    invoke-static {p0}, Lorg/a/a/e/c;->a(Ljava/io/DataInput;)J

    move-result-wide v8

    long-to-int v6, v8

    invoke-direct/range {v0 .. v6}, Lorg/a/a/e/e;-><init>(CIIIZI)V

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lorg/a/a/e/c;->a(Ljava/io/DataInput;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v7, v0, v1, v2}, Lorg/a/a/e/g;-><init>(Lorg/a/a/e/e;Ljava/lang/String;I)V

    return-object v7
.end method


# virtual methods
.method public final a(JII)J
    .locals 2

    iget-object v0, p0, Lorg/a/a/e/g;->a:Lorg/a/a/e/e;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/a/a/e/e;->a(JII)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(JII)J
    .locals 2

    iget-object v0, p0, Lorg/a/a/e/g;->a:Lorg/a/a/e/e;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/a/a/e/e;->b(JII)J

    move-result-wide v0

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/a/a/e/g;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/a/a/e/g;

    iget v0, p0, Lorg/a/a/e/g;->c:I

    iget v1, p1, Lorg/a/a/e/g;->c:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/a/a/e/g;->b:Ljava/lang/String;

    iget-object v1, p1, Lorg/a/a/e/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/a/a/e/g;->a:Lorg/a/a/e/e;

    iget-object v1, p1, Lorg/a/a/e/g;->a:Lorg/a/a/e/e;

    invoke-virtual {v0, v1}, Lorg/a/a/e/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method
