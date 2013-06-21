.class public Lgnu/kawa/xml/WriteTo;
.super Lgnu/mapping/Procedure2;
.source "WriteTo.java"


# static fields
.field public static final writeTo:Lgnu/kawa/xml/WriteTo;

.field public static final writeToIfChanged:Lgnu/kawa/xml/WriteTo;


# instance fields
.field ifChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lgnu/kawa/xml/WriteTo;

    invoke-direct {v0}, Lgnu/kawa/xml/WriteTo;-><init>()V

    sput-object v0, Lgnu/kawa/xml/WriteTo;->writeTo:Lgnu/kawa/xml/WriteTo;

    .line 16
    new-instance v0, Lgnu/kawa/xml/WriteTo;

    invoke-direct {v0}, Lgnu/kawa/xml/WriteTo;-><init>()V

    sput-object v0, Lgnu/kawa/xml/WriteTo;->writeToIfChanged:Lgnu/kawa/xml/WriteTo;

    .line 17
    sget-object v0, Lgnu/kawa/xml/WriteTo;->writeToIfChanged:Lgnu/kawa/xml/WriteTo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lgnu/kawa/xml/WriteTo;->ifChanged:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static writeTo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .parameter "value"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 21
    invoke-static {p1}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v3

    .line 22
    .local v3, ppath:Lgnu/text/Path;
    invoke-virtual {v3}, Lgnu/text/Path;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 23
    .local v2, outs:Ljava/io/OutputStream;
    new-instance v1, Lgnu/mapping/OutPort;

    invoke-direct {v1, v2, v3}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;Lgnu/text/Path;)V

    .line 24
    .local v1, out:Lgnu/mapping/OutPort;
    new-instance v0, Lgnu/xml/XMLPrinter;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Lgnu/xml/XMLPrinter;-><init>(Lgnu/mapping/OutPort;Z)V

    .line 25
    .local v0, consumer:Lgnu/xml/XMLPrinter;
    invoke-static {p0, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 26
    invoke-virtual {v1}, Lgnu/mapping/OutPort;->close()V

    .line 27
    return-void
.end method

.method public static writeToIfChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 13
    .parameter "value"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 32
    invoke-static {p1}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v10

    .line 33
    .local v10, ppath:Lgnu/text/Path;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 34
    .local v3, bout:Ljava/io/ByteArrayOutputStream;
    new-instance v9, Lgnu/mapping/OutPort;

    invoke-direct {v9, v3, v10}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;Lgnu/text/Path;)V

    .line 35
    .local v9, out:Lgnu/mapping/OutPort;
    new-instance v4, Lgnu/xml/XMLPrinter;

    invoke-direct {v4, v9, v12}, Lgnu/xml/XMLPrinter;-><init>(Lgnu/mapping/OutPort;Z)V

    .line 36
    .local v4, consumer:Lgnu/xml/XMLPrinter;
    invoke-static {p0, v4}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 37
    invoke-virtual {v9}, Lgnu/mapping/OutPort;->close()V

    .line 38
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 41
    .local v2, bbuf:[B
    :try_start_0
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-virtual {v10}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 42
    .local v8, ins:Ljava/io/InputStream;
    const/4 v6, 0x0

    .local v6, i:I
    move v7, v6

    .line 44
    .end local v6           #i:I
    .local v7, i:I
    :goto_0
    invoke-virtual {v8}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 45
    .local v1, b:I
    array-length v11, v2

    if-ne v7, v11, :cond_1

    const/4 v11, 0x1

    move v0, v11

    .line 46
    .local v0, atend:Z
    :goto_1
    if-gez v1, :cond_3

    .line 48
    if-nez v0, :cond_2

    move v6, v7

    .line 56
    .end local v7           #i:I
    .restart local v6       #i:I
    :cond_0
    :goto_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v0           #atend:Z
    .end local v1           #b:I
    .end local v6           #i:I
    .end local v8           #ins:Ljava/io/InputStream;
    :goto_3
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-virtual {v10}, Lgnu/text/Path;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 64
    .local v5, fout:Ljava/io/OutputStream;
    invoke-virtual {v5, v2}, Ljava/io/OutputStream;->write([B)V

    .line 65
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 66
    .end local v5           #fout:Ljava/io/OutputStream;
    :goto_4
    return-void

    .restart local v1       #b:I
    .restart local v7       #i:I
    .restart local v8       #ins:Ljava/io/InputStream;
    :cond_1
    move v0, v12

    .line 45
    goto :goto_1

    .line 50
    .restart local v0       #atend:Z
    :cond_2
    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    goto :goto_4

    .line 58
    .end local v0           #atend:Z
    .end local v1           #b:I
    .end local v7           #i:I
    .end local v8           #ins:Ljava/io/InputStream;
    :catch_0
    move-exception v11

    goto :goto_3

    .line 53
    .restart local v0       #atend:Z
    .restart local v1       #b:I
    .restart local v7       #i:I
    .restart local v8       #ins:Ljava/io/InputStream;
    :cond_3
    if-nez v0, :cond_4

    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    aget-byte v11, v2, v7
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v11, v1, :cond_0

    move v7, v6

    .line 55
    .end local v6           #i:I
    .restart local v7       #i:I
    goto :goto_0

    :cond_4
    move v6, v7

    .end local v7           #i:I
    .restart local v6       #i:I
    goto :goto_2
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "value"
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 70
    iget-boolean v0, p0, Lgnu/kawa/xml/WriteTo;->ifChanged:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lgnu/kawa/xml/WriteTo;->writeToIfChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    :goto_0
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0

    .line 73
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lgnu/kawa/xml/WriteTo;->writeTo(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
