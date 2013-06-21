.class public Lgnu/kawa/slib/printf$frame11;
.super Lgnu/expr/ModuleBody;
.source "printf.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/printf;->stdio$ClIprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame11"
.end annotation


# instance fields
.field fc:Ljava/lang/Object;

.field format$Mnreal:Lgnu/mapping/Procedure;

.field final lambda$Fn17:Lgnu/expr/ModuleMethod;

.field staticLink:Lgnu/kawa/slib/printf$frame10;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xd

    sget-object v2, Lgnu/kawa/slib/printf;->Lit63:Lgnu/mapping/SimpleSymbol;

    const/16 v3, -0xffc

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame11;->format$Mnreal:Lgnu/mapping/Procedure;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/16 v3, -0xffd

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "printf.scm:401"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame11;->lambda$Fn17:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 401
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 386
    :pswitch_0
    aget-object v1, p2, v1

    aget-object v2, p2, v2

    aget-object v3, p2, v3

    aget-object v4, p2, v4

    array-length v0, p2

    const/4 v5, 0x4

    sub-int/2addr v0, v5

    new-array v5, v0, [Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lgnu/kawa/slib/printf$frame11;->lambda33formatReal$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    add-int/lit8 v6, v0, 0x4

    aget-object v6, p2, v6

    aput-object v6, v5, v0

    goto :goto_1

    .line 401
    :pswitch_1
    aget-object v0, p2, v1

    aget-object v1, p2, v2

    aget-object v2, p2, v3

    array-length v3, p2

    sub-int/2addr v3, v4

    new-array v4, v3, [Ljava/lang/Object;

    move-object v7, v4

    move v4, v3

    move-object v3, v7

    :goto_2
    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_1

    invoke-virtual {p0, v0, v1, v2, v3}, Lgnu/kawa/slib/printf$frame11;->lambda34$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v4, 0x3

    aget-object v5, p2, v5

    aput-object v5, v3, v4

    goto :goto_2

    .line -1
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public lambda29f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter "digs"
    .parameter "exp"
    .parameter "strip$Mn0s"

    .prologue
    .line 307
    :try_start_0
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1
    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 309
    iget-object v7, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v7, v7, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    invoke-virtual {v6, p2, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p3, v7, :cond_1

    move-object v7, p2

    :goto_0
    invoke-static {p1, v6, v7}, Lgnu/kawa/slib/printf;->stdio$ClRoundString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 310
    .restart local p1
    sget-object v6, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    sget-object v7, Lgnu/kawa/slib/printf;->Lit0:Lgnu/math/IntNum;

    invoke-virtual {v6, p2, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_6

    .line 311
    :try_start_1
    move-object v0, p2

    check-cast v0, Lgnu/math/Numeric;

    move-object p3, v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .end local p3
    invoke-static {p3}, Lkawa/lib/numbers;->isZero(Lgnu/math/Numeric;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lgnu/kawa/slib/printf;->Lit0:Lgnu/math/IntNum;

    move-object v2, v6

    .local v2, i0:Lgnu/math/IntNum;
    :goto_1
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lgnu/kawa/slib/printf;->Lit2:Lgnu/math/IntNum;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v9, Lgnu/kawa/slib/printf;->Lit2:Lgnu/math/IntNum;

    .line 314
    invoke-virtual {v8, v9, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lkawa/lib/numbers;->max([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 311
    .local v3, i1:Ljava/lang/Object;
    :try_start_2
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object p2, v0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_3

    .end local p2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v6

    :try_start_4
    move-object v0, v3

    check-cast v0, Ljava/lang/Number;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_5

    move-result v7

    invoke-static {p2, v6, v7}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v4

    .local v4, idigs:Ljava/lang/CharSequence;
    :try_start_5
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object p2, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_6

    :try_start_6
    move-object v0, v3

    check-cast v0, Ljava/lang/Number;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_7

    move-result v6

    :try_start_7
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_8

    .end local p1
    invoke-static {p1}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v7

    invoke-static {p2, v6, v7}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, fdigs:Ljava/lang/CharSequence;
    const-string v6, ""

    invoke-static {v1, v6}, Lkawa/lib/strings;->isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 319
    .local v5, x:Z
    if-eqz v5, :cond_4

    iget-object v6, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v6, v7, :cond_5

    :cond_0
    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_2
    invoke-static {v4, v6}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    .line 328
    .end local v1           #fdigs:Ljava/lang/CharSequence;
    .end local v2           #i0:Lgnu/math/IntNum;
    .end local v3           #i1:Ljava/lang/Object;
    .end local v4           #idigs:Ljava/lang/CharSequence;
    .end local v5           #x:Z
    .end local p0
    :goto_3
    return-object v6

    .restart local p0
    .restart local p2
    .restart local p3
    :cond_1
    move-object v7, p3

    .line 309
    goto :goto_0

    .line 311
    .end local p3
    .restart local p1
    :cond_2
    sget-object v6, Lgnu/kawa/slib/printf;->Lit8:Lgnu/text/Char;

    :try_start_8
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object p3, v0
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_2

    const/4 v7, 0x0

    invoke-static {p3, v7}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v7

    invoke-static {v7}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v7

    invoke-static {v6, v7}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lgnu/kawa/slib/printf;->Lit2:Lgnu/math/IntNum;

    move-object v2, v6

    goto :goto_1

    :cond_3
    sget-object v6, Lgnu/kawa/slib/printf;->Lit0:Lgnu/math/IntNum;

    move-object v2, v6

    goto :goto_1

    .line 319
    .end local p1
    .end local p2
    .restart local v1       #fdigs:Ljava/lang/CharSequence;
    .restart local v2       #i0:Lgnu/math/IntNum;
    .restart local v3       #i1:Ljava/lang/Object;
    .restart local v4       #idigs:Ljava/lang/CharSequence;
    .restart local v5       #x:Z
    :cond_4
    if-nez v5, :cond_0

    :cond_5
    const-string v6, "."

    invoke-static {v6, v1}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    goto :goto_2

    .end local v1           #fdigs:Ljava/lang/CharSequence;
    .end local v2           #i0:Lgnu/math/IntNum;
    .end local v3           #i1:Ljava/lang/Object;
    .end local v4           #idigs:Ljava/lang/CharSequence;
    .end local v5           #x:Z
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_6
    iget-object v6, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v1, v6, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    :try_start_9
    check-cast v1, Lgnu/math/Numeric;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    invoke-static {v1}, Lkawa/lib/numbers;->isZero(Lgnu/math/Numeric;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_7

    const-string v6, "0."

    :goto_4
    invoke-static {v6}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    goto :goto_3

    :cond_7
    const-string v6, "0"

    goto :goto_4

    .line 325
    :cond_8
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p3, v6, :cond_b

    const-string v6, ""

    invoke-static {p1, v6}, Lkawa/lib/strings;->isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .restart local v5       #x:Z
    if-eqz v5, :cond_9

    const-string v6, "0"

    invoke-static {v6}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    :goto_5
    move-object v5, v6

    .line 310
    .local v5, x:Ljava/lang/Object;
    :goto_6
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_c

    move-object v6, v5

    goto :goto_3

    .line 325
    .local v5, x:Z
    :cond_9
    if-eqz v5, :cond_a

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_a
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_5

    .end local v5           #x:Z
    :cond_b
    move-object v5, p3

    goto :goto_6

    .line 310
    .local v5, x:Ljava/lang/Object;
    :cond_c
    const-string v6, "0."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v9, v9, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v10, Lgnu/kawa/slib/printf;->Lit16:Lgnu/math/IntNum;

    .line 328
    invoke-virtual {v9, v10, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lkawa/lib/numbers;->min([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    :try_start_a
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object p0, v0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    move-result v7

    sget-object v8, Lgnu/kawa/slib/printf;->Lit8:Lgnu/text/Char;

    invoke-static {v7, v8}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v6, v7, p1}, Lgnu/lists/LList;->list3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    goto/16 :goto_3

    .line 309
    .end local v5           #x:Ljava/lang/Object;
    .restart local p0
    .restart local p2
    :catch_0
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "stdio:round-string"

    const/4 v9, 0x0

    invoke-direct {v7, v6, v8, v9, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 311
    :catch_1
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "zero?"

    const/4 v9, 0x1

    invoke-direct {v7, v6, v8, v9, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 312
    .end local p3
    :catch_2
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "string-ref"

    const/4 v9, 0x1

    invoke-direct {v7, v6, v8, v9, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 315
    .restart local v2       #i0:Lgnu/math/IntNum;
    .restart local v3       #i1:Ljava/lang/Object;
    :catch_3
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "substring"

    const/4 v9, 0x1

    invoke-direct {v7, v6, v8, v9, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .end local p2
    :catch_4
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "substring"

    const/4 v9, 0x2

    invoke-direct {v7, v6, v8, v9, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    :catch_5
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "substring"

    const/4 v9, 0x3

    invoke-direct {v7, v6, v8, v9, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 316
    .restart local v4       #idigs:Ljava/lang/CharSequence;
    :catch_6
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "substring"

    const/4 v9, 0x1

    invoke-direct {v7, v6, v8, v9, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    :catch_7
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "substring"

    const/4 v9, 0x2

    invoke-direct {v7, v6, v8, v9, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 317
    :catch_8
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "string-length"

    const/4 v9, 0x1

    invoke-direct {v7, v6, v8, v9, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 323
    .end local v2           #i0:Lgnu/math/IntNum;
    .end local v3           #i1:Ljava/lang/Object;
    .end local v4           #idigs:Ljava/lang/CharSequence;
    .restart local p2
    .restart local p3
    :catch_9
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "zero?"

    const/4 v9, 0x1

    invoke-direct {v7, v6, v8, v9, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .end local p0
    .end local p2
    .restart local v5       #x:Ljava/lang/Object;
    :catch_a
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "make-string"

    const/4 v9, 0x1

    invoke-direct {v7, v6, v8, v9, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7
.end method

.method public lambda30e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 11
    .parameter "digs"
    .parameter "exp"
    .parameter "strip$Mn0s"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v7, "substring"

    const-string v10, ""

    .line 330
    :try_start_0
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1
    sget-object v4, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v5, Lgnu/kawa/slib/printf;->Lit2:Lgnu/math/IntNum;

    .line 332
    iget-object v6, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p3, v5, :cond_1

    sget-object v5, Lgnu/kawa/slib/printf;->Lit0:Lgnu/math/IntNum;

    :goto_0
    invoke-static {p1, v4, v5}, Lgnu/kawa/slib/printf;->stdio$ClRoundString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 331
    .restart local p1
    sget-object v5, Lgnu/kawa/slib/printf;->Lit8:Lgnu/text/Char;

    :try_start_1
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v4, v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v4, v8}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v4

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    invoke-static {v5, v4}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lgnu/kawa/slib/printf;->Lit2:Lgnu/math/IntNum;

    move-object v2, v4

    .local v2, istrt:Lgnu/math/IntNum;
    :goto_1
    :try_start_2
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v4, v0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v5

    add-int/lit8 v6, v5, 0x1

    :try_start_3
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    move-object v5, v0
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {v5}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-static {v4, v6, v5}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 336
    .local v1, fdigs:Ljava/lang/CharSequence;
    invoke-static {v2}, Lkawa/lib/numbers;->isZero(Lgnu/math/Numeric;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    :try_start_4
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    .end local p1
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {p1, v4, v5}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    const-string v4, ""

    invoke-static {v1, v10}, Lkawa/lib/strings;->isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 339
    .local v3, x:Z
    if-eqz v3, :cond_4

    iget-object v4, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v4, v4, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v4, v6, :cond_5

    :cond_0
    const-string v4, ""

    move-object v6, v10

    :goto_3
    iget-object v4, p0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    :try_start_6
    move-object v0, v4

    check-cast v0, Lgnu/text/Char;

    move-object p0, v0

    .end local p0
    invoke-virtual {p0}, Lgnu/text/Char;->charValue()C
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v4

    invoke-static {v4}, Lkawa/lib/characters;->isCharUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "E"

    move-object v7, v4

    :goto_4
    :try_start_7
    move-object v0, p2

    check-cast v0, Lgnu/math/RealNum;

    move-object v4, v0
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    invoke-static {v4}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "-"

    :goto_5
    invoke-static {v5, v6, v1, v7, v4}, Lgnu/lists/LList;->chain4(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    sget-object v6, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    sget-object v7, Lgnu/kawa/slib/printf;->Lit60:Lgnu/math/IntNum;

    .line 344
    sget-object v8, Lgnu/kawa/slib/printf;->Lit44:Lgnu/math/IntNum;

    invoke-virtual {v6, v7, p2, v8}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_8

    const-string v6, "0"

    :goto_6
    invoke-static {v4, v6}, Lgnu/lists/LList;->chain1(Lgnu/lists/Pair;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    :try_start_8
    check-cast p2, Lgnu/math/Numeric;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    .end local p2
    invoke-static {p2}, Lkawa/lib/numbers;->abs(Lgnu/math/Numeric;)Lgnu/math/Numeric;

    move-result-object v6

    invoke-static {v6}, Lkawa/lib/numbers;->number$To$String(Ljava/lang/Number;)Lgnu/lists/FString;

    move-result-object v6

    invoke-static {v4, v6}, Lgnu/lists/LList;->chain1(Lgnu/lists/Pair;Ljava/lang/Object;)Lgnu/lists/Pair;

    return-object v5

    .end local v1           #fdigs:Ljava/lang/CharSequence;
    .end local v2           #istrt:Lgnu/math/IntNum;
    .end local v3           #x:Z
    .restart local p0
    .restart local p2
    :cond_1
    move-object v5, p3

    .line 332
    goto/16 :goto_0

    .line 331
    .restart local p1
    :cond_2
    sget-object v4, Lgnu/kawa/slib/printf;->Lit0:Lgnu/math/IntNum;

    move-object v2, v4

    goto/16 :goto_1

    .line 336
    .restart local v1       #fdigs:Ljava/lang/CharSequence;
    .restart local v2       #istrt:Lgnu/math/IntNum;
    :cond_3
    sget-object v4, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v5, Lgnu/kawa/slib/printf;->Lit2:Lgnu/math/IntNum;

    invoke-virtual {v4, p2, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object p2, v4

    goto :goto_2

    .line 339
    .end local p1
    .restart local v3       #x:Z
    :cond_4
    if-nez v3, :cond_0

    :cond_5
    const-string v4, "."

    move-object v6, v4

    goto :goto_3

    .end local p0
    :cond_6
    const-string v4, "e"

    move-object v7, v4

    goto :goto_4

    :cond_7
    const-string v4, "+"

    goto :goto_5

    .line 344
    :cond_8
    const-string v6, ""

    move-object v6, v10

    goto :goto_6

    .line 332
    .end local v1           #fdigs:Ljava/lang/CharSequence;
    .end local v2           #istrt:Lgnu/math/IntNum;
    .end local v3           #x:Z
    .restart local p0
    .restart local p1
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "stdio:round-string"

    invoke-direct {v5, v4, v6, v8, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 333
    :catch_1
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "string-ref"

    invoke-direct {v5, v4, v6, v9, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 335
    .restart local v2       #istrt:Lgnu/math/IntNum;
    :catch_2
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "substring"

    invoke-direct {v5, v4, v7, v9, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_3
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "string-length"

    invoke-direct {v5, v4, v6, v9, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 338
    .restart local v1       #fdigs:Ljava/lang/CharSequence;
    :catch_4
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "substring"

    invoke-direct {v5, v4, v7, v9, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .end local p1
    :catch_5
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "substring"

    const/4 v6, 0x2

    invoke-direct {v5, v4, v7, v6, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 342
    .end local p0
    .restart local v3       #x:Z
    :catch_6
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "char-upper-case?"

    invoke-direct {v6, v5, v7, v9, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 343
    :catch_7
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "negative?"

    invoke-direct {v5, v4, v6, v9, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 345
    :catch_8
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "abs"

    invoke-direct {v5, v4, v6, v9, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
.end method

.method public lambda31g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "digs"
    .parameter "exp"

    .prologue
    .line 346
    iget-object v1, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v1, v1, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    :try_start_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v0, v1, 0x1

    .line 348
    .local v0, strip$Mn0s:Z
    iget-object v1, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, v1, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    sget-object v1, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    sget-object v2, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v3, Lgnu/kawa/slib/printf;->Lit2:Lgnu/math/IntNum;

    .line 349
    iget-object v4, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v4, v4, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v3, v3, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    invoke-virtual {v1, v2, p2, v3}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_2

    .line 350
    iget-object v1, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    sget-object v2, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v3, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v3, v3, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    invoke-virtual {v2, v3, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    if-eqz v0, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {p0, p1, p2, v1}, Lgnu/kawa/slib/printf$frame11;->lambda29f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 353
    :goto_2
    return-object v1

    .line 346
    .end local v0           #strip$Mn0s:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 350
    .restart local v0       #strip$Mn0s:Z
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 353
    :cond_2
    iget-object v1, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    sget-object v2, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v3, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v3, v3, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/printf;->Lit2:Lgnu/math/IntNum;

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    if-eqz v0, :cond_3

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_3
    invoke-virtual {p0, p1, p2, v1}, Lgnu/kawa/slib/printf$frame11;->lambda30e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    goto :goto_2

    :cond_3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    .line 347
    .end local v0           #strip$Mn0s:Z
    :catch_0
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const/4 v4, 0x0

    const/4 v5, -0x4

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method public lambda32k(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter "digs"
    .parameter "exp"
    .parameter "sep"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 355
    :try_start_0
    move-object v0, p2

    check-cast v0, Lgnu/math/RealNum;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v4}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lkawa/lib/numbers;->quotient:Lgnu/expr/GenericProc;

    sget-object v5, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    .line 360
    sget-object v6, Lgnu/kawa/slib/printf;->Lit61:Lgnu/math/IntNum;

    invoke-virtual {v5, p2, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lgnu/kawa/slib/printf;->Lit61:Lgnu/math/IntNum;

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 362
    .local v1, i:Ljava/lang/Object;
    :goto_0
    sget-object v4, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    sget-object v5, Lgnu/kawa/slib/printf;->Lit16:Lgnu/math/IntNum;

    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 363
    sget-object v7, Lgnu/kawa/slib/printf;->Lit47:Lgnu/math/IntNum;

    invoke-virtual {v6, v1, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lgnu/kawa/slib/printf;->Lit62:Lgnu/lists/FVector;

    invoke-static {v7}, Lkawa/lib/vectors;->vectorLength(Lgnu/lists/FVector;)I

    move-result v7

    invoke-static {v7}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :try_start_1
    check-cast v3, Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 362
    .local v3, x:Ljava/lang/Boolean;
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_1

    move-object v2, v1

    .line 365
    .local v2, uind:Ljava/lang/Object;
    :goto_1
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v4, :cond_2

    .line 366
    sget-object v4, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v5, Lgnu/kawa/functions/MultiplyOp;->$St:Lgnu/kawa/functions/MultiplyOp;

    sget-object v6, Lgnu/kawa/slib/printf;->Lit61:Lgnu/math/IntNum;

    invoke-virtual {v5, v6, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 367
    iget-object v4, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    new-array v5, v10, [Ljava/lang/Object;

    sget-object v6, Lgnu/kawa/slib/printf;->Lit0:Lgnu/math/IntNum;

    aput-object v6, v5, v9

    sget-object v6, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v7, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v7, v7, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    invoke-virtual {v6, v7, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lkawa/lib/numbers;->max([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v4, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    new-array v4, v10, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, v5}, Lgnu/kawa/slib/printf$frame11;->lambda29f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v9

    sget-object v5, Lgnu/kawa/slib/printf;->Lit62:Lgnu/lists/FVector;

    check-cast v2, Ljava/lang/Number;

    .end local v2           #uind:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x8

    invoke-static {v5, v6}, Lkawa/lib/vectors;->vectorRef(Lgnu/lists/FVector;I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p3, v5}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Lkawa/standard/append;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_2
    return-object v4

    .line 360
    .end local v1           #i:Ljava/lang/Object;
    .end local v3           #x:Ljava/lang/Boolean;
    :cond_0
    sget-object v4, Lkawa/lib/numbers;->quotient:Lgnu/expr/GenericProc;

    sget-object v5, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    .line 361
    sget-object v6, Lgnu/kawa/slib/printf;->Lit2:Lgnu/math/IntNum;

    invoke-virtual {v5, p2, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lgnu/kawa/slib/printf;->Lit61:Lgnu/math/IntNum;

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    goto/16 :goto_0

    .restart local v1       #i:Ljava/lang/Object;
    .restart local v3       #x:Ljava/lang/Boolean;
    :cond_1
    move-object v2, v3

    .line 362
    goto :goto_1

    .line 367
    .restart local v2       #uind:Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0, p1, p2}, Lgnu/kawa/slib/printf$frame11;->lambda31g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    .line 359
    .end local v1           #i:Ljava/lang/Object;
    .end local v2           #uind:Ljava/lang/Object;
    .end local v3           #x:Ljava/lang/Boolean;
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "negative?"

    invoke-direct {v5, v4, v6, v8, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 362
    .restart local v1       #i:Ljava/lang/Object;
    :catch_1
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const/4 v6, 0x0

    const/4 v7, -0x4

    invoke-direct {v5, v4, v6, v7, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
.end method

.method public lambda33formatReal$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "signed$Qu"
    .parameter "sgn"
    .parameter "digs"
    .parameter "exp"
    .parameter "argsArray"

    .prologue
    .line 386
    const/4 v0, 0x0

    invoke-static {p5, v0}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v6

    .line 387
    .local v6, rest:Lgnu/lists/LList;
    invoke-static {v6}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lgnu/kawa/slib/printf;->Lit5:Lgnu/text/Char;

    :try_start_0
    check-cast p2, Lgnu/text/Char;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p2
    invoke-static {v0, p2}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "-"

    .line 391
    :goto_0
    sget-object v1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/slib/printf;->Lit12:Lgnu/text/Char;

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .local v7, x:Ljava/lang/Object;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v7, v1, :cond_4

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v7, v1, :cond_5

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p3, p4, v1}, Lgnu/kawa/slib/printf$frame11;->lambda30e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    .line 398
    .end local v7           #x:Ljava/lang/Object;
    :goto_2
    return-object v0

    .line 390
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, v0, :cond_2

    const-string v0, "+"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->blank:Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_3

    const-string v0, " "

    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_0

    .line 391
    .restart local v7       #x:Ljava/lang/Object;
    :cond_4
    sget-object v1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/slib/printf;->Lit53:Lgnu/text/Char;

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_0

    :cond_5
    sget-object v1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/slib/printf;->Lit24:Lgnu/text/Char;

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v7, v1, :cond_7

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v7, v1, :cond_8

    :cond_6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p3, p4, v1}, Lgnu/kawa/slib/printf$frame11;->lambda29f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_7
    sget-object v1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/slib/printf;->Lit25:Lgnu/text/Char;

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_6

    :cond_8
    sget-object v1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/slib/printf;->Lit54:Lgnu/text/Char;

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v7, v1, :cond_a

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v7, v1, :cond_b

    :cond_9
    invoke-virtual {p0, p3, p4}, Lgnu/kawa/slib/printf$frame11;->lambda31g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_a
    sget-object v1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/slib/printf;->Lit55:Lgnu/text/Char;

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_9

    :cond_b
    sget-object v1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/slib/printf;->Lit56:Lgnu/text/Char;

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_c

    const-string v1, ""

    invoke-virtual {p0, p3, p4, v1}, Lgnu/kawa/slib/printf$frame11;->lambda32k(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    :cond_c
    sget-object v1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/slib/printf;->Lit57:Lgnu/text/Char;

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_d

    const-string v1, " "

    invoke-virtual {p0, p3, p4, v1}, Lgnu/kawa/slib/printf$frame11;->lambda32k(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_1

    :cond_d
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto/16 :goto_1

    .end local v7           #x:Ljava/lang/Object;
    .restart local p2
    :cond_e
    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lgnu/kawa/slib/printf$frame11;->lambda33formatReal$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    sget-object v1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    .line 398
    iget-object v2, p0, Lgnu/kawa/slib/printf$frame11;->format$Mnreal:Lgnu/mapping/Procedure;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3, v6}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    sget-object v1, Lgnu/kawa/slib/printf;->Lit59:Lgnu/lists/PairWithPosition;

    aput-object v1, v7, v0

    invoke-static {v7}, Lkawa/standard/append;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_2

    .line 389
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "char=?"

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method lambda34$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "sgn"
    .parameter "digs"
    .parameter "expon"
    .parameter "argsArray"

    .prologue
    const/4 v6, 0x0

    .line 401
    invoke-static {p4, v6}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    .local v0, imag:Lgnu/lists/LList;
    sget-object v1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    .line 402
    iget-object v2, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v2, v2, Lgnu/kawa/slib/printf$frame10;->pad:Lgnu/mapping/Procedure;

    sget-object v3, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    .line 403
    iget-object v5, p0, Lgnu/kawa/slib/printf$frame11;->format$Mnreal:Lgnu/mapping/Procedure;

    aput-object v5, v4, v6

    const/4 v5, 0x1

    .line 404
    iget-object v6, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame10;->signed:Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 405
    aput-object p1, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    const/4 v5, 0x4

    aput-object p3, v4, v5

    const/4 v5, 0x5

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 386
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 401
    :goto_0
    return v0

    :pswitch_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 386
    :pswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
