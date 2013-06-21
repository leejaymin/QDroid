.class public Lorg/json/JSONTokener;
.super Ljava/lang/Object;
.source "JSONTokener.java"


# instance fields
.field private myIndex:I

.field private mySource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lorg/json/JSONTokener;->myIndex:I

    .line 55
    iput-object p1, p0, Lorg/json/JSONTokener;->mySource:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static dehexchar(C)I
    .locals 2
    .parameter "c"

    .prologue
    const/16 v1, 0x30

    .line 79
    if-lt p0, v1, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 80
    sub-int v0, p0, v1

    .line 88
    :goto_0
    return v0

    .line 82
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 83
    const/16 v0, 0x37

    sub-int v0, p0, v0

    goto :goto_0

    .line 85
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 86
    const/16 v0, 0x57

    sub-int v0, p0, v0

    goto :goto_0

    .line 88
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public back()V
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lorg/json/JSONTokener;->myIndex:I

    if-lez v0, :cond_0

    .line 66
    iget v0, p0, Lorg/json/JSONTokener;->myIndex:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/json/JSONTokener;->myIndex:I

    .line 68
    :cond_0
    return-void
.end method

.method public more()Z
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lorg/json/JSONTokener;->myIndex:I

    iget-object v1, p0, Lorg/json/JSONTokener;->mySource:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()C
    .locals 3

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/json/JSONTokener;->more()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lorg/json/JSONTokener;->mySource:Ljava/lang/String;

    iget v2, p0, Lorg/json/JSONTokener;->myIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 110
    .local v0, c:C
    iget v1, p0, Lorg/json/JSONTokener;->myIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/json/JSONTokener;->myIndex:I

    move v1, v0

    .line 113
    .end local v0           #c:C
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next(C)C
    .locals 3
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 126
    .local v0, n:C
    if-eq v0, p1, :cond_0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and instead saw \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v1

    throw v1

    .line 130
    :cond_0
    return v0
.end method

.method public next(I)Ljava/lang/String;
    .locals 3
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 144
    iget v0, p0, Lorg/json/JSONTokener;->myIndex:I

    .line 145
    .local v0, i:I
    add-int v1, v0, p1

    .line 146
    .local v1, j:I
    iget-object v2, p0, Lorg/json/JSONTokener;->mySource:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 147
    const-string v2, "Substring bounds error"

    invoke-virtual {p0, v2}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2

    .line 149
    :cond_0
    iget v2, p0, Lorg/json/JSONTokener;->myIndex:I

    add-int/2addr v2, p1

    iput v2, p0, Lorg/json/JSONTokener;->myIndex:I

    .line 150
    iget-object v2, p0, Lorg/json/JSONTokener;->mySource:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public nextClean()C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xd

    const/16 v3, 0xa

    const/16 v2, 0x2f

    .line 162
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 163
    .local v0, c:C
    if-ne v0, v2, :cond_5

    .line 164
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 185
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    move v1, v2

    .line 193
    :goto_1
    return v1

    .line 167
    :cond_1
    :sswitch_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 168
    if-eq v0, v3, :cond_0

    if-eq v0, v4, :cond_0

    if-nez v0, :cond_1

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 172
    :cond_3
    :sswitch_1
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 173
    if-nez v0, :cond_4

    .line 174
    const-string v1, "Unclosed comment"

    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v1

    throw v1

    .line 176
    :cond_4
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3

    .line 177
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 188
    :cond_5
    const/16 v1, 0x23

    if-ne v0, v1, :cond_7

    .line 190
    :cond_6
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 191
    if-eq v0, v3, :cond_0

    if-eq v0, v4, :cond_0

    if-nez v0, :cond_6

    goto :goto_0

    .line 192
    :cond_7
    if-eqz v0, :cond_8

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    :cond_8
    move v1, v0

    .line 193
    goto :goto_1

    .line 164
    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch
.end method

.method public nextString(C)Ljava/lang/String;
    .locals 4
    .parameter "quote"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x10

    .line 212
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 214
    .local v1, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 215
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 249
    if-ne v0, p1, :cond_0

    .line 250
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 219
    :sswitch_0
    const-string v2, "Unterminated string"

    invoke-virtual {p0, v2}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2

    .line 221
    :sswitch_1
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 222
    sparse-switch v0, :sswitch_data_1

    .line 245
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 224
    :sswitch_2
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 227
    :sswitch_3
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 230
    :sswitch_4
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 233
    :sswitch_5
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 236
    :sswitch_6
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 239
    :sswitch_7
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lorg/json/JSONTokener;->next(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 242
    :sswitch_8
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/json/JSONTokener;->next(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 215
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch

    .line 222
    :sswitch_data_1
    .sparse-switch
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_4
        0x72 -> :sswitch_6
        0x74 -> :sswitch_3
        0x75 -> :sswitch_7
        0x78 -> :sswitch_8
    .end sparse-switch
.end method

.method public nextTo(C)Ljava/lang/String;
    .locals 3
    .parameter "d"

    .prologue
    .line 265
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 267
    .local v1, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 268
    .local v0, c:C
    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    .line 269
    :cond_0
    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 272
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 274
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public nextTo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "delimiters"

    .prologue
    .line 287
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 289
    .local v1, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 290
    .local v0, c:C
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    if-eqz v0, :cond_0

    .line 291
    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    .line 292
    :cond_0
    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 295
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 297
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public nextValue()Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x30

    const/4 v8, 0x2

    const/4 v9, 0x1

    .line 310
    invoke-virtual {p0}, Lorg/json/JSONTokener;->nextClean()C

    move-result v1

    .line 313
    .local v1, c:C
    sparse-switch v1, :sswitch_data_0

    .line 335
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 336
    .local v6, sb:Ljava/lang/StringBuffer;
    move v0, v1

    .line 337
    .local v0, b:C
    :goto_0
    const/16 v7, 0x20

    if-lt v1, v7, :cond_0

    const-string v7, ",:]}/\\\"[{;=#"

    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_1

    .line 341
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 347
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 348
    .local v5, s:Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 349
    const-string v7, "Missing value"

    invoke-virtual {p0, v7}, Lorg/json/JSONTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v7

    throw v7

    .line 316
    .end local v0           #b:C
    .end local v5           #s:Ljava/lang/String;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    :sswitch_0
    invoke-virtual {p0, v1}, Lorg/json/JSONTokener;->nextString(C)Ljava/lang/String;

    move-result-object v7

    .line 401
    :goto_1
    return-object v7

    .line 318
    :sswitch_1
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 319
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    goto :goto_1

    .line 322
    :sswitch_2
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    .line 323
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, p0}, Lorg/json/JSONArray;-><init>(Lorg/json/JSONTokener;)V

    goto :goto_1

    .line 338
    .restart local v0       #b:C
    .restart local v6       #sb:Ljava/lang/StringBuffer;
    :cond_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 339
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v1

    goto :goto_0

    .line 351
    .restart local v5       #s:Ljava/lang/String;
    :cond_2
    const-string v7, "true"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 352
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 354
    :cond_3
    const-string v7, "false"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 355
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 357
    :cond_4
    const-string v7, "null"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 358
    sget-object v7, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_1

    .line 369
    :cond_5
    if-lt v0, v10, :cond_6

    const/16 v7, 0x39

    if-le v0, v7, :cond_7

    :cond_6
    const/16 v7, 0x2e

    if-eq v0, v7, :cond_7

    const/16 v7, 0x2d

    if-eq v0, v7, :cond_7

    const/16 v7, 0x2b

    if-ne v0, v7, :cond_b

    .line 370
    :cond_7
    if-ne v0, v10, :cond_9

    .line 371
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v8, :cond_a

    .line 372
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x78

    if-eq v7, v8, :cond_8

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x58

    if-ne v7, v8, :cond_a

    .line 374
    :cond_8
    :try_start_0
    new-instance v7, Ljava/lang/Integer;

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 375
    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 374
    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 376
    :catch_0
    move-exception v7

    .line 388
    :cond_9
    :goto_2
    :try_start_1
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 389
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 391
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, v5}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 392
    :catch_2
    move-exception v7

    move-object v3, v7

    .line 394
    .local v3, f:Ljava/lang/Exception;
    :try_start_3
    new-instance v7, Ljava/lang/Double;

    invoke-direct {v7, v5}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 395
    :catch_3
    move-exception v7

    move-object v4, v7

    .local v4, g:Ljava/lang/Exception;
    move-object v7, v5

    .line 396
    goto/16 :goto_1

    .line 381
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #f:Ljava/lang/Exception;
    .end local v4           #g:Ljava/lang/Exception;
    :cond_a
    :try_start_4
    new-instance v7, Ljava/lang/Integer;

    const/16 v8, 0x8

    invoke-static {v5, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    .line 382
    :catch_4
    move-exception v7

    goto :goto_2

    :cond_b
    move-object v7, v5

    .line 401
    goto/16 :goto_1

    .line 313
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_2
        0x5b -> :sswitch_2
        0x7b -> :sswitch_1
    .end sparse-switch
.end method

.method public skipPast(Ljava/lang/String;)Z
    .locals 2
    .parameter "to"

    .prologue
    .line 433
    iget-object v0, p0, Lorg/json/JSONTokener;->mySource:Ljava/lang/String;

    iget v1, p0, Lorg/json/JSONTokener;->myIndex:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/json/JSONTokener;->myIndex:I

    .line 434
    iget v0, p0, Lorg/json/JSONTokener;->myIndex:I

    if-gez v0, :cond_0

    .line 435
    iget-object v0, p0, Lorg/json/JSONTokener;->mySource:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/json/JSONTokener;->myIndex:I

    .line 436
    const/4 v0, 0x0

    .line 439
    :goto_0
    return v0

    .line 438
    :cond_0
    iget v0, p0, Lorg/json/JSONTokener;->myIndex:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/json/JSONTokener;->myIndex:I

    .line 439
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public skipTo(C)C
    .locals 2
    .parameter "to"

    .prologue
    .line 414
    iget v1, p0, Lorg/json/JSONTokener;->myIndex:I

    .line 416
    .local v1, index:I
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONTokener;->next()C

    move-result v0

    .line 417
    .local v0, c:C
    if-nez v0, :cond_1

    .line 418
    iput v1, p0, Lorg/json/JSONTokener;->myIndex:I

    .line 423
    :goto_0
    return v0

    .line 421
    :cond_1
    if-ne v0, p1, :cond_0

    .line 422
    invoke-virtual {p0}, Lorg/json/JSONTokener;->back()V

    goto :goto_0
.end method

.method public syntaxError(Ljava/lang/String;)Lorg/json/JSONException;
    .locals 3
    .parameter "message"

    .prologue
    .line 451
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONTokener;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " at character "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/json/JSONTokener;->myIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/json/JSONTokener;->mySource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
