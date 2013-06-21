.class public Lorg/tf/util/IniFile;
.super Ljava/lang/Object;
.source "IniFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tf/util/IniFile$ParseState;,
        Lorg/tf/util/IniFile$Section;
    }
.end annotation


# instance fields
.field private m_globalSection:Lorg/tf/util/IniFile$Section;

.field private m_sections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/tf/util/IniFile$Section;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/tf/util/IniFile$Section;

    invoke-direct {v0, v1, v1}, Lorg/tf/util/IniFile$Section;-><init>(Ljava/lang/String;Lorg/tf/util/IniFile$Section;)V

    iput-object v0, p0, Lorg/tf/util/IniFile;->m_globalSection:Lorg/tf/util/IniFile$Section;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/tf/util/IniFile;->m_sections:Ljava/util/HashMap;

    .line 35
    invoke-direct {p0, p1}, Lorg/tf/util/IniFile;->load(Ljava/io/InputStream;)V

    .line 36
    return-void
.end method

.method private static getStringReset(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 3
    .parameter "sb"

    .prologue
    .line 217
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, result:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 219
    return-object v0
.end method

.method private load(Ljava/io/InputStream;)V
    .locals 13
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    const/16 v0, 0x1000

    .line 110
    .local v0, bufSize:I
    new-array v1, v0, [B

    .line 111
    .local v1, buffer:[B
    const/4 v11, 0x0

    invoke-virtual {p1, v1, v11, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 113
    .local v6, n:I
    sget-object v9, Lorg/tf/util/IniFile$ParseState;->NORMAL:Lorg/tf/util/IniFile$ParseState;

    .line 114
    .local v9, state:Lorg/tf/util/IniFile$ParseState;
    const/4 v8, 0x0

    .line 115
    .local v8, sectionOpen:Z
    const/4 v3, 0x0

    .line 116
    .local v3, currentSection:Lorg/tf/util/IniFile$Section;
    const/4 v5, 0x0

    .local v5, key:Ljava/lang/String;
    const/4 v10, 0x0

    .line 117
    .local v10, value:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v7, sb:Ljava/lang/StringBuilder;
    :goto_0
    if-gez v6, :cond_1

    .line 204
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 205
    invoke-static {v7}, Lorg/tf/util/IniFile;->getStringReset(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v10

    .line 206
    if-eqz v5, :cond_0

    .line 207
    if-nez v3, :cond_e

    .line 208
    iget-object v11, p0, Lorg/tf/util/IniFile;->m_globalSection:Lorg/tf/util/IniFile$Section;

    #getter for: Lorg/tf/util/IniFile$Section;->values:Ljava/util/HashMap;
    invoke-static {v11}, Lorg/tf/util/IniFile$Section;->access$2(Lorg/tf/util/IniFile$Section;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_0
    :goto_1
    return-void

    .line 119
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-lt v4, v6, :cond_2

    .line 202
    const/4 v11, 0x0

    invoke-virtual {p1, v1, v11, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    goto :goto_0

    .line 120
    :cond_2
    aget-byte v11, v1, v4

    int-to-char v2, v11

    .line 121
    .local v2, c:C
    sget-object v11, Lorg/tf/util/IniFile$ParseState;->COMMENT:Lorg/tf/util/IniFile$ParseState;

    if-ne v9, v11, :cond_4

    .line 122
    const/16 v11, 0xd

    if-eq v2, v11, :cond_3

    const/16 v11, 0xa

    if-ne v2, v11, :cond_5

    .line 123
    :cond_3
    sget-object v9, Lorg/tf/util/IniFile$ParseState;->NORMAL:Lorg/tf/util/IniFile$ParseState;

    .line 128
    :cond_4
    sget-object v11, Lorg/tf/util/IniFile$ParseState;->ESCAPE:Lorg/tf/util/IniFile$ParseState;

    if-ne v9, v11, :cond_7

    .line 129
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    const/16 v11, 0xd

    if-ne v2, v11, :cond_6

    .line 132
    sget-object v9, Lorg/tf/util/IniFile$ParseState;->ESC_CRNL:Lorg/tf/util/IniFile$ParseState;

    .line 119
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 134
    :cond_6
    sget-object v9, Lorg/tf/util/IniFile$ParseState;->NORMAL:Lorg/tf/util/IniFile$ParseState;

    .line 136
    goto :goto_3

    .line 139
    :cond_7
    sparse-switch v2, :sswitch_data_0

    .line 199
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 141
    :sswitch_0
    invoke-static {v7}, Lorg/tf/util/IniFile;->getStringReset(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 142
    const/4 v8, 0x1

    .line 143
    goto :goto_3

    .line 146
    :sswitch_1
    if-eqz v8, :cond_8

    .line 147
    new-instance v3, Lorg/tf/util/IniFile$Section;

    .end local v3           #currentSection:Lorg/tf/util/IniFile$Section;
    invoke-static {v7}, Lorg/tf/util/IniFile;->getStringReset(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v3, v11, v12}, Lorg/tf/util/IniFile$Section;-><init>(Ljava/lang/String;Lorg/tf/util/IniFile$Section;)V

    .line 148
    .restart local v3       #currentSection:Lorg/tf/util/IniFile$Section;
    iget-object v11, p0, Lorg/tf/util/IniFile;->m_sections:Ljava/util/HashMap;

    #getter for: Lorg/tf/util/IniFile$Section;->name:Ljava/lang/String;
    invoke-static {v3}, Lorg/tf/util/IniFile$Section;->access$1(Lorg/tf/util/IniFile$Section;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const/4 v8, 0x0

    goto :goto_3

    .line 151
    :cond_8
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 156
    :sswitch_2
    sget-object v9, Lorg/tf/util/IniFile$ParseState;->ESCAPE:Lorg/tf/util/IniFile$ParseState;

    .line 157
    goto :goto_3

    .line 161
    :sswitch_3
    if-nez v5, :cond_9

    if-nez v8, :cond_9

    .line 162
    sget-object v9, Lorg/tf/util/IniFile$ParseState;->COMMENT:Lorg/tf/util/IniFile$ParseState;

    goto :goto_3

    .line 164
    :cond_9
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 170
    :sswitch_4
    if-nez v5, :cond_a

    if-nez v8, :cond_a

    .line 171
    invoke-static {v7}, Lorg/tf/util/IniFile;->getStringReset(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 173
    :cond_a
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 179
    :sswitch_5
    sget-object v11, Lorg/tf/util/IniFile$ParseState;->ESC_CRNL:Lorg/tf/util/IniFile$ParseState;

    if-ne v9, v11, :cond_b

    const/16 v11, 0xa

    if-ne v2, v11, :cond_b

    .line 180
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    sget-object v9, Lorg/tf/util/IniFile$ParseState;->NORMAL:Lorg/tf/util/IniFile$ParseState;

    goto :goto_3

    .line 183
    :cond_b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_c

    .line 184
    invoke-static {v7}, Lorg/tf/util/IniFile;->getStringReset(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v10

    .line 185
    if-eqz v5, :cond_c

    .line 186
    if-nez v3, :cond_d

    .line 187
    iget-object v11, p0, Lorg/tf/util/IniFile;->m_globalSection:Lorg/tf/util/IniFile$Section;

    #getter for: Lorg/tf/util/IniFile$Section;->values:Ljava/util/HashMap;
    invoke-static {v11}, Lorg/tf/util/IniFile$Section;->access$2(Lorg/tf/util/IniFile$Section;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_c
    :goto_4
    const/4 v5, 0x0

    .line 194
    const/4 v10, 0x0

    .line 196
    goto :goto_3

    .line 189
    :cond_d
    #getter for: Lorg/tf/util/IniFile$Section;->values:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/tf/util/IniFile$Section;->access$2(Lorg/tf/util/IniFile$Section;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 210
    .end local v2           #c:C
    .end local v4           #i:I
    :cond_e
    #getter for: Lorg/tf/util/IniFile$Section;->values:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/tf/util/IniFile$Section;->access$2(Lorg/tf/util/IniFile$Section;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 139
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_5
        0xd -> :sswitch_5
        0x23 -> :sswitch_3
        0x3a -> :sswitch_4
        0x3b -> :sswitch_3
        0x3d -> :sswitch_4
        0x5b -> :sswitch_0
        0x5c -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public getGlobalSection()Lorg/tf/util/IniFile$Section;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/tf/util/IniFile;->m_globalSection:Lorg/tf/util/IniFile$Section;

    return-object v0
.end method

.method public getSection(Ljava/lang/String;)Lorg/tf/util/IniFile$Section;
    .locals 1
    .parameter "name"

    .prologue
    .line 43
    iget-object v0, p0, Lorg/tf/util/IniFile;->m_sections:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/tf/util/IniFile$Section;

    return-object p0
.end method
