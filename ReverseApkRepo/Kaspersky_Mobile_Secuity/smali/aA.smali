.class public final LaA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B


# instance fields
.field private final b:Ljava/net/URL;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private e:LaB;

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, LaA;->a:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x7ft
        0x45t
        0x4ct
        0x46t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, LaA;->c(Ljava/io/File;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, LaA;->b:Ljava/net/URL;

    .line 43
    invoke-static {p2}, LaA;->a(Ljava/io/File;)V

    .line 44
    iput-object p2, p0, LaA;->c:Ljava/io/File;

    .line 45
    invoke-static {p3}, LaA;->b(Ljava/io/File;)V

    .line 46
    iput-object p3, p0, LaA;->d:Ljava/io/File;

    .line 47
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/net/URL;)Ljava/io/File;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 202
    .line 206
    :try_start_0
    invoke-virtual {p2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 208
    :try_start_1
    sget-object v0, LaA;->a:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 209
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 210
    invoke-direct {p0, p1, v0}, LaA;->a(Ljava/lang/String;[B)Ljava/io/File;

    move-result-object v5

    .line 212
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 213
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v3, v0, v2, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 214
    invoke-static {v1, v3}, Lah;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 220
    invoke-static {v3}, Lah;->a(Ljava/io/Closeable;)V

    .line 221
    invoke-static {v1}, Lah;->a(Ljava/io/Closeable;)V

    return-object v5

    .line 220
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v2}, Lah;->a(Ljava/io/Closeable;)V

    .line 221
    invoke-static {v1}, Lah;->a(Ljava/io/Closeable;)V

    throw v0

    .line 220
    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_0
.end method

.method private a(Ljava/lang/String;[B)Ljava/io/File;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 227
    sget-object v0, LaA;->a:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    const-string v1, "lib"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string v1, ".so"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 236
    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 241
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, LaA;->d:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 243
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_3

    .line 244
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 246
    :cond_3
    return-object v0
.end method

.method private a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 86
    iput p1, p0, LaA;->f:I

    .line 87
    iput p2, p0, LaA;->g:I

    .line 88
    iget-object v0, p0, LaA;->e:LaB;

    invoke-interface {v0, p1, p2}, LaB;->a(II)Z

    .line 89
    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 68
    :cond_0
    return-void
.end method

.method private static b(Ljava/io/File;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 79
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 82
    :cond_1
    return-void
.end method

.method private static c(Ljava/io/File;)Ljava/net/URL;
    .locals 7
    .parameter

    .prologue
    .line 251
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 253
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    .line 254
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 255
    invoke-static {v0, v2, v1}, Lah;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    .line 257
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 258
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kavsdk/shared/SdkUtils;->a([BZ)V

    .line 260
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "\\$"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 261
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 263
    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v0, v2, v1

    .line 265
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 266
    const-string v5, "http://"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 270
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    :cond_0
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 281
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .line 285
    :cond_2
    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 288
    :cond_3
    invoke-static {v3}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 290
    invoke-virtual {v3}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    return-object v0
.end method

.method private d()Z
    .locals 3

    .prologue
    .line 295
    iget-object v0, p0, LaA;->e:LaB;

    const/4 v1, -0x1

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, LaB;->a(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, LaA;->b:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a([Ljava/lang/String;LaB;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, 0x4

    .line 98
    iput-object p2, p0, LaA;->e:LaB;

    .line 102
    const/4 v2, 0x0

    .line 103
    const/4 v1, 0x0

    .line 107
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, LaA;->c:Ljava/io/File;

    const-string v4, "index"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, LS;->a(Ljava/io/File;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/kavsdk/updater/Index;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 108
    if-nez v0, :cond_b

    .line 109
    :try_start_1
    new-instance v1, Lcom/kavsdk/updater/Index;

    invoke-direct {v1}, Lcom/kavsdk/updater/Index;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 111
    :goto_0
    :try_start_2
    new-instance v3, Lcom/kavsdk/updater/Index;

    iget-object v0, p0, LaA;->b:Ljava/net/URL;

    invoke-direct {v3, v0, p1}, Lcom/kavsdk/updater/Index;-><init>(Ljava/net/URL;[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 112
    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_3
    invoke-direct {p0, v0, v2}, LaA;->a(II)V

    .line 115
    invoke-virtual {v3}, Lcom/kavsdk/updater/Index;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1}, Lcom/kavsdk/updater/Index;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 117
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 118
    const/4 v2, 0x5

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 119
    invoke-virtual {v3}, Lcom/kavsdk/updater/Index;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    const/4 v0, 0x4

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, LaA;->a(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 173
    :try_start_4
    invoke-virtual {v3}, Lcom/kavsdk/updater/Index;->close()V

    .line 176
    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v1}, Lcom/kavsdk/updater/Index;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/kavsdk/updater/IndexParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_4 .. :try_end_4} :catch_2

    .line 198
    :cond_0
    :goto_1
    return-void

    .line 126
    :cond_1
    :try_start_5
    invoke-virtual {v3}, Lcom/kavsdk/updater/Index;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kavsdk/updater/Index$Entry;

    .line 128
    invoke-direct {p0}, LaA;->d()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 130
    const/4 v0, 0x4

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, LaA;->a(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 173
    :try_start_6
    invoke-virtual {v3}, Lcom/kavsdk/updater/Index;->close()V

    .line 176
    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v1}, Lcom/kavsdk/updater/Index;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/kavsdk/updater/IndexParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 180
    :catch_0
    move-exception v0

    .line 182
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 183
    invoke-direct {p0, v7, v9}, LaA;->a(II)V

    goto :goto_1

    .line 135
    :cond_3
    :try_start_7
    invoke-virtual {v0}, Lcom/kavsdk/updater/Index$Entry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/kavsdk/updater/Index;->get(Ljava/lang/String;)Lcom/kavsdk/updater/Index$Entry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kavsdk/updater/Index$Entry;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0}, Lcom/kavsdk/updater/Index$Entry;->getDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/kavsdk/updater/Index$Entry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/kavsdk/updater/Index;->findHash(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kavsdk/updater/Index;->containsHash([B)Z

    move-result v4

    if-nez v4, :cond_2

    .line 137
    :cond_4
    invoke-virtual {v0}, Lcom/kavsdk/updater/Index$Entry;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, LaA;->b:Ljava/net/URL;

    invoke-virtual {v0, v5}, Lcom/kavsdk/updater/Index$Entry;->getUrl(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v5

    invoke-direct {p0, v4, v5}, LaA;->a(Ljava/lang/String;Ljava/net/URL;)Ljava/io/File;

    move-result-object v4

    .line 138
    invoke-virtual {v0}, Lcom/kavsdk/updater/Index$Entry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".avc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 140
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 143
    :try_start_8
    invoke-virtual {v0}, Lcom/kavsdk/updater/Index$Entry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Lcom/kavsdk/updater/Index;->verifyAndRemember(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 144
    new-instance v0, Ljava/security/SignatureException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, LaA;->b:Ljava/net/URL;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " has invalid signature"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 148
    :catchall_0
    move-exception v0

    :try_start_9
    invoke-static {v5}, Lah;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 173
    :catchall_1
    move-exception v0

    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_5

    .line 174
    :try_start_a
    invoke-virtual {v2}, Lcom/kavsdk/updater/Index;->close()V

    .line 176
    :cond_5
    if-eqz v1, :cond_6

    .line 177
    invoke-virtual {v1}, Lcom/kavsdk/updater/Index;->close()V

    :cond_6
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lcom/kavsdk/updater/IndexParserException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_a .. :try_end_a} :catch_2

    .line 186
    :catch_1
    move-exception v0

    .line 188
    invoke-virtual {v0}, Lcom/kavsdk/updater/IndexParserException;->printStackTrace()V

    .line 189
    invoke-direct {p0, v7, v8}, LaA;->a(II)V

    goto/16 :goto_1

    .line 148
    :cond_7
    :try_start_b
    invoke-static {v5}, Lah;->a(Ljava/io/Closeable;)V

    goto/16 :goto_2

    .line 154
    :cond_8
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, LaA;->d:Ljava/io/File;

    const-string v4, "index"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v3}, LS;->a(Ljava/io/File;Ljava/io/Serializable;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 156
    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, LaA;->a(II)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 173
    :goto_4
    :try_start_c
    invoke-virtual {v3}, Lcom/kavsdk/updater/Index;->close()V

    .line 176
    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v1}, Lcom/kavsdk/updater/Index;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Lcom/kavsdk/updater/IndexParserException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_1

    .line 192
    :catch_2
    move-exception v0

    .line 194
    invoke-virtual {v0}, Ljava/security/SignatureException;->printStackTrace()V

    .line 195
    invoke-direct {p0, v7, v8}, LaA;->a(II)V

    goto/16 :goto_1

    .line 161
    :cond_9
    const/4 v0, 0x4

    const/4 v2, 0x2

    :try_start_d
    invoke-direct {p0, v0, v2}, LaA;->a(II)V

    goto :goto_4

    .line 167
    :cond_a
    const/4 v0, 0x4

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, LaA;->a(II)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_4

    .line 173
    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_3

    :cond_b
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, LaA;->f:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, LaA;->g:I

    return v0
.end method
