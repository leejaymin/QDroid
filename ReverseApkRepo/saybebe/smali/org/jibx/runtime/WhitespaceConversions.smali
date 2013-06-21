.class public final Lorg/jibx/runtime/WhitespaceConversions;
.super Ljava/lang/Object;
.source "WhitespaceConversions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collapse(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "text"

    .prologue
    .line 182
    if-nez p0, :cond_1

    .line 183
    const/4 p0, 0x0

    .line 207
    .end local p0
    .local v0, index:I
    .local v1, length:I
    :cond_0
    :goto_0
    return-object p0

    .line 188
    .end local v0           #index:I
    .end local v1           #length:I
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 189
    .restart local v1       #length:I
    const/4 v0, 0x0

    .restart local v0       #index:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 190
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 204
    :cond_2
    :sswitch_0
    if-ge v0, v1, :cond_0

    .line 205
    invoke-static {p0, v0}, Lorg/jibx/runtime/WhitespaceConversions;->convertCollapsed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 190
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private static convertCollapsed(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .parameter "text"
    .parameter "index"

    .prologue
    const/16 v6, 0x20

    .line 123
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 124
    .local v4, length:I
    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v5, v4, -0x1

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 125
    .local v0, buff:Ljava/lang/StringBuffer;
    if-lez p1, :cond_1

    .line 128
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, p1, :cond_0

    .line 129
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 128
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 137
    .end local v3           #i:I
    :cond_1
    const/4 v2, 0x1

    .line 138
    .local v2, drop:Z
    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    if-ge p1, v4, :cond_3

    .line 139
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 140
    .local v1, chr:C
    sparse-switch v1, :sswitch_data_0

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 159
    const/4 v2, 0x0

    goto :goto_1

    .line 147
    :sswitch_0
    if-nez v2, :cond_2

    .line 150
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 151
    const/4 v2, 0x1

    goto :goto_1

    .line 166
    .end local v1           #chr:C
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 169
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 140
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private static convertReplaced(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "text"
    .parameter "index"

    .prologue
    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 46
    .local v4, length:I
    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v5, v4, -0x1

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 47
    .local v0, buff:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 48
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .local v1, chr:C
    :pswitch_0
    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    move v3, p1

    .line 52
    .end local v1           #chr:C
    .end local p1
    .local v3, index:I
    :goto_2
    if-ge v3, v4, :cond_0

    .line 53
    add-int/lit8 p1, v3, 0x1

    .end local v3           #index:I
    .restart local p1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 54
    .restart local v1       #chr:C
    packed-switch v1, :pswitch_data_0

    .line 66
    :pswitch_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 71
    .end local v1           #chr:C
    .end local p1
    .restart local v3       #index:I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .end local v3           #index:I
    .restart local p1
    :cond_1
    move v3, p1

    .end local p1
    .restart local v3       #index:I
    goto :goto_2

    .line 54
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "text"

    .prologue
    .line 84
    if-nez p0, :cond_1

    .line 85
    const/4 p0, 0x0

    .line 108
    .end local p0
    .local v0, index:I
    .local v1, length:I
    :cond_0
    :goto_0
    return-object p0

    .line 90
    .end local v0           #index:I
    .end local v1           #length:I
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 91
    .restart local v1       #length:I
    const/4 v0, 0x0

    .restart local v0       #index:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 92
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 91
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    :cond_2
    :pswitch_1
    if-ge v0, v1, :cond_0

    .line 106
    invoke-static {p0, v0}, Lorg/jibx/runtime/WhitespaceConversions;->convertReplaced(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "text"

    .prologue
    .line 220
    if-nez p0, :cond_1

    .line 221
    const/4 p0, 0x0

    .line 273
    .end local p0
    .local v1, length:I
    .local v2, start:I
    :cond_0
    :goto_0
    return-object p0

    .line 225
    .end local v1           #length:I
    .end local v2           #start:I
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 227
    .restart local v1       #length:I
    const/4 v2, 0x0

    .restart local v2       #start:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 228
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 243
    :cond_2
    if-ge v2, v1, :cond_4

    .line 247
    add-int/lit8 v0, v1, -0x1

    .line 248
    .local v0, end:I
    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_1

    .line 265
    add-int/lit8 v0, v0, 0x1

    .line 266
    if-gtz v2, :cond_3

    if-ge v0, v1, :cond_0

    .line 267
    :cond_3
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 227
    .end local v0           #end:I
    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 247
    .restart local v0       #end:I
    :sswitch_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 273
    .end local v0           #end:I
    :cond_4
    const-string p0, ""

    goto :goto_0

    .line 228
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch

    .line 248
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
    .end sparse-switch
.end method
