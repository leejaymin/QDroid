.class public Lorg/mozilla/javascript/json/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/json/JsonParser$ParseException;
    }
.end annotation


# instance fields
.field private cx:Lorg/mozilla/javascript/Context;

.field private length:I

.field private pos:I

.field private scope:Lorg/mozilla/javascript/Scriptable;

.field private src:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0
    .parameter "cx"
    .parameter "scope"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/mozilla/javascript/json/JsonParser;->cx:Lorg/mozilla/javascript/Context;

    .line 68
    iput-object p2, p0, Lorg/mozilla/javascript/json/JsonParser;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 69
    return-void
.end method

.method private consume(C)V
    .locals 5
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mozilla/javascript/json/JsonParser$ParseException;
        }
    .end annotation

    .prologue
    const-string v4, "Expected "

    .line 351
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->consumeWhitespace()V

    .line 352
    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    iget v2, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    if-lt v1, v2, :cond_0

    .line 353
    new-instance v1, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but reached end of stream"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 355
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v2, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 356
    .local v0, c:C
    if-ne v0, p1, :cond_1

    .line 357
    return-void

    .line 359
    :cond_1
    new-instance v1, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private consumeWhitespace()V
    .locals 3

    .prologue
    .line 335
    :goto_0
    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    iget v2, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    if-ge v1, v2, :cond_0

    .line 336
    iget-object v1, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v2, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 337
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 348
    .end local v0           #c:C
    :cond_0
    return-void

    .line 342
    .restart local v0       #c:C
    :sswitch_0
    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    goto :goto_0

    .line 337
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private readArray()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mozilla/javascript/json/JsonParser$ParseException;
        }
    .end annotation

    .prologue
    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 168
    .local v2, needsComma:Z
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->consumeWhitespace()V

    .line 169
    :goto_0
    iget v3, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    iget v4, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    if-ge v3, v4, :cond_2

    .line 170
    iget-object v3, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v4, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 171
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 183
    if-eqz v2, :cond_1

    .line 184
    new-instance v3, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    const-string v4, "Missing comma in array literal"

    invoke-direct {v3, v4}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 173
    :sswitch_0
    iget v3, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 174
    iget-object v3, p0, Lorg/mozilla/javascript/json/JsonParser;->cx:Lorg/mozilla/javascript/Context;

    iget-object v4, p0, Lorg/mozilla/javascript/json/JsonParser;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    return-object v3

    .line 176
    :sswitch_1
    if-nez v2, :cond_0

    .line 177
    new-instance v3, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    const-string v4, "Unexpected comma in array literal"

    invoke-direct {v3, v4}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 179
    :cond_0
    const/4 v2, 0x0

    .line 180
    iget v3, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 189
    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->consumeWhitespace()V

    goto :goto_0

    .line 186
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    const/4 v2, 0x1

    goto :goto_1

    .line 191
    .end local v0           #c:C
    :cond_2
    new-instance v3, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    const-string v4, "Unterminated array literal"

    invoke-direct {v3, v4}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 171
    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_1
        0x5d -> :sswitch_0
    .end sparse-switch
.end method

.method private readFalse()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mozilla/javascript/json/JsonParser$ParseException;
        }
    .end annotation

    .prologue
    .line 312
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x73

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    .line 317
    :cond_0
    new-instance v0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    const-string v1, "Unexpected token: f"

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_1
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 320
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method private readNull()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mozilla/javascript/json/JsonParser$ParseException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x6c

    .line 324
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x75

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_1

    .line 328
    :cond_0
    new-instance v0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    const-string v1, "Unexpected token: n"

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_1
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 331
    const/4 v0, 0x0

    return-object v0
.end method

.method private readNumber(C)Ljava/lang/Number;
    .locals 13
    .parameter "first"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mozilla/javascript/json/JsonParser$ParseException;
        }
    .end annotation

    .prologue
    const-string v12, "Unsupported number format: "

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v0, b:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    :goto_0
    iget v9, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    iget v10, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    if-ge v9, v10, :cond_0

    .line 261
    iget-object v9, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v10, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 262
    .local v1, c:C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-nez v9, :cond_1

    const/16 v9, 0x2d

    if-eq v1, v9, :cond_1

    const/16 v9, 0x2b

    if-eq v1, v9, :cond_1

    const/16 v9, 0x2e

    if-eq v1, v9, :cond_1

    const/16 v9, 0x65

    if-eq v1, v9, :cond_1

    const/16 v9, 0x45

    if-eq v1, v9, :cond_1

    .line 273
    .end local v1           #c:C
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 274
    .local v7, num:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 277
    .local v8, numLength:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v8, :cond_3

    .line 278
    :try_start_0
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 279
    .restart local v1       #c:C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 280
    const/16 v9, 0x30

    if-ne v1, v9, :cond_3

    add-int/lit8 v9, v4, 0x1

    if-le v8, v9, :cond_3

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 283
    new-instance v9, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported number format: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .end local v1           #c:C
    :catch_0
    move-exception v9

    move-object v6, v9

    .line 296
    .local v6, nfe:Ljava/lang/NumberFormatException;
    new-instance v9, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported number format: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 270
    .end local v4           #i:I
    .end local v6           #nfe:Ljava/lang/NumberFormatException;
    .end local v7           #num:Ljava/lang/String;
    .end local v8           #numLength:I
    .restart local v1       #c:C
    :cond_1
    iget v9, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 277
    .restart local v4       #i:I
    .restart local v7       #num:Ljava/lang/String;
    .restart local v8       #numLength:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 288
    .end local v1           #c:C
    :cond_3
    :try_start_1
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 289
    .local v2, dval:D
    double-to-int v5, v2

    .line 290
    .local v5, ival:I
    int-to-double v9, v5

    cmpl-double v9, v9, v2

    if-nez v9, :cond_4

    .line 291
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 293
    :goto_2
    return-object v9

    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto :goto_2
.end method

.method private readObject()Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mozilla/javascript/json/JsonParser$ParseException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v8, p0, Lorg/mozilla/javascript/json/JsonParser;->cx:Lorg/mozilla/javascript/Context;

    iget-object v9, p0, Lorg/mozilla/javascript/json/JsonParser;->scope:Lorg/mozilla/javascript/Scriptable;

    invoke-virtual {v8, v9}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    .line 126
    .local v6, object:Lorg/mozilla/javascript/Scriptable;
    const/4 v5, 0x0

    .line 127
    .local v5, needsComma:Z
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->consumeWhitespace()V

    .line 128
    :goto_0
    iget v8, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    iget v9, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    if-ge v8, v9, :cond_3

    .line 129
    iget-object v8, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v9, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 130
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 158
    new-instance v8, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    const-string v9, "Unexpected token in object literal"

    invoke-direct {v8, v9}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 134
    :sswitch_0
    if-nez v5, :cond_0

    .line 135
    new-instance v8, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    const-string v9, "Unexpected comma in object literal"

    invoke-direct {v8, v9}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 137
    :cond_0
    const/4 v5, 0x0

    .line 160
    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->consumeWhitespace()V

    goto :goto_0

    .line 140
    :sswitch_1
    if-eqz v5, :cond_1

    .line 141
    new-instance v8, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    const-string v9, "Missing comma in object literal"

    invoke-direct {v8, v9}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 143
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readString()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, id:Ljava/lang/String;
    const/16 v8, 0x3a

    invoke-direct {p0, v8}, Lorg/mozilla/javascript/json/JsonParser;->consume(C)V

    .line 145
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readValue()Ljava/lang/Object;

    move-result-object v7

    .line 147
    .local v7, value:Ljava/lang/Object;
    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/String;)D

    move-result-wide v1

    .line 148
    .local v1, d:D
    double-to-int v4, v1

    .line 149
    .local v4, index:I
    int-to-double v8, v4

    cmpl-double v8, v1, v8

    if-eqz v8, :cond_2

    .line 150
    invoke-interface {v6, v3, v6, v7}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 155
    :goto_2
    const/4 v5, 0x1

    .line 156
    goto :goto_1

    .line 152
    :cond_2
    invoke-interface {v6, v4, v6, v7}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_2

    .line 162
    .end local v0           #c:C
    .end local v1           #d:D
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #index:I
    .end local v7           #value:Ljava/lang/Object;
    :cond_3
    new-instance v8, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    const-string v9, "Unterminated object literal"

    invoke-direct {v8, v9}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 132
    .restart local v0       #c:C
    :sswitch_2
    return-object v6

    .line 130
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x2c -> :sswitch_0
        0x7d -> :sswitch_2
    .end sparse-switch
.end method

.method private readString()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mozilla/javascript/json/JsonParser$ParseException;
        }
    .end annotation

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v0, b:Ljava/lang/StringBuilder;
    :goto_0
    iget v3, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    iget v4, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    if-ge v3, v4, :cond_3

    .line 197
    iget-object v3, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v4, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 198
    .local v1, c:C
    const/16 v3, 0x1f

    if-gt v1, v3, :cond_0

    .line 199
    new-instance v3, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    const-string v4, "String contains control character"

    invoke-direct {v3, v4}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 201
    :cond_0
    sparse-switch v1, :sswitch_data_0

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 203
    :sswitch_0
    iget v3, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    iget v4, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    if-lt v3, v4, :cond_1

    .line 204
    new-instance v3, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    const-string v4, "Unterminated string"

    invoke-direct {v3, v4}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 206
    :cond_1
    iget-object v3, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v4, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 207
    sparse-switch v1, :sswitch_data_1

    .line 244
    new-instance v3, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexcpected character in string: \'\\"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 209
    :sswitch_1
    const/16 v3, 0x22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 212
    :sswitch_2
    const/16 v3, 0x5c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 215
    :sswitch_3
    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 218
    :sswitch_4
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 221
    :sswitch_5
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 224
    :sswitch_6
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 227
    :sswitch_7
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 230
    :sswitch_8
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 233
    :sswitch_9
    iget v3, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    iget v4, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    sub-int/2addr v3, v4

    const/4 v4, 0x5

    if-ge v3, v4, :cond_2

    .line 234
    new-instance v3, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid character code: \\u"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v6, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 237
    :cond_2
    :try_start_0
    iget-object v3, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v4, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    iget v5, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    iget v3, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 239
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 240
    .local v2, nfx:Ljava/lang/NumberFormatException;
    new-instance v3, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid character code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v6, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    iget v7, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v7, v7, 0x4

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 248
    .end local v2           #nfx:Ljava/lang/NumberFormatException;
    :sswitch_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 254
    .end local v1           #c:C
    :cond_3
    new-instance v3, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    const-string v4, "Unterminated string literal"

    invoke-direct {v3, v4}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 201
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_a
        0x5c -> :sswitch_0
    .end sparse-switch

    .line 207
    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_1
        0x2f -> :sswitch_3
        0x5c -> :sswitch_2
        0x62 -> :sswitch_4
        0x66 -> :sswitch_5
        0x6e -> :sswitch_6
        0x72 -> :sswitch_7
        0x74 -> :sswitch_8
        0x75 -> :sswitch_9
    .end sparse-switch
.end method

.method private readTrue()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mozilla/javascript/json/JsonParser$ParseException;
        }
    .end annotation

    .prologue
    .line 301
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x72

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x75

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    .line 305
    :cond_0
    new-instance v0, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    const-string v1, "Unexpected token: t"

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_1
    iget v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 308
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method private readValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mozilla/javascript/json/JsonParser$ParseException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->consumeWhitespace()V

    .line 88
    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    iget v2, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    if-ge v1, v2, :cond_0

    .line 89
    iget-object v1, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    iget v2, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 90
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 116
    new-instance v1, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :sswitch_0
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 114
    :goto_0
    return-object v1

    .line 94
    :sswitch_1
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readArray()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 96
    :sswitch_2
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readTrue()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 98
    :sswitch_3
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readFalse()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 100
    :sswitch_4
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 102
    :sswitch_5
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readNull()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 114
    :sswitch_6
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/json/JsonParser;->readNumber(C)Ljava/lang/Number;

    move-result-object v1

    goto :goto_0

    .line 119
    .end local v0           #c:C
    :cond_0
    new-instance v1, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    const-string v2, "Empty JSON string"

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_4
        0x2d -> :sswitch_6
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x39 -> :sswitch_6
        0x5b -> :sswitch_1
        0x66 -> :sswitch_3
        0x6e -> :sswitch_5
        0x74 -> :sswitch_2
        0x7b -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public declared-synchronized parseValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mozilla/javascript/json/JsonParser$ParseException;
        }
    .end annotation

    .prologue
    .line 72
    monitor-enter p0

    if-nez p1, :cond_0

    .line 73
    :try_start_0
    new-instance v1, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    const-string v2, "Input string may not be null"

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 75
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    .line 77
    iput-object p1, p0, Lorg/mozilla/javascript/json/JsonParser;->src:Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->readValue()Ljava/lang/Object;

    move-result-object v0

    .line 79
    .local v0, value:Ljava/lang/Object;
    invoke-direct {p0}, Lorg/mozilla/javascript/json/JsonParser;->consumeWhitespace()V

    .line 80
    iget v1, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    iget v2, p0, Lorg/mozilla/javascript/json/JsonParser;->length:I

    if-ge v1, v2, :cond_1

    .line 81
    new-instance v1, Lorg/mozilla/javascript/json/JsonParser$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected end of stream at char "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/mozilla/javascript/json/JsonParser;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/json/JsonParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :cond_1
    monitor-exit p0

    return-object v0
.end method
