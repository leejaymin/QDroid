.class public Lgnu/kawa/slib/ppfile$frame1;
.super Lgnu/expr/ModuleBody;
.source "ppfile.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/ppfile$frame0;->lambda2(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame1"
.end annotation


# instance fields
.field export:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/ppfile$frame0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda3lp(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter "c"

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    const-string v9, "char=?"

    .line 37
    invoke-static {p1}, Lkawa/lib/ports;->isEofObject(Ljava/lang/Object;)Z

    move-result v3

    .local v3, x:Z
    if-eqz v3, :cond_1

    if-eqz v3, :cond_0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 62
    .end local p1
    :goto_0
    return-object v4

    .line 37
    .restart local p1
    :cond_0
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, Lgnu/text/Char;

    move-object v4, v0

    invoke-virtual {v4}, Lgnu/text/Char;->charValue()C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    invoke-static {v4}, Lkawa/lib/characters;->isCharWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 40
    sget-object v4, Lkawa/standard/readchar;->readChar:Lkawa/standard/readchar;

    iget-object v5, p0, Lgnu/kawa/slib/ppfile$frame1;->staticLink:Lgnu/kawa/slib/ppfile$frame0;

    iget-object v5, v5, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lgnu/kawa/slib/ppfile$frame1;->export:Ljava/lang/Object;

    invoke-static {v4, v5}, Lkawa/lib/ports;->display(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v4, Lkawa/standard/readchar;->peekChar:Lkawa/standard/readchar;

    .line 41
    iget-object v5, p0, Lgnu/kawa/slib/ppfile$frame1;->staticLink:Lgnu/kawa/slib/ppfile$frame0;

    iget-object v5, v5, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgnu/kawa/slib/ppfile$frame1;->lambda3lp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_2
    sget-object v5, Lgnu/kawa/slib/ppfile;->Lit0:Lgnu/text/Char;

    :try_start_1
    move-object v0, p1

    check-cast v0, Lgnu/text/Char;

    move-object v4, v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v5, v4}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 45
    :goto_1
    move-object v1, p0

    .line 46
    .local v1, closureEnv:Lgnu/kawa/slib/ppfile$frame1;
    invoke-static {p1}, Lkawa/lib/ports;->isEofObject(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v3, :cond_3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_4
    sget-object v4, Lgnu/kawa/slib/ppfile;->Lit1:Lgnu/text/Char;

    :try_start_2
    check-cast p1, Lgnu/text/Char;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .end local p1
    invoke-static {v4, p1}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 48
    sget-object v4, Lkawa/standard/readchar;->readChar:Lkawa/standard/readchar;

    iget-object v5, p0, Lgnu/kawa/slib/ppfile$frame1;->staticLink:Lgnu/kawa/slib/ppfile$frame0;

    iget-object v5, v5, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lgnu/kawa/slib/ppfile$frame1;->export:Ljava/lang/Object;

    invoke-static {v4, v5}, Lkawa/lib/ports;->display(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v4, Lkawa/standard/readchar;->peekChar:Lkawa/standard/readchar;

    .line 49
    iget-object v5, p0, Lgnu/kawa/slib/ppfile$frame1;->staticLink:Lgnu/kawa/slib/ppfile$frame0;

    iget-object v5, v5, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgnu/kawa/slib/ppfile$frame1;->lambda3lp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 51
    :cond_5
    sget-object v4, Lkawa/standard/readchar;->readChar:Lkawa/standard/readchar;

    iget-object v5, p0, Lgnu/kawa/slib/ppfile$frame1;->staticLink:Lgnu/kawa/slib/ppfile$frame0;

    iget-object v5, v5, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lgnu/kawa/slib/ppfile$frame1;->export:Ljava/lang/Object;

    invoke-static {v4, v5}, Lkawa/lib/ports;->display(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v4, Lkawa/standard/readchar;->peekChar:Lkawa/standard/readchar;

    .line 52
    iget-object v5, p0, Lgnu/kawa/slib/ppfile$frame1;->staticLink:Lgnu/kawa/slib/ppfile$frame0;

    iget-object v5, v5, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .restart local p1
    goto :goto_1

    .line 53
    .end local v1           #closureEnv:Lgnu/kawa/slib/ppfile$frame1;
    :cond_6
    move-object v1, p0

    .line 54
    .restart local v1       #closureEnv:Lgnu/kawa/slib/ppfile$frame1;
    iget-object v4, p0, Lgnu/kawa/slib/ppfile$frame1;->staticLink:Lgnu/kawa/slib/ppfile$frame0;

    iget-object v4, v4, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    :try_start_3
    check-cast v4, Lgnu/mapping/InPort;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {v4}, Lkawa/lib/ports;->read(Lgnu/mapping/InPort;)Ljava/lang/Object;

    move-result-object v2

    .line 55
    .local v2, o:Ljava/lang/Object;
    invoke-static {v2}, Lkawa/lib/ports;->isEofObject(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v3, :cond_7

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_7
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_8
    sget-object v4, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 57
    iget-object v5, p0, Lgnu/kawa/slib/ppfile$frame1;->staticLink:Lgnu/kawa/slib/ppfile$frame0;

    iget-object v5, v5, Lgnu/kawa/slib/ppfile$frame0;->staticLink:Lgnu/kawa/slib/ppfile$frame;

    iget-object v5, v5, Lgnu/kawa/slib/ppfile$frame;->filter:Ljava/lang/Object;

    invoke-virtual {v4, v5, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lgnu/kawa/slib/ppfile$frame1;->export:Ljava/lang/Object;

    invoke-static {v4, v5}, Lgnu/kawa/slib/pp;->prettyPrint(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v4, Lkawa/standard/readchar;->peekChar:Lkawa/standard/readchar;

    iget-object v5, p0, Lgnu/kawa/slib/ppfile$frame1;->staticLink:Lgnu/kawa/slib/ppfile$frame0;

    iget-object v5, v5, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 60
    sget-object v4, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v5, Lgnu/kawa/slib/ppfile;->Lit1:Lgnu/text/Char;

    invoke-virtual {v4, v5, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_9

    .line 61
    sget-object v4, Lkawa/standard/readchar;->readChar:Lkawa/standard/readchar;

    iget-object v5, p0, Lgnu/kawa/slib/ppfile$frame1;->staticLink:Lgnu/kawa/slib/ppfile$frame0;

    iget-object v5, v5, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v4, Lkawa/standard/readchar;->peekChar:Lkawa/standard/readchar;

    iget-object v5, p0, Lgnu/kawa/slib/ppfile$frame1;->staticLink:Lgnu/kawa/slib/ppfile$frame0;

    iget-object v5, v5, Lgnu/kawa/slib/ppfile$frame0;->port:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_9
    invoke-virtual {p0, p1}, Lgnu/kawa/slib/ppfile$frame1;->lambda3lp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .line 39
    .end local v1           #closureEnv:Lgnu/kawa/slib/ppfile$frame1;
    .end local v2           #o:Ljava/lang/Object;
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "char-whitespace?"

    invoke-direct {v5, v4, v6, v8, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 42
    :catch_1
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "char=?"

    invoke-direct {v5, v4, v9, v7, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 47
    .restart local v1       #closureEnv:Lgnu/kawa/slib/ppfile$frame1;
    :catch_2
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "char=?"

    invoke-direct {v5, v4, v9, v7, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 54
    :catch_3
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "read"

    invoke-direct {v6, v5, v7, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method
