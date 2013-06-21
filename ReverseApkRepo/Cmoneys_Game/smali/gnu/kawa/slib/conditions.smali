.class public Lgnu/kawa/slib/conditions;
.super Lgnu/expr/ModuleBody;
.source "conditions.scm"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/kawa/slib/condition$Mntype;
    }
.end annotation


# static fields
.field public static final $Amcondition:Lgnu/mapping/Location; = null

.field public static final $Amerror:Lgnu/mapping/Location; = null

.field public static final $Ammessage:Lgnu/mapping/Location; = null

.field public static final $Amserious:Lgnu/mapping/Location; = null

.field static final $Lscondition$Mntype$Gr:Ljava/lang/Class; = null

.field static final $Pcprovide$Pccondition:I = 0x7b

.field static final $Pcprovide$Pcconditions:I = 0x7b

.field static final $Pcprovide$Pcsrfi$Mn35:I = 0x7b

.field public static final $Prvt$$Lscondition$Gr:Ljava/lang/Class;

.field public static final $Prvt$type$Mnfield$Mnalist$Mn$Grcondition:Lgnu/expr/ModuleMethod;

.field public static final $instance:Lgnu/kawa/slib/conditions;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lkawa/lang/SyntaxRules;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lgnu/mapping/SimpleSymbol;

.field static final Lit15:Lgnu/mapping/SimpleSymbol;

.field static final Lit16:Lgnu/mapping/SimpleSymbol;

.field static final Lit17:Lgnu/mapping/SimpleSymbol;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/lists/PairWithPosition;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit23:Lgnu/mapping/SimpleSymbol;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit27:Lgnu/mapping/SimpleSymbol;

.field static final Lit28:Lgnu/mapping/SimpleSymbol;

.field static final Lit29:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit30:Lgnu/mapping/SimpleSymbol;

.field static final Lit31:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lkawa/lang/SyntaxRules;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lkawa/lang/SyntaxRules;

.field static final check$Mncondition$Mntype$Mnfield$Mnalist:Lgnu/expr/ModuleMethod;

.field public static final condition:Lkawa/lang/Macro;

.field public static final condition$Mnhas$Mntype$Qu:Lgnu/expr/ModuleMethod;

.field static final condition$Mnmessage:Lgnu/expr/ModuleMethod;

.field public static final condition$Mnref:Lgnu/expr/ModuleMethod;

.field static final condition$Mnsubtype$Qu:Lgnu/expr/ModuleMethod;

.field static final condition$Mntype$Mnfield$Mnalist:Lkawa/lang/Macro;

.field static final condition$Mntype$Mnfield$Mnsupertype:Lgnu/expr/ModuleMethod;

.field public static final condition$Mntype$Qu:Lgnu/expr/ModuleMethod;

.field static final condition$Mntypes:Lgnu/expr/ModuleMethod;

.field public static final condition$Qu:Lgnu/expr/ModuleMethod;

.field public static final define$Mncondition$Mntype:Lkawa/lang/Macro;

.field static final error$Qu:Lgnu/expr/ModuleMethod;

.field public static final extract$Mncondition:Lgnu/expr/ModuleMethod;

.field public static final make$Mncompound$Mncondition:Lgnu/expr/ModuleMethod;

.field public static final make$Mncondition:Lgnu/expr/ModuleMethod;

.field public static final make$Mncondition$Mntype:Lgnu/expr/ModuleMethod;

.field static final message$Mncondition$Qu:Lgnu/expr/ModuleMethod;

.field static final serious$Mncondition$Qu:Lgnu/expr/ModuleMethod;

.field static final type$Mnfield$Mnalist$Mnref:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .prologue
    const-string v0, "thing"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit31:Lgnu/mapping/SimpleSymbol;

    const-string v0, "quote"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit30:Lgnu/mapping/SimpleSymbol;

    const-string v0, "error?"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit29:Lgnu/mapping/SimpleSymbol;

    const-string v0, "serious-condition?"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit28:Lgnu/mapping/SimpleSymbol;

    const-string v0, "condition-message"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit27:Lgnu/mapping/SimpleSymbol;

    const-string v0, "message-condition?"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit26:Lgnu/mapping/SimpleSymbol;

    const-string v0, "check-condition-type-field-alist"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit25:Lgnu/mapping/SimpleSymbol;

    const-string v0, "condition-types"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit24:Lgnu/mapping/SimpleSymbol;

    const-string v0, "type-field-alist->condition"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit23:Lgnu/mapping/SimpleSymbol;

    const-string v0, "extract-condition"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit22:Lgnu/mapping/SimpleSymbol;

    const-string v0, "make-compound-condition"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit21:Lgnu/mapping/SimpleSymbol;

    const-string v0, "type-field-alist-ref"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit20:Lgnu/mapping/SimpleSymbol;

    const-string v0, "condition-ref"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit19:Lgnu/mapping/SimpleSymbol;

    const-string v0, "condition-has-type?"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit18:Lgnu/mapping/SimpleSymbol;

    const-string v0, "make-condition"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit17:Lgnu/mapping/SimpleSymbol;

    const-string v0, "condition?"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit16:Lgnu/mapping/SimpleSymbol;

    const-string v0, "condition-type-field-supertype"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit15:Lgnu/mapping/SimpleSymbol;

    const-string v0, "condition-subtype?"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit14:Lgnu/mapping/SimpleSymbol;

    const-string v0, "make-condition-type"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit13:Lgnu/mapping/SimpleSymbol;

    const-string v0, "condition-type?"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lkawa/lang/SyntaxRules;

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "condition-type-field-alist"

    invoke-static {v1}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/conditions;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v1, v7, v0

    const/4 v0, 0x1

    new-array v8, v0, [Lkawa/lang/SyntaxRule;

    const/4 v9, 0x0

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u000c\u0007\u0008"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001"

    const-string v3, "\u0011\u0018\u0004\u0008\u0011\u0018\u000c\u0011\u0018\u0014\u0008\u0003"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v10, "$lookup$"

    invoke-static {v10}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v10

    const-string v11, "*"

    invoke-static {v11}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v11

    const-string v12, "quasiquote"

    invoke-static {v12}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v12

    const-string v13, ".type-field-alist"

    invoke-static {v13}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v13

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v13, v14}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v13

    invoke-static {v12, v13}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v12

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v12, v13}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v12

    invoke-static {v11, v12}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v11

    const-string v12, "conditions.scm"

    const v13, 0x8e007

    invoke-static {v10, v11, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x1

    const-string v10, "as"

    invoke-static {v10}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x2

    const-string v10, "<condition>"

    invoke-static {v10}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v0, 0x1

    invoke-direct {v6, v7, v8, v0}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v6, Lgnu/kawa/slib/conditions;->Lit11:Lkawa/lang/SyntaxRules;

    new-instance v6, Lkawa/lang/SyntaxRules;

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "condition"

    invoke-static {v1}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/conditions;->Lit8:Lgnu/mapping/SimpleSymbol;

    aput-object v1, v7, v0

    const/4 v0, 0x1

    new-array v8, v0, [Lkawa/lang/SyntaxRule;

    const/4 v9, 0x0

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018]\u000c\u0007-\u000c\u000f\u000c\u0017\u0008\u0008\u0010\u0008\u0000\u0018\u0008"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0003\u0005\u0005"

    const-string v3, "\u0011\u0018\u0004\u0008\u0011\u0018\u000c\u0008\u0005\u0011\u0018\u0014\t\u0003\u0008\u0011\u0018\u000c\u0008\r\u0011\u0018\u0014)\u0011\u0018\u001c\u0008\u000b\u0008\u0013"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v10, Lgnu/kawa/slib/conditions;->Lit23:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    const-string v10, "list"

    invoke-static {v10}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x2

    const-string v10, "cons"

    invoke-static {v10}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x3

    sget-object v10, Lgnu/kawa/slib/conditions;->Lit30:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v0, 0x3

    invoke-direct {v6, v7, v8, v0}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v6, Lgnu/kawa/slib/conditions;->Lit9:Lkawa/lang/SyntaxRules;

    new-instance v6, Lkawa/lang/SyntaxRules;

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "define-condition-type"

    invoke-static {v1}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/conditions;->Lit6:Lgnu/mapping/SimpleSymbol;

    aput-object v1, v7, v0

    const/4 v0, 0x1

    new-array v8, v0, [Lkawa/lang/SyntaxRule;

    const/4 v9, 0x0

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u000c\u0007\u000c\u000f\u000c\u0017-\u000c\u001f\u000c\'\u0008\u0018\u0010\u0008"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0001\u0001\u0003\u0003"

    const-string v3, "\u0011\u0018\u0004\u00c9\u0011\u0018\u000c\t\u0003\u0008\u0011\u0018\u0014)\u0011\u0018\u001c\u0008\u0003\t\u000b\u0008\u0011\u0018\u001c\u0008\u0008\u001d\u001b\u00c1\u0011\u0018\u000c!\t\u0013\u0018$\u0008\u0011\u0018,\u0011\u00184\u0008\u0011\u0018<\u0011\u0018D\u0008\u0003\u0008%\u0011\u0018\u000c!\t#\u0018L\u0008\u0011\u0018TA\u0011\u0018\\\u0011\u0018d\u0008\u0003\u0008\u0011\u0018\u001c\u0008\u001b"

    const/16 v4, 0xd

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v10, "begin"

    invoke-static {v10}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x1

    const-string v10, "define"

    invoke-static {v10}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x2

    sget-object v10, Lgnu/kawa/slib/conditions;->Lit13:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x3

    sget-object v10, Lgnu/kawa/slib/conditions;->Lit30:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x4

    sget-object v10, Lgnu/kawa/slib/conditions;->Lit31:Lgnu/mapping/SimpleSymbol;

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v12, "conditions.scm"

    const v13, 0x5001c

    invoke-static {v10, v11, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x5

    const-string v10, "and"

    invoke-static {v10}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x6

    sget-object v10, Lgnu/kawa/slib/conditions;->Lit16:Lgnu/mapping/SimpleSymbol;

    sget-object v11, Lgnu/kawa/slib/conditions;->Lit31:Lgnu/mapping/SimpleSymbol;

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v13, "conditions.scm"

    const v14, 0x5101b

    invoke-static {v11, v12, v13, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v11

    const-string v12, "conditions.scm"

    const v13, 0x5100f

    invoke-static {v10, v11, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x7

    sget-object v10, Lgnu/kawa/slib/conditions;->Lit18:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/16 v5, 0x8

    sget-object v10, Lgnu/kawa/slib/conditions;->Lit31:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/16 v5, 0x9

    sget-object v10, Lgnu/kawa/slib/conditions;->Lit8:Lgnu/mapping/SimpleSymbol;

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v12, "conditions.scm"

    const v13, 0x5301c

    invoke-static {v10, v11, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    aput-object v10, v4, v5

    const/16 v5, 0xa

    sget-object v10, Lgnu/kawa/slib/conditions;->Lit19:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/16 v5, 0xb

    sget-object v10, Lgnu/kawa/slib/conditions;->Lit22:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/16 v5, 0xc

    sget-object v10, Lgnu/kawa/slib/conditions;->Lit8:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v0, 0x5

    invoke-direct {v6, v7, v8, v0}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v6, Lgnu/kawa/slib/conditions;->Lit7:Lkawa/lang/SyntaxRules;

    const-string v0, "&error"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit5:Lgnu/mapping/SimpleSymbol;

    const-string v0, "&serious"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit4:Lgnu/mapping/SimpleSymbol;

    const-string v0, "message"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit3:Lgnu/mapping/SimpleSymbol;

    sget-object v0, Lgnu/kawa/slib/conditions;->Lit3:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v2, "conditions.scm"

    const v3, 0xe2003

    invoke-static {v0, v1, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit2:Lgnu/lists/PairWithPosition;

    const-string v0, "&message"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit1:Lgnu/mapping/SimpleSymbol;

    const-string v0, "&condition"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/kawa/slib/conditions;

    invoke-direct {v0}, Lgnu/kawa/slib/conditions;-><init>()V

    sput-object v0, Lgnu/kawa/slib/conditions;->$instance:Lgnu/kawa/slib/conditions;

    .line 34
    sget-object v0, Lgnu/kawa/slib/conditions;->Lit6:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/conditions;->Lit7:Lkawa/lang/SyntaxRules;

    sget-object v2, Lgnu/kawa/slib/conditions;->$instance:Lgnu/kawa/slib/conditions;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->define$Mncondition$Mntype:Lkawa/lang/Macro;

    sget-object v0, Lgnu/kawa/slib/conditions;->Lit8:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/conditions;->Lit9:Lkawa/lang/SyntaxRules;

    sget-object v2, Lgnu/kawa/slib/conditions;->$instance:Lgnu/kawa/slib/conditions;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->condition:Lkawa/lang/Macro;

    .line 222
    sget-object v0, Lgnu/kawa/slib/conditions;->Lit0:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0}, Lgnu/mapping/Location;->make(Lgnu/mapping/Symbol;)Lgnu/mapping/IndirectableLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->$Amcondition:Lgnu/mapping/Location;

    .line 224
    sget-object v0, Lgnu/kawa/slib/conditions;->Lit1:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0}, Lgnu/mapping/Location;->make(Lgnu/mapping/Symbol;)Lgnu/mapping/IndirectableLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->$Ammessage:Lgnu/mapping/Location;

    .line 228
    sget-object v0, Lgnu/kawa/slib/conditions;->Lit4:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0}, Lgnu/mapping/Location;->make(Lgnu/mapping/Symbol;)Lgnu/mapping/IndirectableLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->$Amserious:Lgnu/mapping/Location;

    .line 231
    sget-object v0, Lgnu/kawa/slib/conditions;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0}, Lgnu/mapping/Location;->make(Lgnu/mapping/Symbol;)Lgnu/mapping/IndirectableLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->$Amerror:Lgnu/mapping/Location;

    sget-object v0, Lgnu/kawa/slib/conditions;->Lit10:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lgnu/kawa/slib/conditions;->Lit11:Lkawa/lang/SyntaxRules;

    sget-object v2, Lgnu/kawa/slib/conditions;->$instance:Lgnu/kawa/slib/conditions;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/conditions;->condition$Mntype$Mnfield$Mnalist:Lkawa/lang/Macro;

    const-class v0, Lgnu/kawa/slib/condition$Mntype;

    sput-object v0, Lgnu/kawa/slib/conditions;->$Lscondition$Mntype$Gr:Ljava/lang/Class;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/conditions;->$instance:Lgnu/kawa/slib/conditions;

    const/4 v2, 0x2

    sget-object v3, Lgnu/kawa/slib/conditions;->Lit12:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x1001

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->condition$Mntype$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x3

    sget-object v3, Lgnu/kawa/slib/conditions;->Lit13:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x3003

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->make$Mncondition$Mntype:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x4

    sget-object v3, Lgnu/kawa/slib/conditions;->Lit14:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x2002

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->condition$Mnsubtype$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x5

    sget-object v3, Lgnu/kawa/slib/conditions;->Lit15:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x2002

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->condition$Mntype$Mnfield$Mnsupertype:Lgnu/expr/ModuleMethod;

    const-class v0, Lgnu/kawa/slib/condition;

    sput-object v0, Lgnu/kawa/slib/conditions;->$Prvt$$Lscondition$Gr:Ljava/lang/Class;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x6

    sget-object v3, Lgnu/kawa/slib/conditions;->Lit16:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x1001

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->condition$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x7

    sget-object v3, Lgnu/kawa/slib/conditions;->Lit17:Lgnu/mapping/SimpleSymbol;

    const/16 v4, -0xfff

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->make$Mncondition:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x8

    sget-object v3, Lgnu/kawa/slib/conditions;->Lit18:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x2002

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->condition$Mnhas$Mntype$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x9

    sget-object v3, Lgnu/kawa/slib/conditions;->Lit19:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x2002

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->condition$Mnref:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xa

    sget-object v3, Lgnu/kawa/slib/conditions;->Lit20:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x2002

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->type$Mnfield$Mnalist$Mnref:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xb

    sget-object v3, Lgnu/kawa/slib/conditions;->Lit21:Lgnu/mapping/SimpleSymbol;

    const/16 v4, -0xfff

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->make$Mncompound$Mncondition:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xc

    sget-object v3, Lgnu/kawa/slib/conditions;->Lit22:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x2002

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->extract$Mncondition:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xd

    sget-object v3, Lgnu/kawa/slib/conditions;->Lit23:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x1001

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->$Prvt$type$Mnfield$Mnalist$Mn$Grcondition:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xe

    sget-object v3, Lgnu/kawa/slib/conditions;->Lit24:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x1001

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->condition$Mntypes:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xf

    sget-object v3, Lgnu/kawa/slib/conditions;->Lit25:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x1001

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->check$Mncondition$Mntype$Mnfield$Mnalist:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x10

    sget-object v3, Lgnu/kawa/slib/conditions;->Lit26:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x1001

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->message$Mncondition$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x11

    sget-object v3, Lgnu/kawa/slib/conditions;->Lit27:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x1001

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->condition$Mnmessage:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x12

    sget-object v3, Lgnu/kawa/slib/conditions;->Lit28:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x1001

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->serious$Mncondition$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x13

    sget-object v3, Lgnu/kawa/slib/conditions;->Lit29:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x1001

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/conditions;->error$Qu:Lgnu/expr/ModuleMethod;

    sget-object v0, Lgnu/kawa/slib/conditions;->$instance:Lgnu/kawa/slib/conditions;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static checkConditionTypeFieldAlist(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "the$Mntype$Mnfield$Mnalist"

    .prologue
    .line 201
    move-object v1, p0

    .local v1, type$Mnfield$Mnalist:Ljava/lang/Object;
    move-object v6, v1

    .line 203
    .end local v1           #type$Mnfield$Mnalist:Ljava/lang/Object;
    .local v6, type$Mnfield$Mnalist:Ljava/lang/Object;
    :goto_0
    invoke-static {v6}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 204
    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v1, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, entry:Ljava/lang/Object;
    sget-object v2, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 205
    invoke-virtual {v2, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :try_start_0
    check-cast v5, Lgnu/kawa/slib/condition$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .local v5, type:Lgnu/kawa/slib/condition$Mntype;
    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 206
    invoke-virtual {v2, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 204
    .local v1, field$Mnalist:Ljava/lang/Object;
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v1, v1

    .local v1, arg0:Ljava/lang/Object;
    move-object v3, v2

    :goto_1
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v1, v2, :cond_0

    invoke-static {v3}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v2

    .local v2, fields:Lgnu/lists/LList;
    iget-object v1, v5, Lgnu/kawa/slib/condition$Mntype;->all$Mnfields:Ljava/lang/Object;

    .line 209
    .local v1, all$Mnfields:Ljava/lang/Object;
    sget-object v3, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v4, v7

    invoke-static {v3, v1, v4}, Lgnu/kawa/slib/srfi1;->lsetDifference$V(Lgnu/mapping/Procedure;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v2           #fields:Lgnu/lists/LList;
    .local v1, arg0:Ljava/lang/Object;
    :goto_2
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v1, v2, :cond_1

    .line 215
    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 220
    .end local v1           #arg0:Ljava/lang/Object;
    invoke-virtual {v1, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v6           #type$Mnfield$Mnalist:Ljava/lang/Object;
    .local v1, type$Mnfield$Mnalist:Ljava/lang/Object;
    move-object v6, v1

    .end local v1           #type$Mnfield$Mnalist:Ljava/lang/Object;
    .restart local v6       #type$Mnfield$Mnalist:Ljava/lang/Object;
    goto :goto_0

    .line 204
    .local v1, arg0:Ljava/lang/Object;
    :cond_0
    :try_start_1
    check-cast v1, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .local v1, arg0:Lgnu/lists/Pair;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #arg0:Lgnu/lists/Pair;
    invoke-virtual {v4, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    .local v1, result:Lgnu/lists/Pair;
    .local v2, arg0:Ljava/lang/Object;
    move-object v3, v1

    move-object v1, v2

    .end local v2           #arg0:Ljava/lang/Object;
    .local v1, arg0:Ljava/lang/Object;
    goto :goto_1

    .line 209
    :cond_1
    :try_start_2
    move-object v0, v1

    check-cast v0, Lgnu/lists/Pair;

    move-object v2, v0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .local v2, arg0:Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    .end local v1           #arg0:Ljava/lang/Object;
    move-result-object v3

    .line 210
    .local v3, missing$Mnfield:Ljava/lang/Object;
    invoke-static {v5, v3}, Lgnu/kawa/slib/conditions;->conditionTypeFieldSupertype(Lgnu/kawa/slib/condition$Mntype;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 212
    .local v4, supertype:Ljava/lang/Object;
    move-object v1, p0

    .line 214
    .local v1, alist:Ljava/lang/Object;
    :goto_3
    sget-object v7, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    sget-object v8, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v8, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :try_start_3
    check-cast v7, Lgnu/kawa/slib/condition$Mntype;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    move-object v0, v4

    check-cast v0, Lgnu/kawa/slib/condition$Mntype;

    move-object v8, v0
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static {v7, v8}, Lgnu/kawa/slib/conditions;->isConditionSubtype(Lgnu/kawa/slib/condition$Mntype;Lgnu/kawa/slib/condition$Mntype;)Z

    move-result v7

    .local v7, x:Z
    if-eqz v7, :cond_3

    if-nez v7, :cond_2

    .line 215
    const-string v1, "missing field in condition construction"

    .end local v1           #alist:Ljava/lang/Object;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .end local v4           #supertype:Ljava/lang/Object;
    const/4 v7, 0x0

    aput-object v5, v4, v7

    .end local v7           #x:Z
    const/4 v7, 0x1

    aput-object v3, v4, v7

    invoke-static {v1, v4}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .local v1, arg0:Ljava/lang/Object;
    goto :goto_2

    .line 214
    .local v1, alist:Ljava/lang/Object;
    .restart local v4       #supertype:Ljava/lang/Object;
    .restart local v7       #x:Z
    :cond_3
    sget-object v7, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 215
    .end local v7           #x:Z
    invoke-virtual {v7, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    .line 220
    .end local v1           #alist:Ljava/lang/Object;
    .end local v2           #arg0:Lgnu/lists/Pair;
    .end local v3           #missing$Mnfield:Ljava/lang/Object;
    .end local v4           #supertype:Ljava/lang/Object;
    .end local v5           #type:Lgnu/kawa/slib/condition$Mntype;
    :cond_4
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .end local p0
    return-object p0

    .line 204
    .local v1, entry:Ljava/lang/Object;
    .restart local p0
    :catch_0
    move-exception p0

    .end local p0
    new-instance v1, Lgnu/mapping/WrongType;

    .end local v1           #entry:Ljava/lang/Object;
    const/4 v2, 0x0

    const/4 v3, -0x4

    invoke-direct {v1, p0, v2, v3, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .local v1, arg0:Ljava/lang/Object;
    .restart local v5       #type:Lgnu/kawa/slib/condition$Mntype;
    .restart local p0
    :catch_1
    move-exception p0

    .end local p0
    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v3, 0x0

    const/4 v4, -0x4

    invoke-direct {v2, p0, v3, v4, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 209
    .restart local p0
    :catch_2
    move-exception p0

    .end local p0
    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v3, 0x0

    const/4 v4, -0x4

    invoke-direct {v2, p0, v3, v4, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .local v1, alist:Ljava/lang/Object;
    .restart local v2       #arg0:Lgnu/lists/Pair;
    .restart local v3       #missing$Mnfield:Ljava/lang/Object;
    .restart local v4       #supertype:Ljava/lang/Object;
    .restart local p0
    :catch_3
    move-exception p0

    .end local p0
    new-instance v1, Lgnu/mapping/WrongType;

    .end local v1           #alist:Ljava/lang/Object;
    const-string v2, "condition-subtype?"

    .end local v2           #arg0:Lgnu/lists/Pair;
    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    .end local v3           #missing$Mnfield:Ljava/lang/Object;
    throw v1

    .line 214
    .restart local v1       #alist:Ljava/lang/Object;
    .restart local v2       #arg0:Lgnu/lists/Pair;
    .restart local v3       #missing$Mnfield:Ljava/lang/Object;
    .restart local p0
    :catch_4
    move-exception p0

    .end local p0
    new-instance v1, Lgnu/mapping/WrongType;

    .end local v1           #alist:Ljava/lang/Object;
    const-string v2, "condition-subtype?"

    .end local v2           #arg0:Lgnu/lists/Pair;
    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    .end local v3           #missing$Mnfield:Ljava/lang/Object;
    throw v1
.end method

.method static conditionMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "condition"

    .prologue
    const-string v4, "extract-condition"

    .line 226
    :try_start_0
    check-cast p0, Lgnu/kawa/slib/condition;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p0
    sget-object v0, Lgnu/kawa/slib/conditions;->$Ammessage:Lgnu/mapping/Location;

    :try_start_1
    invoke-virtual {v0}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_1
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :try_start_2
    check-cast v0, Lgnu/kawa/slib/condition$Mntype;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {p0, v0}, Lgnu/kawa/slib/conditions;->extractCondition(Lgnu/kawa/slib/condition;Lgnu/kawa/slib/condition$Mntype;)Lgnu/kawa/slib/condition;

    move-result-object v0

    sget-object v1, Lgnu/kawa/slib/conditions;->Lit3:Lgnu/mapping/SimpleSymbol;

    invoke-static {v0, v1}, Lgnu/kawa/slib/conditions;->conditionRef(Lgnu/kawa/slib/condition;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 224
    .restart local p0
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "extract-condition"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v4, v2, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .end local p0
    :catch_1
    move-exception v0

    const-string v1, "conditions.scm"

    const/16 v2, 0xe0

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v0

    :catch_2
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "extract-condition"

    const/4 v3, 0x1

    invoke-direct {v2, v1, v4, v3, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method

.method public static conditionRef(Lgnu/kawa/slib/condition;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "condition"
    .parameter "field"

    .prologue
    .line 144
    iget-object v0, p0, Lgnu/kawa/slib/condition;->type$Mnfield$Mnalist:Ljava/lang/Object;

    invoke-static {v0, p1}, Lgnu/kawa/slib/conditions;->typeFieldAlistRef(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static conditionTypeFieldSupertype(Lgnu/kawa/slib/condition$Mntype;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "condition$Mntype"
    .parameter "field"

    .prologue
    .line 95
    .line 98
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p0, v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 100
    :goto_1
    return-object v0

    .line 98
    :cond_0
    iget-object v0, p0, Lgnu/kawa/slib/condition$Mntype;->fields:Ljava/lang/Object;

    invoke-static {p1, v0}, Lkawa/lib/lists;->memq(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1

    move-object v0, p0

    .line 100
    goto :goto_1

    :cond_1
    iget-object p0, p0, Lgnu/kawa/slib/condition$Mntype;->supertype:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lgnu/kawa/slib/condition$Mntype;

    .restart local p0
    goto :goto_0
.end method

.method static conditionTypes(Ljava/lang/Object;)Lgnu/lists/LList;
    .locals 7
    .parameter "condition"

    .prologue
    .line 198
    check-cast p0, Lgnu/kawa/slib/condition;

    .end local p0
    iget-object v0, p0, Lgnu/kawa/slib/condition;->type$Mnfield$Mnalist:Ljava/lang/Object;

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .local v0, arg0:Ljava/lang/Object;
    :goto_0
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v0, v4, :cond_0

    invoke-static {v3}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v3

    return-object v3

    :cond_0
    :try_start_0
    check-cast v0, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, arg0:Lgnu/lists/Pair;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    .local v1, arg0:Ljava/lang/Object;
    .local v2, result:Lgnu/lists/Pair;
    move-object v3, v2

    move-object v0, v1

    .end local v1           #arg0:Ljava/lang/Object;
    .local v0, arg0:Ljava/lang/Object;
    goto :goto_0

    .end local v2           #result:Lgnu/lists/Pair;
    :catch_0
    move-exception v3

    new-instance v4, Lgnu/mapping/WrongType;

    const/4 v5, 0x0

    const/4 v6, -0x4

    invoke-direct {v4, v3, v5, v6, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4
.end method

.method public static extractCondition(Lgnu/kawa/slib/condition;Lgnu/kawa/slib/condition$Mntype;)Lgnu/kawa/slib/condition;
    .locals 10
    .parameter "condition"
    .parameter "type"

    .prologue
    .line 163
    new-instance v5, Lgnu/kawa/slib/conditions$frame;

    invoke-direct {v5}, Lgnu/kawa/slib/conditions$frame;-><init>()V

    iput-object p1, v5, Lgnu/kawa/slib/conditions$frame;->type:Lgnu/kawa/slib/condition$Mntype;

    .line 166
    iget-object v6, v5, Lgnu/kawa/slib/conditions$frame;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    iget-object v7, p0, Lgnu/kawa/slib/condition;->type$Mnfield$Mnalist:Ljava/lang/Object;

    invoke-static {v6, v7}, Lgnu/kawa/slib/srfi1;->find(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 169
    .local v2, entry:Ljava/lang/Object;
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v2, v6, :cond_0

    const-string v6, "extract-condition: invalid condition type"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    iget-object v9, v5, Lgnu/kawa/slib/conditions$frame;->type:Lgnu/kawa/slib/condition$Mntype;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v6, Lgnu/kawa/slib/condition;

    iget-object v7, v5, Lgnu/kawa/slib/conditions$frame;->type:Lgnu/kawa/slib/condition$Mntype;

    .line 174
    iget-object v5, v5, Lgnu/kawa/slib/conditions$frame;->type:Lgnu/kawa/slib/condition$Mntype;

    iget-object v0, v5, Lgnu/kawa/slib/condition$Mntype;->all$Mnfields:Ljava/lang/Object;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .local v0, arg0:Ljava/lang/Object;
    :goto_0
    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v0, v8, :cond_1

    .line 175
    invoke-static {v5}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v5

    invoke-static {v7, v5}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    invoke-static {v5}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    invoke-direct {v6, v5}, Lgnu/kawa/slib/condition;-><init>(Ljava/lang/Object;)V

    return-object v6

    .line 174
    :cond_1
    :try_start_0
    check-cast v0, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, arg0:Lgnu/lists/Pair;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    .local v3, field:Ljava/lang/Object;
    sget-object v8, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 175
    invoke-virtual {v8, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v3, v8}, Lkawa/lib/lists;->assq(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v5}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    .local v1, arg0:Ljava/lang/Object;
    .local v4, result:Lgnu/lists/Pair;
    move-object v5, v4

    move-object v0, v1

    .end local v1           #arg0:Ljava/lang/Object;
    .local v0, arg0:Ljava/lang/Object;
    goto :goto_0

    .end local v3           #field:Ljava/lang/Object;
    .end local v4           #result:Lgnu/lists/Pair;
    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const/4 v7, 0x0

    const/4 v8, -0x4

    invoke-direct {v6, v5, v7, v8, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method

.method public static isCondition(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 111
    instance-of v0, p0, Lgnu/kawa/slib/condition;

    return v0
.end method

.method public static isConditionHasType(Ljava/lang/Object;Lgnu/kawa/slib/condition$Mntype;)Z
    .locals 6
    .parameter "condition"
    .parameter "type"

    .prologue
    .line 127
    invoke-static {p0}, Lgnu/kawa/slib/conditions;->conditionTypes(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v0

    .line 129
    .end local p0
    :goto_0
    sget-object v2, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v2, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :try_start_0
    check-cast p0, Lgnu/kawa/slib/condition$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0, p1}, Lgnu/kawa/slib/conditions;->isConditionSubtype(Lgnu/kawa/slib/condition$Mntype;Lgnu/kawa/slib/condition$Mntype;)Z

    move-result v1

    .local v1, x:Z
    if-eqz v1, :cond_0

    .line 130
    return v1

    .line 129
    :cond_0
    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 130
    invoke-virtual {v2, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, types:Ljava/lang/Object;
    goto :goto_0

    .end local v0           #types:Ljava/lang/Object;
    .end local v1           #x:Z
    :catch_0
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "condition-subtype?"

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method static isConditionSubtype(Lgnu/kawa/slib/condition$Mntype;Lgnu/kawa/slib/condition$Mntype;)Z
    .locals 1
    .parameter "subtype"
    .parameter "supertype"

    .prologue
    .line 88
    .line 90
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lgnu/kawa/slib/condition$Mntype;->supertype:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lgnu/kawa/slib/condition$Mntype;

    .restart local p0
    goto :goto_0
.end method

.method public static isConditionType(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 56
    instance-of v0, p0, Lgnu/kawa/slib/condition$Mntype;

    return v0
.end method

.method static isError(Ljava/lang/Object;)Z
    .locals 6
    .parameter "thing"

    .prologue
    .line 232
    invoke-static {p0}, Lgnu/kawa/slib/conditions;->isCondition(Ljava/lang/Object;)Z

    move-result v0

    .local v0, x:Z
    if-eqz v0, :cond_0

    sget-object v1, Lgnu/kawa/slib/conditions;->$Amerror:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v1}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    check-cast v1, Lgnu/kawa/slib/condition$Mntype;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p0, v1}, Lgnu/kawa/slib/conditions;->isConditionHasType(Ljava/lang/Object;Lgnu/kawa/slib/condition$Mntype;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "conditions.scm"

    const/16 v3, 0xe7

    const/16 v4, 0x18

    invoke-virtual {v1, v2, v3, v4}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v1

    :catch_1
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "condition-has-type?"

    const/4 v5, 0x1

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method static isMessageCondition(Ljava/lang/Object;)Z
    .locals 6
    .parameter "thing"

    .prologue
    .line 225
    invoke-static {p0}, Lgnu/kawa/slib/conditions;->isCondition(Ljava/lang/Object;)Z

    move-result v0

    .local v0, x:Z
    if-eqz v0, :cond_0

    sget-object v1, Lgnu/kawa/slib/conditions;->$Ammessage:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v1}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    check-cast v1, Lgnu/kawa/slib/condition$Mntype;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p0, v1}, Lgnu/kawa/slib/conditions;->isConditionHasType(Ljava/lang/Object;Lgnu/kawa/slib/condition$Mntype;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "conditions.scm"

    const/16 v3, 0xe0

    const/16 v4, 0x18

    invoke-virtual {v1, v2, v3, v4}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v1

    :catch_1
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "condition-has-type?"

    const/4 v5, 0x1

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method static isSeriousCondition(Ljava/lang/Object;)Z
    .locals 6
    .parameter "thing"

    .prologue
    .line 229
    invoke-static {p0}, Lgnu/kawa/slib/conditions;->isCondition(Ljava/lang/Object;)Z

    move-result v0

    .local v0, x:Z
    if-eqz v0, :cond_0

    sget-object v1, Lgnu/kawa/slib/conditions;->$Amserious:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v1}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    check-cast v1, Lgnu/kawa/slib/condition$Mntype;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p0, v1}, Lgnu/kawa/slib/conditions;->isConditionHasType(Ljava/lang/Object;Lgnu/kawa/slib/condition$Mntype;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "conditions.scm"

    const/16 v3, 0xe4

    const/16 v4, 0x18

    invoke-virtual {v1, v2, v3, v4}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v1

    :catch_1
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "condition-has-type?"

    const/4 v5, 0x1

    invoke-direct {v3, v2, v4, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method public static lambda1label(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "plist"

    .prologue
    .line 116
    invoke-static {p0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 120
    :goto_0
    return-object v0

    .line 116
    :cond_0
    sget-object v0, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 118
    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    .line 119
    invoke-virtual {v1, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    sget-object v1, Lkawa/lib/lists;->cddr:Lgnu/expr/GenericProc;

    .line 120
    invoke-virtual {v1, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lgnu/kawa/slib/conditions;->lambda1label(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    goto :goto_0
.end method

.method public static makeCompoundCondition$V(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/kawa/slib/condition;
    .locals 11
    .parameter "condition$Mn1"
    .parameter "argsArray"

    .prologue
    .line 158
    const/4 v4, 0x0

    invoke-static {p1, v4}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v2

    .local v2, conditions:Lgnu/lists/LList;
    new-instance v4, Lgnu/kawa/slib/condition;

    sget-object v5, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    .line 160
    sget-object v6, Lkawa/standard/append;->append:Lkawa/standard/append;

    invoke-static {p0, v2}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_0
    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v0, v8, :cond_0

    invoke-static {v7}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v5}, Lgnu/kawa/slib/condition;-><init>(Ljava/lang/Object;)V

    return-object v4

    :cond_0
    :try_start_0
    check-cast v0, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, arg0:Lgnu/lists/Pair;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    sget-object v8, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v9, Lgnu/kawa/slib/conditions;->condition$Mntype$Mnfield$Mnalist:Lkawa/lang/Macro;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v7}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    .local v1, arg0:Ljava/lang/Object;
    .local v3, result:Lgnu/lists/Pair;
    move-object v7, v3

    move-object v0, v1

    .end local v1           #arg0:Ljava/lang/Object;
    .local v0, arg0:Ljava/lang/Object;
    goto :goto_0

    .end local v0           #arg0:Ljava/lang/Object;
    .end local v3           #result:Lgnu/lists/Pair;
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const/4 v6, 0x0

    const/4 v7, -0x4

    invoke-direct {v5, v4, v6, v7, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
.end method

.method public static makeCondition$V(Lgnu/kawa/slib/condition$Mntype;[Ljava/lang/Object;)Lgnu/kawa/slib/condition;
    .locals 12
    .parameter "type"
    .parameter "argsArray"

    .prologue
    const/4 v11, 0x0

    .line 114
    invoke-static {p1, v11}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v3

    .line 115
    .local v3, field$Mnplist:Lgnu/lists/LList;
    invoke-static {v3}, Lgnu/kawa/slib/conditions;->lambda1label(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    .local v0, alist:Ljava/lang/Object;
    sget-object v5, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lgnu/kawa/slib/condition$Mntype;->all$Mnfields:Ljava/lang/Object;

    aput-object v7, v6, v11

    const/4 v7, 0x1

    .line 123
    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v1, v0

    .local v1, arg0:Ljava/lang/Object;
    :goto_0
    sget-object v9, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v1, v9, :cond_1

    invoke-static {v8}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lgnu/kawa/slib/srfi1;->lset$Eq$V(Lgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v5, v6, :cond_0

    const-string v5, "condition fields don\'t match condition type"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v5, Lgnu/kawa/slib/condition;

    invoke-static {p0, v0}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    invoke-static {v6}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    invoke-direct {v5, v6}, Lgnu/kawa/slib/condition;-><init>(Ljava/lang/Object;)V

    return-object v5

    :cond_1
    :try_start_0
    check-cast v1, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, arg0:Lgnu/lists/Pair;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    sget-object v9, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v8}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    .local v2, arg0:Ljava/lang/Object;
    .local v4, result:Lgnu/lists/Pair;
    move-object v8, v4

    move-object v1, v2

    .end local v2           #arg0:Ljava/lang/Object;
    .local v1, arg0:Ljava/lang/Object;
    goto :goto_0

    .end local v4           #result:Lgnu/lists/Pair;
    :catch_0
    move-exception v5

    new-instance v6, Lgnu/mapping/WrongType;

    const/4 v7, 0x0

    const/4 v8, -0x4

    invoke-direct {v6, v5, v7, v8, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v6
.end method

.method public static makeConditionType(Lgnu/mapping/Symbol;Lgnu/kawa/slib/condition$Mntype;Ljava/lang/Object;)Lgnu/kawa/slib/condition$Mntype;
    .locals 5
    .parameter "name"
    .parameter "supertype"
    .parameter "fields"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    sget-object v0, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    iget-object v1, p1, Lgnu/kawa/slib/condition$Mntype;->all$Mnfields:Ljava/lang/Object;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi1;->lsetIntersection$V(Lgnu/mapping/Procedure;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "duplicate field name"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Lgnu/kawa/slib/condition$Mntype;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lgnu/kawa/slib/condition$Mntype;->all$Mnfields:Ljava/lang/Object;

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    invoke-static {v1}, Lkawa/standard/append;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lgnu/kawa/slib/condition$Mntype;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static typeFieldAlist$To$Condition(Ljava/lang/Object;)Lgnu/kawa/slib/condition;
    .locals 14
    .parameter "type$Mnfield$Mnalist"

    .prologue
    const/4 v13, 0x0

    const/4 v12, -0x4

    .line 187
    new-instance v8, Lgnu/kawa/slib/condition;

    .line 189
    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object v0, p0

    .local v0, arg0:Ljava/lang/Object;
    move-object v9, v7

    :goto_0
    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v0, v7, :cond_0

    .line 192
    invoke-static {v9}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v7

    invoke-direct {v8, v7}, Lgnu/kawa/slib/condition;-><init>(Ljava/lang/Object;)V

    return-object v8

    .line 189
    :cond_0
    :try_start_0
    check-cast v0, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, arg0:Lgnu/lists/Pair;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    .local v3, entry:Ljava/lang/Object;
    sget-object v7, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 190
    invoke-virtual {v7, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 191
    sget-object v7, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 195
    invoke-virtual {v7, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/kawa/slib/condition$Mntype;

    iget-object v0, v7, Lgnu/kawa/slib/condition$Mntype;->all$Mnfields:Ljava/lang/Object;

    .end local v0           #arg0:Lgnu/lists/Pair;
    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .local v0, arg0:Ljava/lang/Object;
    :goto_1
    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v0, v11, :cond_1

    .line 192
    invoke-static {v7}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v7

    invoke-static {v10, v7}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    invoke-static {v7, v9}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    .end local v0           #arg0:Ljava/lang/Object;
    .local v2, arg0:Ljava/lang/Object;
    .local v5, result:Lgnu/lists/Pair;
    move-object v9, v5

    move-object v0, v2

    .end local v2           #arg0:Ljava/lang/Object;
    .restart local v0       #arg0:Ljava/lang/Object;
    goto :goto_0

    .line 195
    .end local v5           #result:Lgnu/lists/Pair;
    :cond_1
    :try_start_1
    check-cast v0, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .local v0, arg0:Lgnu/lists/Pair;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    .line 192
    .local v4, field:Ljava/lang/Object;
    sget-object v11, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v11, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v4, v11}, Lkawa/lib/lists;->assq(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .local v6, x:Ljava/lang/Object;
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v11, :cond_2

    move-object v11, v6

    :goto_2
    invoke-static {v11, v7}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    .local v1, arg0:Ljava/lang/Object;
    .restart local v5       #result:Lgnu/lists/Pair;
    move-object v7, v5

    move-object v0, v1

    .end local v1           #arg0:Ljava/lang/Object;
    .local v0, arg0:Ljava/lang/Object;
    goto :goto_1

    .end local v5           #result:Lgnu/lists/Pair;
    .local v0, arg0:Lgnu/lists/Pair;
    :cond_2
    invoke-static {p0, v4}, Lgnu/kawa/slib/conditions;->typeFieldAlistRef(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v4, v11}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v11

    goto :goto_2

    .end local v3           #entry:Ljava/lang/Object;
    .end local v4           #field:Ljava/lang/Object;
    .end local v6           #x:Ljava/lang/Object;
    .local v0, arg0:Ljava/lang/Object;
    :catch_0
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    invoke-direct {v8, v7, v13, v12, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8

    .restart local v3       #entry:Ljava/lang/Object;
    :catch_1
    move-exception v7

    new-instance v8, Lgnu/mapping/WrongType;

    invoke-direct {v8, v7, v13, v12, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v8
.end method

.method static typeFieldAlistRef(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "type$Mnfield$Mnalist"
    .parameter "field"

    .prologue
    .line 148
    .line 150
    :goto_0
    invoke-static {p0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "type-field-alist-ref: field not found"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 156
    :goto_1
    return-object v1

    .line 150
    :cond_0
    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    sget-object v2, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 153
    invoke-virtual {v2, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lkawa/lib/lists;->assq(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 150
    .local v0, temp:Ljava/lang/Object;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1

    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 10000
    invoke-virtual {v1, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 156
    invoke-virtual {v1, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    .line 232
    :pswitch_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 56
    :pswitch_1
    invoke-static {p2}, Lgnu/kawa/slib/conditions;->isConditionType(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 111
    :pswitch_2
    invoke-static {p2}, Lgnu/kawa/slib/conditions;->isCondition(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 187
    :pswitch_3
    invoke-static {p2}, Lgnu/kawa/slib/conditions;->typeFieldAlist$To$Condition(Ljava/lang/Object;)Lgnu/kawa/slib/condition;

    move-result-object v0

    goto :goto_0

    .line 198
    :pswitch_4
    invoke-static {p2}, Lgnu/kawa/slib/conditions;->conditionTypes(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v0

    goto :goto_0

    .line 201
    :pswitch_5
    invoke-static {p2}, Lgnu/kawa/slib/conditions;->checkConditionTypeFieldAlist(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 225
    :pswitch_6
    invoke-static {p2}, Lgnu/kawa/slib/conditions;->isMessageCondition(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 226
    :pswitch_7
    invoke-static {p2}, Lgnu/kawa/slib/conditions;->conditionMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 229
    :pswitch_8
    invoke-static {p2}, Lgnu/kawa/slib/conditions;->isSeriousCondition(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 232
    :pswitch_9
    invoke-static {p2}, Lgnu/kawa/slib/conditions;->isError(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const-string v6, "extract-condition"

    const-string v5, "condition-subtype?"

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 163
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 88
    :pswitch_1
    :try_start_0
    check-cast p2, Lgnu/kawa/slib/condition$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    check-cast p3, Lgnu/kawa/slib/condition$Mntype;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2, p3}, Lgnu/kawa/slib/conditions;->isConditionSubtype(Lgnu/kawa/slib/condition$Mntype;Lgnu/kawa/slib/condition$Mntype;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 95
    :pswitch_2
    :try_start_2
    check-cast p2, Lgnu/kawa/slib/condition$Mntype;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {p2, p3}, Lgnu/kawa/slib/conditions;->conditionTypeFieldSupertype(Lgnu/kawa/slib/condition$Mntype;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 127
    :pswitch_3
    :try_start_3
    check-cast p3, Lgnu/kawa/slib/condition$Mntype;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {p2, p3}, Lgnu/kawa/slib/conditions;->isConditionHasType(Ljava/lang/Object;Lgnu/kawa/slib/condition$Mntype;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 144
    :pswitch_4
    :try_start_4
    check-cast p2, Lgnu/kawa/slib/condition;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static {p2, p3}, Lgnu/kawa/slib/conditions;->conditionRef(Lgnu/kawa/slib/condition;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 148
    :pswitch_5
    invoke-static {p2, p3}, Lgnu/kawa/slib/conditions;->typeFieldAlistRef(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 163
    :pswitch_6
    :try_start_5
    check-cast p2, Lgnu/kawa/slib/condition;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    :try_start_6
    check-cast p3, Lgnu/kawa/slib/condition$Mntype;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    invoke-static {p2, p3}, Lgnu/kawa/slib/conditions;->extractCondition(Lgnu/kawa/slib/condition;Lgnu/kawa/slib/condition$Mntype;)Lgnu/kawa/slib/condition;

    move-result-object v0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "condition-subtype?"

    invoke-direct {v1, v0, v5, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "condition-subtype?"

    invoke-direct {v1, v0, v5, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 95
    :catch_2
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "condition-type-field-supertype"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 127
    :catch_3
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "condition-has-type?"

    invoke-direct {v1, v0, v2, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 144
    :catch_4
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "condition-ref"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 163
    :catch_5
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "extract-condition"

    invoke-direct {v1, v0, v6, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 164
    :catch_6
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "extract-condition"

    invoke-direct {v1, v0, v6, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line -1
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v3, "make-condition-type"

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 59
    :try_start_0
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    check-cast p3, Lgnu/kawa/slib/condition$Mntype;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/conditions;->makeConditionType(Lgnu/mapping/Symbol;Lgnu/kawa/slib/condition$Mntype;Ljava/lang/Object;)Lgnu/kawa/slib/condition$Mntype;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "make-condition-type"

    const/4 v2, 0x1

    invoke-direct {v1, v0, v3, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 60
    :catch_1
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "make-condition-type"

    const/4 v2, 0x2

    invoke-direct {v1, v0, v3, v2, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 158
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 114
    :sswitch_0
    aget-object p0, p2, v1

    :try_start_0
    check-cast p0, Lgnu/kawa/slib/condition$Mntype;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v0, p2

    sub-int/2addr v0, v3

    new-array v1, v0, [Ljava/lang/Object;

    move-object v4, v1

    move v1, v0

    move-object v0, v4

    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_0

    invoke-static {p0, v0}, Lgnu/kawa/slib/conditions;->makeCondition$V(Lgnu/kawa/slib/condition$Mntype;[Ljava/lang/Object;)Lgnu/kawa/slib/condition;

    move-result-object v0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v1, 0x1

    aget-object v2, p2, v2

    aput-object v2, v0, v1

    goto :goto_1

    .line 158
    :sswitch_1
    aget-object v0, p2, v1

    array-length v1, p2

    sub-int/2addr v1, v3

    new-array v2, v1, [Ljava/lang/Object;

    move-object v4, v2

    move v2, v1

    move-object v1, v4

    :goto_2
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_1

    invoke-static {v0, v1}, Lgnu/kawa/slib/conditions;->makeCompoundCondition$V(Ljava/lang/Object;[Ljava/lang/Object;)Lgnu/kawa/slib/condition;

    move-result-object v0

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v2, 0x1

    aget-object v3, p2, v3

    aput-object v3, v1, v2

    goto :goto_2

    .line 114
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "make-condition"

    invoke-direct {v1, v0, v2, v3, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line -1
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
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

    .line 56
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 232
    :goto_0
    return v0

    :pswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 229
    :pswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 226
    :pswitch_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 225
    :pswitch_4
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 201
    :pswitch_5
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 198
    :pswitch_6
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 187
    :pswitch_7
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 111
    :pswitch_8
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 56
    :pswitch_9
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, -0xbfffe

    const v3, -0xbffff

    const/4 v2, 0x2

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 88
    :pswitch_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 163
    :goto_0
    return v0

    :pswitch_1
    instance-of v0, p2, Lgnu/kawa/slib/condition;

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/kawa/slib/condition$Mntype;

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 148
    :pswitch_2
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 144
    :pswitch_3
    instance-of v0, p2, Lgnu/kawa/slib/condition;

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 127
    :pswitch_4
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/kawa/slib/condition$Mntype;

    if-nez v0, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 95
    :pswitch_5
    instance-of v0, p2, Lgnu/kawa/slib/condition$Mntype;

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 88
    :pswitch_6
    instance-of v0, p2, Lgnu/kawa/slib/condition$Mntype;

    if-nez v0, :cond_5

    move v0, v3

    goto :goto_0

    :cond_5
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/kawa/slib/condition$Mntype;

    if-nez v0, :cond_6

    move v0, v4

    goto :goto_0

    :cond_6
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    if-ne v0, v1, :cond_2

    .line 59
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_0

    const v0, -0xbffff

    :goto_0
    return v0

    :cond_0
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/kawa/slib/condition$Mntype;

    if-nez v0, :cond_1

    const v0, -0xbfffe

    goto :goto_0

    :cond_1
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p5, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
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

    sparse-switch v0, :sswitch_data_0

    .line 114
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 158
    :goto_0
    return v0

    :sswitch_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 114
    :sswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 17
    .parameter "$ctx"

    .prologue
    move-object/from16 v0, p1

    iget-object v0, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v1, v0

    .line 28
    .local v1, $result:Lgnu/lists/Consumer;
    sget-object v11, Lgnu/kawa/slib/srfi1;->$instance:Lgnu/kawa/slib/srfi1;

    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    .line 36
    sget-object v4, Lgnu/kawa/slib/conditions;->condition$Mnsubtype$Qu:Lgnu/expr/ModuleMethod;

    .line 95
    .local v4, condition$Mnsubtype$Qu:Lgnu/mapping/Procedure;
    sget-object v5, Lgnu/kawa/slib/conditions;->condition$Mntype$Mnfield$Mnsupertype:Lgnu/expr/ModuleMethod;

    .line 106
    .local v5, condition$Mntype$Mnfield$Mnsupertype:Lgnu/mapping/Procedure;
    sget-object v10, Lgnu/kawa/slib/conditions;->type$Mnfield$Mnalist$Mnref:Lgnu/expr/ModuleMethod;

    .line 158
    .local v10, type$Mnfield$Mnalist$Mnref:Lgnu/mapping/Procedure;
    sget-object v11, Lgnu/kawa/slib/conditions;->$Prvt$type$Mnfield$Mnalist$Mn$Grcondition:Lgnu/expr/ModuleMethod;

    sput-object v11, Lgnu/kawa/slib/conditions;->$Prvt$type$Mnfield$Mnalist$Mn$Grcondition:Lgnu/expr/ModuleMethod;

    .line 198
    sget-object v6, Lgnu/kawa/slib/conditions;->condition$Mntypes:Lgnu/expr/ModuleMethod;

    .line 201
    .local v6, condition$Mntypes:Lgnu/mapping/Procedure;
    sget-object v2, Lgnu/kawa/slib/conditions;->check$Mncondition$Mntype$Mnfield$Mnalist:Lgnu/expr/ModuleMethod;

    .line 222
    .local v2, check$Mncondition$Mntype$Mnfield$Mnalist:Lgnu/mapping/Procedure;
    sget-object v11, Lgnu/kawa/slib/conditions;->$Amcondition:Lgnu/mapping/Location;

    new-instance v12, Lgnu/kawa/slib/condition$Mntype;

    sget-object v13, Lgnu/kawa/slib/conditions;->Lit0:Lgnu/mapping/SimpleSymbol;

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct/range {v12 .. v16}, Lgnu/kawa/slib/condition$Mntype;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v11, v12}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 224
    sget-object v11, Lgnu/kawa/slib/conditions;->$Ammessage:Lgnu/mapping/Location;

    sget-object v12, Lgnu/kawa/slib/conditions;->Lit1:Lgnu/mapping/SimpleSymbol;

    sget-object v13, Lgnu/kawa/slib/conditions;->$Amcondition:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v13}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .local v8, message$Mncondition$Qu:Lgnu/mapping/Procedure;
    :try_start_1
    check-cast v8, Lgnu/kawa/slib/condition$Mntype;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v8           #message$Mncondition$Qu:Lgnu/mapping/Procedure;
    sget-object v13, Lgnu/kawa/slib/conditions;->Lit2:Lgnu/lists/PairWithPosition;

    invoke-static {v12, v8, v13}, Lgnu/kawa/slib/conditions;->makeConditionType(Lgnu/mapping/Symbol;Lgnu/kawa/slib/condition$Mntype;Ljava/lang/Object;)Lgnu/kawa/slib/condition$Mntype;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    sget-object v8, Lgnu/kawa/slib/conditions;->message$Mncondition$Qu:Lgnu/expr/ModuleMethod;

    .restart local v8       #message$Mncondition$Qu:Lgnu/mapping/Procedure;
    sget-object v3, Lgnu/kawa/slib/conditions;->condition$Mnmessage:Lgnu/expr/ModuleMethod;

    .line 228
    .local v3, condition$Mnmessage:Lgnu/mapping/Procedure;
    sget-object v11, Lgnu/kawa/slib/conditions;->$Amserious:Lgnu/mapping/Location;

    sget-object v12, Lgnu/kawa/slib/conditions;->Lit4:Lgnu/mapping/SimpleSymbol;

    sget-object v13, Lgnu/kawa/slib/conditions;->$Amcondition:Lgnu/mapping/Location;

    :try_start_2
    invoke-virtual {v13}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_2
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v9

    .local v9, serious$Mncondition$Qu:Lgnu/mapping/Procedure;
    :try_start_3
    check-cast v9, Lgnu/kawa/slib/condition$Mntype;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v9           #serious$Mncondition$Qu:Lgnu/mapping/Procedure;
    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v12, v9, v13}, Lgnu/kawa/slib/conditions;->makeConditionType(Lgnu/mapping/Symbol;Lgnu/kawa/slib/condition$Mntype;Ljava/lang/Object;)Lgnu/kawa/slib/condition$Mntype;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    sget-object v9, Lgnu/kawa/slib/conditions;->serious$Mncondition$Qu:Lgnu/expr/ModuleMethod;

    .line 231
    .restart local v9       #serious$Mncondition$Qu:Lgnu/mapping/Procedure;
    sget-object v11, Lgnu/kawa/slib/conditions;->$Amerror:Lgnu/mapping/Location;

    sget-object v12, Lgnu/kawa/slib/conditions;->Lit5:Lgnu/mapping/SimpleSymbol;

    sget-object v13, Lgnu/kawa/slib/conditions;->$Amserious:Lgnu/mapping/Location;

    :try_start_4
    invoke-virtual {v13}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_4
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v7

    .local v7, error$Qu:Lgnu/mapping/Procedure;
    :try_start_5
    check-cast v7, Lgnu/kawa/slib/condition$Mntype;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    .end local v7           #error$Qu:Lgnu/mapping/Procedure;
    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v12, v7, v13}, Lgnu/kawa/slib/conditions;->makeConditionType(Lgnu/mapping/Symbol;Lgnu/kawa/slib/condition$Mntype;Ljava/lang/Object;)Lgnu/kawa/slib/condition$Mntype;

    move-result-object v12

    invoke-virtual {v11, v12}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    sget-object v7, Lgnu/kawa/slib/conditions;->error$Qu:Lgnu/expr/ModuleMethod;

    .restart local v7       #error$Qu:Lgnu/mapping/Procedure;
    return-void

    .end local v3           #condition$Mnmessage:Lgnu/mapping/Procedure;
    .end local v7           #error$Qu:Lgnu/mapping/Procedure;
    .end local v8           #message$Mncondition$Qu:Lgnu/mapping/Procedure;
    .end local v9           #serious$Mncondition$Qu:Lgnu/mapping/Procedure;
    :catch_0
    move-exception v11

    const-string v12, "conditions.scm"

    const/16 v13, 0xe0

    const/16 v14, 0x21

    invoke-virtual {v11, v12, v13, v14}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v11

    .line 224
    .restart local v8       #message$Mncondition$Qu:Lgnu/mapping/Procedure;
    :catch_1
    move-exception v11

    new-instance v12, Lgnu/mapping/WrongType;

    const-string v13, "make-condition-type"

    const/4 v14, 0x1

    invoke-direct {v12, v11, v13, v14, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v12

    .restart local v3       #condition$Mnmessage:Lgnu/mapping/Procedure;
    :catch_2
    move-exception v11

    const-string v12, "conditions.scm"

    const/16 v13, 0xe4

    const/16 v14, 0x21

    invoke-virtual {v11, v12, v13, v14}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v11

    .line 228
    .restart local v9       #serious$Mncondition$Qu:Lgnu/mapping/Procedure;
    :catch_3
    move-exception v11

    new-instance v12, Lgnu/mapping/WrongType;

    const-string v13, "make-condition-type"

    const/4 v14, 0x1

    invoke-direct {v12, v11, v13, v14, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v12

    :catch_4
    move-exception v11

    const-string v12, "conditions.scm"

    const/16 v13, 0xe7

    const/16 v14, 0x1f

    invoke-virtual {v11, v12, v13, v14}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v11

    .line 231
    .restart local v7       #error$Qu:Lgnu/mapping/Procedure;
    :catch_5
    move-exception v11

    new-instance v12, Lgnu/mapping/WrongType;

    const-string v13, "make-condition-type"

    const/4 v14, 0x1

    invoke-direct {v12, v11, v13, v14, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v12
.end method
