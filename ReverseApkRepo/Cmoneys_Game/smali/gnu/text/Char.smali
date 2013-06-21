.class public Lgnu/text/Char;
.super Ljava/lang/Object;
.source "Char.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Externalizable;


# static fields
.field static ascii:[Lgnu/text/Char;

.field static charNameValues:[C

.field static charNames:[Ljava/lang/String;

.field static hashTable:Ljava/util/Hashtable;

.field static temp:Lgnu/text/Char;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xf

    const/4 v3, 0x0

    .line 76
    new-instance v1, Lgnu/text/Char;

    invoke-direct {v1, v3}, Lgnu/text/Char;-><init>(I)V

    sput-object v1, Lgnu/text/Char;->temp:Lgnu/text/Char;

    .line 81
    const/16 v1, 0x80

    new-array v1, v1, [Lgnu/text/Char;

    sput-object v1, Lgnu/text/Char;->ascii:[Lgnu/text/Char;

    .line 82
    const/16 v0, 0x80

    .local v0, i:I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 83
    sget-object v1, Lgnu/text/Char;->ascii:[Lgnu/text/Char;

    new-instance v2, Lgnu/text/Char;

    invoke-direct {v2, v0}, Lgnu/text/Char;-><init>(I)V

    aput-object v2, v1, v0

    goto :goto_0

    .line 113
    :cond_0
    new-array v1, v4, [C

    fill-array-data v1, :array_0

    sput-object v1, Lgnu/text/Char;->charNameValues:[C

    .line 117
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "space"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "tab"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "newline"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "linefeed"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "return"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "page"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "backspace"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "esc"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "delete"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "del"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "rubout"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "alarm"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "bel"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "vtab"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "nul"

    aput-object v3, v1, v2

    sput-object v1, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    return-void

    .line 113
    nop

    :array_0
    .array-data 0x2
        0x20t 0x0t
        0x9t 0x0t
        0xat 0x0t
        0xat 0x0t
        0xdt 0x0t
        0xct 0x0t
        0x8t 0x0t
        0x1bt 0x0t
        0x7ft 0x0t
        0x7ft 0x0t
        0x7ft 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0xbt 0x0t
        0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .parameter "ch"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lgnu/text/Char;->value:I

    .line 41
    return-void
.end method

.method public static make(I)Lgnu/text/Char;
    .locals 4
    .parameter "ch"

    .prologue
    .line 88
    const/16 v2, 0x80

    if-ge p0, v2, :cond_0

    .line 89
    sget-object v2, Lgnu/text/Char;->ascii:[Lgnu/text/Char;

    aget-object v2, v2, p0

    .line 101
    :goto_0
    return-object v2

    .line 93
    :cond_0
    sget-object v2, Lgnu/text/Char;->temp:Lgnu/text/Char;

    iput p0, v2, Lgnu/text/Char;->value:I

    .line 94
    sget-object v2, Lgnu/text/Char;->hashTable:Ljava/util/Hashtable;

    if-nez v2, :cond_1

    .line 95
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    sput-object v2, Lgnu/text/Char;->hashTable:Ljava/util/Hashtable;

    .line 96
    :cond_1
    sget-object v2, Lgnu/text/Char;->hashTable:Ljava/util/Hashtable;

    sget-object v3, Lgnu/text/Char;->temp:Lgnu/text/Char;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    .local v0, entry:Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 98
    check-cast v0, Lgnu/text/Char;

    .end local v0           #entry:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_0

    .line 99
    .restart local v0       #entry:Ljava/lang/Object;
    :cond_2
    new-instance v1, Lgnu/text/Char;

    invoke-direct {v1, p0}, Lgnu/text/Char;-><init>(I)V

    .line 100
    .local v1, newChar:Lgnu/text/Char;
    sget-object v2, Lgnu/text/Char;->hashTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 101
    goto :goto_0
.end method

.method public static nameToChar(Ljava/lang/String;)I
    .locals 10
    .parameter "name"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 135
    sget-object v6, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    array-length v2, v6

    .local v2, i:I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    .line 137
    sget-object v6, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 138
    sget-object v6, Lgnu/text/Char;->charNameValues:[C

    aget-char v6, v6, v2

    .line 171
    :goto_0
    return v6

    .line 140
    :cond_1
    sget-object v6, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    array-length v2, v6

    :cond_2
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_3

    .line 142
    sget-object v6, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 143
    sget-object v6, Lgnu/text/Char;->charNameValues:[C

    aget-char v6, v6, v2

    goto :goto_0

    .line 145
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 146
    .local v3, len:I
    if-le v3, v9, :cond_5

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x75

    if-ne v6, v7, :cond_5

    .line 148
    const/4 v5, 0x0

    .line 149
    .local v5, value:I
    const/4 v4, 0x1

    .line 151
    .local v4, pos:I
    :goto_1
    if-ne v4, v3, :cond_4

    move v6, v5

    .line 152
    goto :goto_0

    .line 153
    :cond_4
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 154
    .local v1, dig:I
    if-gez v1, :cond_7

    .line 161
    .end local v1           #dig:I
    .end local v4           #pos:I
    .end local v5           #value:I
    :cond_5
    const/4 v6, 0x3

    if-ne v3, v6, :cond_8

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_8

    .line 163
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 164
    .local v0, ch:C
    const/16 v6, 0x63

    if-eq v0, v6, :cond_6

    const/16 v6, 0x43

    if-ne v0, v6, :cond_8

    .line 166
    :cond_6
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 167
    and-int/lit8 v6, v0, 0x1f

    goto :goto_0

    .line 156
    .end local v0           #ch:C
    .restart local v1       #dig:I
    .restart local v4       #pos:I
    .restart local v5       #value:I
    :cond_7
    shl-int/lit8 v6, v5, 0x4

    add-int v5, v6, v1

    .line 149
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 171
    .end local v1           #dig:I
    .end local v4           #pos:I
    .end local v5           #value:I
    :cond_8
    const/4 v6, -0x1

    goto :goto_0
.end method

.method public static print(ILgnu/lists/Consumer;)V
    .locals 2
    .parameter "i"
    .parameter "out"

    .prologue
    const/high16 v0, 0x1

    .line 50
    if-lt p0, v0, :cond_0

    .line 52
    sub-int v0, p0, v0

    shr-int/lit8 v0, v0, 0xa

    const v1, 0xd800

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    .line 53
    and-int/lit16 v0, p0, 0x3ff

    const v1, 0xdc00

    add-int/2addr v0, v1

    int-to-char v0, v0

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    int-to-char v0, p0

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    goto :goto_0
.end method

.method public static toScmReadableString(I)Ljava/lang/String;
    .locals 4
    .parameter "ch"

    .prologue
    .line 213
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 214
    .local v1, sbuf:Ljava/lang/StringBuffer;
    const-string v2, "#\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lgnu/text/Char;->charNameValues:[C

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 217
    int-to-char v2, p0

    sget-object v3, Lgnu/text/Char;->charNameValues:[C

    aget-char v3, v3, v0

    if-ne v2, v3, :cond_0

    .line 219
    sget-object v2, Lgnu/text/Char;->charNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 230
    :goto_1
    return-object v2

    .line 215
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_1
    const/16 v2, 0x20

    if-lt p0, v2, :cond_2

    const/16 v2, 0x7f

    if-le p0, v2, :cond_3

    .line 225
    :cond_2
    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 226
    const/16 v2, 0x10

    invoke-static {p0, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 229
    :cond_3
    int-to-char v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2
.end method


# virtual methods
.method public final charValue()C
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lgnu/text/Char;->value:I

    int-to-char v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .parameter "o"

    .prologue
    .line 276
    iget v0, p0, Lgnu/text/Char;->value:I

    check-cast p1, Lgnu/text/Char;

    .end local p1
    iget v1, p1, Lgnu/text/Char;->value:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 109
    if-eqz p1, :cond_0

    instance-of v0, p1, Lgnu/text/Char;

    if-eqz v0, :cond_0

    check-cast p1, Lgnu/text/Char;

    .end local p1
    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result v0

    iget v1, p0, Lgnu/text/Char;->value:I

    if-ne v0, v1, :cond_0

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
    .line 71
    iget v0, p0, Lgnu/text/Char;->value:I

    return v0
.end method

.method public final intValue()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lgnu/text/Char;->value:I

    return v0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 45
    iget v0, p0, Lgnu/text/Char;->value:I

    invoke-static {v0, p1}, Lgnu/text/Char;->print(ILgnu/lists/Consumer;)V

    .line 46
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const v4, 0xdc00

    const v3, 0xd800

    .line 260
    invoke-interface {p1}, Ljava/io/ObjectInput;->readChar()C

    move-result v1

    iput v1, p0, Lgnu/text/Char;->value:I

    .line 261
    iget v1, p0, Lgnu/text/Char;->value:I

    if-lt v1, v3, :cond_0

    iget v1, p0, Lgnu/text/Char;->value:I

    const v2, 0xdbff

    if-ge v1, v2, :cond_0

    .line 263
    invoke-interface {p1}, Ljava/io/ObjectInput;->readChar()C

    move-result v0

    .line 264
    .local v0, next:C
    if-lt v0, v4, :cond_0

    const v1, 0xdfff

    if-gt v0, v1, :cond_0

    .line 265
    iget v1, p0, Lgnu/text/Char;->value:I

    sub-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0xa

    sub-int v2, v0, v4

    add-int/2addr v1, v2

    const/high16 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lgnu/text/Char;->value:I

    .line 267
    .end local v0           #next:C
    :cond_0
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 271
    iget v0, p0, Lgnu/text/Char;->value:I

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x30

    const/16 v5, 0x27

    .line 176
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 177
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 178
    iget v3, p0, Lgnu/text/Char;->value:I

    const/16 v4, 0x20

    if-lt v3, v4, :cond_0

    iget v3, p0, Lgnu/text/Char;->value:I

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_0

    iget v3, p0, Lgnu/text/Char;->value:I

    if-eq v3, v5, :cond_0

    .line 179
    iget v3, p0, Lgnu/text/Char;->value:I

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 207
    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 182
    :cond_0
    const/16 v3, 0x5c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 183
    iget v3, p0, Lgnu/text/Char;->value:I

    if-ne v3, v5, :cond_1

    .line 184
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 185
    :cond_1
    iget v3, p0, Lgnu/text/Char;->value:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 186
    const/16 v3, 0x6e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 187
    :cond_2
    iget v3, p0, Lgnu/text/Char;->value:I

    const/16 v4, 0xd

    if-ne v3, v4, :cond_3

    .line 188
    const/16 v3, 0x72

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 189
    :cond_3
    iget v3, p0, Lgnu/text/Char;->value:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_4

    .line 190
    const/16 v3, 0x74

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 191
    :cond_4
    iget v3, p0, Lgnu/text/Char;->value:I

    const/16 v4, 0x100

    if-ge v3, v4, :cond_6

    .line 193
    iget v3, p0, Lgnu/text/Char;->value:I

    invoke-static {v3}, Ljava/lang/Integer;->toOctalString(I)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, str:Ljava/lang/String;
    const/4 v3, 0x3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_5

    .line 195
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 196
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 200
    .end local v1           #i:I
    .end local v2           #str:Ljava/lang/String;
    :cond_6
    const/16 v3, 0x75

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 201
    iget v3, p0, Lgnu/text/Char;->value:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 202
    .restart local v2       #str:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v1, v3, v4

    .restart local v1       #i:I
    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_7

    .line 203
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 204
    :cond_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v2, 0xd800

    .line 241
    iget v0, p0, Lgnu/text/Char;->value:I

    if-le v0, v2, :cond_0

    .line 243
    iget v0, p0, Lgnu/text/Char;->value:I

    const v1, 0xffff

    if-le v0, v1, :cond_1

    .line 245
    iget v0, p0, Lgnu/text/Char;->value:I

    const/high16 v1, 0x1

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeChar(I)V

    .line 246
    iget v0, p0, Lgnu/text/Char;->value:I

    and-int/lit16 v0, v0, 0x3ff

    const v1, 0xdc00

    add-int/2addr v0, v1

    iput v0, p0, Lgnu/text/Char;->value:I

    .line 254
    :cond_0
    :goto_0
    iget v0, p0, Lgnu/text/Char;->value:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeChar(I)V

    .line 255
    return-void

    .line 248
    :cond_1
    iget v0, p0, Lgnu/text/Char;->value:I

    const v1, 0xdbff

    if-gt v0, v1, :cond_0

    .line 250
    iget v0, p0, Lgnu/text/Char;->value:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeChar(I)V

    .line 251
    const/4 v0, 0x0

    iput v0, p0, Lgnu/text/Char;->value:I

    goto :goto_0
.end method
