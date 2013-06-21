.class public Lgnu/kawa/slib/XStrings;
.super Lgnu/expr/ModuleBody;
.source "XStrings.scm"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final $instance:Lgnu/kawa/slib/XStrings;

.field static final Lit0:Lgnu/math/IntNum;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field public static final string$Mnlength:Lgnu/expr/ModuleMethod;

.field public static final substring:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "string-length"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/XStrings;->Lit2:Lgnu/mapping/SimpleSymbol;

    const-string v0, "substring"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/XStrings;->Lit1:Lgnu/mapping/SimpleSymbol;

    const v0, 0x7fffffff

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/XStrings;->Lit0:Lgnu/math/IntNum;

    new-instance v0, Lgnu/kawa/slib/XStrings;

    invoke-direct {v0}, Lgnu/kawa/slib/XStrings;-><init>()V

    sput-object v0, Lgnu/kawa/slib/XStrings;->$instance:Lgnu/kawa/slib/XStrings;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/XStrings;->$instance:Lgnu/kawa/slib/XStrings;

    const/4 v2, 0x1

    sget-object v3, Lgnu/kawa/slib/XStrings;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x3002

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/XStrings;->substring:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x3

    sget-object v3, Lgnu/kawa/slib/XStrings;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x1001

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/XStrings;->string$Mnlength:Lgnu/expr/ModuleMethod;

    sget-object v0, Lgnu/kawa/slib/XStrings;->$instance:Lgnu/kawa/slib/XStrings;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static stringLength(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "string"

    .prologue
    .line 15
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0
.end method

.method public static substring(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lgnu/kawa/slib/XStrings;->Lit0:Lgnu/math/IntNum;

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/XStrings;->substring(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static substring(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .parameter "string"
    .parameter "start"
    .parameter "length"

    .prologue
    const/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x1

    const/4 v15, -0x4

    .line 1
    sget-object v13, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v0, p0

    move-object v1, v13

    if-ne v0, v1, :cond_1

    move v12, v14

    .local v12, x:Z
    :goto_0
    if-eqz v12, :cond_2

    if-eqz v12, :cond_3

    :cond_0
    :goto_1
    sget-object v13, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 12
    :goto_2
    return-object v13

    .end local v12           #x:Z
    :cond_1
    move/from16 v12, v17

    .line 1
    goto :goto_0

    .restart local v12       #x:Z
    :cond_2
    sget-object v13, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v0, p1

    move-object v1, v13

    if-ne v0, v1, :cond_4

    move v12, v14

    :goto_3
    if-eqz v12, :cond_5

    if-nez v12, :cond_0

    .line 6
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v9, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .local v9, s:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    .line 8
    .local v11, slen:I
    :try_start_1
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    .line 6
    .local v10, sindex:I
    sub-int v6, v10, v14

    .line 10
    .local v6, index:I
    :try_start_2
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    .line 6
    .local v7, len:I
    sub-int v5, v11, v6

    .line 12
    .local v5, avail:I
    if-le v7, v5, :cond_6

    move v8, v5

    .local v8, rlen:I
    :goto_4
    add-int v13, v6, v8

    invoke-virtual {v9, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .end local v5           #avail:I
    .end local v6           #index:I
    .end local v7           #len:I
    .end local v8           #rlen:I
    .end local v9           #s:Ljava/lang/String;
    .end local v10           #sindex:I
    .end local v11           #slen:I
    :cond_4
    move/from16 v12, v17

    .line 1
    goto :goto_3

    :cond_5
    sget-object v13, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v0, p2

    move-object v1, v13

    if-ne v0, v1, :cond_3

    goto :goto_1

    .restart local v5       #avail:I
    .restart local v6       #index:I
    .restart local v7       #len:I
    .restart local v9       #s:Ljava/lang/String;
    .restart local v10       #sindex:I
    .restart local v11       #slen:I
    :cond_6
    move v8, v7

    .line 12
    goto :goto_4

    .line 6
    .end local v5           #avail:I
    .end local v6           #index:I
    .end local v7           #len:I
    .end local v9           #s:Ljava/lang/String;
    .end local v10           #sindex:I
    .end local v11           #slen:I
    :catch_0
    move-exception v13

    new-instance v14, Lgnu/mapping/WrongType;

    move-object v0, v14

    move-object v1, v13

    move-object/from16 v2, v16

    move v3, v15

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v14

    .line 8
    .restart local v9       #s:Ljava/lang/String;
    .restart local v11       #slen:I
    :catch_1
    move-exception v13

    new-instance v14, Lgnu/mapping/WrongType;

    move-object v0, v14

    move-object v1, v13

    move-object/from16 v2, v16

    move v3, v15

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v14

    .line 10
    .restart local v6       #index:I
    .restart local v10       #sindex:I
    :catch_2
    move-exception v13

    new-instance v14, Lgnu/mapping/WrongType;

    move-object v0, v14

    move-object v1, v13

    move-object/from16 v2, v16

    move v3, v15

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v14
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 15
    invoke-static {p2}, Lgnu/kawa/slib/XStrings;->stringLength(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1
    invoke-static {p2, p3}, Lgnu/kawa/slib/XStrings;->substring(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1
    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/XStrings;->substring(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 15
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x1

    iput v0, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x2

    iput v0, p4, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x3

    iput v0, p5, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "$ctx"

    .prologue
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 1
    .local v0, $result:Lgnu/lists/Consumer;
    return-void
.end method
