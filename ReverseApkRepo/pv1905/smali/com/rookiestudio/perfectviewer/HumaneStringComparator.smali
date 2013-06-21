.class public Lcom/rookiestudio/perfectviewer/HumaneStringComparator;
.super Ljava/lang/Object;
.source "HumaneStringComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/rookiestudio/baseclass/TFileData;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/rookiestudio/perfectviewer/HumaneStringComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/rookiestudio/perfectviewer/HumaneStringComparator;

    invoke-direct {v0}, Lcom/rookiestudio/perfectviewer/HumaneStringComparator;-><init>()V

    sput-object v0, Lcom/rookiestudio/perfectviewer/HumaneStringComparator;->DEFAULT:Lcom/rookiestudio/perfectviewer/HumaneStringComparator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareNatural(Ljava/lang/String;Ljava/lang/String;ZLjava/text/Collator;)I
    .locals 21
    .parameter "s"
    .parameter "t"
    .parameter "caseSensitive"
    .parameter "collator"

    .prologue
    .line 50
    const/4 v10, 0x0

    .line 51
    .local v10, sIndex:I
    const/16 v17, 0x0

    .line 53
    .local v17, tIndex:I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v12

    .line 54
    .local v12, sLength:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v19

    .line 60
    .local v19, tLength:I
    :cond_0
    :goto_0
    if-ne v10, v12, :cond_2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 61
    const/4 v6, 0x0

    .line 199
    :cond_1
    :goto_1
    return v6

    .line 63
    :cond_2
    if-ne v10, v12, :cond_3

    .line 64
    const/4 v6, -0x1

    goto :goto_1

    .line 66
    :cond_3
    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 67
    const/4 v6, 0x1

    goto :goto_1

    .line 71
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 72
    .local v8, sChar:C
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 74
    .local v15, tChar:C
    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    .line 75
    .local v9, sCharIsDigit:Z
    invoke-static {v15}, Ljava/lang/Character;->isDigit(C)Z

    move-result v16

    .line 77
    .local v16, tCharIsDigit:Z
    if-eqz v9, :cond_17

    if-eqz v16, :cond_17

    .line 81
    const/4 v11, 0x0

    .line 82
    .local v11, sLeadingZeroCount:I
    :goto_2
    const/16 v20, 0x30

    move/from16 v0, v20

    if-eq v8, v0, :cond_8

    .line 90
    :cond_5
    const/16 v18, 0x0

    .line 91
    .local v18, tLeadingZeroCount:I
    :goto_3
    const/16 v20, 0x30

    move/from16 v0, v20

    if-eq v15, v0, :cond_9

    .line 99
    :cond_6
    if-eq v10, v12, :cond_a

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v20

    if-eqz v20, :cond_a

    const/4 v7, 0x0

    .line 100
    .local v7, sAllZero:Z
    :goto_4
    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    invoke-static {v15}, Ljava/lang/Character;->isDigit(C)Z

    move-result v20

    if-eqz v20, :cond_b

    const/4 v14, 0x0

    .line 101
    .local v14, tAllZero:Z
    :goto_5
    if-eqz v7, :cond_7

    if-nez v14, :cond_0

    .line 104
    :cond_7
    if-eqz v7, :cond_c

    if-nez v14, :cond_c

    .line 105
    const/4 v6, -0x1

    goto :goto_1

    .line 83
    .end local v7           #sAllZero:Z
    .end local v14           #tAllZero:Z
    .end local v18           #tLeadingZeroCount:I
    :cond_8
    add-int/lit8 v11, v11, 0x1

    .line 84
    add-int/lit8 v10, v10, 0x1

    .line 85
    if-eq v10, v12, :cond_5

    .line 88
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_2

    .line 92
    .restart local v18       #tLeadingZeroCount:I
    :cond_9
    add-int/lit8 v18, v18, 0x1

    .line 93
    add-int/lit8 v17, v17, 0x1

    .line 94
    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 97
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    goto :goto_3

    .line 99
    :cond_a
    const/4 v7, 0x1

    goto :goto_4

    .line 100
    .restart local v7       #sAllZero:Z
    :cond_b
    const/4 v14, 0x1

    goto :goto_5

    .line 107
    .restart local v14       #tAllZero:Z
    :cond_c
    if-eqz v14, :cond_d

    .line 108
    const/4 v6, 0x1

    goto :goto_1

    .line 111
    :cond_d
    const/4 v6, 0x0

    .line 113
    .local v6, diff:I
    :cond_e
    if-nez v6, :cond_f

    .line 114
    sub-int v6, v8, v15

    .line 116
    :cond_f
    add-int/lit8 v10, v10, 0x1

    .line 117
    add-int/lit8 v17, v17, 0x1

    .line 118
    if-ne v10, v12, :cond_10

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 119
    if-nez v6, :cond_1

    sub-int v6, v11, v18

    goto/16 :goto_1

    .line 121
    :cond_10
    if-ne v10, v12, :cond_12

    .line 122
    if-nez v6, :cond_11

    .line 123
    const/4 v6, -0x1

    goto/16 :goto_1

    .line 125
    :cond_11
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->isDigit(C)Z

    move-result v20

    if-eqz v20, :cond_1

    const/4 v6, -0x1

    goto/16 :goto_1

    .line 127
    :cond_12
    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    .line 128
    if-nez v6, :cond_13

    .line 129
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 131
    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->isDigit(C)Z

    move-result v20

    if-eqz v20, :cond_1

    const/4 v6, 0x1

    goto/16 :goto_1

    .line 133
    :cond_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 134
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 135
    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    .line 136
    invoke-static {v15}, Ljava/lang/Character;->isDigit(C)Z

    move-result v16

    .line 137
    if-nez v9, :cond_15

    if-nez v16, :cond_15

    .line 139
    if-eqz v6, :cond_0

    goto/16 :goto_1

    .line 144
    :cond_15
    if-nez v9, :cond_16

    .line 145
    const/4 v6, -0x1

    goto/16 :goto_1

    .line 147
    :cond_16
    if-nez v16, :cond_e

    .line 148
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 154
    .end local v6           #diff:I
    .end local v7           #sAllZero:Z
    .end local v11           #sLeadingZeroCount:I
    .end local v14           #tAllZero:Z
    .end local v18           #tLeadingZeroCount:I
    :cond_17
    if-eqz p3, :cond_1b

    .line 157
    move v3, v10

    .line 158
    .local v3, aw:I
    move/from16 v5, v17

    .line 160
    .local v5, bw:I
    :cond_18
    add-int/lit8 v10, v10, 0x1

    .line 161
    if-ge v10, v12, :cond_19

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->isDigit(C)Z

    move-result v20

    .line 159
    if-eqz v20, :cond_18

    .line 163
    :cond_19
    add-int/lit8 v17, v17, 0x1

    .line 164
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_1a

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->isDigit(C)Z

    move-result v20

    .line 162
    if-eqz v20, :cond_19

    .line 166
    :cond_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, as:Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, bs:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 169
    .local v13, subwordResult:I
    if-eqz v13, :cond_0

    move v6, v13

    .line 170
    goto/16 :goto_1

    .line 176
    .end local v2           #as:Ljava/lang/String;
    .end local v3           #aw:I
    .end local v4           #bs:Ljava/lang/String;
    .end local v5           #bw:I
    .end local v13           #subwordResult:I
    :cond_1b
    if-eq v8, v15, :cond_1d

    .line 177
    if-eqz p2, :cond_1c

    .line 178
    sub-int v6, v8, v15

    goto/16 :goto_1

    .line 180
    :cond_1c
    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    .line 181
    invoke-static {v15}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v15

    .line 182
    if-eq v8, v15, :cond_1d

    .line 183
    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    .line 184
    invoke-static {v15}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v15

    .line 185
    if-eq v8, v15, :cond_1d

    .line 186
    sub-int v6, v8, v15

    goto/16 :goto_1

    .line 190
    :cond_1d
    add-int/lit8 v10, v10, 0x1

    .line 191
    add-int/lit8 v17, v17, 0x1

    .line 192
    if-ne v10, v12, :cond_1e

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_1e

    .line 193
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 195
    :cond_1e
    if-ne v10, v12, :cond_1f

    .line 196
    const/4 v6, -0x1

    goto/16 :goto_1

    .line 198
    :cond_1f
    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_20

    .line 199
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 201
    :cond_20
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 202
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 203
    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    .line 204
    invoke-static {v15}, Ljava/lang/Character;->isDigit(C)Z

    move-result v16

    .line 205
    if-nez v9, :cond_0

    .line 175
    if-eqz v16, :cond_1b

    goto/16 :goto_0
.end method


# virtual methods
.method public compare(Lcom/rookiestudio/baseclass/TFileData;Lcom/rookiestudio/baseclass/TFileData;)I
    .locals 7
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 32
    iget-boolean v0, p1, Lcom/rookiestudio/baseclass/TFileData;->IsFolder:Z

    .line 33
    .local v0, IsDirectory1:Z
    iget-boolean v1, p2, Lcom/rookiestudio/baseclass/TFileData;->IsFolder:Z

    .line 34
    .local v1, IsDirectory2:Z
    sget-boolean v3, Lcom/rookiestudio/perfectviewer/Config;->SortFolderFirst:Z

    if-nez v3, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 36
    const/4 v1, 0x0

    .line 39
    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 40
    const/4 v2, -0x1

    .line 46
    .local v2, Result:I
    :goto_0
    return v2

    .line 41
    .end local v2           #Result:I
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 42
    const/4 v2, 0x1

    .restart local v2       #Result:I
    goto :goto_0

    .line 44
    .end local v2           #Result:I
    :cond_2
    iget-object v3, p1, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    iget-object v4, p2, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/rookiestudio/perfectviewer/HumaneStringComparator;->compareNatural(Ljava/lang/String;Ljava/lang/String;ZLjava/text/Collator;)I

    move-result v2

    .restart local v2       #Result:I
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/rookiestudio/baseclass/TFileData;

    check-cast p2, Lcom/rookiestudio/baseclass/TFileData;

    invoke-virtual {p0, p1, p2}, Lcom/rookiestudio/perfectviewer/HumaneStringComparator;->compare(Lcom/rookiestudio/baseclass/TFileData;Lcom/rookiestudio/baseclass/TFileData;)I

    move-result v0

    return v0
.end method
