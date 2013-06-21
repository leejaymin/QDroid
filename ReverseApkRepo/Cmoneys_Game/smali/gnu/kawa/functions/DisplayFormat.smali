.class public Lgnu/kawa/functions/DisplayFormat;
.super Lgnu/lists/AbstractFormat;
.source "DisplayFormat.java"


# static fields
.field public static final outBase:Lgnu/mapping/ThreadLocation;

.field public static final outRadix:Lgnu/mapping/ThreadLocation;

.field static r5rsIdentifierMinusInteriorColons:Ljava/util/regex/Pattern;


# instance fields
.field language:C

.field readable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "out-base"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/functions/DisplayFormat;->outBase:Lgnu/mapping/ThreadLocation;

    .line 25
    sget-object v0, Lgnu/kawa/functions/DisplayFormat;->outBase:Lgnu/mapping/ThreadLocation;

    invoke-static {}, Lgnu/math/IntNum;->ten()Lgnu/math/IntNum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/ThreadLocation;->setGlobal(Ljava/lang/Object;)V

    .line 28
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "out-radix"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/functions/DisplayFormat;->outRadix:Lgnu/mapping/ThreadLocation;

    .line 354
    const-string v0, "(([a-zA-Z]|[!$%&*/:<=>?^_~])([a-zA-Z]|[!$%&*/<=>?^_~]|[0-9]|([-+.@]))*[:]?)|([-+]|[.][.][.])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/DisplayFormat;->r5rsIdentifierMinusInteriorColons:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(ZC)V
    .locals 0
    .parameter "readable"
    .parameter "language"

    .prologue
    .line 38
    invoke-direct {p0}, Lgnu/lists/AbstractFormat;-><init>()V

    .line 39
    iput-boolean p1, p0, Lgnu/kawa/functions/DisplayFormat;->readable:Z

    .line 40
    iput-char p2, p0, Lgnu/kawa/functions/DisplayFormat;->language:C

    .line 41
    return-void
.end method

.method public static getCommonLispFormat(Z)Lgnu/kawa/functions/DisplayFormat;
    .locals 2
    .parameter "readable"

    .prologue
    .line 50
    new-instance v0, Lgnu/kawa/functions/DisplayFormat;

    const/16 v1, 0x43

    invoke-direct {v0, p0, v1}, Lgnu/kawa/functions/DisplayFormat;-><init>(ZC)V

    return-object v0
.end method

.method public static getEmacsLispFormat(Z)Lgnu/kawa/functions/DisplayFormat;
    .locals 2
    .parameter "readable"

    .prologue
    .line 45
    new-instance v0, Lgnu/kawa/functions/DisplayFormat;

    const/16 v1, 0x45

    invoke-direct {v0, p0, v1}, Lgnu/kawa/functions/DisplayFormat;-><init>(ZC)V

    return-object v0
.end method

.method public static getSchemeFormat(Z)Lgnu/kawa/functions/DisplayFormat;
    .locals 2
    .parameter "readable"

    .prologue
    .line 55
    new-instance v0, Lgnu/kawa/functions/DisplayFormat;

    const/16 v1, 0x53

    invoke-direct {v0, p0, v1}, Lgnu/kawa/functions/DisplayFormat;-><init>(ZC)V

    return-object v0
.end method


# virtual methods
.method public getReadableOutput()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lgnu/kawa/functions/DisplayFormat;->readable:Z

    return v0
.end method

.method write(Lgnu/lists/Array;IILgnu/lists/Consumer;)I
    .locals 11
    .parameter "array"
    .parameter "index"
    .parameter "level"
    .parameter "out"

    .prologue
    const-string v10, ")"

    .line 313
    invoke-interface {p1}, Lgnu/lists/Array;->rank()I

    move-result v3

    .line 314
    .local v3, rank:I
    const/4 v1, 0x0

    .line 315
    .local v1, count:I
    if-lez p3, :cond_1

    const-string v7, "("

    move-object v5, v7

    .line 318
    .local v5, start:Ljava/lang/String;
    :goto_0
    instance-of v7, p4, Lgnu/mapping/OutPort;

    if-eqz v7, :cond_3

    .line 319
    move-object v0, p4

    check-cast v0, Lgnu/mapping/OutPort;

    move-object v7, v0

    const/4 v8, 0x0

    const-string v9, ")"

    invoke-virtual {v7, v5, v8, v10}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 322
    :goto_1
    if-lez v3, :cond_5

    .line 324
    invoke-interface {p1, p3}, Lgnu/lists/Array;->getSize(I)I

    move-result v4

    .line 325
    .local v4, size:I
    add-int/lit8 p3, p3, 0x1

    .line 326
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v4, :cond_5

    .line 328
    if-lez v2, :cond_0

    .line 330
    const-string v7, " "

    invoke-virtual {p0, v7, p4}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 331
    instance-of v7, p4, Lgnu/mapping/OutPort;

    if-eqz v7, :cond_0

    .line 332
    move-object v0, p4

    check-cast v0, Lgnu/mapping/OutPort;

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/mapping/OutPort;->writeBreakFill()V

    .line 335
    :cond_0
    if-ne p3, v3, :cond_4

    .line 337
    invoke-interface {p1, p2}, Lgnu/lists/Array;->getRowMajor(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7, p4}, Lgnu/kawa/functions/DisplayFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 338
    const/4 v6, 0x1

    .line 342
    .local v6, step:I
    :goto_3
    add-int/2addr p2, v6

    .line 343
    add-int/2addr v1, v6

    .line 326
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 315
    .end local v2           #i:I
    .end local v4           #size:I
    .end local v5           #start:Ljava/lang/String;
    .end local v6           #step:I
    :cond_1
    const/4 v7, 0x1

    if-ne v3, v7, :cond_2

    const-string v7, "#("

    move-object v5, v7

    goto :goto_0

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "a("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    goto :goto_0

    .line 321
    .restart local v5       #start:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v5, p4}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_1

    .line 341
    .restart local v2       #i:I
    .restart local v4       #size:I
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/kawa/functions/DisplayFormat;->write(Lgnu/lists/Array;IILgnu/lists/Consumer;)I

    move-result v6

    .restart local v6       #step:I
    goto :goto_3

    .line 346
    .end local v2           #i:I
    .end local v4           #size:I
    .end local v6           #step:I
    :cond_5
    instance-of v7, p4, Lgnu/mapping/OutPort;

    if-eqz v7, :cond_6

    .line 347
    check-cast p4, Lgnu/mapping/OutPort;

    .end local p4
    const-string v7, ")"

    invoke-virtual {p4, v10}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 350
    :goto_4
    return v1

    .line 349
    .restart local p4
    :cond_6
    const-string v7, ")"

    invoke-virtual {p0, v10, p4}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_4
.end method

.method public write(ILgnu/lists/Consumer;)V
    .locals 2
    .parameter "v"
    .parameter "out"

    .prologue
    .line 73
    invoke-virtual {p0}, Lgnu/kawa/functions/DisplayFormat;->getReadableOutput()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-static {p1, p2}, Lgnu/text/Char;->print(ILgnu/lists/Consumer;)V

    .line 87
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-char v0, p0, Lgnu/kawa/functions/DisplayFormat;->language:C

    const/16 v1, 0x45

    if-ne v0, v1, :cond_1

    const/16 v0, 0x20

    if-le p1, v0, :cond_1

    .line 80
    const/16 v0, 0x3f

    invoke-interface {p2, v0}, Lgnu/lists/Consumer;->write(I)V

    .line 81
    invoke-static {p1, p2}, Lgnu/text/Char;->print(ILgnu/lists/Consumer;)V

    goto :goto_0

    .line 85
    :cond_1
    invoke-static {p1}, Lgnu/text/Char;->toScmReadableString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_0
.end method

.method public writeBoolean(ZLgnu/lists/Consumer;)V
    .locals 2
    .parameter "v"
    .parameter "out"

    .prologue
    .line 68
    iget-char v0, p0, Lgnu/kawa/functions/DisplayFormat;->language:C

    const/16 v1, 0x53

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    const-string v0, "#t"

    :goto_0
    invoke-virtual {p0, v0, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 69
    return-void

    .line 68
    :cond_0
    const-string v0, "#f"

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "t"

    goto :goto_0

    :cond_2
    const-string v0, "nil"

    goto :goto_0
.end method

.method public writeList(Lgnu/lists/LList;Lgnu/mapping/OutPort;)V
    .locals 7
    .parameter "value"
    .parameter "out"

    .prologue
    const-string v6, ")"

    .line 91
    move-object v1, p1

    .line 92
    .local v1, list:Lgnu/lists/LList;
    const-string v3, "("

    const/4 v4, 0x0

    const-string v5, ")"

    invoke-virtual {p2, v3, v4, v6}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 93
    .end local v1           #list:Lgnu/lists/LList;
    :goto_0
    instance-of v3, v1, Lgnu/lists/Pair;

    if-eqz v3, :cond_1

    .line 95
    if-eq v1, p1, :cond_0

    .line 96
    invoke-virtual {p2}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 97
    :cond_0
    move-object v0, v1

    check-cast v0, Lgnu/lists/Pair;

    move-object v2, v0

    .line 98
    .local v2, pair:Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lgnu/kawa/functions/DisplayFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 99
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 100
    .local v1, list:Ljava/lang/Object;
    goto :goto_0

    .line 101
    .end local v1           #list:Ljava/lang/Object;
    .end local v2           #pair:Lgnu/lists/Pair;
    :cond_1
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v1, v3, :cond_2

    .line 103
    invoke-virtual {p2}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 104
    const-string v3, ". "

    invoke-virtual {p2, v3}, Lgnu/mapping/OutPort;->write(Ljava/lang/String;)V

    .line 105
    invoke-static {v1}, Lgnu/lists/LList;->checkNonList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lgnu/kawa/functions/DisplayFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 107
    :cond_2
    const-string v3, ")"

    invoke-virtual {p2, v6}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 3
    .parameter "obj"
    .parameter "out"

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, space:Z
    instance-of v2, p2, Lgnu/mapping/OutPort;

    if-eqz v2, :cond_1

    instance-of v2, p1, Lgnu/kawa/xml/UntypedAtomic;

    if-nez v2, :cond_1

    instance-of v2, p1, Lgnu/mapping/Values;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lgnu/kawa/functions/DisplayFormat;->getReadableOutput()Z

    move-result v2

    if-nez v2, :cond_0

    instance-of v2, p1, Lgnu/text/Char;

    if-nez v2, :cond_1

    instance-of v2, p1, Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    instance-of v2, p1, Ljava/lang/Character;

    if-nez v2, :cond_1

    .line 125
    :cond_0
    move-object v0, p2

    check-cast v0, Lgnu/mapping/OutPort;

    move-object v2, v0

    invoke-virtual {v2}, Lgnu/mapping/OutPort;->writeWordStart()V

    .line 126
    const/4 v1, 0x1

    .line 128
    :cond_1
    invoke-virtual {p0, p1, p2}, Lgnu/kawa/functions/DisplayFormat;->writeObjectRaw(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 129
    if-eqz v1, :cond_2

    .line 130
    check-cast p2, Lgnu/mapping/OutPort;

    .end local p2
    invoke-virtual {p2}, Lgnu/mapping/OutPort;->writeWordEnd()V

    .line 131
    :cond_2
    return-void
.end method

.method public writeObjectRaw(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 25
    .parameter "obj"
    .parameter "out"

    .prologue
    .line 135
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 136
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->writeBoolean(ZLgnu/lists/Consumer;)V

    .line 303
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 137
    .restart local p1
    .restart local p2
    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/text/Char;

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 138
    check-cast p1, Lgnu/text/Char;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lgnu/text/Char;->intValue()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(ILgnu/lists/Consumer;)V

    goto :goto_0

    .line 139
    .restart local p1
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/Character;

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .line 140
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Character;->charValue()C

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(ILgnu/lists/Consumer;)V

    goto :goto_0

    .line 141
    .restart local p1
    :cond_3
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/mapping/Symbol;

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 143
    move-object/from16 v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    move-object/from16 v19, v0

    .line 144
    .local v19, sym:Lgnu/mapping/Symbol;
    invoke-virtual/range {v19 .. v19}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v22

    sget-object v23, Lgnu/kawa/xml/XmlNamespace;->HTML:Lgnu/kawa/xml/XmlNamespace;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 146
    const-string v22, "html:"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 147
    invoke-virtual/range {v19 .. v19}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 150
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgnu/kawa/functions/DisplayFormat;->readable:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lgnu/kawa/functions/DisplayFormat;->writeSymbol(Lgnu/mapping/Symbol;Lgnu/lists/Consumer;Z)V

    goto :goto_0

    .line 154
    .end local v19           #sym:Lgnu/mapping/Symbol;
    :cond_5
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/net/URI;

    move/from16 v22, v0

    if-eqz v22, :cond_6

    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DisplayFormat;->getReadableOutput()Z

    move-result v22

    if-eqz v22, :cond_6

    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/io/PrintWriter;

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 157
    const-string v22, "#,(URI "

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 158
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    check-cast v0, Ljava/io/PrintWriter;

    move-object v5, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move-object v1, v5

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lgnu/lists/Strings;->printQuoted(Ljava/lang/CharSequence;Ljava/io/PrintWriter;I)V

    .line 159
    const/16 v22, 0x29

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->write(I)V

    goto/16 :goto_0

    .line 163
    :cond_6
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/CharSequence;

    move/from16 v22, v0

    if-eqz v22, :cond_a

    .line 171
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    .line 175
    .local v18, str:Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/functions/DisplayFormat;->getReadableOutput()Z

    move-result v22

    if-eqz v22, :cond_7

    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/io/PrintWriter;

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 176
    check-cast p2, Ljava/io/PrintWriter;

    .end local p2
    const/16 v22, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lgnu/lists/Strings;->printQuoted(Ljava/lang/CharSequence;Ljava/io/PrintWriter;I)V

    goto/16 :goto_0

    .line 177
    .restart local p2
    :cond_7
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 179
    check-cast p1, Ljava/lang/String;

    .end local p1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    .restart local p1
    :cond_8
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/CharSeq;

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 183
    move-object/from16 v0, p1

    check-cast v0, Lgnu/lists/CharSeq;

    move-object v15, v0

    .line 184
    .local v15, seq:Lgnu/lists/CharSeq;
    const/16 v22, 0x0

    invoke-interface {v15}, Lgnu/lists/CharSeq;->size()I

    move-result v23

    move-object v0, v15

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, p2

    invoke-interface {v0, v1, v2, v3}, Lgnu/lists/CharSeq;->consume(IILgnu/lists/Consumer;)V

    goto/16 :goto_0

    .line 188
    .end local v15           #seq:Lgnu/lists/CharSeq;
    :cond_9
    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->length()I

    move-result v13

    .line 189
    .local v13, len:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v13, :cond_0

    .line 190
    move-object/from16 v0, v18

    move v1, v11

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v22

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->write(I)V

    .line 189
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 193
    .end local v11           #i:I
    .end local v13           #len:I
    .end local v18           #str:Ljava/lang/CharSequence;
    :cond_a
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/LList;

    move/from16 v22, v0

    if-eqz v22, :cond_b

    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/mapping/OutPort;

    move/from16 v22, v0

    if-eqz v22, :cond_b

    .line 194
    check-cast p1, Lgnu/lists/LList;

    .end local p1
    check-cast p2, Lgnu/mapping/OutPort;

    .end local p2
    invoke-virtual/range {p0 .. p2}, Lgnu/kawa/functions/DisplayFormat;->writeList(Lgnu/lists/LList;Lgnu/mapping/OutPort;)V

    goto/16 :goto_0

    .line 195
    .restart local p1
    .restart local p2
    :cond_b
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/SimpleVector;

    move/from16 v22, v0

    if-eqz v22, :cond_13

    .line 197
    move-object/from16 v0, p1

    check-cast v0, Lgnu/lists/SimpleVector;

    move-object/from16 v21, v0

    .line 198
    .local v21, vec:Lgnu/lists/SimpleVector;
    invoke-virtual/range {v21 .. v21}, Lgnu/lists/SimpleVector;->getTag()Ljava/lang/String;

    move-result-object v20

    .line 200
    .local v20, tag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/kawa/functions/DisplayFormat;->language:C

    move/from16 v22, v0

    const/16 v23, 0x45

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 202
    const-string v17, "["

    .line 203
    .local v17, start:Ljava/lang/String;
    const-string v9, "]"

    .line 210
    .local v9, end:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/mapping/OutPort;

    move/from16 v22, v0

    if-eqz v22, :cond_10

    .line 211
    move-object/from16 v0, p2

    check-cast v0, Lgnu/mapping/OutPort;

    move-object v5, v0

    const/16 v22, 0x0

    move-object v0, v5

    move-object/from16 v1, v17

    move/from16 v2, v22

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 214
    :goto_3
    invoke-virtual/range {v21 .. v21}, Lgnu/lists/SimpleVector;->size()I

    move-result v22

    shl-int/lit8 v10, v22, 0x1

    .line 215
    .local v10, endpos:I
    const/4 v12, 0x0

    .local v12, ipos:I
    :goto_4
    if-ge v12, v10, :cond_d

    .line 217
    if-lez v12, :cond_c

    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/mapping/OutPort;

    move/from16 v22, v0

    if-eqz v22, :cond_c

    .line 218
    move-object/from16 v0, p2

    check-cast v0, Lgnu/mapping/OutPort;

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 219
    :cond_c
    move-object/from16 v0, v21

    move v1, v12

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/lists/SimpleVector;->consumeNext(ILgnu/lists/Consumer;)Z

    move-result v22

    if-nez v22, :cond_11

    .line 222
    :cond_d
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/mapping/OutPort;

    move/from16 v22, v0

    if-eqz v22, :cond_12

    .line 223
    check-cast p2, Lgnu/mapping/OutPort;

    .end local p2
    move-object/from16 v0, p2

    move-object v1, v9

    invoke-virtual {v0, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 207
    .end local v9           #end:Ljava/lang/String;
    .end local v10           #endpos:I
    .end local v12           #ipos:I
    .end local v17           #start:Ljava/lang/String;
    .restart local p2
    :cond_e
    if-nez v20, :cond_f

    const-string v22, "#("

    move-object/from16 v17, v22

    .line 208
    .restart local v17       #start:Ljava/lang/String;
    :goto_5
    const-string v9, ")"

    .restart local v9       #end:Ljava/lang/String;
    goto :goto_2

    .line 207
    .end local v9           #end:Ljava/lang/String;
    .end local v17           #start:Ljava/lang/String;
    :cond_f
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "#"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v17, v22

    goto :goto_5

    .line 213
    .restart local v9       #end:Ljava/lang/String;
    .restart local v17       #start:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_3

    .line 215
    .restart local v10       #endpos:I
    .restart local v12       #ipos:I
    :cond_11
    add-int/lit8 v12, v12, 0x2

    goto :goto_4

    .line 225
    :cond_12
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto/16 :goto_0

    .line 227
    .end local v9           #end:Ljava/lang/String;
    .end local v10           #endpos:I
    .end local v12           #ipos:I
    .end local v17           #start:Ljava/lang/String;
    .end local v20           #tag:Ljava/lang/String;
    .end local v21           #vec:Lgnu/lists/SimpleVector;
    :cond_13
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/Array;

    move/from16 v22, v0

    if-eqz v22, :cond_14

    .line 229
    check-cast p1, Lgnu/lists/Array;

    .end local p1
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lgnu/kawa/functions/DisplayFormat;->write(Lgnu/lists/Array;IILgnu/lists/Consumer;)I

    goto/16 :goto_0

    .line 231
    .restart local p1
    :cond_14
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/lists/Consumable;

    move/from16 v22, v0

    if-eqz v22, :cond_15

    .line 232
    check-cast p1, Lgnu/lists/Consumable;

    .end local p1
    invoke-interface/range {p1 .. p2}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    goto/16 :goto_0

    .line 233
    .restart local p1
    :cond_15
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/text/Printable;

    move/from16 v22, v0

    if-eqz v22, :cond_16

    .line 234
    check-cast p1, Lgnu/text/Printable;

    .end local p1
    invoke-interface/range {p1 .. p2}, Lgnu/text/Printable;->print(Lgnu/lists/Consumer;)V

    goto/16 :goto_0

    .line 235
    .restart local p1
    :cond_16
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/math/RatNum;

    move/from16 v22, v0

    if-eqz v22, :cond_20

    .line 237
    const/16 v6, 0xa

    .line 238
    .local v6, b:I
    const/16 v16, 0x0

    .line 239
    .local v16, showRadix:Z
    sget-object v22, Lgnu/kawa/functions/DisplayFormat;->outBase:Lgnu/mapping/ThreadLocation;

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 240
    .local v7, base:Ljava/lang/Object;
    sget-object v22, Lgnu/kawa/functions/DisplayFormat;->outRadix:Lgnu/mapping/ThreadLocation;

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 241
    .local v14, printRadix:Ljava/lang/Object;
    if-eqz v14, :cond_18

    sget-object v22, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v14

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_17

    const-string v22, "yes"

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_18

    .line 244
    :cond_17
    const/16 v16, 0x1

    .line 245
    :cond_18
    move-object v0, v7

    instance-of v0, v0, Ljava/lang/Number;

    move/from16 v22, v0

    if-eqz v22, :cond_1b

    .line 246
    move-object v0, v7

    check-cast v0, Lgnu/math/IntNum;

    move-object v8, v0

    invoke-virtual {v8}, Lgnu/math/IntNum;->intValue()I

    move-result v6

    .line 249
    :cond_19
    :goto_6
    move-object/from16 v0, p1

    check-cast v0, Lgnu/math/RatNum;

    move-object v5, v0

    invoke-virtual {v5, v6}, Lgnu/math/RatNum;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 250
    .local v5, asString:Ljava/lang/String;
    if-eqz v16, :cond_1a

    .line 252
    const/16 v22, 0x10

    move v0, v6

    move/from16 v1, v22

    if-ne v0, v1, :cond_1c

    .line 253
    const-string v22, "#x"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 261
    :cond_1a
    :goto_7
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 262
    if-eqz v16, :cond_0

    const/16 v22, 0xa

    move v0, v6

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/math/IntNum;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 263
    const-string v22, "."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto/16 :goto_0

    .line 247
    .end local v5           #asString:Ljava/lang/String;
    :cond_1b
    if-eqz v7, :cond_19

    .line 248
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_6

    .line 254
    .restart local v5       #asString:Ljava/lang/String;
    :cond_1c
    const/16 v22, 0x8

    move v0, v6

    move/from16 v1, v22

    if-ne v0, v1, :cond_1d

    .line 255
    const-string v22, "#o"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_7

    .line 256
    :cond_1d
    const/16 v22, 0x2

    move v0, v6

    move/from16 v1, v22

    if-ne v0, v1, :cond_1e

    .line 257
    const-string v22, "#b"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_7

    .line 258
    :cond_1e
    const/16 v22, 0xa

    move v0, v6

    move/from16 v1, v22

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/math/IntNum;

    move/from16 v22, v0

    if-nez v22, :cond_1a

    .line 259
    :cond_1f
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "#"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "r"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto/16 :goto_7

    .line 268
    .end local v5           #asString:Ljava/lang/String;
    .end local v6           #b:I
    .end local v7           #base:Ljava/lang/Object;
    .end local v14           #printRadix:Ljava/lang/Object;
    .end local v16           #showRadix:Z
    :cond_20
    if-nez p1, :cond_21

    .line 269
    const/4 v5, 0x0

    .line 298
    .restart local v5       #asString:Ljava/lang/String;
    :goto_8
    if-nez v5, :cond_27

    .line 299
    const-string v22, "#!null"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto/16 :goto_0

    .line 272
    .end local v5           #asString:Ljava/lang/String;
    :cond_21
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 273
    .local v8, cl:Ljava/lang/Class;
    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v22

    if-eqz v22, :cond_26

    .line 275
    invoke-static/range {p1 .. p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v13

    .line 276
    .restart local v13       #len:I
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/mapping/OutPort;

    move/from16 v22, v0

    if-eqz v22, :cond_23

    .line 277
    move-object/from16 v0, p2

    check-cast v0, Lgnu/mapping/OutPort;

    move-object v5, v0

    const-string v22, "["

    const/16 v23, 0x0

    const-string v24, "]"

    move-object v0, v5

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 280
    :goto_9
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_a
    if-ge v11, v13, :cond_24

    .line 282
    if-lez v11, :cond_22

    .line 284
    const-string v22, " "

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 285
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/mapping/OutPort;

    move/from16 v22, v0

    if-eqz v22, :cond_22

    .line 286
    move-object/from16 v0, p2

    check-cast v0, Lgnu/mapping/OutPort;

    move-object v5, v0

    invoke-virtual {v5}, Lgnu/mapping/OutPort;->writeBreakFill()V

    .line 288
    :cond_22
    move-object/from16 v0, p1

    move v1, v11

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->writeObject(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 280
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 279
    .end local v11           #i:I
    :cond_23
    const-string v22, "["

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_9

    .line 290
    .restart local v11       #i:I
    :cond_24
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/mapping/OutPort;

    move/from16 v22, v0

    if-eqz v22, :cond_25

    .line 291
    check-cast p2, Lgnu/mapping/OutPort;

    .end local p2
    const-string v22, "]"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 293
    .restart local p2
    :cond_25
    const-string v22, "]"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto/16 :goto_0

    .line 296
    .end local v11           #i:I
    .end local v13           #len:I
    :cond_26
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #asString:Ljava/lang/String;
    goto/16 :goto_8

    .line 301
    .end local v8           #cl:Ljava/lang/Class;
    :cond_27
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto/16 :goto_0
.end method

.method writeSymbol(Lgnu/mapping/Symbol;Lgnu/lists/Consumer;Z)V
    .locals 7
    .parameter "sym"
    .parameter "out"
    .parameter "readable"

    .prologue
    const/16 v6, 0x3a

    .line 362
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, prefix:Ljava/lang/String;
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v0

    .line 364
    .local v0, namespace:Lgnu/mapping/Namespace;
    if-nez v0, :cond_3

    const/4 v4, 0x0

    move-object v3, v4

    .line 365
    .local v3, uri:Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .line 366
    .local v2, suffixColon:Z
    sget-object v4, Lgnu/expr/Keyword;->keywordNamespace:Lgnu/mapping/Namespace;

    if-ne v0, v4, :cond_5

    .line 368
    iget-char v4, p0, Lgnu/kawa/functions/DisplayFormat;->language:C

    const/16 v5, 0x43

    if-eq v4, v5, :cond_0

    iget-char v4, p0, Lgnu/kawa/functions/DisplayFormat;->language:C

    const/16 v5, 0x45

    if-ne v4, v5, :cond_4

    .line 369
    :cond_0
    invoke-interface {p2, v6}, Lgnu/lists/Consumer;->write(I)V

    .line 384
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p2, p3}, Lgnu/kawa/functions/DisplayFormat;->writeSymbol(Ljava/lang/String;Lgnu/lists/Consumer;Z)V

    .line 385
    if-eqz v2, :cond_2

    .line 386
    invoke-interface {p2, v6}, Lgnu/lists/Consumer;->write(I)V

    .line 387
    :cond_2
    return-void

    .line 364
    .end local v2           #suffixColon:Z
    .end local v3           #uri:Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 371
    .restart local v2       #suffixColon:Z
    .restart local v3       #uri:Ljava/lang/String;
    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    .line 373
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 375
    invoke-virtual {p0, v1, p2, p3}, Lgnu/kawa/functions/DisplayFormat;->writeSymbol(Ljava/lang/String;Lgnu/lists/Consumer;Z)V

    .line 376
    invoke-interface {p2, v6}, Lgnu/lists/Consumer;->write(I)V

    goto :goto_1

    .line 378
    :cond_6
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 380
    const/16 v4, 0x7b

    invoke-interface {p2, v4}, Lgnu/lists/Consumer;->write(I)V

    .line 381
    invoke-interface {p2, v3}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 382
    const/16 v4, 0x7d

    invoke-interface {p2, v4}, Lgnu/lists/Consumer;->write(I)V

    goto :goto_1
.end method

.method writeSymbol(Ljava/lang/String;Lgnu/lists/Consumer;Z)V
    .locals 6
    .parameter "sym"
    .parameter "out"
    .parameter "readable"

    .prologue
    const/16 v5, 0x7c

    .line 394
    if-eqz p3, :cond_6

    sget-object v4, Lgnu/kawa/functions/DisplayFormat;->r5rsIdentifierMinusInteriorColons:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_6

    .line 396
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 397
    .local v3, len:I
    if-nez v3, :cond_1

    .line 399
    const-string v4, "||"

    invoke-virtual {p0, v4, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 426
    .end local v3           #len:I
    :cond_0
    :goto_0
    return-void

    .line 403
    .restart local v3       #len:I
    :cond_1
    const/4 v2, 0x0

    .line 404
    .local v2, inVerticalBars:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_5

    .line 406
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 407
    .local v0, ch:C
    if-ne v0, v5, :cond_4

    .line 409
    if-eqz v2, :cond_3

    const-string v4, "|\\"

    :goto_2
    invoke-virtual {p0, v4, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    .line 410
    const/4 v2, 0x0

    .line 417
    :cond_2
    :goto_3
    invoke-interface {p2, v0}, Lgnu/lists/Consumer;->write(I)V

    .line 404
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 409
    :cond_3
    const-string v4, "\\"

    goto :goto_2

    .line 412
    :cond_4
    if-nez v2, :cond_2

    .line 414
    invoke-interface {p2, v5}, Lgnu/lists/Consumer;->write(I)V

    .line 415
    const/4 v2, 0x1

    goto :goto_3

    .line 419
    .end local v0           #ch:C
    :cond_5
    if-eqz v2, :cond_0

    .line 420
    invoke-interface {p2, v5}, Lgnu/lists/Consumer;->write(I)V

    goto :goto_0

    .line 425
    .end local v1           #i:I
    .end local v2           #inVerticalBars:Z
    .end local v3           #len:I
    :cond_6
    invoke-virtual {p0, p1, p2}, Lgnu/kawa/functions/DisplayFormat;->write(Ljava/lang/String;Lgnu/lists/Consumer;)V

    goto :goto_0
.end method
