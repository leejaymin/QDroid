.class public Lkawa/lib/trace;
.super Lgnu/expr/ModuleBody;
.source "trace.scm"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final $Pcdo$Mntrace:Lkawa/lang/Macro;

.field public static final $instance:Lkawa/lib/trace;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lkawa/lang/SyntaxRules;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxRules;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lkawa/lang/SyntaxRules;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field public static final trace:Lkawa/lang/Macro;

.field public static final untrace:Lkawa/lang/Macro;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    const/4 v15, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v5, 0x1

    const-string v14, "trace.scm"

    const-string v0, "begin"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/trace;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lkawa/lang/SyntaxRules;

    new-array v7, v5, [Ljava/lang/Object;

    const-string v0, "untrace"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/trace;->Lit4:Lgnu/mapping/SimpleSymbol;

    aput-object v0, v7, v12

    new-array v8, v5, [Lkawa/lang/SyntaxRule;

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\r\u0007\u0000\u0008\u0008"

    new-array v3, v12, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0003"

    const-string v3, "\u0011\u0018\u0004\u0008\u0005\u0011\u0018\u000c\t\u0003\u0018\u0014"

    new-array v4, v15, [Ljava/lang/Object;

    sget-object v9, Lkawa/lib/trace;->Lit6:Lgnu/mapping/SimpleSymbol;

    aput-object v9, v4, v12

    const-string v9, "%do-trace"

    invoke-static {v9}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v9

    sput-object v9, Lkawa/lib/trace;->Lit0:Lgnu/mapping/SimpleSymbol;

    aput-object v9, v4, v5

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v11, "trace.scm"

    const v11, 0x1301b

    invoke-static {v9, v10, v14, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    aput-object v9, v4, v13

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v12

    invoke-direct {v6, v7, v8, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v6, Lkawa/lib/trace;->Lit5:Lkawa/lang/SyntaxRules;

    new-instance v6, Lkawa/lang/SyntaxRules;

    new-array v7, v5, [Ljava/lang/Object;

    const-string v0, "trace"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/trace;->Lit2:Lgnu/mapping/SimpleSymbol;

    aput-object v0, v7, v12

    new-array v8, v5, [Lkawa/lang/SyntaxRule;

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\r\u0007\u0000\u0008\u0008"

    new-array v3, v12, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0003"

    const-string v3, "\u0011\u0018\u0004\u0008\u0005\u0011\u0018\u000c\t\u0003\u0018\u0014"

    new-array v4, v15, [Ljava/lang/Object;

    sget-object v9, Lkawa/lib/trace;->Lit6:Lgnu/mapping/SimpleSymbol;

    aput-object v9, v4, v12

    sget-object v9, Lkawa/lib/trace;->Lit0:Lgnu/mapping/SimpleSymbol;

    aput-object v9, v4, v5

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v11, "trace.scm"

    const v11, 0xe01b

    invoke-static {v9, v10, v14, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    aput-object v9, v4, v13

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v12

    invoke-direct {v6, v7, v8, v5}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v6, Lkawa/lib/trace;->Lit3:Lkawa/lang/SyntaxRules;

    new-instance v6, Lkawa/lang/SyntaxRules;

    new-array v7, v5, [Ljava/lang/Object;

    sget-object v0, Lkawa/lib/trace;->Lit0:Lgnu/mapping/SimpleSymbol;

    aput-object v0, v7, v12

    new-array v8, v5, [Lkawa/lang/SyntaxRule;

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u000c\u0007\u000c\u000f\u0008"

    new-array v3, v12, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v13}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0001"

    const-string v3, "\u0011\u0018\u0004\t\u0003\u0008\u0011\u0018\u000c\u0011\u0018\u0014\u0011\u0018\u001c\t\u0003\u0008\u000b"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v9, "set!"

    invoke-static {v9}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v9

    aput-object v9, v4, v12

    const-string v9, "invoke-static"

    invoke-static {v9}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v9

    aput-object v9, v4, v5

    const-string v5, "<kawa.standard.TracedProcedure>"

    invoke-static {v5}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v5

    aput-object v5, v4, v13

    const-string v5, "quote"

    invoke-static {v5}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v5

    const-string v9, "doTrace"

    invoke-static {v9}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v9

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v11, "trace.scm"

    const v11, 0x8026

    invoke-static {v9, v10, v14, v11}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v9

    const-string v10, "trace.scm"

    const v10, 0x8026

    invoke-static {v5, v9, v14, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    aput-object v5, v4, v15

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v12

    invoke-direct {v6, v7, v8, v13}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v6, Lkawa/lib/trace;->Lit1:Lkawa/lang/SyntaxRules;

    new-instance v0, Lkawa/lib/trace;

    invoke-direct {v0}, Lkawa/lib/trace;-><init>()V

    sput-object v0, Lkawa/lib/trace;->$instance:Lkawa/lib/trace;

    sget-object v0, Lkawa/lib/trace;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lkawa/lib/trace;->Lit1:Lkawa/lang/SyntaxRules;

    sget-object v2, Lkawa/lib/trace;->$instance:Lkawa/lib/trace;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/trace;->$Pcdo$Mntrace:Lkawa/lang/Macro;

    sget-object v0, Lkawa/lib/trace;->Lit2:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lkawa/lib/trace;->Lit3:Lkawa/lang/SyntaxRules;

    sget-object v2, Lkawa/lib/trace;->$instance:Lkawa/lib/trace;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/trace;->trace:Lkawa/lang/Macro;

    sget-object v0, Lkawa/lib/trace;->Lit4:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lkawa/lib/trace;->Lit5:Lkawa/lang/SyntaxRules;

    sget-object v2, Lkawa/lib/trace;->$instance:Lkawa/lib/trace;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/trace;->untrace:Lkawa/lang/Macro;

    sget-object v0, Lkawa/lib/trace;->$instance:Lkawa/lib/trace;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final run(Lgnu/mapping/CallContext;)V
    .locals 2
    .parameter "$ctx"

    .prologue
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 1
    .local v0, $result:Lgnu/lists/Consumer;
    sget-object v1, Lkawa/lib/prim_syntax;->$instance:Lkawa/lib/prim_syntax;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
