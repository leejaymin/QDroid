.class public final La/b/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Hashtable;

.field private static c:J

.field private static d:I

.field private static e:La/e/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "jcifs.netbios.lmhosts"

    invoke-static {v0}, La/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/b/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, La/b/a;->b:Ljava/util/Hashtable;

    const-wide/16 v0, 0x1

    sput-wide v0, La/b/a;->c:J

    invoke-static {}, La/e/e;->a()La/e/e;

    move-result-object v0

    sput-object v0, La/b/a;->e:La/e/e;

    return-void
.end method

.method static declared-synchronized a(La/b/b;)La/b/g;
    .locals 7

    const-class v2, La/b/a;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, La/b/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    sget-object v3, La/b/a;->a:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sget-wide v5, La/b/a;->c:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    sput-wide v3, La/b/a;->c:J

    sget-object v3, La/b/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    const/4 v3, 0x0

    sput v3, La/b/a;->d:I

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-static {v3}, La/b/a;->a(Ljava/io/Reader;)V

    :cond_0
    sget-object v0, La/b/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/b/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    move-object v1, v0

    :cond_1
    :goto_1
    monitor-exit v2

    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v3, La/b/a;->e:La/e/e;

    sget v3, La/e/e;->a:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    sget-object v3, La/b/a;->e:La/e/e;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lmhosts file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, La/b/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, La/e/e;->println(Ljava/lang/String;)V

    sget-object v3, La/b/a;->e:La/e/e;

    invoke-virtual {v0, v3}, Ljava/io/FileNotFoundException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    sget-object v3, La/b/a;->e:La/e/e;

    sget v3, La/e/e;->a:I

    if-lez v3, :cond_1

    sget-object v3, La/b/a;->e:La/e/e;

    invoke-virtual {v0, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)La/b/g;
    .locals 4

    const-class v1, La/b/a;

    monitor-enter v1

    :try_start_0
    new-instance v0, La/b/b;

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, La/b/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, La/b/a;->a(La/b/b;)La/b/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/io/Reader;)V
    .locals 13

    const/16 v12, 0x5c

    const/16 v10, 0x2e

    const/4 v7, 0x1

    const/4 v3, 0x0

    new-instance v11, Ljava/io/BufferedReader;

    invoke-direct {v11, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    :goto_0
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_5

    const-string v0, "#INCLUDE "

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v6, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "smb:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x2f

    invoke-virtual {v0, v12, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v0, La/b/a;->d:I

    if-lez v0, :cond_2

    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v2, La/d/ba;

    invoke-direct {v2, v1}, La/d/ba;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, La/b/a;->a(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sget v0, La/b/a;->d:I

    add-int/lit8 v0, v0, -0x1

    sput v0, La/b/a;->d:I

    :cond_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#END_ALTERNATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, La/b/a;->e:La/e/e;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lmhosts URL: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, La/e/e;->println(Ljava/lang/String;)V

    sget-object v1, La/b/a;->e:La/e/e;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto/16 :goto_0

    :cond_2
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v2, La/d/ba;

    invoke-direct {v2, v1}, La/d/ba;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, La/b/a;->a(Ljava/io/Reader;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "#BEGIN_ALTERNATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, La/b/a;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, La/b/a;->d:I

    goto/16 :goto_0

    :cond_4
    const-string v0, "#END_ALTERNATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, La/b/a;->d:I

    if-lez v0, :cond_0

    sget v0, La/b/a;->d:I

    add-int/lit8 v0, v0, -0x1

    sput v0, La/b/a;->d:I

    new-instance v0, Ljava/io/IOException;

    const-string v1, "no lmhosts alternate includes loaded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    move v0, v10

    move v1, v3

    move v2, v3

    :goto_1
    array-length v4, v8

    if-ge v1, v4, :cond_b

    if-ne v0, v10, :cond_b

    move v5, v1

    move v1, v3

    :goto_2
    array-length v4, v8

    if-ge v5, v4, :cond_7

    aget-char v4, v8, v5

    const/16 v0, 0x30

    if-lt v4, v0, :cond_6

    const/16 v0, 0x39

    if-gt v4, v0, :cond_6

    mul-int/lit8 v0, v1, 0xa

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x30

    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    move v0, v4

    goto :goto_2

    :cond_6
    move v0, v4

    :cond_7
    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v1

    add-int/lit8 v1, v5, 0x1

    goto :goto_1

    :goto_3
    array-length v1, v8

    if-ge v0, v1, :cond_8

    aget-char v1, v8, v0

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_8

    add-int/lit8 v1, v0, 0x1

    move v0, v1

    goto :goto_3

    :cond_8
    move v4, v0

    :goto_4
    array-length v1, v8

    if-ge v4, v1, :cond_9

    aget-char v1, v8, v4

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_9

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4

    :cond_9
    new-instance v1, La/b/b;

    invoke-virtual {v6, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-direct {v1, v0, v4, v5}, La/b/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, La/b/g;

    sget-object v9, La/b/g;->d:[B

    move v4, v3

    move v5, v3

    move v6, v3

    move v8, v7

    invoke-direct/range {v0 .. v9}, La/b/g;-><init>(La/b/b;IZIZZZZ[B)V

    sget-object v2, La/b/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    return-void

    :cond_b
    move v0, v1

    goto :goto_3
.end method
