.class public Lkawa/standard/TracedProcedure;
.super Lgnu/mapping/ProcedureN;
.source "TracedProcedure.java"


# static fields
.field static curIndentSym:Lgnu/mapping/Symbol;

.field static indentationStep:I


# instance fields
.field enabled:Z

.field public proc:Lgnu/mapping/Procedure;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x2

    sput v0, Lkawa/standard/TracedProcedure;->indentationStep:I

    .line 15
    const-string v0, "current-indentation"

    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lkawa/standard/TracedProcedure;->curIndentSym:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Z)V
    .locals 1
    .parameter "proc"
    .parameter "enable"

    .prologue
    .line 18
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 19
    iput-object p1, p0, Lkawa/standard/TracedProcedure;->proc:Lgnu/mapping/Procedure;

    .line 20
    iput-boolean p2, p0, Lkawa/standard/TracedProcedure;->enabled:Z

    .line 21
    invoke-virtual {p1}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0, v0}, Lkawa/standard/TracedProcedure;->setName(Ljava/lang/String;)V

    .line 24
    :cond_0
    return-void
.end method

.method public static doTrace(Lgnu/mapping/Procedure;Z)Lgnu/mapping/Procedure;
    .locals 2
    .parameter "proc"
    .parameter "enable"

    .prologue
    .line 115
    instance-of v1, p0, Lkawa/standard/TracedProcedure;

    if-eqz v1, :cond_0

    .line 117
    move-object v0, p0

    check-cast v0, Lkawa/standard/TracedProcedure;

    move-object v1, v0

    iput-boolean p1, v1, Lkawa/standard/TracedProcedure;->enabled:Z

    move-object v1, p0

    .line 121
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lkawa/standard/TracedProcedure;

    invoke-direct {v1, p0, p1}, Lkawa/standard/TracedProcedure;-><init>(Lgnu/mapping/Procedure;Z)V

    goto :goto_0
.end method

.method static indent(ILjava/io/PrintWriter;)V
    .locals 1
    .parameter "i"
    .parameter "out"

    .prologue
    .line 43
    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_0

    .line 44
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method static put(Ljava/lang/Object;Ljava/io/PrintWriter;)V
    .locals 3
    .parameter "value"
    .parameter "out"

    .prologue
    .line 30
    const/16 v1, 0x32

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0, p1, v1, v2}, Lgnu/kawa/functions/ObjectFormat;->format(Ljava/lang/Object;Ljava/io/Writer;IZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    const-string v1, "..."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 35
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "<caught "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 37
    const/16 v1, 0x3e

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 49
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lkawa/standard/TracedProcedure;->enabled:Z

    move v15, v0

    if-eqz v15, :cond_4

    .line 51
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v6

    .line 52
    .local v6, env:Lgnu/mapping/Environment;
    sget-object v15, Lkawa/standard/TracedProcedure;->curIndentSym:Lgnu/mapping/Symbol;

    invoke-virtual {v6, v15}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;)Lgnu/mapping/Location;

    move-result-object v4

    .line 53
    .local v4, curIndentLoc:Lgnu/mapping/Location;
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 55
    .local v11, oldIndent:Ljava/lang/Object;
    instance-of v15, v11, Lgnu/math/IntNum;

    if-nez v15, :cond_2

    .line 57
    const/4 v3, 0x0

    .line 58
    .local v3, curIndent:I
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v15

    invoke-virtual {v4, v15}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 62
    .end local v11           #oldIndent:Ljava/lang/Object;
    :goto_0
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v12

    .line 63
    .local v12, out:Ljava/io/PrintWriter;
    invoke-virtual/range {p0 .. p0}, Lkawa/standard/TracedProcedure;->getName()Ljava/lang/String;

    move-result-object v9

    .line 64
    .local v9, name:Ljava/lang/String;
    if-nez v9, :cond_0

    .line 65
    const-string v9, "??"

    .line 68
    :cond_0
    invoke-static {v3, v12}, Lkawa/standard/TracedProcedure;->indent(ILjava/io/PrintWriter;)V

    .line 69
    const-string v15, "call to "

    invoke-virtual {v12, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v12, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    move-object/from16 v0, p1

    array-length v0, v0

    move v8, v0

    .line 72
    .local v8, len:I
    const-string v15, " ("

    invoke-virtual {v12, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v8, :cond_3

    .line 75
    if-lez v7, :cond_1

    .line 76
    const/16 v15, 0x20

    invoke-virtual {v12, v15}, Ljava/io/PrintWriter;->print(C)V

    .line 77
    :cond_1
    aget-object v15, p1, v7

    invoke-static {v15, v12}, Lkawa/standard/TracedProcedure;->put(Ljava/lang/Object;Ljava/io/PrintWriter;)V

    .line 73
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 61
    .end local v3           #curIndent:I
    .end local v7           #i:I
    .end local v8           #len:I
    .end local v9           #name:Ljava/lang/String;
    .end local v12           #out:Ljava/io/PrintWriter;
    .restart local v11       #oldIndent:Ljava/lang/Object;
    :cond_2
    check-cast v11, Lgnu/math/IntNum;

    .end local v11           #oldIndent:Ljava/lang/Object;
    invoke-virtual {v11}, Lgnu/math/IntNum;->intValue()I

    move-result v3

    .restart local v3       #curIndent:I
    goto :goto_0

    .line 79
    .restart local v7       #i:I
    .restart local v8       #len:I
    .restart local v9       #name:Ljava/lang/String;
    .restart local v12       #out:Ljava/io/PrintWriter;
    :cond_3
    const-string v15, ")"

    invoke-virtual {v12, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v2

    .line 83
    .local v2, context:Lgnu/mapping/CallContext;
    sget v15, Lkawa/standard/TracedProcedure;->indentationStep:I

    add-int/2addr v15, v3

    invoke-static {v15}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v10

    .line 85
    .local v10, newIndentation:Lgnu/math/IntNum;
    invoke-virtual {v4, v10, v2}, Lgnu/mapping/Location;->setWithSave(Ljava/lang/Object;Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v14

    .line 88
    .local v14, save:Ljava/lang/Object;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/standard/TracedProcedure;->proc:Lgnu/mapping/Procedure;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 98
    .local v13, result:Ljava/lang/Object;
    invoke-virtual {v4, v14, v2}, Lgnu/mapping/Location;->setRestore(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 102
    invoke-static {v3, v12}, Lkawa/standard/TracedProcedure;->indent(ILjava/io/PrintWriter;)V

    .line 103
    const-string v15, "return from "

    invoke-virtual {v12, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v12, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    const-string v15, " => "

    invoke-virtual {v12, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    invoke-static {v13, v12}, Lkawa/standard/TracedProcedure;->put(Ljava/lang/Object;Ljava/io/PrintWriter;)V

    .line 107
    invoke-virtual {v12}, Ljava/io/PrintWriter;->println()V

    move-object v15, v13

    .line 110
    .end local v2           #context:Lgnu/mapping/CallContext;
    .end local v3           #curIndent:I
    .end local v4           #curIndentLoc:Lgnu/mapping/Location;
    .end local v6           #env:Lgnu/mapping/Environment;
    .end local v7           #i:I
    .end local v8           #len:I
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #newIndentation:Lgnu/math/IntNum;
    .end local v12           #out:Ljava/io/PrintWriter;
    .end local v13           #result:Ljava/lang/Object;
    .end local v14           #save:Ljava/lang/Object;
    :goto_2
    return-object v15

    .line 90
    .restart local v2       #context:Lgnu/mapping/CallContext;
    .restart local v3       #curIndent:I
    .restart local v4       #curIndentLoc:Lgnu/mapping/Location;
    .restart local v6       #env:Lgnu/mapping/Environment;
    .restart local v7       #i:I
    .restart local v8       #len:I
    .restart local v9       #name:Ljava/lang/String;
    .restart local v10       #newIndentation:Lgnu/math/IntNum;
    .restart local v12       #out:Ljava/io/PrintWriter;
    .restart local v14       #save:Ljava/lang/Object;
    :catch_0
    move-exception v15

    move-object v5, v15

    .line 92
    .local v5, e:Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {v3, v12}, Lkawa/standard/TracedProcedure;->indent(ILjava/io/PrintWriter;)V

    .line 93
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "procedure "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " throws exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .end local v5           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v15

    invoke-virtual {v4, v14, v2}, Lgnu/mapping/Location;->setRestore(Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    throw v15

    .line 110
    .end local v2           #context:Lgnu/mapping/CallContext;
    .end local v3           #curIndent:I
    .end local v4           #curIndentLoc:Lgnu/mapping/Location;
    .end local v6           #env:Lgnu/mapping/Environment;
    .end local v7           #i:I
    .end local v8           #len:I
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #newIndentation:Lgnu/math/IntNum;
    .end local v12           #out:Ljava/io/PrintWriter;
    .end local v14           #save:Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lkawa/standard/TracedProcedure;->proc:Lgnu/mapping/Procedure;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    goto :goto_2
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "ps"

    .prologue
    .line 126
    const-string v1, "#<procedure "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lkawa/standard/TracedProcedure;->getName()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, n:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 129
    const-string v1, "<unnamed>"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    :goto_0
    iget-boolean v1, p0, Lkawa/standard/TracedProcedure;->enabled:Z

    if-eqz v1, :cond_1

    const-string v1, ", traced>"

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    return-void

    .line 131
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_1
    const-string v1, ">"

    goto :goto_1
.end method
