.class public final Lcom/paypal/android/a/d;
.super Ljava/lang/Object;


# static fields
.field private static a:[B

.field private static b:Lcom/paypal/android/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/paypal/android/a/d;->b:Lcom/paypal/android/a/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    sget-object v0, Lcom/paypal/android/a/d;->b:Lcom/paypal/android/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/paypal/android/a/d;

    invoke-direct {v0}, Lcom/paypal/android/a/d;-><init>()V

    sput-object v0, Lcom/paypal/android/a/d;->b:Lcom/paypal/android/a/d;

    :cond_0
    const-string v0, "com/paypal/android/utils/data/data.bin"

    sget-object v1, Lcom/paypal/android/a/d;->b:Lcom/paypal/android/a/d;

    invoke-direct {v1, v0}, Lcom/paypal/android/a/d;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/paypal/android/a/d;->a:[B

    return-void
.end method

.method public static a(II)[B
    .locals 1

    sget-object v0, Lcom/paypal/android/a/d;->a:[B

    invoke-static {p0, p1, v0}, Lcom/paypal/android/a/d;->a(II[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(II[B)[B
    .locals 2

    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-static {p2, p0, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 1

    sget-object v0, Lcom/paypal/android/a/d;->b:Lcom/paypal/android/a/d;

    invoke-direct {v0, p0}, Lcom/paypal/android/a/d;->b(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/paypal/android/a/d;->a:[B

    sput-object v0, Lcom/paypal/android/a/d;->b:Lcom/paypal/android/a/d;

    return-void
.end method

.method private b(Ljava/lang/String;)[B
    .locals 7

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_8

    move-result-object v0

    if-eqz v0, :cond_5

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9

    const/16 v2, 0x400

    :try_start_2
    new-array v2, v2, [B

    :goto_0
    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    :cond_1
    :goto_3
    move-object v0, v5

    :goto_4
    return-object v0

    :cond_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    :goto_5
    if-eqz v0, :cond_3

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :cond_3
    :goto_6
    move-object v0, v2

    goto :goto_4

    :cond_4
    move-object v0, v5

    :cond_5
    if-eqz v0, :cond_1

    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v5

    move-object v2, v5

    :goto_7
    if-eqz v1, :cond_6

    :try_start_9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    :cond_6
    :goto_8
    if-eqz v2, :cond_7

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_7

    :cond_7
    :goto_9
    throw v0

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_8

    :catch_7
    move-exception v1

    goto :goto_9

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_7

    :catchall_2
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_7

    :catch_8
    move-exception v0

    move-object v0, v5

    move-object v1, v5

    goto :goto_1

    :catch_9
    move-exception v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method
