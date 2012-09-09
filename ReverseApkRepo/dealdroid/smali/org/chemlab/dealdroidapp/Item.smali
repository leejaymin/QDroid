.class public Lorg/chemlab/dealdroidapp/Item;
.super Ljava/lang/Object;
.source "Item.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private description:Ljava/lang/String;

.field private expiration:Ljava/util/Date;

.field private imageLink:Landroid/net/Uri;

.field private link:Landroid/net/Uri;

.field private retailPrice:Ljava/lang/String;

.field private salePrice:Ljava/lang/String;

.field private savings:Ljava/lang/String;

.field private shortDescription:Ljava/lang/String;

.field private timestamp:Ljava/util/Date;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/chemlab/dealdroidapp/Item;->timestamp:Ljava/util/Date;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/Date;)V
    .locals 1
    .parameter "title"
    .parameter "salePrice"
    .parameter "retailPrice"
    .parameter "savings"
    .parameter "description"
    .parameter "shortDescription"
    .parameter "link"
    .parameter "imageLink"
    .parameter "expiration"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/chemlab/dealdroidapp/Item;->timestamp:Ljava/util/Date;

    .line 57
    iput-object p1, p0, Lorg/chemlab/dealdroidapp/Item;->title:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lorg/chemlab/dealdroidapp/Item;->salePrice:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lorg/chemlab/dealdroidapp/Item;->retailPrice:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lorg/chemlab/dealdroidapp/Item;->savings:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lorg/chemlab/dealdroidapp/Item;->description:Ljava/lang/String;

    .line 62
    iput-object p6, p0, Lorg/chemlab/dealdroidapp/Item;->shortDescription:Ljava/lang/String;

    .line 63
    iput-object p7, p0, Lorg/chemlab/dealdroidapp/Item;->link:Landroid/net/Uri;

    .line 64
    iput-object p8, p0, Lorg/chemlab/dealdroidapp/Item;->imageLink:Landroid/net/Uri;

    .line 65
    if-eqz p9, :cond_0

    .line 66
    invoke-virtual {p9}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lorg/chemlab/dealdroidapp/Item;->expiration:Ljava/util/Date;

    .line 68
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/Date;Ljava/util/Date;)V
    .locals 1
    .parameter "title"
    .parameter "salePrice"
    .parameter "retailPrice"
    .parameter "savings"
    .parameter "description"
    .parameter "shortDescription"
    .parameter "link"
    .parameter "imageLink"
    .parameter "expiration"
    .parameter "timestamp"

    .prologue
    .line 85
    invoke-direct/range {p0 .. p9}, Lorg/chemlab/dealdroidapp/Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/Date;)V

    .line 86
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Item;->timestamp:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p10}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lorg/chemlab/dealdroidapp/Item;->timestamp:Ljava/util/Date;

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 347
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chemlab/dealdroidapp/Item;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    .local v0, clone:Lorg/chemlab/dealdroidapp/Item;
    return-object v0

    .line 348
    .end local v0           #clone:Lorg/chemlab/dealdroidapp/Item;
    :catch_0
    move-exception v1

    .line 349
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 267
    if-ne p0, p1, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v1

    .line 270
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 271
    goto :goto_0

    .line 273
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 274
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 276
    check-cast v0, Lorg/chemlab/dealdroidapp/Item;

    .line 277
    .local v0, other:Lorg/chemlab/dealdroidapp/Item;
    iget-object v3, p0, Lorg/chemlab/dealdroidapp/Item;->description:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 278
    iget-object v3, v0, Lorg/chemlab/dealdroidapp/Item;->description:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 279
    goto :goto_0

    .line 281
    :cond_4
    iget-object v3, p0, Lorg/chemlab/dealdroidapp/Item;->description:Ljava/lang/String;

    iget-object v4, v0, Lorg/chemlab/dealdroidapp/Item;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 282
    goto :goto_0

    .line 284
    :cond_5
    iget-object v3, p0, Lorg/chemlab/dealdroidapp/Item;->imageLink:Landroid/net/Uri;

    if-nez v3, :cond_6

    .line 285
    iget-object v3, v0, Lorg/chemlab/dealdroidapp/Item;->imageLink:Landroid/net/Uri;

    if-eqz v3, :cond_7

    move v1, v2

    .line 286
    goto :goto_0

    .line 288
    :cond_6
    iget-object v3, p0, Lorg/chemlab/dealdroidapp/Item;->imageLink:Landroid/net/Uri;

    iget-object v4, v0, Lorg/chemlab/dealdroidapp/Item;->imageLink:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 289
    goto :goto_0

    .line 291
    :cond_7
    iget-object v3, p0, Lorg/chemlab/dealdroidapp/Item;->link:Landroid/net/Uri;

    if-nez v3, :cond_8

    .line 292
    iget-object v3, v0, Lorg/chemlab/dealdroidapp/Item;->link:Landroid/net/Uri;

    if-eqz v3, :cond_9

    move v1, v2

    .line 293
    goto :goto_0

    .line 295
    :cond_8
    iget-object v3, p0, Lorg/chemlab/dealdroidapp/Item;->link:Landroid/net/Uri;

    iget-object v4, v0, Lorg/chemlab/dealdroidapp/Item;->link:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 296
    goto :goto_0

    .line 298
    :cond_9
    iget-object v3, p0, Lorg/chemlab/dealdroidapp/Item;->retailPrice:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 299
    iget-object v3, v0, Lorg/chemlab/dealdroidapp/Item;->retailPrice:Ljava/lang/String;

    if-eqz v3, :cond_b

    move v1, v2

    .line 300
    goto :goto_0

    .line 302
    :cond_a
    iget-object v3, p0, Lorg/chemlab/dealdroidapp/Item;->retailPrice:Ljava/lang/String;

    iget-object v4, v0, Lorg/chemlab/dealdroidapp/Item;->retailPrice:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    .line 303
    goto :goto_0

    .line 305
    :cond_b
    iget-object v3, p0, Lorg/chemlab/dealdroidapp/Item;->salePrice:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 306
    iget-object v3, v0, Lorg/chemlab/dealdroidapp/Item;->salePrice:Ljava/lang/String;

    if-eqz v3, :cond_d

    move v1, v2

    .line 307
    goto :goto_0

    .line 309
    :cond_c
    iget-object v3, p0, Lorg/chemlab/dealdroidapp/Item;->salePrice:Ljava/lang/String;

    iget-object v4, v0, Lorg/chemlab/dealdroidapp/Item;->salePrice:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move v1, v2

    .line 310
    goto/16 :goto_0

    .line 312
    :cond_d
    iget-object v3, p0, Lorg/chemlab/dealdroidapp/Item;->savings:Ljava/lang/String;

    if-nez v3, :cond_e

    .line 313
    iget-object v3, v0, Lorg/chemlab/dealdroidapp/Item;->savings:Ljava/lang/String;

    if-eqz v3, :cond_f

    move v1, v2

    .line 314
    goto/16 :goto_0

    .line 316
    :cond_e
    iget-object v3, p0, Lorg/chemlab/dealdroidapp/Item;->savings:Ljava/lang/String;

    iget-object v4, v0, Lorg/chemlab/dealdroidapp/Item;->savings:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    move v1, v2

    .line 317
    goto/16 :goto_0

    .line 319
    :cond_f
    iget-object v3, p0, Lorg/chemlab/dealdroidapp/Item;->shortDescription:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 320
    iget-object v3, v0, Lorg/chemlab/dealdroidapp/Item;->shortDescription:Ljava/lang/String;

    if-eqz v3, :cond_11

    move v1, v2

    .line 321
    goto/16 :goto_0

    .line 323
    :cond_10
    iget-object v3, p0, Lorg/chemlab/dealdroidapp/Item;->shortDescription:Ljava/lang/String;

    iget-object v4, v0, Lorg/chemlab/dealdroidapp/Item;->shortDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    move v1, v2

    .line 324
    goto/16 :goto_0

    .line 326
    :cond_11
    iget-object v3, p0, Lorg/chemlab/dealdroidapp/Item;->title:Ljava/lang/String;

    if-nez v3, :cond_12

    .line 327
    iget-object v3, v0, Lorg/chemlab/dealdroidapp/Item;->title:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 328
    goto/16 :goto_0

    .line 330
    :cond_12
    iget-object v3, p0, Lorg/chemlab/dealdroidapp/Item;->title:Ljava/lang/String;

    iget-object v4, v0, Lorg/chemlab/dealdroidapp/Item;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 331
    goto/16 :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Item;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiration()Ljava/util/Date;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Item;->expiration:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Item;->expiration:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    goto :goto_0
.end method

.method public getImageLink()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Item;->imageLink:Landroid/net/Uri;

    return-object v0
.end method

.method public getLink()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Item;->link:Landroid/net/Uri;

    return-object v0
.end method

.method public getRetailPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Item;->retailPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getSalePrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Item;->salePrice:Ljava/lang/String;

    return-object v0
.end method

.method public getSavings()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Item;->savings:Ljava/lang/String;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Item;->shortDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Item;->timestamp:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Item;->timestamp:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/chemlab/dealdroidapp/Item;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 247
    const/16 v0, 0x1f

    .line 248
    .local v0, prime:I
    const/4 v1, 0x1

    .line 249
    .local v1, result:I
    iget-object v2, p0, Lorg/chemlab/dealdroidapp/Item;->description:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 250
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lorg/chemlab/dealdroidapp/Item;->imageLink:Landroid/net/Uri;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 251
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lorg/chemlab/dealdroidapp/Item;->link:Landroid/net/Uri;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 252
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lorg/chemlab/dealdroidapp/Item;->retailPrice:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 253
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lorg/chemlab/dealdroidapp/Item;->salePrice:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 254
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lorg/chemlab/dealdroidapp/Item;->savings:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v1, v4, v2

    .line 255
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lorg/chemlab/dealdroidapp/Item;->shortDescription:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v1, v4, v2

    .line 256
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lorg/chemlab/dealdroidapp/Item;->title:Ljava/lang/String;

    if-nez v4, :cond_7

    :goto_7
    add-int v1, v2, v3

    .line 257
    return v1

    .line 249
    :cond_0
    iget-object v2, p0, Lorg/chemlab/dealdroidapp/Item;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 250
    :cond_1
    iget-object v2, p0, Lorg/chemlab/dealdroidapp/Item;->imageLink:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    goto :goto_1

    .line 251
    :cond_2
    iget-object v2, p0, Lorg/chemlab/dealdroidapp/Item;->link:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    goto :goto_2

    .line 252
    :cond_3
    iget-object v2, p0, Lorg/chemlab/dealdroidapp/Item;->retailPrice:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 253
    :cond_4
    iget-object v2, p0, Lorg/chemlab/dealdroidapp/Item;->salePrice:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 254
    :cond_5
    iget-object v2, p0, Lorg/chemlab/dealdroidapp/Item;->savings:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 255
    :cond_6
    iget-object v2, p0, Lorg/chemlab/dealdroidapp/Item;->shortDescription:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    .line 256
    :cond_7
    iget-object v3, p0, Lorg/chemlab/dealdroidapp/Item;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_7
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 163
    iput-object p1, p0, Lorg/chemlab/dealdroidapp/Item;->description:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setExpiration(Ljava/util/Date;)V
    .locals 1
    .parameter "expiration"

    .prologue
    .line 223
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/chemlab/dealdroidapp/Item;->expiration:Ljava/util/Date;

    .line 224
    return-void

    .line 223
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    goto :goto_0
.end method

.method public setImageLink(Landroid/net/Uri;)V
    .locals 0
    .parameter "imageLink"

    .prologue
    .line 193
    iput-object p1, p0, Lorg/chemlab/dealdroidapp/Item;->imageLink:Landroid/net/Uri;

    .line 194
    return-void
.end method

.method public setLink(Landroid/net/Uri;)V
    .locals 0
    .parameter "link"

    .prologue
    .line 178
    iput-object p1, p0, Lorg/chemlab/dealdroidapp/Item;->link:Landroid/net/Uri;

    .line 179
    return-void
.end method

.method public setRetailPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "retailPrice"

    .prologue
    .line 133
    iput-object p1, p0, Lorg/chemlab/dealdroidapp/Item;->retailPrice:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setSalePrice(Ljava/lang/String;)V
    .locals 0
    .parameter "salePrice"

    .prologue
    .line 118
    iput-object p1, p0, Lorg/chemlab/dealdroidapp/Item;->salePrice:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setSavings(Ljava/lang/String;)V
    .locals 0
    .parameter "savings"

    .prologue
    .line 148
    iput-object p1, p0, Lorg/chemlab/dealdroidapp/Item;->savings:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setShortDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "shortDescription"

    .prologue
    .line 208
    iput-object p1, p0, Lorg/chemlab/dealdroidapp/Item;->shortDescription:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 1
    .parameter "timestamp"

    .prologue
    .line 237
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/chemlab/dealdroidapp/Item;->timestamp:Ljava/util/Date;

    .line 238
    return-void

    .line 237
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 103
    iput-object p1, p0, Lorg/chemlab/dealdroidapp/Item;->title:Ljava/lang/String;

    .line 104
    return-void
.end method
