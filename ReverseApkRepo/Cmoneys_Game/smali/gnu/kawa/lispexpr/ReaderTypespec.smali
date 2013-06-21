.class public Lgnu/kawa/lispexpr/ReaderTypespec;
.super Lgnu/kawa/lispexpr/ReadTableEntry;
.source "ReaderTypespec.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lgnu/kawa/lispexpr/ReadTableEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getKind()I
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x6

    return v0
.end method

.method public read(Lgnu/text/Lexer;II)Ljava/lang/Object;
    .locals 12
    .parameter "in"
    .parameter "ch"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 23
    iget v8, p1, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 24
    .local v8, startPos:I
    invoke-virtual {p1}, Lgnu/text/Lexer;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v4

    .line 25
    .local v4, port:Lgnu/text/LineBufferedReader;
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v6

    .line 27
    .local v6, rtable:Lgnu/kawa/lispexpr/ReadTable;
    const/4 v7, 0x0

    .line 28
    .local v7, saveReadState:C
    invoke-virtual {p1, p2}, Lgnu/text/Lexer;->tokenBufferAppend(I)V

    .line 29
    move v1, p2

    .line 31
    .local v1, c:I
    instance-of v9, v4, Lgnu/mapping/InPort;

    if-eqz v9, :cond_0

    .line 33
    move-object v0, v4

    check-cast v0, Lgnu/mapping/InPort;

    move-object v9, v0

    iget-char v7, v9, Lgnu/mapping/InPort;->readState:C

    .line 34
    move-object v0, v4

    check-cast v0, Lgnu/mapping/InPort;

    move-object v9, v0

    int-to-char v10, p2

    iput-char v10, v9, Lgnu/mapping/InPort;->readState:C

    .line 38
    :cond_0
    const/4 v3, 0x0

    .line 43
    .local v3, got_open_square:Z
    :goto_0
    move v5, v1

    .line 45
    .local v5, prev:I
    :try_start_0
    iget v9, v4, Lgnu/text/LineBufferedReader;->pos:I

    iget v10, v4, Lgnu/text/LineBufferedReader;->limit:I

    if-ge v9, v10, :cond_1

    const/16 v9, 0xa

    if-eq v5, v9, :cond_1

    .line 46
    iget-object v9, v4, Lgnu/text/LineBufferedReader;->buffer:[C

    iget v10, v4, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v4, Lgnu/text/LineBufferedReader;->pos:I

    aget-char v1, v9, v10

    .line 49
    :goto_1
    const/16 v9, 0x5c

    if-ne v1, v9, :cond_3

    .line 51
    instance-of v9, p1, Lgnu/kawa/lispexpr/LispReader;

    if-eqz v9, :cond_2

    .line 52
    move-object v0, p1

    check-cast v0, Lgnu/kawa/lispexpr/LispReader;

    move-object v9, v0

    invoke-virtual {v9}, Lgnu/kawa/lispexpr/LispReader;->readEscape()I

    move-result v1

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->read()I

    move-result v1

    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->read()I

    move-result v1

    goto :goto_0

    .line 58
    :cond_3
    if-nez v3, :cond_4

    const/16 v9, 0x5b

    if-ne v1, v9, :cond_4

    const/4 v9, 0x1

    const/4 v3, 0x1

    if-eq v9, v3, :cond_6

    :cond_4
    if-eqz v3, :cond_5

    const/16 v9, 0x5d

    if-ne v1, v9, :cond_5

    const/4 v3, 0x0

    if-eqz v3, :cond_6

    :cond_5
    invoke-virtual {v6, v1}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v2

    .local v2, entry:Lgnu/kawa/lispexpr/ReadTableEntry;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lgnu/kawa/lispexpr/ReadTableEntry;->getKind()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_8

    .line 65
    .end local v2           #entry:Lgnu/kawa/lispexpr/ReadTableEntry;
    :cond_6
    invoke-virtual {p1, v1}, Lgnu/text/Lexer;->tokenBufferAppend(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v9

    iput v8, p1, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 81
    instance-of v10, v4, Lgnu/mapping/InPort;

    if-eqz v10, :cond_7

    .line 82
    check-cast v4, Lgnu/mapping/InPort;

    .end local v4           #port:Lgnu/text/LineBufferedReader;
    iput-char v7, v4, Lgnu/mapping/InPort;->readState:C

    :cond_7
    throw v9

    .line 70
    .restart local v2       #entry:Lgnu/kawa/lispexpr/ReadTableEntry;
    .restart local v4       #port:Lgnu/text/LineBufferedReader;
    :cond_8
    :try_start_1
    invoke-virtual {p1, v1}, Lgnu/text/Lexer;->unread(I)V

    .line 75
    new-instance v9, Ljava/lang/String;

    iget-object v10, p1, Lgnu/text/Lexer;->tokenBuffer:[C

    iget v11, p1, Lgnu/text/Lexer;->tokenBufferLength:I

    sub-int/2addr v11, v8

    invoke-direct {v9, v10, v8, v11}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 80
    iput v8, p1, Lgnu/text/Lexer;->tokenBufferLength:I

    .line 81
    instance-of v10, v4, Lgnu/mapping/InPort;

    if-eqz v10, :cond_9

    .line 82
    check-cast v4, Lgnu/mapping/InPort;

    .end local v4           #port:Lgnu/text/LineBufferedReader;
    iput-char v7, v4, Lgnu/mapping/InPort;->readState:C

    :cond_9
    return-object v9
.end method
