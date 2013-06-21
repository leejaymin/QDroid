.class Lgnu/kawa/functions/GetNamedExp;
.super Lgnu/expr/ApplyExp;
.source "GetNamedPart.java"


# static fields
.field static final castDecl:Lgnu/expr/Declaration;

.field static final fieldDecl:Lgnu/expr/Declaration;

.field static final instanceOfDecl:Lgnu/expr/Declaration;

.field static final invokeDecl:Lgnu/expr/Declaration;

.field static final invokeStaticDecl:Lgnu/expr/Declaration;

.field static final makeDecl:Lgnu/expr/Declaration;

.field static final staticFieldDecl:Lgnu/expr/Declaration;


# instance fields
.field public combinedName:Ljava/lang/String;

.field kind:C

.field methods:[Lgnu/expr/PrimProcedure;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v2, "gnu.kawa.reflect.SlotGet"

    const-string v1, "gnu.kawa.reflect.Invoke"

    .line 448
    const-string v0, "gnu.kawa.reflect.SlotGet"

    const-string v0, "field"

    invoke-static {v2, v0}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetNamedExp;->fieldDecl:Lgnu/expr/Declaration;

    .line 451
    const-string v0, "gnu.kawa.reflect.SlotGet"

    const-string v0, "staticField"

    invoke-static {v2, v0}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetNamedExp;->staticFieldDecl:Lgnu/expr/Declaration;

    .line 454
    const-string v0, "gnu.kawa.reflect.Invoke"

    const-string v0, "make"

    invoke-static {v1, v0}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetNamedExp;->makeDecl:Lgnu/expr/Declaration;

    .line 457
    const-string v0, "gnu.kawa.reflect.Invoke"

    const-string v0, "invoke"

    invoke-static {v1, v0}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetNamedExp;->invokeDecl:Lgnu/expr/Declaration;

    .line 460
    const-string v0, "gnu.kawa.reflect.Invoke"

    const-string v0, "invokeStatic"

    invoke-static {v1, v0}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetNamedExp;->invokeStaticDecl:Lgnu/expr/Declaration;

    .line 463
    const-string v0, "kawa.standard.Scheme"

    const-string v1, "instanceOf"

    invoke-static {v0, v1}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetNamedExp;->instanceOfDecl:Lgnu/expr/Declaration;

    .line 466
    const-string v0, "gnu.kawa.functions.Convert"

    const-string v1, "as"

    invoke-static {v0, v1}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetNamedExp;->castDecl:Lgnu/expr/Declaration;

    return-void
.end method

.method public constructor <init>([Lgnu/expr/Expression;)V
    .locals 1
    .parameter "args"

    .prologue
    .line 368
    sget-object v0, Lgnu/kawa/functions/GetNamedPart;->getNamedPart:Lgnu/kawa/functions/GetNamedPart;

    invoke-direct {p0, v0, p1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 369
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 6
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 350
    iget-object v5, p0, Lgnu/kawa/functions/GetNamedExp;->combinedName:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 352
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v0

    .line 353
    .local v0, env:Lgnu/mapping/Environment;
    iget-object v5, p0, Lgnu/kawa/functions/GetNamedExp;->combinedName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    .line 354
    .local v2, sym:Lgnu/mapping/Symbol;
    sget-object v3, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    .line 355
    .local v3, unb:Ljava/lang/String;
    const/4 v1, 0x0

    .line 356
    .local v1, property:Ljava/lang/Object;
    invoke-virtual {v0, v2, v1, v3}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 357
    .local v4, value:Ljava/lang/Object;
    if-eq v4, v3, :cond_0

    .line 359
    invoke-virtual {p1, v4}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 364
    .end local v0           #env:Lgnu/mapping/Environment;
    .end local v1           #property:Ljava/lang/Object;
    .end local v2           #sym:Lgnu/mapping/Symbol;
    .end local v3           #unb:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/Object;
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-super {p0, p1}, Lgnu/expr/ApplyExp;->apply(Lgnu/mapping/CallContext;)V

    goto :goto_0
.end method

.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/expr/Declaration;Z)Lgnu/expr/Expression;
    .locals 9
    .parameter "exp"
    .parameter "walker"
    .parameter "decl"
    .parameter "argsInlined"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 387
    if-nez p4, :cond_0

    .line 388
    invoke-virtual {p1, p2}, Lgnu/expr/ApplyExp;->walkArgs(Lgnu/expr/ExpWalker;)V

    .line 389
    :cond_0
    invoke-virtual {p0}, Lgnu/kawa/functions/GetNamedExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v2

    .line 390
    .local v2, pargs:[Lgnu/expr/Expression;
    aget-object v1, v2, v6

    .line 391
    .local v1, context:Lgnu/expr/Expression;
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 393
    .local v0, args:[Lgnu/expr/Expression;
    iget-char v5, p0, Lgnu/kawa/functions/GetNamedExp;->kind:C

    sparse-switch v5, :sswitch_data_0

    move-object v5, p1

    .line 434
    :goto_0
    return-object v5

    .line 396
    :sswitch_0
    sget-object p3, Lgnu/kawa/functions/GetNamedExp;->invokeDecl:Lgnu/expr/Declaration;

    .line 397
    array-length v5, v0

    add-int/lit8 v5, v5, 0x2

    new-array v4, v5, [Lgnu/expr/Expression;

    .line 398
    .local v4, xargs:[Lgnu/expr/Expression;
    aget-object v5, v2, v6

    aput-object v5, v4, v6

    .line 399
    aget-object v5, v2, v7

    aput-object v5, v4, v7

    .line 400
    array-length v5, v0

    invoke-static {v0, v6, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 432
    :goto_1
    new-instance v3, Lgnu/expr/ApplyExp;

    new-instance v5, Lgnu/expr/ReferenceExp;

    invoke-direct {v5, p3}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-direct {v3, v5, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 433
    .local v3, result:Lgnu/expr/ApplyExp;
    invoke-virtual {v3, p1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 434
    invoke-virtual {p2, v3}, Lgnu/expr/InlineCalls;->walkApplyOnly(Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;

    move-result-object v5

    goto :goto_0

    .line 403
    .end local v3           #result:Lgnu/expr/ApplyExp;
    .end local v4           #xargs:[Lgnu/expr/Expression;
    :sswitch_1
    sget-object p3, Lgnu/kawa/functions/GetNamedExp;->makeDecl:Lgnu/expr/Declaration;

    .line 404
    array-length v5, v0

    add-int/lit8 v5, v5, 0x1

    new-array v4, v5, [Lgnu/expr/Expression;

    .line 405
    .restart local v4       #xargs:[Lgnu/expr/Expression;
    array-length v5, v0

    invoke-static {v0, v6, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 406
    aput-object v1, v4, v6

    goto :goto_1

    .line 409
    .end local v4           #xargs:[Lgnu/expr/Expression;
    :sswitch_2
    sget-object p3, Lgnu/kawa/functions/GetNamedExp;->instanceOfDecl:Lgnu/expr/Declaration;

    .line 410
    array-length v5, v0

    add-int/lit8 v5, v5, 0x1

    new-array v4, v5, [Lgnu/expr/Expression;

    .line 411
    .restart local v4       #xargs:[Lgnu/expr/Expression;
    array-length v5, v0

    sub-int/2addr v5, v7

    invoke-static {v0, v7, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 412
    aget-object v5, v0, v6

    aput-object v5, v4, v6

    .line 413
    aput-object v1, v4, v7

    goto :goto_1

    .line 416
    .end local v4           #xargs:[Lgnu/expr/Expression;
    :sswitch_3
    sget-object p3, Lgnu/kawa/functions/GetNamedExp;->castDecl:Lgnu/expr/Declaration;

    .line 417
    array-length v5, v0

    add-int/lit8 v5, v5, 0x1

    new-array v4, v5, [Lgnu/expr/Expression;

    .line 418
    .restart local v4       #xargs:[Lgnu/expr/Expression;
    array-length v5, v0

    sub-int/2addr v5, v7

    invoke-static {v0, v7, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 419
    aput-object v1, v4, v6

    .line 420
    aget-object v5, v0, v6

    aput-object v5, v4, v7

    goto :goto_1

    .line 423
    .end local v4           #xargs:[Lgnu/expr/Expression;
    :sswitch_4
    sget-object p3, Lgnu/kawa/functions/GetNamedExp;->invokeStaticDecl:Lgnu/expr/Declaration;

    .line 424
    array-length v5, v0

    add-int/lit8 v5, v5, 0x2

    new-array v4, v5, [Lgnu/expr/Expression;

    .line 425
    .restart local v4       #xargs:[Lgnu/expr/Expression;
    aput-object v1, v4, v6

    .line 426
    aget-object v5, v2, v7

    aput-object v5, v4, v7

    .line 427
    array-length v5, v0

    invoke-static {v0, v6, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 393
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_3
        0x49 -> :sswitch_2
        0x4d -> :sswitch_0
        0x4e -> :sswitch_1
        0x53 -> :sswitch_4
    .end sparse-switch
.end method

.method protected setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;
    .locals 1
    .parameter "kind"

    .prologue
    .line 379
    sget-object v0, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/kawa/functions/GetNamedExp;->type:Lgnu/bytecode/Type;

    .line 380
    iput-char p1, p0, Lgnu/kawa/functions/GetNamedExp;->kind:C

    .line 381
    return-object p0
.end method

.method public side_effects()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 441
    iget-char v0, p0, Lgnu/kawa/functions/GetNamedExp;->kind:C

    const/16 v1, 0x53

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lgnu/kawa/functions/GetNamedExp;->kind:C

    const/16 v1, 0x4e

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lgnu/kawa/functions/GetNamedExp;->kind:C

    const/16 v1, 0x43

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lgnu/kawa/functions/GetNamedExp;->kind:C

    const/16 v1, 0x49

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    .line 445
    :goto_0
    return v0

    .line 443
    :cond_1
    iget-char v0, p0, Lgnu/kawa/functions/GetNamedExp;->kind:C

    const/16 v1, 0x4d

    if-ne v0, v1, :cond_2

    .line 444
    invoke-virtual {p0}, Lgnu/kawa/functions/GetNamedExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lgnu/expr/Expression;->side_effects()Z

    move-result v0

    goto :goto_0

    .line 445
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
