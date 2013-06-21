.class public final La/c/c/a/f;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/io/Reader;

.field private c:C

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    :goto_0
    iput-object v0, p0, La/c/c/a/f;->b:Ljava/io/Reader;

    iput-boolean v1, p0, La/c/c/a/f;->d:Z

    iput v1, p0, La/c/c/a/f;->a:I

    return-void

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, La/c/c/a/f;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-array v0, p1, [C

    iget-boolean v1, p0, La/c/c/a/f;->d:Z

    if-eqz v1, :cond_3

    iput-boolean v2, p0, La/c/c/a/f;->d:Z

    iget-char v1, p0, La/c/c/a/f;->c:C

    aput-char v1, v0, v2

    move v1, v4

    :goto_1
    if-ge v1, p1, :cond_1

    :try_start_0
    iget-object v2, p0, La/c/c/a/f;->b:Ljava/io/Reader;

    sub-int v3, p1, v1

    invoke-virtual {v2, v0, v1, v3}, Ljava/io/Reader;->read([CII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    add-int/2addr v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, La/c/c/a/b;

    invoke-direct {v1, v0}, La/c/c/a/b;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    iget v2, p0, La/c/c/a/f;->a:I

    add-int/2addr v2, v1

    iput v2, p0, La/c/c/a/f;->a:I

    if-ge v1, p1, :cond_2

    const-string v0, "Substring bounds error"

    invoke-virtual {p0, v0}, La/c/c/a/f;->a(Ljava/lang/String;)La/c/c/a/b;

    move-result-object v0

    throw v0

    :cond_2
    sub-int v1, p1, v4

    aget-char v1, v0, v1

    iput-char v1, p0, La/c/c/a/f;->c:C

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)La/c/c/a/b;
    .locals 3

    new-instance v0, La/c/c/a/b;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, La/c/c/a/f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/c/c/a/b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final a()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, La/c/c/a/f;->d:Z

    if-nez v0, :cond_0

    iget v0, p0, La/c/c/a/f;->a:I

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, La/c/c/a/b;

    const-string v1, "Stepping back two steps is not supported"

    invoke-direct {v0, v1}, La/c/c/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, La/c/c/a/f;->a:I

    sub-int/2addr v0, v1

    iput v0, p0, La/c/c/a/f;->a:I

    iput-boolean v1, p0, La/c/c/a/f;->d:Z

    return-void
.end method

.method public final b()C
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, La/c/c/a/f;->d:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, La/c/c/a/f;->d:Z

    iget-char v0, p0, La/c/c/a/f;->c:C

    if-eqz v0, :cond_0

    iget v0, p0, La/c/c/a/f;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/c/c/a/f;->a:I

    :cond_0
    iget-char v0, p0, La/c/c/a/f;->c:C

    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v0, p0, La/c/c/a/f;->b:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-gtz v0, :cond_2

    iput-char v1, p0, La/c/c/a/f;->c:C

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, La/c/c/a/b;

    invoke-direct {v1, v0}, La/c/c/a/b;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    iget v1, p0, La/c/c/a/f;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/c/c/a/f;->a:I

    int-to-char v0, v0

    iput-char v0, p0, La/c/c/a/f;->c:C

    iget-char v0, p0, La/c/c/a/f;->c:C

    goto :goto_0
.end method

.method public final c()C
    .locals 2

    :cond_0
    invoke-virtual {p0}, La/c/c/a/f;->b()C

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    :cond_1
    return v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 4

    const/16 v3, 0x10

    invoke-virtual {p0}, La/c/c/a/f;->c()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    const/16 v2, 0x20

    if-lt v0, v2, :cond_1

    const-string v2, ",:]}/\\\"[{;=#"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, La/c/c/a/f;->b()C

    move-result v0

    goto :goto_0

    :sswitch_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    invoke-virtual {p0}, La/c/c/a/f;->b()C

    move-result v2

    sparse-switch v2, :sswitch_data_1

    if-ne v2, v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :sswitch_1
    const-string v0, "Unterminated string"

    invoke-virtual {p0, v0}, La/c/c/a/f;->a(Ljava/lang/String;)La/c/c/a/b;

    move-result-object v0

    throw v0

    :sswitch_2
    invoke-virtual {p0}, La/c/c/a/f;->b()C

    move-result v2

    sparse-switch v2, :sswitch_data_2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_3
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_4
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_5
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_6
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_7
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_8
    const/4 v2, 0x4

    invoke-direct {p0, v2}, La/c/c/a/f;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_9
    const/4 v2, 0x2

    invoke-direct {p0, v2}, La/c/c/a/f;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_a
    invoke-virtual {p0}, La/c/c/a/f;->a()V

    new-instance v0, La/c/c/a/c;

    invoke-direct {v0, p0}, La/c/c/a/c;-><init>(La/c/c/a/f;)V

    goto :goto_2

    :sswitch_b
    invoke-virtual {p0}, La/c/c/a/f;->a()V

    new-instance v0, La/c/c/a/a;

    invoke-direct {v0, p0}, La/c/c/a/a;-><init>(La/c/c/a/f;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, La/c/c/a/f;->a()V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Missing value"

    invoke-virtual {p0, v0}, La/c/c/a/f;->a(Ljava/lang/String;)La/c/c/a/b;

    move-result-object v0

    throw v0

    :cond_2
    invoke-static {v0}, La/c/c/a/c;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_b
        0x5b -> :sswitch_b
        0x7b -> :sswitch_a
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1
        0xa -> :sswitch_1
        0xd -> :sswitch_1
        0x5c -> :sswitch_2
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x62 -> :sswitch_3
        0x66 -> :sswitch_6
        0x6e -> :sswitch_5
        0x72 -> :sswitch_7
        0x74 -> :sswitch_4
        0x75 -> :sswitch_8
        0x78 -> :sswitch_9
    .end sparse-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, " at character "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, La/c/c/a/f;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
