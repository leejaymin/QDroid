.class public Lgnu/kawa/android/defs;
.super Lgnu/expr/ModuleBody;
.source "defs.scm"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final $Pcprocess$Mnactivity:Lgnu/expr/ModuleMethod;

.field public static final $instance:Lgnu/kawa/android/defs;

.field static final Lit0:Lkawa/lang/SyntaxPattern;

.field static final Lit1:Lkawa/lang/SyntaxTemplate;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lkawa/lang/SyntaxPattern;

.field static final Lit12:Lkawa/lang/SyntaxTemplate;

.field static final Lit13:Lkawa/lang/SyntaxTemplate;

.field static final Lit14:Lkawa/lang/SyntaxTemplate;

.field static final Lit15:Lkawa/lang/SyntaxTemplate;

.field static final Lit16:Lgnu/mapping/SimpleSymbol;

.field static final Lit17:Lgnu/mapping/SimpleSymbol;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lkawa/lang/SyntaxTemplate;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit23:Lgnu/mapping/SimpleSymbol;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxPattern;

.field static final Lit4:Lkawa/lang/SyntaxTemplate;

.field static final Lit5:Lkawa/lang/SyntaxTemplate;

.field static final Lit6:Lkawa/lang/SyntaxPattern;

.field static final Lit7:Lkawa/lang/SyntaxTemplate;

.field static final Lit8:Lkawa/lang/SyntaxTemplate;

.field static final Lit9:Lkawa/lang/SyntaxPattern;

.field public static final activity:Lkawa/lang/Macro;


# direct methods
.method public static $PcProcessActivity(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "form"

    .prologue
    const/4 v2, 0x0

    .line 1
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgnu/kawa/android/defs;->Lit0:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lgnu/kawa/android/defs;->Lit1:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v2

    sget-object v3, Lgnu/kawa/android/defs;->Lit2:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v3, v0, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lgnu/kawa/android/defs;->$PcProcessActivity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lgnu/kawa/android/defs;->Lit3:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lgnu/kawa/android/defs;->Lit4:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v2

    sget-object v3, Lgnu/kawa/android/defs;->Lit5:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v3, v0, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lgnu/kawa/android/defs;->$PcProcessActivity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Lgnu/kawa/android/defs;->Lit6:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    sget-object v2, Lgnu/kawa/android/defs;->Lit7:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v2, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v2

    sget-object v3, Lgnu/kawa/android/defs;->Lit8:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v3, v0, v2}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lgnu/kawa/android/defs;->$PcProcessActivity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v1, Lgnu/kawa/android/defs;->Lit9:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v2}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_0

    :cond_3
    const-string v0, "syntax-case"

    invoke-static {v0, p0}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static constructor <clinit>()V
    .locals 16

    const/4 v15, 0x3

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string v11, "defs.scm"

    const-string v0, "quote"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/android/defs;->Lit25:Lgnu/mapping/SimpleSymbol;

    const-string v0, "invoke-special"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/android/defs;->Lit24:Lgnu/mapping/SimpleSymbol;

    const-string v0, "void"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/android/defs;->Lit23:Lgnu/mapping/SimpleSymbol;

    const-string v0, "android.os.Bundle"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/android/defs;->Lit22:Lgnu/mapping/SimpleSymbol;

    const-string v0, "this"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/android/defs;->Lit21:Lgnu/mapping/SimpleSymbol;

    const-string v0, "savedInstanceState"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/android/defs;->Lit20:Lgnu/mapping/SimpleSymbol;

    const-string v0, "onCreate"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/android/defs;->Lit19:Lgnu/mapping/SimpleSymbol;

    const-string v0, "android.app.Activity"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/android/defs;->Lit18:Lgnu/mapping/SimpleSymbol;

    const-string v0, "::"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/android/defs;->Lit17:Lgnu/mapping/SimpleSymbol;

    const-string v0, "%process-activity"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/android/defs;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0000"

    const-string v2, "\u0010"

    new-array v3, v12, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v12}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/android/defs;->Lit15:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0000"

    const-string v2, "\u0012"

    new-array v3, v12, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v12}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/android/defs;->Lit14:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0000"

    const-string v2, "\u0018\u0004"

    new-array v3, v13, [Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/android/defs;->Lit18:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v6, "defs.scm"

    const v6, 0x15020

    invoke-static {v4, v5, v11, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-direct {v0, v1, v2, v3, v12}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/android/defs;->Lit13:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0001\u0000"

    const-string v2, "\u0011\u0018\u0004\u0008\u000b"

    new-array v3, v13, [Ljava/lang/Object;

    const-string v4, "define-simple-class"

    invoke-static {v4}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-direct {v0, v1, v2, v3, v12}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/android/defs;->Lit12:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u000c\u0007\u000c\u000f\u0013"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v15}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/android/defs;->Lit11:Lkawa/lang/SyntaxPattern;

    const-string v0, "activity"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/android/defs;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u0008"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v12}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/android/defs;->Lit9:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0000"

    const-string v2, "\n"

    new-array v3, v12, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v12}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/android/defs;->Lit8:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0001\u0000"

    const-string v2, "\u0003"

    new-array v3, v12, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v12}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/android/defs;->Lit7:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "\u000c\u0007\u000b"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v14}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/android/defs;->Lit6:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0003\u0001\u0000"

    const-string v2, "\u0012"

    new-array v3, v12, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v12}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/android/defs;->Lit5:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0003\u0001\u0000"

    const-string v2, "\u0011\u0018\u0004\u0011\u0018\u000c\u0011\u0018\u0014\u0011\u0018\u001c\u0011\u0005\u0003\u0008\u0011\u0018$\u0008\u000b"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/android/defs;->Lit19:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/kawa/android/defs;->Lit20:Lgnu/mapping/SimpleSymbol;

    sget-object v6, Lgnu/kawa/android/defs;->Lit17:Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/kawa/android/defs;->Lit22:Lgnu/mapping/SimpleSymbol;

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v9, "defs.scm"

    const v9, 0x9031

    invoke-static {v7, v8, v11, v9}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const-string v8, "defs.scm"

    const v8, 0x902e

    invoke-static {v6, v7, v11, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    const-string v7, "defs.scm"

    const v7, 0x901a

    invoke-static {v5, v6, v11, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v7, "defs.scm"

    const v7, 0x901a

    invoke-static {v5, v6, v11, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const-string v6, "defs.scm"

    const v6, 0x9010

    invoke-static {v4, v5, v11, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    aput-object v4, v3, v12

    sget-object v4, Lgnu/kawa/android/defs;->Lit17:Lgnu/mapping/SimpleSymbol;

    aput-object v4, v3, v13

    sget-object v4, Lgnu/kawa/android/defs;->Lit23:Lgnu/mapping/SimpleSymbol;

    aput-object v4, v3, v14

    sget-object v4, Lgnu/kawa/android/defs;->Lit24:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/kawa/android/defs;->Lit18:Lgnu/mapping/SimpleSymbol;

    sget-object v6, Lgnu/kawa/android/defs;->Lit21:Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v8, "defs.scm"

    const v8, 0xa02e

    invoke-static {v6, v7, v11, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    sget-object v7, Lgnu/kawa/android/defs;->Lit25:Lgnu/mapping/SimpleSymbol;

    sget-object v8, Lgnu/kawa/android/defs;->Lit19:Lgnu/mapping/SimpleSymbol;

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v10, "defs.scm"

    const v10, 0xa036

    invoke-static {v8, v9, v11, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const-string v9, "defs.scm"

    const v9, 0xa036

    invoke-static {v7, v8, v11, v9}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    sget-object v8, Lgnu/kawa/android/defs;->Lit20:Lgnu/mapping/SimpleSymbol;

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v10, "defs.scm"

    const v10, 0xa03f

    invoke-static {v8, v9, v11, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const-string v9, "defs.scm"

    const v9, 0xa035

    invoke-static {v7, v8, v11, v9}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const-string v8, "defs.scm"

    const v8, 0xa02e

    invoke-static {v6, v7, v11, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    const-string v7, "defs.scm"

    const v7, 0xa019

    invoke-static {v5, v6, v11, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const-string v6, "defs.scm"

    const v6, 0xa009

    invoke-static {v4, v5, v11, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    aput-object v4, v3, v15

    const/4 v4, 0x4

    const-string v5, "$lookup$"

    invoke-static {v5}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v5

    sget-object v6, Lgnu/kawa/android/defs;->Lit21:Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v8, "defs.scm"

    const v8, 0xc00a

    invoke-static {v6, v7, v11, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    const-string v7, "quasiquote"

    invoke-static {v7}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v7

    const-string v8, "setContentView"

    invoke-static {v8}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v8

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v8, v9}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v8

    invoke-static {v7, v8}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v7, v8}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    invoke-static {v6, v7}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    const-string v7, "defs.scm"

    const v7, 0xc00a

    invoke-static {v5, v6, v11, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v2, v3, v13}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/android/defs;->Lit4:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "T\u000c\u0002\r\u0007\u0000\u0008\u0016\u000c\u000f\u0008\u0013"

    new-array v2, v13, [Ljava/lang/Object;

    const-string v3, "on-create-view"

    invoke-static {v3}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-direct {v0, v1, v2, v15}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/android/defs;->Lit3:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0003\u0000"

    const-string v2, "\n"

    new-array v3, v12, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v12}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/android/defs;->Lit2:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxTemplate;

    const-string v1, "\u0003\u0000"

    const-string v2, "\u0011\u0018\u0004\u0011\u0018\u000c\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u0005\u0003"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/android/defs;->Lit19:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/kawa/android/defs;->Lit20:Lgnu/mapping/SimpleSymbol;

    sget-object v6, Lgnu/kawa/android/defs;->Lit17:Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/kawa/android/defs;->Lit22:Lgnu/mapping/SimpleSymbol;

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v9, "defs.scm"

    const/16 v9, 0x4031

    invoke-static {v7, v8, v11, v9}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const-string v8, "defs.scm"

    const/16 v8, 0x402e

    invoke-static {v6, v7, v11, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    const-string v7, "defs.scm"

    const/16 v7, 0x401a

    invoke-static {v5, v6, v11, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v7, "defs.scm"

    const/16 v7, 0x401a

    invoke-static {v5, v6, v11, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const-string v6, "defs.scm"

    const/16 v6, 0x4010

    invoke-static {v4, v5, v11, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    aput-object v4, v3, v12

    sget-object v4, Lgnu/kawa/android/defs;->Lit17:Lgnu/mapping/SimpleSymbol;

    aput-object v4, v3, v13

    sget-object v4, Lgnu/kawa/android/defs;->Lit23:Lgnu/mapping/SimpleSymbol;

    aput-object v4, v3, v14

    sget-object v4, Lgnu/kawa/android/defs;->Lit24:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/kawa/android/defs;->Lit18:Lgnu/mapping/SimpleSymbol;

    sget-object v6, Lgnu/kawa/android/defs;->Lit21:Lgnu/mapping/SimpleSymbol;

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v8, "defs.scm"

    const/16 v8, 0x502e

    invoke-static {v6, v7, v11, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    sget-object v7, Lgnu/kawa/android/defs;->Lit25:Lgnu/mapping/SimpleSymbol;

    sget-object v8, Lgnu/kawa/android/defs;->Lit19:Lgnu/mapping/SimpleSymbol;

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v10, "defs.scm"

    const/16 v10, 0x5036

    invoke-static {v8, v9, v11, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const-string v9, "defs.scm"

    const/16 v9, 0x5036

    invoke-static {v7, v8, v11, v9}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    sget-object v8, Lgnu/kawa/android/defs;->Lit20:Lgnu/mapping/SimpleSymbol;

    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v10, "defs.scm"

    const/16 v10, 0x503f

    invoke-static {v8, v9, v11, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v8

    const-string v9, "defs.scm"

    const/16 v9, 0x5035

    invoke-static {v7, v8, v11, v9}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const-string v8, "defs.scm"

    const/16 v8, 0x502e

    invoke-static {v6, v7, v11, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v6

    const-string v7, "defs.scm"

    const/16 v7, 0x5019

    invoke-static {v5, v6, v11, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const-string v6, "defs.scm"

    const/16 v6, 0x5009

    invoke-static {v4, v5, v11, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v4

    aput-object v4, v3, v15

    invoke-direct {v0, v1, v2, v3, v13}, Lkawa/lang/SyntaxTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/android/defs;->Lit1:Lkawa/lang/SyntaxTemplate;

    new-instance v0, Lkawa/lang/SyntaxPattern;

    const-string v1, "<\u000c\u0002\r\u0007\u0000\u0008\u0008\u000b"

    new-array v2, v13, [Ljava/lang/Object;

    const-string v3, "on-create"

    invoke-static {v3}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-direct {v0, v1, v2, v14}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/android/defs;->Lit0:Lkawa/lang/SyntaxPattern;

    new-instance v0, Lgnu/kawa/android/defs;

    invoke-direct {v0}, Lgnu/kawa/android/defs;-><init>()V

    sput-object v0, Lgnu/kawa/android/defs;->$instance:Lgnu/kawa/android/defs;

    sget-object v0, Lgnu/kawa/android/defs;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/expr/ModuleMethod;

    sget-object v2, Lgnu/kawa/android/defs;->$instance:Lgnu/kawa/android/defs;

    const/4 v3, 0x0

    const/16 v4, 0x1001

    invoke-direct {v1, v2, v13, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sget-object v3, Lgnu/kawa/android/defs;->$instance:Lgnu/kawa/android/defs;

    invoke-static {v0, v1, v3}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/android/defs;->activity:Lkawa/lang/Macro;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/android/defs;->Lit16:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x1001

    invoke-direct {v0, v2, v14, v1, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/android/defs;->$Pcprocess$Mnactivity:Lgnu/expr/ModuleMethod;

    sget-object v0, Lgnu/kawa/android/defs;->$instance:Lgnu/kawa/android/defs;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static lambda1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "form"

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 19
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkawa/lang/SyntaxPattern;->allocVars(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgnu/kawa/android/defs;->Lit11:Lkawa/lang/SyntaxPattern;

    invoke-virtual {v1, p0, v0, v6}, Lkawa/lang/Pattern;->match(Ljava/lang/Object;[Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    invoke-static {}, Lkawa/lang/TemplateScope;->make()Lkawa/lang/TemplateScope;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/android/defs;->Lit12:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v3, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Lgnu/kawa/android/defs;->Lit13:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v3, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lgnu/kawa/android/defs;->Lit14:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v5, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lgnu/kawa/android/defs;->$PcProcessActivity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v6

    sget-object v5, Lgnu/kawa/android/defs;->Lit15:Lkawa/lang/SyntaxTemplate;

    invoke-virtual {v5, v0, v1}, Lkawa/lang/SyntaxTemplate;->execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v4}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v2}, Lkawa/lang/Quote;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "syntax-case"

    invoke-static {v0, p0}, Lkawa/standard/syntax_case;->error(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p2}, Lgnu/kawa/android/defs;->$PcProcessActivity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p2}, Lgnu/kawa/android/defs;->lambda1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    :goto_0
    return v0

    .line -1
    :pswitch_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 1
    :pswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
