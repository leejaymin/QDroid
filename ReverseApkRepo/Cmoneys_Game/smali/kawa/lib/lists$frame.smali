.class public Lkawa/lib/lists$frame;
.super Lgnu/expr/ModuleBody;
.source "lists.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/lib/lists;->lambda1(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation


# instance fields
.field $unnamed$0:[Ljava/lang/Object;

.field $unnamed$1:Lkawa/lang/TemplateScope;

.field $unnamed$2:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda30loop(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "f"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 50
    const/4 v0, 0x7

    iget-object v1, p0, Lkawa/lib/lists$frame;->$unnamed$2:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkawa/lib/lists;->Lit23:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p1, v0, v7}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    sget-object v1, Lkawa/lib/lists;->Lit24:Lkawa/lang/SyntaxTemplate;

    iget-object v2, p0, Lkawa/lib/lists$frame;->$unnamed$1:Lkawa/lang/TemplateScope;

    invoke-virtual {v1, v0, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    .line 51
    :cond_0
    sget-object v1, Lkawa/lib/lists;->Lit25:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p1, v0, v7}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    new-array v1, v6, [Ljava/lang/Object;

    sget-object v2, Lkawa/lib/lists;->Lit26:Lkawa/lang/SyntaxTemplate;

    iget-object v3, p0, Lkawa/lib/lists$frame;->$unnamed$1:Lkawa/lang/TemplateScope;

    invoke-virtual {v2, v0, v3}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v7

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Lkawa/lib/lists;->Lit27:Lkawa/lang/SyntaxTemplate;

    iget-object v4, p0, Lkawa/lib/lists$frame;->$unnamed$1:Lkawa/lang/TemplateScope;

    invoke-virtual {v3, v0, v4}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v7

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Lkawa/lib/lists;->Lit28:Lkawa/lang/SyntaxTemplate;

    iget-object v5, p0, Lkawa/lib/lists$frame;->$unnamed$1:Lkawa/lang/TemplateScope;

    invoke-virtual {v4, v0, v5}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lkawa/lib/lists$frame;->lambda30loop(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v7

    sget-object v4, Lkawa/lib/lists;->Lit29:Lkawa/lang/SyntaxTemplate;

    iget-object v5, p0, Lkawa/lib/lists$frame;->$unnamed$1:Lkawa/lang/TemplateScope;

    invoke-virtual {v4, v0, v5}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v3}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Lkawa/lib/lists;->Lit30:Lkawa/lang/SyntaxTemplate;

    iget-object v5, p0, Lkawa/lib/lists$frame;->$unnamed$1:Lkawa/lang/TemplateScope;

    invoke-virtual {v4, v0, v5}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v7

    new-array v4, v6, [Ljava/lang/Object;

    sget-object v5, Lkawa/lib/lists;->Lit31:Lkawa/lang/SyntaxTemplate;

    iget-object v6, p0, Lkawa/lib/lists$frame;->$unnamed$1:Lkawa/lang/TemplateScope;

    invoke-virtual {v5, v0, v6}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkawa/lib/std_syntax;->syntaxObject$To$Datum(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v7

    sget-object v5, Lkawa/lib/lists;->Lit32:Lkawa/lang/SyntaxTemplate;

    iget-object v6, p0, Lkawa/lib/lists$frame;->$unnamed$1:Lkawa/lang/TemplateScope;

    invoke-virtual {v5, v0, v6}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v3}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lkawa/lib/lists;->Lit33:Lkawa/lang/SyntaxTemplate;

    iget-object v5, p0, Lkawa/lib/lists$frame;->$unnamed$1:Lkawa/lang/TemplateScope;

    invoke-virtual {v4, v0, v5}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    invoke-static {v2, v0}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    aput-object v0, v1, v8

    invoke-static {v1}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    const-string v0, "syntax-case"

    invoke-static {v0, p1}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public lambda31loop(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "f"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 59
    const/4 v0, 0x5

    iget-object v1, p0, Lkawa/lib/lists$frame;->$unnamed$0:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkawa/lib/lists;->Lit34:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p1, v0, v7}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    sget-object v1, Lkawa/lib/lists;->Lit35:Lkawa/lang/SyntaxTemplate;

    iget-object v2, p0, Lkawa/lib/lists$frame;->$unnamed$1:Lkawa/lang/TemplateScope;

    invoke-virtual {v1, v0, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    .line 60
    :cond_0
    sget-object v1, Lkawa/lib/lists;->Lit36:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p1, v0, v7}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    new-array v1, v6, [Ljava/lang/Object;

    sget-object v2, Lkawa/lib/lists;->Lit37:Lkawa/lang/SyntaxTemplate;

    iget-object v3, p0, Lkawa/lib/lists$frame;->$unnamed$1:Lkawa/lang/TemplateScope;

    invoke-virtual {v2, v0, v3}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v7

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Lkawa/lib/lists;->Lit38:Lkawa/lang/SyntaxTemplate;

    iget-object v4, p0, Lkawa/lib/lists$frame;->$unnamed$1:Lkawa/lang/TemplateScope;

    invoke-virtual {v3, v0, v4}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v7

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Lkawa/lib/lists;->Lit39:Lkawa/lang/SyntaxTemplate;

    iget-object v5, p0, Lkawa/lib/lists$frame;->$unnamed$1:Lkawa/lang/TemplateScope;

    invoke-virtual {v4, v0, v5}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lkawa/lib/lists$frame;->lambda31loop(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v7

    sget-object v4, Lkawa/lib/lists;->Lit40:Lkawa/lang/SyntaxTemplate;

    iget-object v5, p0, Lkawa/lib/lists$frame;->$unnamed$1:Lkawa/lang/TemplateScope;

    invoke-virtual {v4, v0, v5}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v3}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Lkawa/lib/lists;->Lit41:Lkawa/lang/SyntaxTemplate;

    iget-object v5, p0, Lkawa/lib/lists$frame;->$unnamed$1:Lkawa/lang/TemplateScope;

    invoke-virtual {v4, v0, v5}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v7

    new-array v4, v6, [Ljava/lang/Object;

    sget-object v5, Lkawa/lib/lists;->Lit42:Lkawa/lang/SyntaxTemplate;

    iget-object v6, p0, Lkawa/lib/lists$frame;->$unnamed$1:Lkawa/lang/TemplateScope;

    invoke-virtual {v5, v0, v6}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkawa/lib/std_syntax;->syntaxObject$To$Datum(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v7

    sget-object v5, Lkawa/lib/lists;->Lit43:Lkawa/lang/SyntaxTemplate;

    iget-object v6, p0, Lkawa/lib/lists$frame;->$unnamed$1:Lkawa/lang/TemplateScope;

    invoke-virtual {v5, v0, v6}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Lkawa/lang/Quote;->consX$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v3}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lkawa/lib/lists;->Lit44:Lkawa/lang/SyntaxTemplate;

    iget-object v5, p0, Lkawa/lib/lists$frame;->$unnamed$1:Lkawa/lang/TemplateScope;

    invoke-virtual {v4, v0, v5}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    invoke-static {v2, v0}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    aput-object v0, v1, v8

    invoke-static {v1}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    const-string v0, "syntax-case"

    invoke-static {v0, p1}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0
.end method
