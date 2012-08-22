.class public Lcom/cauly/android/ad/Message_Ads;
.super Ljava/lang/Object;
.source "Message_Ads.java"


# instance fields
.field private C_AD_TYPE:Ljava/lang/String;

.field private C_CODE:Ljava/lang/String;

.field private C_COLOR:Ljava/lang/String;

.field private C_DESCRIPTION:Ljava/lang/String;

.field private C_EVENT:Ljava/lang/String;

.field private C_ID:Ljava/lang/String;

.field private C_IMG:Ljava/lang/String;

.field private C_LINK:Ljava/lang/String;

.field private C_MARKET:Ljava/lang/String;

.field private C_PAY_TYPE:Ljava/lang/String;

.field private C_TITLE:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/cauly/android/ad/Message_Ads;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Lcom/cauly/android/ad/Message_Ads;

    invoke-direct {v0}, Lcom/cauly/android/ad/Message_Ads;-><init>()V

    .line 152
    .local v0, copy:Lcom/cauly/android/ad/Message_Ads;
    iget-object v1, p0, Lcom/cauly/android/ad/Message_Ads;->C_PAY_TYPE:Ljava/lang/String;

    iput-object v1, v0, Lcom/cauly/android/ad/Message_Ads;->C_PAY_TYPE:Ljava/lang/String;

    .line 153
    iget-object v1, p0, Lcom/cauly/android/ad/Message_Ads;->C_CODE:Ljava/lang/String;

    iput-object v1, v0, Lcom/cauly/android/ad/Message_Ads;->C_CODE:Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcom/cauly/android/ad/Message_Ads;->C_ID:Ljava/lang/String;

    iput-object v1, v0, Lcom/cauly/android/ad/Message_Ads;->C_ID:Ljava/lang/String;

    .line 155
    iget-object v1, p0, Lcom/cauly/android/ad/Message_Ads;->C_TITLE:Ljava/lang/String;

    iput-object v1, v0, Lcom/cauly/android/ad/Message_Ads;->C_TITLE:Ljava/lang/String;

    .line 156
    iget-object v1, p0, Lcom/cauly/android/ad/Message_Ads;->C_DESCRIPTION:Ljava/lang/String;

    iput-object v1, v0, Lcom/cauly/android/ad/Message_Ads;->C_DESCRIPTION:Ljava/lang/String;

    .line 157
    iget-object v1, p0, Lcom/cauly/android/ad/Message_Ads;->C_LINK:Ljava/lang/String;

    iput-object v1, v0, Lcom/cauly/android/ad/Message_Ads;->C_LINK:Ljava/lang/String;

    .line 158
    iget-object v1, p0, Lcom/cauly/android/ad/Message_Ads;->C_AD_TYPE:Ljava/lang/String;

    iput-object v1, v0, Lcom/cauly/android/ad/Message_Ads;->C_AD_TYPE:Ljava/lang/String;

    .line 159
    iget-object v1, p0, Lcom/cauly/android/ad/Message_Ads;->C_IMG:Ljava/lang/String;

    iput-object v1, v0, Lcom/cauly/android/ad/Message_Ads;->C_IMG:Ljava/lang/String;

    .line 160
    iget-object v1, p0, Lcom/cauly/android/ad/Message_Ads;->C_COLOR:Ljava/lang/String;

    iput-object v1, v0, Lcom/cauly/android/ad/Message_Ads;->C_COLOR:Ljava/lang/String;

    .line 161
    iget-object v1, p0, Lcom/cauly/android/ad/Message_Ads;->C_MARKET:Ljava/lang/String;

    iput-object v1, v0, Lcom/cauly/android/ad/Message_Ads;->C_MARKET:Ljava/lang/String;

    .line 162
    iget-object v1, p0, Lcom/cauly/android/ad/Message_Ads;->C_EVENT:Ljava/lang/String;

    iput-object v1, v0, Lcom/cauly/android/ad/Message_Ads;->C_EVENT:Ljava/lang/String;

    .line 163
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    if-ne p0, p1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v1

    .line 223
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 224
    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 226
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 227
    check-cast v0, Lcom/cauly/android/ad/Message_Ads;

    .line 229
    .local v0, other:Lcom/cauly/android/ad/Message_Ads;
    iget-object v3, p0, Lcom/cauly/android/ad/Message_Ads;->C_PAY_TYPE:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 230
    iget-object v3, v0, Lcom/cauly/android/ad/Message_Ads;->C_PAY_TYPE:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 231
    goto :goto_0

    .line 232
    :cond_4
    iget-object v3, p0, Lcom/cauly/android/ad/Message_Ads;->C_PAY_TYPE:Ljava/lang/String;

    iget-object v4, v0, Lcom/cauly/android/ad/Message_Ads;->C_PAY_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 233
    goto :goto_0

    .line 234
    :cond_5
    iget-object v3, p0, Lcom/cauly/android/ad/Message_Ads;->C_CODE:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 235
    iget-object v3, v0, Lcom/cauly/android/ad/Message_Ads;->C_CODE:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 236
    goto :goto_0

    .line 237
    :cond_6
    iget-object v3, p0, Lcom/cauly/android/ad/Message_Ads;->C_CODE:Ljava/lang/String;

    iget-object v4, v0, Lcom/cauly/android/ad/Message_Ads;->C_CODE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 238
    goto :goto_0

    .line 239
    :cond_7
    iget-object v3, p0, Lcom/cauly/android/ad/Message_Ads;->C_ID:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 240
    iget-object v3, v0, Lcom/cauly/android/ad/Message_Ads;->C_ID:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v1, v2

    .line 241
    goto :goto_0

    .line 242
    :cond_8
    iget-object v3, p0, Lcom/cauly/android/ad/Message_Ads;->C_ID:Ljava/lang/String;

    iget-object v4, v0, Lcom/cauly/android/ad/Message_Ads;->C_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 243
    goto :goto_0

    .line 244
    :cond_9
    iget-object v3, p0, Lcom/cauly/android/ad/Message_Ads;->C_TITLE:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 245
    iget-object v3, v0, Lcom/cauly/android/ad/Message_Ads;->C_TITLE:Ljava/lang/String;

    if-eqz v3, :cond_b

    move v1, v2

    .line 246
    goto :goto_0

    .line 247
    :cond_a
    iget-object v3, p0, Lcom/cauly/android/ad/Message_Ads;->C_TITLE:Ljava/lang/String;

    iget-object v4, v0, Lcom/cauly/android/ad/Message_Ads;->C_TITLE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    .line 248
    goto :goto_0

    .line 249
    :cond_b
    iget-object v3, p0, Lcom/cauly/android/ad/Message_Ads;->C_DESCRIPTION:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 250
    iget-object v3, v0, Lcom/cauly/android/ad/Message_Ads;->C_DESCRIPTION:Ljava/lang/String;

    if-eqz v3, :cond_d

    move v1, v2

    .line 251
    goto :goto_0

    .line 252
    :cond_c
    iget-object v3, p0, Lcom/cauly/android/ad/Message_Ads;->C_DESCRIPTION:Ljava/lang/String;

    iget-object v4, v0, Lcom/cauly/android/ad/Message_Ads;->C_DESCRIPTION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move v1, v2

    .line 253
    goto/16 :goto_0

    .line 254
    :cond_d
    iget-object v3, p0, Lcom/cauly/android/ad/Message_Ads;->C_LINK:Ljava/lang/String;

    if-nez v3, :cond_e

    .line 255
    iget-object v3, v0, Lcom/cauly/android/ad/Message_Ads;->C_LINK:Ljava/lang/String;

    if-eqz v3, :cond_f

    move v1, v2

    .line 256
    goto/16 :goto_0

    .line 257
    :cond_e
    iget-object v3, p0, Lcom/cauly/android/ad/Message_Ads;->C_LINK:Ljava/lang/String;

    iget-object v4, v0, Lcom/cauly/android/ad/Message_Ads;->C_LINK:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    move v1, v2

    .line 258
    goto/16 :goto_0

    .line 259
    :cond_f
    iget-object v3, p0, Lcom/cauly/android/ad/Message_Ads;->C_IMG:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 260
    iget-object v3, v0, Lcom/cauly/android/ad/Message_Ads;->C_IMG:Ljava/lang/String;

    if-eqz v3, :cond_11

    move v1, v2

    .line 261
    goto/16 :goto_0

    .line 262
    :cond_10
    iget-object v3, p0, Lcom/cauly/android/ad/Message_Ads;->C_IMG:Ljava/lang/String;

    iget-object v4, v0, Lcom/cauly/android/ad/Message_Ads;->C_IMG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    move v1, v2

    .line 263
    goto/16 :goto_0

    .line 264
    :cond_11
    iget-object v3, p0, Lcom/cauly/android/ad/Message_Ads;->C_COLOR:Ljava/lang/String;

    if-nez v3, :cond_12

    .line 265
    iget-object v3, v0, Lcom/cauly/android/ad/Message_Ads;->C_COLOR:Ljava/lang/String;

    if-eqz v3, :cond_13

    move v1, v2

    .line 266
    goto/16 :goto_0

    .line 267
    :cond_12
    iget-object v3, p0, Lcom/cauly/android/ad/Message_Ads;->C_COLOR:Ljava/lang/String;

    iget-object v4, v0, Lcom/cauly/android/ad/Message_Ads;->C_COLOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    move v1, v2

    .line 268
    goto/16 :goto_0

    .line 269
    :cond_13
    iget-object v3, p0, Lcom/cauly/android/ad/Message_Ads;->C_MARKET:Ljava/lang/String;

    if-nez v3, :cond_14

    .line 270
    iget-object v3, v0, Lcom/cauly/android/ad/Message_Ads;->C_MARKET:Ljava/lang/String;

    if-eqz v3, :cond_15

    move v1, v2

    .line 271
    goto/16 :goto_0

    .line 272
    :cond_14
    iget-object v3, p0, Lcom/cauly/android/ad/Message_Ads;->C_MARKET:Ljava/lang/String;

    iget-object v4, v0, Lcom/cauly/android/ad/Message_Ads;->C_MARKET:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    move v1, v2

    .line 273
    goto/16 :goto_0

    .line 274
    :cond_15
    iget-object v3, p0, Lcom/cauly/android/ad/Message_Ads;->C_EVENT:Ljava/lang/String;

    if-nez v3, :cond_16

    .line 275
    iget-object v3, v0, Lcom/cauly/android/ad/Message_Ads;->C_EVENT:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 276
    goto/16 :goto_0

    .line 277
    :cond_16
    iget-object v3, p0, Lcom/cauly/android/ad/Message_Ads;->C_EVENT:Ljava/lang/String;

    iget-object v4, v0, Lcom/cauly/android/ad/Message_Ads;->C_EVENT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 278
    goto/16 :goto_0
.end method

.method public getC_AD_TYPE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cauly/android/ad/Message_Ads;->C_AD_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public getC_CODE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cauly/android/ad/Message_Ads;->C_CODE:Ljava/lang/String;

    return-object v0
.end method

.method public getC_COLOR()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cauly/android/ad/Message_Ads;->C_COLOR:Ljava/lang/String;

    return-object v0
.end method

.method public getC_DESCRIPTION()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cauly/android/ad/Message_Ads;->C_DESCRIPTION:Ljava/lang/String;

    return-object v0
.end method

.method public getC_EVENT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/cauly/android/ad/Message_Ads;->C_EVENT:Ljava/lang/String;

    return-object v0
.end method

.method public getC_ID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cauly/android/ad/Message_Ads;->C_ID:Ljava/lang/String;

    return-object v0
.end method

.method public getC_IMG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cauly/android/ad/Message_Ads;->C_IMG:Ljava/lang/String;

    return-object v0
.end method

.method public getC_LINK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cauly/android/ad/Message_Ads;->C_LINK:Ljava/lang/String;

    return-object v0
.end method

.method public getC_MARKET()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/cauly/android/ad/Message_Ads;->C_MARKET:Ljava/lang/String;

    return-object v0
.end method

.method public getC_PAY_TYPE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cauly/android/ad/Message_Ads;->C_PAY_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public getC_TITLE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cauly/android/ad/Message_Ads;->C_TITLE:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 203
    const/16 v0, 0x1f

    .line 204
    .local v0, prime:I
    const/4 v1, 0x1

    .line 205
    .local v1, result:I
    iget-object v2, p0, Lcom/cauly/android/ad/Message_Ads;->C_PAY_TYPE:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 206
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/cauly/android/ad/Message_Ads;->C_CODE:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 207
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/cauly/android/ad/Message_Ads;->C_ID:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 208
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/cauly/android/ad/Message_Ads;->C_TITLE:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 209
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/cauly/android/ad/Message_Ads;->C_DESCRIPTION:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    :goto_4
    add-int v1, v4, v2

    .line 210
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/cauly/android/ad/Message_Ads;->C_LINK:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v3

    :goto_5
    add-int v1, v4, v2

    .line 211
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/cauly/android/ad/Message_Ads;->C_AD_TYPE:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v3

    :goto_6
    add-int v1, v4, v2

    .line 212
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/cauly/android/ad/Message_Ads;->C_IMG:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v3

    :goto_7
    add-int v1, v4, v2

    .line 213
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/cauly/android/ad/Message_Ads;->C_COLOR:Ljava/lang/String;

    if-nez v2, :cond_8

    move v2, v3

    :goto_8
    add-int v1, v4, v2

    .line 214
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/cauly/android/ad/Message_Ads;->C_MARKET:Ljava/lang/String;

    if-nez v2, :cond_9

    move v2, v3

    :goto_9
    add-int v1, v4, v2

    .line 215
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/cauly/android/ad/Message_Ads;->C_EVENT:Ljava/lang/String;

    if-nez v4, :cond_a

    :goto_a
    add-int v1, v2, v3

    .line 216
    return v1

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/cauly/android/ad/Message_Ads;->C_PAY_TYPE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 206
    :cond_1
    iget-object v2, p0, Lcom/cauly/android/ad/Message_Ads;->C_CODE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 207
    :cond_2
    iget-object v2, p0, Lcom/cauly/android/ad/Message_Ads;->C_ID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 208
    :cond_3
    iget-object v2, p0, Lcom/cauly/android/ad/Message_Ads;->C_TITLE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 209
    :cond_4
    iget-object v2, p0, Lcom/cauly/android/ad/Message_Ads;->C_DESCRIPTION:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    .line 210
    :cond_5
    iget-object v2, p0, Lcom/cauly/android/ad/Message_Ads;->C_LINK:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 211
    :cond_6
    iget-object v2, p0, Lcom/cauly/android/ad/Message_Ads;->C_AD_TYPE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    .line 212
    :cond_7
    iget-object v2, p0, Lcom/cauly/android/ad/Message_Ads;->C_IMG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    .line 213
    :cond_8
    iget-object v2, p0, Lcom/cauly/android/ad/Message_Ads;->C_COLOR:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8

    .line 214
    :cond_9
    iget-object v2, p0, Lcom/cauly/android/ad/Message_Ads;->C_MARKET:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_9

    .line 215
    :cond_a
    iget-object v3, p0, Lcom/cauly/android/ad/Message_Ads;->C_EVENT:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_a
.end method

.method public setC_AD_TYPE(Ljava/lang/String;)V
    .locals 0
    .parameter "cADTYPE"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/cauly/android/ad/Message_Ads;->C_AD_TYPE:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setC_CODE(Ljava/lang/String;)V
    .locals 0
    .parameter "cCODE"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/cauly/android/ad/Message_Ads;->C_CODE:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setC_COLOR(Ljava/lang/String;)V
    .locals 0
    .parameter "cCOLOR"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/cauly/android/ad/Message_Ads;->C_COLOR:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setC_DESCRIPTION(Ljava/lang/String;)V
    .locals 0
    .parameter "cDESCRIPTION"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/cauly/android/ad/Message_Ads;->C_DESCRIPTION:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setC_EVENT(Ljava/lang/String;)V
    .locals 0
    .parameter "cEVENT"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/cauly/android/ad/Message_Ads;->C_EVENT:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setC_ID(Ljava/lang/String;)V
    .locals 0
    .parameter "cID"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/cauly/android/ad/Message_Ads;->C_ID:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setC_IMG(Ljava/lang/String;)V
    .locals 0
    .parameter "cIMG"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/cauly/android/ad/Message_Ads;->C_IMG:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setC_LINK(Ljava/lang/String;)V
    .locals 0
    .parameter "cLINK"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/cauly/android/ad/Message_Ads;->C_LINK:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setC_MARKET(Ljava/lang/String;)V
    .locals 0
    .parameter "cMARKET"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/cauly/android/ad/Message_Ads;->C_MARKET:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setC_PAY_TYPE(Ljava/lang/String;)V
    .locals 0
    .parameter "cPAYTYPE"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/cauly/android/ad/Message_Ads;->C_PAY_TYPE:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setC_TITLE(Ljava/lang/String;)V
    .locals 0
    .parameter "cTITLE"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/cauly/android/ad/Message_Ads;->C_TITLE:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "C_PAY_TYPE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v1, p0, Lcom/cauly/android/ad/Message_Ads;->C_PAY_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, "C_CODE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v1, p0, Lcom/cauly/android/ad/Message_Ads;->C_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, "C_ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v1, p0, Lcom/cauly/android/ad/Message_Ads;->C_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    const-string v1, "C_TITLE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v1, p0, Lcom/cauly/android/ad/Message_Ads;->C_TITLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, "C_DESCRIPTION: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v1, p0, Lcom/cauly/android/ad/Message_Ads;->C_DESCRIPTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, "C_LINK: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v1, p0, Lcom/cauly/android/ad/Message_Ads;->C_LINK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, "C_IMG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-object v1, p0, Lcom/cauly/android/ad/Message_Ads;->C_IMG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    const-string v1, "C_COLOR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget-object v1, p0, Lcom/cauly/android/ad/Message_Ads;->C_COLOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, "C_MARKET: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-object v1, p0, Lcom/cauly/android/ad/Message_Ads;->C_MARKET:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, "C_EVENT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object v1, p0, Lcom/cauly/android/ad/Message_Ads;->C_EVENT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
