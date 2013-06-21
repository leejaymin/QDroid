.class public Lorg/jibx/runtime/impl/USASCIIEscaper;
.super Ljava/lang/Object;
.source "USASCIIEscaper.java"

# interfaces
.implements Lorg/jibx/runtime/ICharacterEscaper;


# static fields
.field private static final s_instance:Lorg/jibx/runtime/impl/USASCIIEscaper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lorg/jibx/runtime/impl/USASCIIEscaper;

    invoke-direct {v0}, Lorg/jibx/runtime/impl/USASCIIEscaper;-><init>()V

    sput-object v0, Lorg/jibx/runtime/impl/USASCIIEscaper;->s_instance:Lorg/jibx/runtime/impl/USASCIIEscaper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/jibx/runtime/ICharacterEscaper;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lorg/jibx/runtime/impl/USASCIIEscaper;->s_instance:Lorg/jibx/runtime/impl/USASCIIEscaper;

    return-object v0
.end method


# virtual methods
.method public writeAttribute(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 6
    .parameter "text"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x5d

    .line 66
    const/4 v2, 0x0

    .line 67
    .local v2, mark:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 69
    .local v0, chr:C
    const/16 v3, 0x22

    if-ne v0, v3, :cond_1

    .line 70
    sub-int v3, v1, v2

    invoke-virtual {p2, p1, v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 71
    add-int/lit8 v2, v1, 0x1

    .line 72
    const-string v3, "&quot;"

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 67
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_1
    const/16 v3, 0x26

    if-ne v0, v3, :cond_2

    .line 74
    sub-int v3, v1, v2

    invoke-virtual {p2, p1, v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 75
    add-int/lit8 v2, v1, 0x1

    .line 76
    const-string v3, "&amp;"

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :cond_2
    const/16 v3, 0x3c

    if-ne v0, v3, :cond_3

    .line 78
    sub-int v3, v1, v2

    invoke-virtual {p2, p1, v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 79
    add-int/lit8 v2, v1, 0x1

    .line 80
    const-string v3, "&lt;"

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 81
    :cond_3
    const/16 v3, 0x3e

    if-ne v0, v3, :cond_4

    const/4 v3, 0x2

    if-le v1, v3, :cond_4

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_4

    add-int/lit8 v3, v1, -0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_4

    .line 83
    sub-int v3, v1, v2

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p2, p1, v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 84
    add-int/lit8 v2, v1, 0x1

    .line 85
    const-string v3, "]]&gt;"

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 86
    :cond_4
    const/16 v3, 0x20

    if-ge v0, v3, :cond_5

    .line 87
    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_0

    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    .line 88
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Illegal character code 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " in attribute value text"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 91
    :cond_5
    const/16 v3, 0x7f

    if-le v0, v3, :cond_0

    .line 92
    sub-int v3, v1, v2

    invoke-virtual {p2, p1, v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 93
    add-int/lit8 v2, v1, 0x1

    .line 94
    const v3, 0xd7ff

    if-le v0, v3, :cond_7

    const v3, 0xe000

    if-lt v0, v3, :cond_6

    const v3, 0xfffe

    if-eq v0, v3, :cond_6

    const v3, 0xffff

    if-eq v0, v3, :cond_6

    const v3, 0x10ffff

    if-le v0, v3, :cond_7

    .line 96
    :cond_6
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Illegal character code 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " in attribute value text"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 99
    :cond_7
    const-string v3, "&#x"

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 101
    const/16 v3, 0x3b

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    .line 104
    .end local v0           #chr:C
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p2, p1, v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 105
    return-void
.end method

.method public writeCData(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 5
    .parameter "text"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x5d

    .line 164
    const-string v2, "<![CDATA["

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 165
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 166
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 167
    .local v0, chr:C
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_0

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, -0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 169
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Sequence \"]]>\" is not allowed within CDATA section text"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    :cond_0
    const/16 v2, 0x20

    if-ge v0, v2, :cond_1

    .line 172
    const/16 v2, 0x9

    if-eq v0, v2, :cond_2

    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/16 v2, 0xd

    if-eq v0, v2, :cond_2

    .line 173
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Illegal character code 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " in CDATA section"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 176
    :cond_1
    const/16 v2, 0x80

    if-lt v0, v2, :cond_2

    .line 177
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Character code 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " not supported by encoding in CDATA section"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 165
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 182
    .end local v0           #chr:C
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 183
    const-string v2, "]]>"

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public writeContent(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 6
    .parameter "text"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x5d

    .line 116
    const/4 v2, 0x0

    .line 117
    .local v2, mark:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 118
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 119
    .local v0, chr:C
    const/16 v3, 0x26

    if-ne v0, v3, :cond_1

    .line 120
    sub-int v3, v1, v2

    invoke-virtual {p2, p1, v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 121
    add-int/lit8 v2, v1, 0x1

    .line 122
    const-string v3, "&amp;"

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 117
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_1
    const/16 v3, 0x3c

    if-ne v0, v3, :cond_2

    .line 124
    sub-int v3, v1, v2

    invoke-virtual {p2, p1, v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 125
    add-int/lit8 v2, v1, 0x1

    .line 126
    const-string v3, "&lt;"

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 127
    :cond_2
    const/16 v3, 0x3e

    if-ne v0, v3, :cond_3

    const/4 v3, 0x2

    if-le v1, v3, :cond_3

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_3

    add-int/lit8 v3, v1, -0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_3

    .line 129
    sub-int v3, v1, v2

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p2, p1, v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 130
    add-int/lit8 v2, v1, 0x1

    .line 131
    const-string v3, "]]&gt;"

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :cond_3
    const/16 v3, 0x20

    if-ge v0, v3, :cond_4

    .line 133
    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_0

    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    .line 134
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Illegal character code 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " in content text"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 137
    :cond_4
    const/16 v3, 0x7f

    if-le v0, v3, :cond_0

    .line 138
    sub-int v3, v1, v2

    invoke-virtual {p2, p1, v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 139
    add-int/lit8 v2, v1, 0x1

    .line 140
    const v3, 0xd7ff

    if-le v0, v3, :cond_6

    const v3, 0xe000

    if-lt v0, v3, :cond_5

    const v3, 0xfffe

    if-eq v0, v3, :cond_5

    const v3, 0xffff

    if-eq v0, v3, :cond_5

    const v3, 0x10ffff

    if-le v0, v3, :cond_6

    .line 142
    :cond_5
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Illegal character code 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " in content text"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 145
    :cond_6
    const-string v3, "&#x"

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 146
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 147
    const/16 v3, 0x3b

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_1

    .line 150
    .end local v0           #chr:C
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p2, p1, v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 151
    return-void
.end method
