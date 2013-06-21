.class Lcom/admob/android/ads/Ad;
.super Ljava/lang/Object;
.source "Ad.java"


# instance fields
.field private clickURL:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private html:Ljava/lang/String;

.field private icon:Landroid/graphics/Bitmap;

.field private iconURL:Ljava/lang/String;

.field private image:Landroid/graphics/Bitmap;

.field private imageHeight:I

.field private imageURL:Ljava/lang/String;

.field private imageWidth:I

.field private text:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    return-void
.end method

.method public static createAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/admob/android/ads/Ad;
    .locals 2
    .parameter "context"
    .parameter "html"
    .parameter "iconURL"

    .prologue
    .line 84
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    const/4 p0, 0x0

    .line 188
    .end local p0
    .end local p1
    .end local p2
    :goto_0
    return-object p0

    .line 89
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_1
    new-instance v0, Lcom/admob/android/ads/Ad;

    invoke-direct {v0}, Lcom/admob/android/ads/Ad;-><init>()V

    .line 90
    .local v0, ad:Lcom/admob/android/ads/Ad;
    iput-object p0, v0, Lcom/admob/android/ads/Ad;->context:Landroid/content/Context;

    .line 91
    iput-object p1, v0, Lcom/admob/android/ads/Ad;->html:Ljava/lang/String;

    .line 92
    iput-object p2, v0, Lcom/admob/android/ads/Ad;->iconURL:Ljava/lang/String;

    .line 107
    :try_start_0
    const-string p0, "<a "

    .end local p0
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    .line 109
    .local p0, i:I
    if-ltz p0, :cond_2

    .line 111
    const-string p2, " href=\""

    .end local p2
    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    .end local p0           #i:I
    add-int/lit8 p2, p0, 0x7

    .line 112
    .local p2, start:I
    const-string p0, "\""

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    .line 113
    .local p0, end:I
    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .end local p2           #start:I
    iput-object p2, v0, Lcom/admob/android/ads/Ad;->clickURL:Ljava/lang/String;

    .line 116
    add-int/lit8 p0, p0, 0x1

    invoke-static {p1, p0}, Lcom/admob/android/ads/Ad;->skipToNext(Ljava/lang/String;I)I

    .end local p0           #end:I
    move-result p0

    .line 118
    .local p0, i:I
    if-gez p0, :cond_2

    .line 121
    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    move p2, p0

    .line 126
    .end local p0           #i:I
    .local p2, i:I
    const-string p0, "<img"

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    .line 128
    .local p0, j:I
    if-ne p0, p2, :cond_3

    .line 130
    const-string p0, " src=\""

    .end local p0           #j:I
    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    add-int/lit8 v1, p0, 0x6

    .line 131
    .local v1, start:I
    const-string p0, "\""

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    .line 132
    .local p0, end:I
    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .end local p0           #end:I
    iput-object p0, v0, Lcom/admob/android/ads/Ad;->imageURL:Ljava/lang/String;

    .line 134
    const-string p0, " height=\""

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    add-int/lit8 v1, p0, 0x9

    .line 135
    .local v1, startHeight:I
    const-string p0, "\""

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    .line 136
    .local p0, endHeight:I
    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 137
    .local p0, height:Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .end local p0           #height:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Lcom/admob/android/ads/Ad;->imageHeight:I

    .line 139
    const-string p0, " width=\""

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    add-int/lit8 p2, p0, 0x8

    .line 140
    .local p2, startWidth:I
    const-string p0, "\""

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    .line 141
    .local p0, endWidth:I
    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 142
    .local p2, width:Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    .end local p2           #width:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, v0, Lcom/admob/android/ads/Ad;->imageWidth:I

    .line 145
    const-string p2, "<a"

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .end local p0           #endWidth:I
    move-result p0

    .line 147
    .local p0, i:I
    if-ltz p0, :cond_7

    .line 149
    add-int/lit8 p0, p0, 0x2

    invoke-static {p1, p0}, Lcom/admob/android/ads/Ad;->skipToNext(Ljava/lang/String;I)I

    .end local p0           #i:I
    move-result p0

    .restart local p0       #i:I
    move p2, p0

    .line 154
    .end local v1           #startHeight:I
    .end local p0           #i:I
    .local p2, i:I
    :cond_3
    :goto_1
    if-ltz p2, :cond_4

    .line 156
    const-string p0, "<"

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    .line 157
    .local p0, end:I
    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .end local p0           #end:I
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/admob/android/ads/Ad;->text:Ljava/lang/String;

    .line 158
    iget-object p0, v0, Lcom/admob/android/ads/Ad;->text:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/admob/android/ads/Ad;->text:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_4
    invoke-virtual {v0}, Lcom/admob/android/ads/Ad;->hasImage()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 171
    invoke-virtual {v0}, Lcom/admob/android/ads/Ad;->getImage()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 173
    .local p0, img:Landroid/graphics/Bitmap;
    if-nez p0, :cond_5

    .line 177
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 161
    .end local p0           #img:Landroid/graphics/Bitmap;
    .end local p2           #i:I
    :catch_0
    move-exception p0

    .line 163
    .local p0, e:Ljava/lang/Exception;
    const-string p2, "AdMob SDK"

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #ad:Lcom/admob/android/ads/Ad;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to parse ad response:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 183
    .end local p0           #e:Ljava/lang/Exception;
    .restart local v0       #ad:Lcom/admob/android/ads/Ad;
    .restart local p1
    .restart local p2       #i:I
    :cond_5
    iget-object p0, v0, Lcom/admob/android/ads/Ad;->iconURL:Ljava/lang/String;

    if-eqz p0, :cond_6

    .line 185
    invoke-virtual {v0}, Lcom/admob/android/ads/Ad;->getIcon()Landroid/graphics/Bitmap;

    :cond_6
    move-object p0, v0

    .line 188
    goto/16 :goto_0

    .end local p2           #i:I
    .restart local v1       #startHeight:I
    .local p0, i:I
    :cond_7
    move p2, p0

    .end local p0           #i:I
    .restart local p2       #i:I
    goto :goto_1
.end method

.method private static fetchImage(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "imageURL"
    .parameter "useCaches"

    .prologue
    .line 315
    const/4 v2, 0x0

    .line 317
    .local v2, image:Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    .line 319
    const/4 v3, 0x0

    .line 324
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 325
    .local v4, url:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 326
    .local v0, conn:Ljava/net/URLConnection;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 327
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 328
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 329
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 330
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 333
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 344
    if-eqz v3, :cond_0

    .line 348
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 358
    .end local v0           #conn:Ljava/net/URLConnection;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #url:Ljava/net/URL;
    :cond_0
    :goto_0
    return-object v2

    .line 338
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 340
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    const-string v5, "AdMob SDK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem getting image:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    if-eqz v3, :cond_0

    .line 348
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 350
    :catch_1
    move-exception v5

    goto :goto_0

    .line 344
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_1

    .line 348
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 353
    :cond_1
    :goto_1
    throw v5

    .line 350
    .restart local v0       #conn:Ljava/net/URLConnection;
    .restart local v4       #url:Ljava/net/URL;
    :catch_2
    move-exception v5

    goto :goto_0

    .end local v0           #conn:Ljava/net/URLConnection;
    .end local v4           #url:Ljava/net/URL;
    :catch_3
    move-exception v6

    goto :goto_1
.end method

.method private static skipToNext(Ljava/lang/String;I)I
    .locals 5
    .parameter "html"
    .parameter "pos"

    .prologue
    const/16 v4, 0x3e

    const/4 v3, -0x1

    .line 211
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 213
    .local v1, end:I
    if-ltz p1, :cond_0

    if-lt p1, v1, :cond_1

    :cond_0
    move v2, v3

    .line 252
    :goto_0
    return v2

    .line 219
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 221
    .local v0, c:C
    :goto_1
    if-eq v0, v4, :cond_3

    const/16 v2, 0x3c

    if-eq v0, v2, :cond_3

    .line 223
    add-int/lit8 p1, p1, 0x1

    .line 225
    if-lt p1, v1, :cond_2

    move v2, v3

    .line 227
    goto :goto_0

    .line 230
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 234
    :cond_3
    if-ne v0, v4, :cond_5

    .line 236
    add-int/lit8 p1, p1, 0x1

    .line 237
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 239
    :goto_2
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 241
    add-int/lit8 p1, p1, 0x1

    .line 243
    if-lt p1, v1, :cond_4

    move v2, v3

    .line 245
    goto :goto_0

    .line 248
    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_2

    :cond_5
    move v2, p1

    .line 252
    goto :goto_0
.end method


# virtual methods
.method public clicked()V
    .locals 5

    .prologue
    const-string v4, "AdMob SDK"

    .line 429
    const-string v2, "AdMob SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad clicked.  Opening the browser to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/admob/android/ads/Ad;->clickURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v2, p0, Lcom/admob/android/ads/Ad;->clickURL:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 438
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/admob/android/ads/Ad;->clickURL:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 439
    .local v1, i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 443
    :try_start_0
    iget-object v2, p0, Lcom/admob/android/ads/Ad;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 445
    .restart local v1       #i:Landroid/content/Intent;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 447
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AdMob SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not open browser on ad click to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/admob/android/ads/Ad;->clickURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .line 479
    instance-of v2, p1, Lcom/admob/android/ads/Ad;

    if-eqz v2, :cond_0

    .line 481
    move-object v0, p1

    check-cast v0, Lcom/admob/android/ads/Ad;

    move-object v1, v0

    .line 482
    .local v1, other:Lcom/admob/android/ads/Ad;
    invoke-virtual {p0}, Lcom/admob/android/ads/Ad;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/admob/android/ads/Ad;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 486
    .end local v1           #other:Lcom/admob/android/ads/Ad;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getClickURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/admob/android/ads/Ad;->clickURL:Ljava/lang/String;

    return-object v0
.end method

.method public getHTML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/admob/android/ads/Ad;->html:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 402
    iget-object v0, p0, Lcom/admob/android/ads/Ad;->icon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/admob/android/ads/Ad;->iconURL:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/admob/android/ads/Ad;->fetchImage(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/Ad;->icon:Landroid/graphics/Bitmap;

    .line 406
    iget-object v0, p0, Lcom/admob/android/ads/Ad;->icon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 408
    const-string v0, "AdMob SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get icon for ad from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/admob/android/ads/Ad;->iconURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/admob/android/ads/Ad;->icon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/admob/android/ads/Ad;->image:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/admob/android/ads/Ad;->imageURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/admob/android/ads/Ad;->imageURL:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/admob/android/ads/Ad;->fetchImage(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/Ad;->image:Landroid/graphics/Bitmap;

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/admob/android/ads/Ad;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/admob/android/ads/Ad;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/admob/android/ads/Ad;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 387
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/admob/android/ads/Ad;->imageHeight:I

    goto :goto_0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/admob/android/ads/Ad;->imageURL:Ljava/lang/String;

    return-object v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/admob/android/ads/Ad;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/admob/android/ads/Ad;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 372
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/admob/android/ads/Ad;->imageWidth:I

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/admob/android/ads/Ad;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/admob/android/ads/Ad;->imageURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/admob/android/ads/Ad;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/admob/android/ads/Ad;->getText()Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 465
    const-string v0, ""

    .line 468
    :cond_0
    return-object v0
.end method
