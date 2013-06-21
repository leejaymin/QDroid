.class public final Lccc71/pmw/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:I

.field public static c:I

.field public static d:I


# instance fields
.field public a:Ljava/util/ArrayList;

.field private e:Lccc71/pmw/b/d;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const v0, 0x100101

    sput v0, Lccc71/pmw/b/c;->b:I

    .line 73
    const v0, 0x100102

    sput v0, Lccc71/pmw/b/c;->c:I

    .line 74
    const v0, 0x100103

    sput v0, Lccc71/pmw/b/c;->d:I

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/b/c;->a:Ljava/util/ArrayList;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/pmw/b/c;->e:Lccc71/pmw/b/d;

    .line 12
    return-void
.end method

.method private static a([BI)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 262
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x100

    and-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 263
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    .line 262
    or-int/2addr v0, v1

    .line 263
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    .line 262
    or-int/2addr v0, v1

    return v0
.end method

.method private static a([BII)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    if-gez p2, :cond_0

    .line 232
    const/4 v0, 0x0

    .line 234
    :goto_0
    return-object v0

    .line 233
    :cond_0
    mul-int/lit8 v0, p2, 0x4

    add-int/lit8 v0, v0, 0x24

    invoke-static {p0, v0}, Lccc71/pmw/b/c;->a([BI)I

    move-result v0

    add-int v1, p1, v0

    .line 234
    add-int/lit8 v0, v1, 0x1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    const v2, 0xff00

    and-int/2addr v0, v2

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v0

    new-array v3, v2, [B

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v1, 0x2

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    aget-byte v4, p0, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private a([B)V
    .locals 11
    .parameter

    .prologue
    const/4 v9, -0x1

    .line 85
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lccc71/pmw/b/c;->a([BI)I

    move-result v0

    .line 89
    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v3, v0, 0x24

    .line 101
    const/16 v0, 0xc

    invoke-static {p1, v0}, Lccc71/pmw/b/c;->a([BI)I

    move-result v1

    move v0, v1

    .line 105
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x4

    if-lt v0, v2, :cond_2

    move v0, v1

    .line 148
    :cond_0
    :goto_1
    array-length v1, p1

    if-lt v0, v1, :cond_3

    .line 227
    :cond_1
    :goto_2
    return-void

    .line 107
    :cond_2
    invoke-static {p1, v0}, Lccc71/pmw/b/c;->a([BI)I

    move-result v2

    sget v4, Lccc71/pmw/b/c;->c:I

    if-eq v2, v4, :cond_0

    .line 105
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 150
    :cond_3
    invoke-static {p1, v0}, Lccc71/pmw/b/c;->a([BI)I

    move-result v1

    .line 151
    add-int/lit8 v2, v0, 0x14

    invoke-static {p1, v2}, Lccc71/pmw/b/c;->a([BI)I

    move-result v2

    .line 153
    sget v4, Lccc71/pmw/b/c;->c:I

    if-ne v1, v4, :cond_b

    .line 155
    add-int/lit8 v1, v0, 0x1c

    invoke-static {p1, v1}, Lccc71/pmw/b/c;->a([BI)I

    move-result v4

    .line 156
    add-int/lit8 v1, v0, 0x24

    .line 157
    invoke-static {p1, v3, v2}, Lccc71/pmw/b/c;->a([BII)Ljava/lang/String;

    move-result-object v5

    .line 159
    const-string v0, "activity"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "receiver"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "action"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 162
    :cond_4
    const/4 v0, 0x0

    move v10, v0

    move v0, v1

    move v1, v10

    :goto_3
    if-ge v1, v4, :cond_0

    .line 164
    add-int/lit8 v2, v0, 0x4

    invoke-static {p1, v2}, Lccc71/pmw/b/c;->a([BI)I

    move-result v6

    .line 165
    add-int/lit8 v2, v0, 0x8

    invoke-static {p1, v2}, Lccc71/pmw/b/c;->a([BI)I

    move-result v7

    .line 166
    add-int/lit8 v2, v0, 0x14

    .line 168
    if-eq v7, v9, :cond_6

    .line 170
    add-int/lit8 v0, v2, 0x10

    invoke-static {p1, v0}, Lccc71/pmw/b/c;->a([BI)I

    move-result v0

    .line 172
    invoke-static {p1, v3, v6}, Lccc71/pmw/b/c;->a([BII)Ljava/lang/String;

    move-result-object v6

    .line 173
    if-eq v7, v9, :cond_7

    invoke-static {p1, v3, v7}, Lccc71/pmw/b/c;->a([BII)Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_4
    const-string v7, "name"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 177
    iget-object v6, p0, Lccc71/pmw/b/c;->e:Lccc71/pmw/b/d;

    if-nez v6, :cond_9

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "receiver"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 179
    :cond_5
    new-instance v6, Lccc71/pmw/b/d;

    invoke-direct {v6, p0}, Lccc71/pmw/b/d;-><init>(Lccc71/pmw/b/c;)V

    iput-object v6, p0, Lccc71/pmw/b/c;->e:Lccc71/pmw/b/d;

    .line 180
    iget-object v6, p0, Lccc71/pmw/b/c;->a:Ljava/util/ArrayList;

    iget-object v7, p0, Lccc71/pmw/b/c;->e:Lccc71/pmw/b/d;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v6, p0, Lccc71/pmw/b/c;->e:Lccc71/pmw/b/d;

    iput-object v0, v6, Lccc71/pmw/b/d;->a:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lccc71/pmw/b/c;->e:Lccc71/pmw/b/d;

    iget-object v0, v0, Lccc71/pmw/b/d;->a:Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 185
    iget-object v0, p0, Lccc71/pmw/b/c;->e:Lccc71/pmw/b/d;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lccc71/pmw/b/c;->f:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lccc71/pmw/b/c;->e:Lccc71/pmw/b/d;

    iget-object v7, v7, Lccc71/pmw/b/d;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lccc71/pmw/b/d;->a:Ljava/lang/String;

    .line 162
    :cond_6
    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_3

    .line 173
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "resourceID 0x"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 187
    :cond_8
    iget-object v0, p0, Lccc71/pmw/b/c;->e:Lccc71/pmw/b/d;

    iget-object v0, v0, Lccc71/pmw/b/d;->a:Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 189
    iget-object v0, p0, Lccc71/pmw/b/c;->e:Lccc71/pmw/b/d;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lccc71/pmw/b/c;->f:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lccc71/pmw/b/c;->e:Lccc71/pmw/b/d;

    iget-object v7, v7, Lccc71/pmw/b/d;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lccc71/pmw/b/d;->a:Ljava/lang/String;

    goto :goto_5

    .line 193
    :cond_9
    iget-object v6, p0, Lccc71/pmw/b/c;->e:Lccc71/pmw/b/d;

    if-eqz v6, :cond_6

    const-string v6, "action"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 195
    iget-object v6, p0, Lccc71/pmw/b/c;->e:Lccc71/pmw/b/d;

    iget-object v6, v6, Lccc71/pmw/b/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 203
    :cond_a
    mul-int/lit8 v0, v4, 0x14

    add-int/2addr v0, v1

    goto/16 :goto_1

    .line 206
    :cond_b
    sget v4, Lccc71/pmw/b/c;->d:I

    if-ne v1, v4, :cond_e

    .line 208
    add-int/lit8 v0, v0, 0x18

    .line 209
    invoke-static {p1, v3, v2}, Lccc71/pmw/b/c;->a([BII)Ljava/lang/String;

    move-result-object v1

    .line 211
    const-string v2, "activity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "receiver"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    :cond_c
    iget-object v1, p0, Lccc71/pmw/b/c;->e:Lccc71/pmw/b/d;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lccc71/pmw/b/c;->e:Lccc71/pmw/b/d;

    iget-object v1, v1, Lccc71/pmw/b/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 214
    iget-object v1, p0, Lccc71/pmw/b/c;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lccc71/pmw/b/c;->e:Lccc71/pmw/b/d;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 215
    :cond_d
    const/4 v1, 0x0

    iput-object v1, p0, Lccc71/pmw/b/c;->e:Lccc71/pmw/b/d;

    goto/16 :goto_1

    .line 218
    :cond_e
    sget v0, Lccc71/pmw/b/c;->b:I

    if-ne v1, v0, :cond_1

    goto/16 :goto_2
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 27
    iput-object p1, p0, Lccc71/pmw/b/c;->f:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lccc71/pmw/b/c;->e:Lccc71/pmw/b/d;

    .line 29
    iget-object v1, p0, Lccc71/pmw/b/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 34
    :try_start_0
    new-instance v1, Ljava/util/jar/JarFile;

    invoke-direct {v1, p2}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 35
    const-string v2, "AndroidManifest.xml"

    invoke-virtual {v1, v2}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 37
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 38
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 39
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 41
    invoke-direct {p0, v1}, Lccc71/pmw/b/c;->a([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    .line 42
    if-eqz v0, :cond_0

    .line 61
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 44
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 69
    :goto_1
    return v0

    .line 48
    :catch_0
    move-exception v1

    :try_start_3
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to open manifest.xml from APK "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 57
    if-eqz v0, :cond_1

    .line 61
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 69
    :cond_1
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 52
    :catch_1
    move-exception v1

    :try_start_5
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to open manifest.xml from APK "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 57
    if-eqz v0, :cond_1

    .line 61
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 63
    :catch_2
    move-exception v0

    goto :goto_2

    .line 56
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 57
    :goto_3
    if-eqz v1, :cond_2

    .line 61
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 67
    :cond_2
    :goto_4
    throw v0

    :catch_3
    move-exception v0

    goto :goto_0

    .line 63
    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_4

    .line 56
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_3
.end method
