.class public Lorg/jibx/runtime/impl/UTF8Escaper;
.super Ljava/lang/Object;
.source "UTF8Escaper.java"

# interfaces
.implements Lorg/jibx/runtime/ICharacterEscaper;


# static fields
.field private static final s_instance:Lorg/jibx/runtime/impl/UTF8Escaper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lorg/jibx/runtime/impl/UTF8Escaper;

    invoke-direct {v0}, Lorg/jibx/runtime/impl/UTF8Escaper;-><init>()V

    sput-object v0, Lorg/jibx/runtime/impl/UTF8Escaper;->s_instance:Lorg/jibx/runtime/impl/UTF8Escaper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/jibx/runtime/ICharacterEscaper;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lorg/jibx/runtime/impl/UTF8Escaper;->s_instance:Lorg/jibx/runtime/impl/UTF8Escaper;

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

    .line 67
    const/4 v2, 0x0

    .line 68
    .local v2, mark:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 69
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 70
    .local v0, chr:C
    const/16 v3, 0x22

    if-ne v0, v3, :cond_1

    .line 71
    sub-int v3, v1, v2

    invoke-virtual {p2, p1, v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 72
    add-int/lit8 v2, v1, 0x1

    .line 73
    const-string v3, "&quot;"

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 68
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_1
    const/16 v3, 0x26

    if-ne v0, v3, :cond_2

    .line 75
    sub-int v3, v1, v2

    invoke-virtual {p2, p1, v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 76
    add-int/lit8 v2, v1, 0x1

    .line 77
    const-string v3, "&amp;"

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 78
    :cond_2
    const/16 v3, 0x3c

    if-ne v0, v3, :cond_3

    .line 79
    sub-int v3, v1, v2

    invoke-virtual {p2, p1, v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 80
    add-int/lit8 v2, v1, 0x1

    .line 81
    const-string v3, "&lt;"

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 82
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

    .line 84
    sub-int v3, v1, v2

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p2, p1, v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 85
    add-int/lit8 v2, v1, 0x1

    .line 86
    const-string v3, "]]&gt;"

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 87
    :cond_4
    const/16 v3, 0x20

    if-ge v0, v3, :cond_5

    .line 88
    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_0

    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    .line 89
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

    .line 92
    :cond_5
    const v3, 0xd7ff

    if-le v0, v3, :cond_0

    const v3, 0xe000

    if-lt v0, v3, :cond_6

    const v3, 0xfffe

    if-eq v0, v3, :cond_6

    const v3, 0xffff

    if-eq v0, v3, :cond_6

    const v3, 0x10ffff

    if-le v0, v3, :cond_0

    .line 94
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

    .line 98
    .end local v0           #chr:C
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p2, p1, v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 99
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

    .line 151
    const-string v2, "<![CDATA["

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 152
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 153
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 154
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

    .line 156
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Sequence \"]]>\" is not allowed within CDATA section text"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 158
    :cond_0
    const/16 v2, 0x20

    if-ge v0, v2, :cond_1

    .line 159
    const/16 v2, 0x9

    if-eq v0, v2, :cond_3

    const/16 v2, 0xa

    if-eq v0, v2, :cond_3

    const/16 v2, 0xd

    if-eq v0, v2, :cond_3

    .line 160
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

    .line 163
    :cond_1
    const v2, 0xd7ff

    if-le v0, v2, :cond_3

    const v2, 0xe000

    if-lt v0, v2, :cond_2

    const v2, 0xfffe

    if-eq v0, v2, :cond_2

    const v2, 0xffff

    if-ne v0, v2, :cond_3

    .line 165
    :cond_2
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

    .line 152
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 169
    .end local v0           #chr:C
    :cond_4
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 170
    const-string v2, "]]>"

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 171
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

    .line 110
    const/4 v2, 0x0

    .line 111
    .local v2, mark:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 112
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 113
    .local v0, chr:C
    const/16 v3, 0x26

    if-ne v0, v3, :cond_1

    .line 114
    sub-int v3, v1, v2

    invoke-virtual {p2, p1, v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 115
    add-int/lit8 v2, v1, 0x1

    .line 116
    const-string v3, "&amp;"

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 111
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_1
    const/16 v3, 0x3c

    if-ne v0, v3, :cond_2

    .line 118
    sub-int v3, v1, v2

    invoke-virtual {p2, p1, v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 119
    add-int/lit8 v2, v1, 0x1

    .line 120
    const-string v3, "&lt;"

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 121
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

    .line 123
    sub-int v3, v1, v2

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p2, p1, v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 124
    add-int/lit8 v2, v1, 0x1

    .line 125
    const-string v3, "]]&gt;"

    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 126
    :cond_3
    const/16 v3, 0x20

    if-ge v0, v3, :cond_4

    .line 127
    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_0

    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    .line 128
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

    .line 131
    :cond_4
    const v3, 0xd7ff

    if-le v0, v3, :cond_0

    const v3, 0xe000

    if-lt v0, v3, :cond_5

    const v3, 0xfffe

    if-eq v0, v3, :cond_5

    const v3, 0xffff

    if-eq v0, v3, :cond_5

    const v3, 0x10ffff

    if-le v0, v3, :cond_0

    .line 133
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

    .line 137
    .end local v0           #chr:C
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p2, p1, v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 138
    return-void
.end method
