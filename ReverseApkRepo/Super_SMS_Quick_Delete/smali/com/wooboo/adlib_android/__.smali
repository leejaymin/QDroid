.class final Lcom/wooboo/adlib_android/__;
.super Ljava/lang/Object;
.source "__.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wooboo/adlib_android/__$N;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "|"

.field private static b:I

.field private static final header:[B


# instance fields
.field private _:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:B

.field private n:Lcom/wooboo/adlib_android/__$N;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x1388

    sput v0, Lcom/wooboo/adlib_android/__;->b:I

    .line 317
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/wooboo/adlib_android/__;->header:[B

    .line 18
    return-void

    .line 317
    nop

    :array_0
    .array-data 0x1
        0x14t
        0xat
        0x1t
        0x14t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/wooboo/adlib_android/__;->c:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/wooboo/adlib_android/__;->d:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/wooboo/adlib_android/__;->e:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static ___(Landroid/content/Context;[B)Lcom/wooboo/adlib_android/__;
    .locals 4
    .parameter "_"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/wooboo/adlib_android/__;

    invoke-direct {v0}, Lcom/wooboo/adlib_android/__;-><init>()V

    .line 42
    .local v0, __:Lcom/wooboo/adlib_android/__;
    iput-object p0, v0, Lcom/wooboo/adlib_android/__;->_:Landroid/content/Context;

    .line 43
    invoke-static {p1}, Lcom/wooboo/adlib_android/__;->parser([B)Ljava/util/ArrayList;

    move-result-object v1

    .line 44
    .local v1, ____:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    .line 45
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/wooboo/adlib_android/__;->c:Ljava/lang/String;

    .line 46
    iget-object v2, v0, Lcom/wooboo/adlib_android/__;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/wooboo/adlib_android/__;->c(Ljava/lang/String;)V

    .line 47
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/wooboo/adlib_android/__;->e:Ljava/lang/String;

    .line 48
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/wooboo/adlib_android/__;->d:Ljava/lang/String;

    .line 49
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    iput-byte v2, v0, Lcom/wooboo/adlib_android/__;->f:B

    .line 53
    iget-object v2, v0, Lcom/wooboo/adlib_android/__;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/wooboo/adlib_android/__;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v3

    .line 57
    :goto_0
    return-object v2

    .restart local p0
    :cond_0
    move-object v2, v3

    .line 51
    goto :goto_0

    .line 56
    .end local p0
    :cond_1
    const-string v2, "Wooboo SDK"

    const-string v3, "Get an ad from Wooboo servers."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    .line 57
    goto :goto_0
.end method

.method static synthetic access$0(Lcom/wooboo/adlib_android/__;)B
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-byte v0, p0, Lcom/wooboo/adlib_android/__;->f:B

    return v0
.end method

.method static synthetic access$1(Lcom/wooboo/adlib_android/__;)Lcom/wooboo/adlib_android/__$N;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/wooboo/adlib_android/__;->n:Lcom/wooboo/adlib_android/__$N;

    return-object v0
.end method

.method static synthetic access$2(Lcom/wooboo/adlib_android/__;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wooboo/adlib_android/__;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/wooboo/adlib_android/__;->b:I

    return v0
.end method

.method static synthetic access$4(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 269
    invoke-static {p0}, Lcom/wooboo/adlib_android/__;->sm(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/wooboo/adlib_android/__;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/wooboo/adlib_android/__;->_:Landroid/content/Context;

    return-object v0
.end method

.method private static makeShort(BB)S
    .locals 2
    .parameter "h"
    .parameter "l"

    .prologue
    .line 385
    const v0, 0xff00

    and-int/2addr v0, p0

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, p1, 0xff

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private static parser([B)Ljava/util/ArrayList;
    .locals 15
    .parameter "ina"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x6

    const-string v14, "Wooboo SDK"

    .line 321
    array-length v11, p0

    const/4 v12, 0x7

    if-ne v11, v12, :cond_5

    .line 322
    aget-byte v11, p0, v13

    const/16 v12, -0x20

    if-ne v11, v12, :cond_1

    .line 323
    const-string v11, "Wooboo SDK"

    const-string v11, "Wooboo_PID does not exist"

    invoke-static {v14, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    :goto_0
    const/4 v11, 0x0

    .line 381
    :goto_1
    return-object v11

    .line 324
    :cond_1
    aget-byte v11, p0, v13

    const/16 v12, -0x1f

    if-ne v11, v12, :cond_2

    .line 325
    const-string v11, "Wooboo SDK"

    const-string v11, "Wooboo Server busy"

    invoke-static {v14, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 326
    :cond_2
    aget-byte v11, p0, v13

    const/16 v12, -0x1e

    if-ne v11, v12, :cond_3

    .line 327
    const-string v11, "Wooboo SDK"

    const-string v11, "Wooboo_PID does not activated"

    invoke-static {v14, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    :cond_3
    aget-byte v11, p0, v13

    const/16 v12, -0x1d

    if-ne v11, v12, :cond_4

    .line 330
    const-string v11, "Wooboo SDK"

    .line 331
    const-string v11, "Wooboo Server couldnot find the most suitable ad currently"

    .line 330
    invoke-static {v14, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 332
    :cond_4
    aget-byte v11, p0, v13

    const/16 v12, -0x1c

    if-ne v11, v12, :cond_0

    .line 333
    const-string v11, "Wooboo SDK"

    const-string v11, "Other unknown error"

    invoke-static {v14, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 338
    :cond_5
    const/4 v9, 0x0

    .line 339
    .local v9, text:Ljava/lang/String;
    const/4 v3, 0x0

    .line 340
    .local v3, iconURL:Ljava/lang/String;
    const/4 v10, 0x0

    .line 341
    .local v10, type:B
    const/4 v0, 0x0

    .line 343
    .local v0, clickurl:Ljava/lang/String;
    const/4 v2, 0x0

    .line 344
    .local v2, i:I
    const/4 v6, 0x0

    .line 345
    .local v6, tag:B
    sget-object v11, Lcom/wooboo/adlib_android/__;->header:[B

    array-length v11, v11

    add-int/lit8 v2, v11, 0x2

    .line 346
    const/4 v7, 0x0

    .line 347
    .local v7, temp:Ljava/lang/String;
    :goto_2
    array-length v11, p0

    if-lt v2, v11, :cond_6

    .line 376
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v11, v5

    .line 381
    goto :goto_1

    .line 348
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_6
    aget-byte v6, p0, v2

    .line 349
    add-int/lit8 v2, v2, 0x1

    .line 350
    aget-byte v11, p0, v2

    add-int/lit8 v12, v2, 0x1

    aget-byte v12, p0, v12

    invoke-static {v11, v12}, Lcom/wooboo/adlib_android/__;->makeShort(BB)S

    move-result v4

    .line 351
    .local v4, len:S
    add-int/lit8 v2, v2, 0x2

    .line 353
    :try_start_0
    new-instance v8, Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-direct {v8, p0, v2, v4, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .end local v7           #temp:Ljava/lang/String;
    .local v8, temp:Ljava/lang/String;
    const/4 v11, -0x6

    if-ne v6, v11, :cond_7

    .line 356
    move-object v9, v8

    .line 370
    :goto_3
    add-int/2addr v2, v4

    move-object v7, v8

    .end local v8           #temp:Ljava/lang/String;
    .restart local v7       #temp:Ljava/lang/String;
    goto :goto_2

    .line 358
    .end local v7           #temp:Ljava/lang/String;
    .restart local v8       #temp:Ljava/lang/String;
    :cond_7
    const/4 v11, -0x5

    if-ne v6, v11, :cond_8

    .line 359
    move-object v3, v8

    goto :goto_3

    .line 361
    :cond_8
    const/4 v11, -0x4

    if-ne v6, v11, :cond_9

    .line 362
    const/4 v11, 0x1

    :try_start_1
    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_3

    .line 366
    :cond_9
    move v10, v6

    .line 367
    move-object v0, v8

    goto :goto_3

    .line 371
    .end local v8           #temp:Ljava/lang/String;
    .restart local v7       #temp:Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v1, v11

    .line 372
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    :goto_4
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 371
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    .end local v7           #temp:Ljava/lang/String;
    .restart local v8       #temp:Ljava/lang/String;
    :catch_1
    move-exception v11

    move-object v1, v11

    move-object v7, v8

    .end local v8           #temp:Ljava/lang/String;
    .restart local v7       #temp:Ljava/lang/String;
    goto :goto_4
.end method

.method private static sm(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    const-string v6, "|"

    .line 270
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/String;

    .line 271
    .local v0, back:[Ljava/lang/String;
    const-string v4, "|"

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 272
    .local v1, i:I
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v5

    .line 273
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, subject:Ljava/lang/String;
    const-string v4, "|"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 275
    .local v2, j:I
    const/4 v4, 0x1

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 276
    const/4 v4, 0x2

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 277
    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/wooboo/adlib_android/__;->c:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .line 304
    instance-of v2, p1, Lcom/wooboo/adlib_android/__;

    if-eqz v2, :cond_0

    .line 305
    move-object v0, p1

    check-cast v0, Lcom/wooboo/adlib_android/__;

    move-object v1, v0

    .line 306
    .local v1, other:Lcom/wooboo/adlib_android/__;
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/__;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/wooboo/adlib_android/__;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 308
    .end local v1           #other:Lcom/wooboo/adlib_android/__;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getImgURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/wooboo/adlib_android/__;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkListener()Lcom/wooboo/adlib_android/__$N;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/wooboo/adlib_android/__;->n:Lcom/wooboo/adlib_android/__$N;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/wooboo/adlib_android/__;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/wooboo/adlib_android/__;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lcom/wooboo/adlib_android/__$1;

    invoke-direct {v0, p0}, Lcom/wooboo/adlib_android/__$1;-><init>(Lcom/wooboo/adlib_android/__;)V

    .line 264
    invoke-virtual {v0}, Lcom/wooboo/adlib_android/__$1;->start()V

    .line 265
    invoke-static {}, Lcom/wooboo/adlib_android/ImpressionAdView;->close()V

    .line 267
    :cond_0
    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/__;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setNetworkListener(Lcom/wooboo/adlib_android/__$N;)V
    .locals 0
    .parameter "networkListener"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/wooboo/adlib_android/__;->n:Lcom/wooboo/adlib_android/__$N;

    .line 286
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/wooboo/adlib_android/__;->getText()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, s:Ljava/lang/String;
    return-object v0
.end method
