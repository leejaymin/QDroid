.class Lgnu/kawa/functions/NamedPartSetter;
.super Lgnu/mapping/Setter;
.source "GetNamedPart.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Lgnu/expr/CanInline;


# direct methods
.method public constructor <init>(Lgnu/kawa/functions/NamedPart;)V
    .locals 0
    .parameter "getter"

    .prologue
    .line 644
    invoke-direct {p0, p1}, Lgnu/mapping/Setter;-><init>(Lgnu/mapping/Procedure;)V

    .line 645
    return-void
.end method


# virtual methods
.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Z)Lgnu/expr/Expression;
    .locals 9
    .parameter "exp"
    .parameter "walker"
    .parameter "argsInlined"

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 657
    invoke-virtual {p1, p2, p3}, Lgnu/expr/ApplyExp;->walkArgs(Lgnu/expr/ExpWalker;Z)V

    .line 658
    iget-object v1, p0, Lgnu/kawa/functions/NamedPartSetter;->getter:Lgnu/mapping/Procedure;

    check-cast v1, Lgnu/kawa/functions/NamedPart;

    .line 659
    .local v1, get:Lgnu/kawa/functions/NamedPart;
    iget-char v4, v1, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v5, 0x44

    if-ne v4, v5, :cond_2

    .line 661
    const/4 v4, 0x3

    new-array v3, v4, [Lgnu/expr/Expression;

    .line 662
    .local v3, xargs:[Lgnu/expr/Expression;
    iget-object v4, v1, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v4

    aput-object v4, v3, v6

    .line 663
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v4

    aget-object v4, v4, v7

    aput-object v4, v3, v8

    .line 665
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 667
    iget-object v4, v1, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-static {v4}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v4

    aput-object v4, v3, v7

    .line 668
    sget-object v2, Lgnu/kawa/reflect/SlotSet;->set$Mnstatic$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    .line 678
    .local v2, proc:Lgnu/kawa/reflect/SlotSet;
    :goto_0
    new-instance v0, Lgnu/expr/ApplyExp;

    invoke-direct {v0, v2, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 679
    .local v0, aexp:Lgnu/expr/ApplyExp;
    invoke-virtual {v0, p1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 680
    invoke-virtual {p2, v0}, Lgnu/expr/InlineCalls;->walkApplyOnly(Lgnu/expr/ApplyExp;)Lgnu/expr/Expression;

    move-result-object v4

    .line 682
    .end local v0           #aexp:Lgnu/expr/ApplyExp;
    .end local v2           #proc:Lgnu/kawa/reflect/SlotSet;
    .end local v3           #xargs:[Lgnu/expr/Expression;
    :goto_1
    return-object v4

    .line 670
    .restart local v3       #xargs:[Lgnu/expr/Expression;
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 672
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v4

    aget-object v4, v4, v7

    new-instance v5, Lgnu/expr/QuoteExp;

    iget-object v6, v1, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-direct {v5, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {v4, v5}, Lgnu/kawa/functions/Convert;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v4

    aput-object v4, v3, v7

    .line 674
    sget-object v2, Lgnu/kawa/reflect/SlotSet;->set$Mnfield$Ex:Lgnu/kawa/reflect/SlotSet;

    .restart local v2       #proc:Lgnu/kawa/reflect/SlotSet;
    goto :goto_0

    .end local v2           #proc:Lgnu/kawa/reflect/SlotSet;
    :cond_1
    move-object v4, p1

    .line 677
    goto :goto_1

    .end local v3           #xargs:[Lgnu/expr/Expression;
    :cond_2
    move-object v4, p1

    .line 682
    goto :goto_1
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 649
    iget-object p0, p0, Lgnu/kawa/functions/NamedPartSetter;->getter:Lgnu/mapping/Procedure;

    .end local p0
    check-cast p0, Lgnu/kawa/functions/NamedPart;

    iget-char v0, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v1, 0x44

    if-ne v0, v1, :cond_0

    .line 650
    const/16 v0, 0x2001

    .line 651
    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x1000

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 693
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Procedure;

    iput-object v0, p0, Lgnu/kawa/functions/NamedPartSetter;->getter:Lgnu/mapping/Procedure;

    .line 694
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 687
    iget-object v0, p0, Lgnu/kawa/functions/NamedPartSetter;->getter:Lgnu/mapping/Procedure;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 688
    return-void
.end method
