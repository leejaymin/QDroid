.class public Lorg/jaxen/function/TranslateFunction;
.super Ljava/lang/Object;
.source "TranslateFunction.java"

# interfaces
.implements Lorg/jaxen/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/String;
    .locals 5
    .parameter "strArg"
    .parameter "fromArg"
    .parameter "toArg"
    .parameter "nav"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/FunctionCallException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {p0, p3}, Lorg/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, inStr:Ljava/lang/String;
    invoke-static {p1, p3}, Lorg/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/String;

    move-result-object p0

    .line 164
    .local p0, fromStr:Ljava/lang/String;
    invoke-static {p2, p3}, Lorg/jaxen/function/StringFunction;->evaluate(Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/String;

    move-result-object p3

    .line 167
    .local p3, toStr:Ljava/lang/String;
    new-instance p1, Ljava/util/HashMap;

    .end local p1
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 168
    .local p1, characterMap:Ljava/util/Map;
    invoke-static {p0}, Lorg/jaxen/function/TranslateFunction;->toUnicodeCharacters(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 169
    .local p2, fromCharacters:[Ljava/lang/String;
    invoke-static {p3}, Lorg/jaxen/function/TranslateFunction;->toUnicodeCharacters(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, toCharacters:[Ljava/lang/String;
    array-length p3, p2

    .line 171
    .local p3, fromLen:I
    array-length v3, v2

    .line 172
    .local v3, toLen:I
    const/4 p0, 0x0

    .local p0, i:I
    move v0, p0

    .end local p0           #i:I
    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 173
    aget-object p0, p2, v0

    .line 174
    .local p0, cFrom:Ljava/lang/String;
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    :goto_1
    add-int/lit8 p0, v0, 0x1

    .end local v0           #i:I
    .local p0, i:I
    move v0, p0

    .end local p0           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 179
    .local p0, cFrom:Ljava/lang/String;
    :cond_0
    if-ge v0, v3, :cond_1

    .line 181
    aget-object v4, v2, v0

    invoke-interface {p1, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 185
    :cond_1
    const/4 v4, 0x0

    invoke-interface {p1, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 190
    .end local p0           #cFrom:Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    .end local v2           #toCharacters:[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-direct {v2, p0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 191
    .local v2, outStr:Ljava/lang/StringBuffer;
    invoke-static {v1}, Lorg/jaxen/function/TranslateFunction;->toUnicodeCharacters(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 192
    .local p3, inCharacters:[Ljava/lang/String;
    array-length v0, p3

    .line 193
    .local v0, inLen:I
    const/4 p0, 0x0

    .local p0, i:I
    move p2, p0

    .end local v1           #inStr:Ljava/lang/String;
    .end local p0           #i:I
    .local p2, i:I
    :goto_2
    if-ge p2, v0, :cond_5

    .line 194
    aget-object p0, p3, p2

    .line 195
    .local p0, cIn:Ljava/lang/String;
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 196
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #cIn:Ljava/lang/String;
    check-cast p0, Ljava/lang/String;

    .line 197
    .local p0, cTo:Ljava/lang/String;
    if-eqz p0, :cond_3

    .line 198
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    .end local p0           #cTo:Ljava/lang/String;
    :cond_3
    :goto_3
    add-int/lit8 p0, p2, 0x1

    .end local p2           #i:I
    .local p0, i:I
    move p2, p0

    .end local p0           #i:I
    .restart local p2       #i:I
    goto :goto_2

    .line 202
    .local p0, cIn:Ljava/lang/String;
    :cond_4
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 206
    .end local p0           #cIn:Ljava/lang/String;
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isHighSurrogate(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 246
    const v0, 0xd800

    if-lt p0, v0, :cond_0

    const v0, 0xdbff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLowSurrogate(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 250
    const v0, 0xdc00

    if-lt p0, v0, :cond_0

    const v0, 0xdfff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static toUnicodeCharacters(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/FunctionCallException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 211
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    new-array v4, v7, [Ljava/lang/String;

    .line 212
    .local v4, result:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 213
    .local v5, stringLength:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 214
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 215
    .local v0, c1:C
    invoke-static {v0}, Lorg/jaxen/function/TranslateFunction;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 217
    add-int/lit8 v7, v3, 0x1

    :try_start_0
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 218
    .local v1, c2:C
    invoke-static {v1}, Lorg/jaxen/function/TranslateFunction;->isLowSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 219
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 220
    add-int/lit8 v3, v3, 0x1

    .line 233
    .end local v1           #c2:C
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 213
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 223
    .restart local v1       #c2:C
    :cond_0
    new-instance v7, Lorg/jaxen/FunctionCallException;

    const-string v8, "Mismatched surrogate pair in translate function"

    invoke-direct {v7, v8}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v1           #c2:C
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 227
    .local v2, ex:Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v7, Lorg/jaxen/FunctionCallException;

    const-string v8, "High surrogate without low surrogate at end of string passed to translate function"

    invoke-direct {v7, v8}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 231
    .end local v2           #ex:Ljava/lang/StringIndexOutOfBoundsException;
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    goto :goto_1

    .line 236
    .end local v0           #c1:C
    :cond_2
    array-length v7, v4

    if-ne v5, v7, :cond_3

    move-object v7, v4

    .line 241
    :goto_2
    return-object v7

    .line 239
    :cond_3
    new-array v6, v5, [Ljava/lang/String;

    .line 240
    .local v6, trimmed:[Ljava/lang/String;
    invoke-static {v4, v9, v6, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v6

    .line 241
    goto :goto_2
.end method


# virtual methods
.method public call(Lorg/jaxen/Context;Ljava/util/List;)Ljava/lang/Object;
    .locals 4
    .parameter "context"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/FunctionCallException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 128
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jaxen/Context;->getNavigator()Lorg/jaxen/Navigator;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/jaxen/function/TranslateFunction;->evaluate(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/jaxen/Navigator;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 134
    :cond_0
    new-instance v0, Lorg/jaxen/FunctionCallException;

    const-string v1, "translate() requires three arguments."

    invoke-direct {v0, v1}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
