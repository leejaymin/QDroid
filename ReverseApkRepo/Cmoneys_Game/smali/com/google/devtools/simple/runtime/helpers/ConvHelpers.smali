.class public final Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;
.super Ljava/lang/Object;
.source "ConvHelpers.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static boolean2double(Z)D
    .locals 2
    .parameter "b"

    .prologue
    .line 54
    if-eqz p0, :cond_0

    const-wide/high16 v0, -0x4010

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static boolean2integer(Z)I
    .locals 1
    .parameter "b"

    .prologue
    .line 24
    if-eqz p0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static boolean2long(Z)J
    .locals 2
    .parameter "b"

    .prologue
    .line 34
    if-eqz p0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static boolean2single(Z)F
    .locals 1
    .parameter "b"

    .prologue
    .line 44
    if-eqz p0, :cond_0

    const/high16 v0, -0x4080

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static boolean2string(Z)Ljava/lang/String;
    .locals 1
    .parameter "b"

    .prologue
    .line 64
    if-eqz p0, :cond_0

    const-string v0, "True"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "False"

    goto :goto_0
.end method

.method public static byte2integer(B)I
    .locals 1
    .parameter "b"

    .prologue
    .line 74
    shl-int/lit8 v0, p0, 0x18

    shr-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public static double2boolean(D)Z
    .locals 2
    .parameter "d"

    .prologue
    .line 184
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static double2byte(D)B
    .locals 3
    .parameter "d"

    .prologue
    const/16 v2, 0x38

    .line 194
    double-to-long v0, p0

    shl-long/2addr v0, v2

    shr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public static double2short(D)S
    .locals 3
    .parameter "d"

    .prologue
    const/16 v2, 0x30

    .line 204
    double-to-long v0, p0

    shl-long/2addr v0, v2

    shr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public static integer2boolean(I)Z
    .locals 1
    .parameter "i"

    .prologue
    .line 94
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static integer2byte(I)B
    .locals 1
    .parameter "i"

    .prologue
    .line 104
    shl-int/lit8 v0, p0, 0x18

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    return v0
.end method

.method public static integer2short(I)S
    .locals 1
    .parameter "i"

    .prologue
    .line 114
    shl-int/lit8 v0, p0, 0x10

    shr-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    return v0
.end method

.method public static long2boolean(J)Z
    .locals 2
    .parameter "l"

    .prologue
    .line 124
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static long2byte(J)B
    .locals 3
    .parameter "l"

    .prologue
    const/16 v2, 0x38

    .line 134
    shl-long v0, p0, v2

    shr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public static long2short(J)S
    .locals 3
    .parameter "l"

    .prologue
    const/16 v2, 0x30

    .line 144
    shl-long v0, p0, v2

    shr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public static short2byte(S)B
    .locals 1
    .parameter "s"

    .prologue
    .line 84
    shl-int/lit8 v0, p0, 0x18

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    return v0
.end method

.method public static single2boolean(F)Z
    .locals 1
    .parameter "f"

    .prologue
    .line 154
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static single2byte(F)B
    .locals 3
    .parameter "f"

    .prologue
    const/16 v2, 0x38

    .line 164
    float-to-long v0, p0

    shl-long/2addr v0, v2

    shr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public static single2short(F)S
    .locals 3
    .parameter "f"

    .prologue
    const/16 v2, 0x30

    .line 174
    float-to-long v0, p0

    shl-long/2addr v0, v2

    shr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public static string2boolean(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 214
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 217
    const-string v0, "True"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const/4 v0, 0x1

    .line 220
    :goto_0
    return v0

    .line 219
    :cond_0
    const-string v0, "False"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    const/4 v0, 0x0

    goto :goto_0

    .line 222
    :cond_1
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v0}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v0
.end method

.method public static string2byte(Ljava/lang/String;)B
    .locals 2
    .parameter "s"

    .prologue
    .line 233
    invoke-static {p0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->string2double(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->double2byte(D)B

    move-result v0

    return v0
.end method

.method public static string2double(Ljava/lang/String;)D
    .locals 3
    .parameter "s"

    .prologue
    .line 289
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    return-wide v1

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, nfe:Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v1}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v1
.end method

.method public static string2integer(Ljava/lang/String;)I
    .locals 2
    .parameter "s"

    .prologue
    .line 253
    invoke-static {p0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->string2double(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static string2long(Ljava/lang/String;)J
    .locals 3
    .parameter "s"

    .prologue
    .line 264
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    return-wide v1

    .line 265
    :catch_0
    move-exception v0

    .line 267
    .local v0, nfe:Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/devtools/simple/runtime/errors/ConversionError;

    invoke-direct {v1}, Lcom/google/devtools/simple/runtime/errors/ConversionError;-><init>()V

    throw v1
.end method

.method public static string2short(Ljava/lang/String;)S
    .locals 2
    .parameter "s"

    .prologue
    .line 243
    invoke-static {p0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->string2double(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->double2short(D)S

    move-result v0

    return v0
.end method

.method public static string2single(Ljava/lang/String;)F
    .locals 2
    .parameter "s"

    .prologue
    .line 278
    invoke-static {p0}, Lcom/google/devtools/simple/runtime/helpers/ConvHelpers;->string2double(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
