.class public Lgnu/kawa/slib/srfi37$frame;
.super Lgnu/expr/ModuleBody;
.source "srfi37.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi37;->argsFold$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation


# instance fields
.field operand$Mnproc:Ljava/lang/Object;

.field options:Ljava/lang/Object;

.field unrecognized$Mnoption$Mnproc:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method

.method public static lambda5find(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "l"
    .parameter "$Qu"

    .prologue
    .line 63
    invoke-static {p0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 66
    :goto_0
    return-object v0

    .line 63
    :cond_0
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 65
    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v1, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1

    sget-object v0, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 66
    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lgnu/kawa/slib/srfi37$frame;->lambda5find(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public lambda1scanArgs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .parameter "args"
    .parameter "seeds"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x1

    const-string v10, "string-length"

    const-string v9, "string-ref"

    .line 130
    new-instance v6, Lgnu/kawa/slib/srfi37$frame0;

    invoke-direct {v6}, Lgnu/kawa/slib/srfi37$frame0;-><init>()V

    iput-object p0, v6, Lgnu/kawa/slib/srfi37$frame0;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    iput-object p2, v6, Lgnu/kawa/slib/srfi37$frame0;->seeds:Ljava/lang/Object;

    .line 131
    invoke-static {p1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    .line 132
    sget-object v5, Lkawa/lib/misc;->values:Lgnu/expr/ModuleMethod;

    iget-object v6, v6, Lgnu/kawa/slib/srfi37$frame0;->seeds:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 212
    .end local p0
    :goto_0
    return-object v4

    .line 133
    .restart local p0
    :cond_0
    sget-object v4, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v4, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 134
    invoke-virtual {v5, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v6, Lgnu/kawa/slib/srfi37$frame0;->args:Ljava/lang/Object;

    iput-object v4, v6, Lgnu/kawa/slib/srfi37$frame0;->arg:Ljava/lang/Object;

    .line 137
    const-string v4, "--"

    iget-object v5, v6, Lgnu/kawa/slib/srfi37$frame0;->arg:Ljava/lang/Object;

    invoke-static {v4, v5}, Lkawa/lib/strings;->isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame0;->args:Ljava/lang/Object;

    iget-object v5, v6, Lgnu/kawa/slib/srfi37$frame0;->seeds:Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lgnu/kawa/slib/srfi37$frame;->lambda2scanOperands(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 142
    :cond_1
    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame0;->arg:Ljava/lang/Object;

    :try_start_0
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v4}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v3, v4

    .line 147
    .local v3, x:Ljava/lang/Boolean;
    :goto_1
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_b

    sget-object v5, Lgnu/kawa/slib/srfi37;->Lit0:Lgnu/text/Char;

    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame0;->arg:Ljava/lang/Object;

    :try_start_1
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v4, v11}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v4

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    invoke-static {v5, v4}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v3

    .local v3, x:Z
    if-eqz v3, :cond_9

    sget-object v5, Lgnu/kawa/slib/srfi37;->Lit0:Lgnu/text/Char;

    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame0;->arg:Ljava/lang/Object;

    :try_start_2
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {v4, v8}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v4

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    invoke-static {v5, v4}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v5, Lgnu/kawa/slib/srfi37;->Lit1:Lgnu/text/Char;

    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame0;->arg:Ljava/lang/Object;

    :try_start_3
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {v4, v12}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v4

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    invoke-static {v5, v4}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v3, v4, 0x1

    if-eqz v3, :cond_5

    .line 151
    sget-object v1, Lgnu/kawa/slib/srfi37;->Lit2:Lgnu/math/IntNum;

    .line 152
    :goto_2
    sget-object v5, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame0;->arg:Ljava/lang/Object;

    :try_start_4
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static {v4}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {v4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 147
    .end local v3           #x:Z
    :goto_3
    iput-object v4, v6, Lgnu/kawa/slib/srfi37$frame0;->temp:Ljava/lang/Object;

    .line 137
    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame0;->temp:Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_c

    .line 10000
    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame0;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    iget-object v5, v6, Lgnu/kawa/slib/srfi37$frame0;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    invoke-static {v4, v5}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .line 142
    :cond_2
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v3, v4

    goto :goto_1

    .line 152
    .restart local v3       #x:Z
    :cond_3
    sget-object v7, Lgnu/kawa/slib/srfi37;->Lit1:Lgnu/text/Char;

    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame0;->arg:Ljava/lang/Object;

    :try_start_5
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    :try_start_6
    move-object v0, v1

    check-cast v0, Ljava/lang/Number;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v5

    invoke-static {v4, v5}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v4

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    invoke-static {v7, v4}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v1

    .line 155
    goto :goto_3

    :cond_4
    sget-object v4, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v5, Lgnu/kawa/slib/srfi37;->Lit3:Lgnu/math/IntNum;

    .line 157
    invoke-virtual {v4, v5, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, index:Ljava/lang/Object;
    goto :goto_2

    .line 147
    .end local v1           #index:Ljava/lang/Object;
    :cond_5
    if-eqz v3, :cond_6

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_6
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_7
    if-eqz v3, :cond_8

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_8
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_9
    if-eqz v3, :cond_a

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_a
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    .local v3, x:Ljava/lang/Boolean;
    :cond_b
    move-object v4, v3

    goto :goto_3

    .line 10000
    .end local v3           #x:Ljava/lang/Boolean;
    :cond_c
    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame0;->arg:Ljava/lang/Object;

    :try_start_7
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    invoke-static {v4}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_f

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v3, v4

    .line 181
    .restart local v3       #x:Ljava/lang/Boolean;
    :goto_4
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_13

    sget-object v5, Lgnu/kawa/slib/srfi37;->Lit0:Lgnu/text/Char;

    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame0;->arg:Ljava/lang/Object;

    :try_start_8
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    invoke-static {v4, v11}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v4

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    invoke-static {v5, v4}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v3

    .local v3, x:Z
    if-eqz v3, :cond_10

    sget-object v5, Lgnu/kawa/slib/srfi37;->Lit0:Lgnu/text/Char;

    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame0;->arg:Ljava/lang/Object;

    :try_start_9
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    invoke-static {v4, v8}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v4

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    invoke-static {v5, v4}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 185
    .end local v3           #x:Z
    :cond_d
    :goto_5
    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame0;->arg:Ljava/lang/Object;

    :try_start_a
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    iget-object v5, v6, Lgnu/kawa/slib/srfi37$frame0;->arg:Ljava/lang/Object;

    :try_start_b
    check-cast v5, Ljava/lang/CharSequence;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_b

    invoke-static {v5}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-static {v4, v12, v5}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v6, Lgnu/kawa/slib/srfi37$frame0;->name:Ljava/lang/CharSequence;

    .line 186
    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame0;->name:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Lgnu/kawa/slib/srfi37$frame;->lambda4findOption(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, x:Ljava/lang/Object;
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_14

    move-object v4, v3

    :goto_6
    iput-object v4, v6, Lgnu/kawa/slib/srfi37$frame0;->option:Ljava/lang/Object;

    .line 192
    iget-object p0, v6, Lgnu/kawa/slib/srfi37$frame0;->option:Ljava/lang/Object;

    .end local p0
    :try_start_c
    check-cast p0, Lgnu/kawa/slib/option$Mntype;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_c

    invoke-static {p0}, Lgnu/kawa/slib/srfi37;->isOptionRequiredArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_15

    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame0;->args:Ljava/lang/Object;

    invoke-static {v4}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    :cond_e
    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame0;->lambda$Fn9:Lgnu/expr/ModuleMethod;

    iget-object v5, v6, Lgnu/kawa/slib/srfi37$frame0;->lambda$Fn10:Lgnu/expr/ModuleMethod;

    invoke-static {v4, v5}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .line 10000
    .end local v3           #x:Ljava/lang/Object;
    .restart local p0
    :cond_f
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v3, v4

    goto :goto_4

    .line 181
    .local v3, x:Z
    :cond_10
    if-nez v3, :cond_d

    .line 192
    .end local v3           #x:Z
    :cond_11
    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame0;->arg:Ljava/lang/Object;

    :try_start_d
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_d} :catch_d

    invoke-static {v4}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    if-le v4, v8, :cond_17

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v3, v4

    .line 209
    .local v3, x:Ljava/lang/Boolean;
    :goto_7
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_18

    sget-object v5, Lgnu/kawa/slib/srfi37;->Lit0:Lgnu/text/Char;

    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame0;->arg:Ljava/lang/Object;

    :try_start_e
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_e} :catch_e

    invoke-static {v4, v11}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v4

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    invoke-static {v5, v4}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 212
    :cond_12
    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame0;->arg:Ljava/lang/Object;

    :try_start_f
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_f} :catch_f

    iget-object v5, v6, Lgnu/kawa/slib/srfi37$frame0;->arg:Ljava/lang/Object;

    :try_start_10
    check-cast v5, Ljava/lang/CharSequence;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_10} :catch_10

    invoke-static {v5}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-static {v4, v8, v5}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, shorts:Ljava/lang/CharSequence;
    sget-object v4, Lgnu/kawa/slib/srfi37;->Lit4:Lgnu/math/IntNum;

    iget-object v5, v6, Lgnu/kawa/slib/srfi37$frame0;->args:Ljava/lang/Object;

    iget-object v6, v6, Lgnu/kawa/slib/srfi37$frame0;->seeds:Ljava/lang/Object;

    invoke-virtual {p0, v4, v2, v5, v6}, Lgnu/kawa/slib/srfi37$frame;->lambda3scanShortOptions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .line 181
    .end local v2           #shorts:Ljava/lang/CharSequence;
    :cond_13
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_11

    goto/16 :goto_5

    .line 186
    .local v3, x:Ljava/lang/Object;
    :cond_14
    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame0;->name:Ljava/lang/CharSequence;

    invoke-static {v4}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v8, p0, Lgnu/kawa/slib/srfi37$frame;->unrecognized$Mnoption$Mnproc:Ljava/lang/Object;

    invoke-static {v4, v5, v7, v8}, Lgnu/kawa/slib/srfi37;->option(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/kawa/slib/option$Mntype;

    move-result-object v4

    goto :goto_6

    .line 192
    .end local p0
    :cond_15
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_e

    :cond_16
    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame0;->lambda$Fn11:Lgnu/expr/ModuleMethod;

    iget-object v5, v6, Lgnu/kawa/slib/srfi37$frame0;->lambda$Fn12:Lgnu/expr/ModuleMethod;

    invoke-static {v4, v5}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .end local v3           #x:Ljava/lang/Object;
    .restart local p0
    :cond_17
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v3, v4

    goto :goto_7

    .line 209
    .local v3, x:Ljava/lang/Boolean;
    :cond_18
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_12

    .line 212
    :cond_19
    iget-object v4, v6, Lgnu/kawa/slib/srfi37$frame0;->lambda$Fn13:Lgnu/expr/ModuleMethod;

    iget-object v5, v6, Lgnu/kawa/slib/srfi37$frame0;->lambda$Fn14:Lgnu/expr/ModuleMethod;

    invoke-static {v4, v5}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .line 147
    .end local v3           #x:Ljava/lang/Boolean;
    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-length"

    invoke-direct {v6, v5, v10, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 148
    .restart local v3       #x:Ljava/lang/Boolean;
    :catch_1
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-ref"

    invoke-direct {v6, v5, v9, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 149
    .local v3, x:Z
    :catch_2
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-ref"

    invoke-direct {v6, v5, v9, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 150
    :catch_3
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-ref"

    invoke-direct {v6, v5, v9, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 152
    :catch_4
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-length"

    invoke-direct {v6, v5, v10, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 154
    :catch_5
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-ref"

    invoke-direct {v6, v5, v9, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_6
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "string-ref"

    invoke-direct {v5, v4, v9, v12, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 10152
    .end local v3           #x:Z
    :catch_7
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-length"

    invoke-direct {v6, v5, v10, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 182
    .local v3, x:Ljava/lang/Boolean;
    :catch_8
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-ref"

    invoke-direct {v6, v5, v9, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 183
    .local v3, x:Z
    :catch_9
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-ref"

    invoke-direct {v6, v5, v9, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 185
    .end local v3           #x:Z
    :catch_a
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "substring"

    invoke-direct {v6, v5, v7, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_b
    move-exception v4

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-length"

    invoke-direct {v6, v4, v10, v8, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 192
    .end local p0
    .local v3, x:Ljava/lang/Object;
    :catch_c
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "option-required-arg?"

    invoke-direct {v5, v4, v6, v11, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 209
    .end local v3           #x:Ljava/lang/Object;
    .restart local p0
    :catch_d
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-length"

    invoke-direct {v6, v5, v10, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 210
    .local v3, x:Ljava/lang/Boolean;
    :catch_e
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-ref"

    invoke-direct {v6, v5, v9, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    .line 212
    :catch_f
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "substring"

    invoke-direct {v6, v5, v7, v8, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6

    :catch_10
    move-exception v4

    new-instance v6, Lgnu/mapping/WrongType;

    const-string v7, "string-length"

    invoke-direct {v6, v4, v10, v8, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method

.method public lambda2scanOperands(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "operands"
    .parameter "seeds"

    .prologue
    .line 122
    new-instance v0, Lgnu/kawa/slib/srfi37$frame4;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi37$frame4;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/srfi37$frame4;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    iput-object p1, v0, Lgnu/kawa/slib/srfi37$frame4;->operands:Ljava/lang/Object;

    iput-object p2, v0, Lgnu/kawa/slib/srfi37$frame4;->seeds:Ljava/lang/Object;

    .line 123
    iget-object v1, v0, Lgnu/kawa/slib/srfi37$frame4;->operands:Ljava/lang/Object;

    invoke-static {v1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    .line 124
    sget-object v2, Lkawa/lib/misc;->values:Lgnu/expr/ModuleMethod;

    iget-object v0, v0, Lgnu/kawa/slib/srfi37$frame4;->seeds:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, v0, Lgnu/kawa/slib/srfi37$frame4;->lambda$Fn15:Lgnu/expr/ModuleMethod;

    iget-object v0, v0, Lgnu/kawa/slib/srfi37$frame4;->lambda$Fn16:Lgnu/expr/ModuleMethod;

    invoke-static {v1, v0}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public lambda3scanShortOptions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter "index"
    .parameter "shorts"
    .parameter "args"
    .parameter "seeds"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v6, "string-ref"

    const-string v10, "string-length"

    const-string v9, "option-required-arg?"

    .line 78
    new-instance v5, Lgnu/kawa/slib/srfi37$frame5;

    invoke-direct {v5}, Lgnu/kawa/slib/srfi37$frame5;-><init>()V

    iput-object p0, v5, Lgnu/kawa/slib/srfi37$frame5;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    iput-object p1, v5, Lgnu/kawa/slib/srfi37$frame5;->index:Ljava/lang/Object;

    iput-object p2, v5, Lgnu/kawa/slib/srfi37$frame5;->shorts:Ljava/lang/Object;

    iput-object p3, v5, Lgnu/kawa/slib/srfi37$frame5;->args:Ljava/lang/Object;

    iput-object p4, v5, Lgnu/kawa/slib/srfi37$frame5;->seeds:Ljava/lang/Object;

    .line 79
    sget-object v3, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    iget-object v4, v5, Lgnu/kawa/slib/srfi37$frame5;->index:Ljava/lang/Object;

    iget-object v2, v5, Lgnu/kawa/slib/srfi37$frame5;->shorts:Ljava/lang/Object;

    :try_start_0
    check-cast v2, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v2}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_0

    iget-object v2, v5, Lgnu/kawa/slib/srfi37$frame5;->args:Ljava/lang/Object;

    iget-object v3, v5, Lgnu/kawa/slib/srfi37$frame5;->seeds:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lgnu/kawa/slib/srfi37$frame;->lambda1scanArgs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 100
    .end local p0
    :goto_0
    return-object v2

    .line 81
    .restart local p0
    :cond_0
    iget-object v2, v5, Lgnu/kawa/slib/srfi37$frame5;->shorts:Ljava/lang/Object;

    :try_start_1
    check-cast v2, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v4, v5, Lgnu/kawa/slib/srfi37$frame5;->index:Ljava/lang/Object;

    :try_start_2
    move-object v0, v4

    check-cast v0, Ljava/lang/Number;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    invoke-static {v2, v3}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v2

    iput-char v2, v5, Lgnu/kawa/slib/srfi37$frame5;->name:C

    .line 82
    iget-char v2, v5, Lgnu/kawa/slib/srfi37$frame5;->name:C

    invoke-static {v2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/kawa/slib/srfi37$frame;->lambda4findOption(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, x:Ljava/lang/Object;
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_2

    move-object v2, v1

    :goto_1
    iput-object v2, v5, Lgnu/kawa/slib/srfi37$frame5;->option:Ljava/lang/Object;

    .line 87
    sget-object v2, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v3, v5, Lgnu/kawa/slib/srfi37$frame5;->index:Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/slib/srfi37;->Lit3:Lgnu/math/IntNum;

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    :try_start_3
    check-cast p0, Lgnu/math/IntNum;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    iget-object v2, v5, Lgnu/kawa/slib/srfi37$frame5;->shorts:Ljava/lang/Object;

    :try_start_4
    check-cast v2, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static {v2}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {p0, v2, v3}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;J)I

    move-result v2

    if-gez v2, :cond_3

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v1, v2

    .local v1, x:Ljava/lang/Boolean;
    :goto_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_7

    iget-object p0, v5, Lgnu/kawa/slib/srfi37$frame5;->option:Ljava/lang/Object;

    :try_start_5
    check-cast p0, Lgnu/kawa/slib/option$Mntype;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    invoke-static {p0}, Lgnu/kawa/slib/srfi37;->isOptionRequiredArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v1

    .line 88
    .local v1, x:Ljava/lang/Object;
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_4

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_5

    .line 87
    .end local v1           #x:Ljava/lang/Object;
    :cond_1
    :goto_3
    iget-object v2, v5, Lgnu/kawa/slib/srfi37$frame5;->lambda$Fn17:Lgnu/expr/ModuleMethod;

    iget-object v3, v5, Lgnu/kawa/slib/srfi37$frame5;->lambda$Fn18:Lgnu/expr/ModuleMethod;

    invoke-static {v2, v3}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 82
    .restart local v1       #x:Ljava/lang/Object;
    .restart local p0
    :cond_2
    iget-char v2, v5, Lgnu/kawa/slib/srfi37$frame5;->name:C

    invoke-static {v2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v2

    invoke-static {v2}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v6, p0, Lgnu/kawa/slib/srfi37$frame;->unrecognized$Mnoption$Mnproc:Ljava/lang/Object;

    invoke-static {v2, v3, v4, v6}, Lgnu/kawa/slib/srfi37;->option(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/kawa/slib/option$Mntype;

    move-result-object v2

    goto :goto_1

    .line 87
    .end local p0
    :cond_3
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v1, v2

    goto :goto_2

    .line 88
    :cond_4
    iget-object p0, v5, Lgnu/kawa/slib/srfi37$frame5;->option:Ljava/lang/Object;

    :try_start_6
    check-cast p0, Lgnu/kawa/slib/option$Mntype;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    invoke-static {p0}, Lgnu/kawa/slib/srfi37;->isOptionOptionalArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_1

    .line 87
    .end local v1           #x:Ljava/lang/Object;
    :cond_5
    iget-object p0, v5, Lgnu/kawa/slib/srfi37$frame5;->option:Ljava/lang/Object;

    :try_start_7
    check-cast p0, Lgnu/kawa/slib/option$Mntype;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    invoke-static {p0}, Lgnu/kawa/slib/srfi37;->isOptionRequiredArg(Lgnu/kawa/slib/option$Mntype;)Ljava/lang/Object;

    move-result-object v1

    .line 100
    .restart local v1       #x:Ljava/lang/Object;
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_8

    iget-object v2, v5, Lgnu/kawa/slib/srfi37$frame5;->args:Ljava/lang/Object;

    invoke-static {v2}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_6
    iget-object v2, v5, Lgnu/kawa/slib/srfi37$frame5;->lambda$Fn19:Lgnu/expr/ModuleMethod;

    iget-object v3, v5, Lgnu/kawa/slib/srfi37$frame5;->lambda$Fn20:Lgnu/expr/ModuleMethod;

    invoke-static {v2, v3}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 87
    .local v1, x:Ljava/lang/Boolean;
    :cond_7
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_5

    goto :goto_3

    .line 100
    .local v1, x:Ljava/lang/Object;
    :cond_8
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_6

    :cond_9
    iget-object v2, v5, Lgnu/kawa/slib/srfi37$frame5;->lambda$Fn21:Lgnu/expr/ModuleMethod;

    iget-object v3, v5, Lgnu/kawa/slib/srfi37$frame5;->lambda$Fn22:Lgnu/expr/ModuleMethod;

    invoke-static {v2, v3}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 79
    .end local v1           #x:Ljava/lang/Object;
    .restart local p0
    :catch_0
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "string-length"

    invoke-direct {v4, v3, v10, v7, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 81
    :catch_1
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "string-ref"

    invoke-direct {v4, v3, v6, v7, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_2
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v5, "string-ref"

    const/4 v5, 0x2

    invoke-direct {v3, v2, v6, v5, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .end local p0
    .restart local v1       #x:Ljava/lang/Object;
    :catch_3
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "gnu.math.IntNum.compare(gnu.math.IntNum,long)"

    invoke-direct {v3, v2, v4, v7, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 87
    :catch_4
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const-string v5, "string-length"

    invoke-direct {v4, v3, v10, v7, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    .line 88
    .local v1, x:Ljava/lang/Boolean;
    :catch_5
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "option-required-arg?"

    invoke-direct {v3, v2, v9, v8, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 89
    .local v1, x:Ljava/lang/Object;
    :catch_6
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "option-optional-arg?"

    invoke-direct {v3, v2, v4, v8, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 100
    .end local v1           #x:Ljava/lang/Object;
    :catch_7
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "option-required-arg?"

    invoke-direct {v3, v2, v9, v8, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method public lambda4findOption(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "name"

    .prologue
    .line 69
    new-instance v0, Lgnu/kawa/slib/srfi37$frame6;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi37$frame6;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/srfi37$frame6;->staticLink:Lgnu/kawa/slib/srfi37$frame;

    iput-object p1, v0, Lgnu/kawa/slib/srfi37$frame6;->name:Ljava/lang/Object;

    iget-object v1, p0, Lgnu/kawa/slib/srfi37$frame;->options:Ljava/lang/Object;

    iget-object v0, v0, Lgnu/kawa/slib/srfi37$frame6;->lambda$Fn23:Lgnu/expr/ModuleMethod;

    invoke-static {v1, v0}, Lgnu/kawa/slib/srfi37$frame;->lambda5find(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
