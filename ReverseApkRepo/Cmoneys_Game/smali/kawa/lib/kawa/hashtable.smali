.class public Lkawa/lib/kawa/hashtable;
.super Lgnu/expr/ModuleBody;
.source "hashtable.scm"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkawa/lib/kawa/hashtable$HashTable;
    }
.end annotation


# static fields
.field public static final $Prvt$do:Lgnu/kawa/reflect/FieldLocation;

.field public static final $Prvt$let$St:Lgnu/kawa/reflect/FieldLocation;

.field public static final $instance:Lkawa/lib/kawa/hashtable;

.field static final Lit0:Lgnu/math/IntNum;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lkawa/lang/SyntaxRules;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/math/IntNum;

.field static final hash$Mntable$Mnwalk$Pc:Lkawa/lang/Macro;

.field public static final hashtable:Ljava/lang/Class;

.field public static final hashtable$Mncheck$Mnmutable:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    .prologue
    const-string v0, "<gnu.kawa.util.HashNode>"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/kawa/hashtable;->Lit11:Lgnu/mapping/SimpleSymbol;

    const-string v0, "::"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/kawa/hashtable;->Lit10:Lgnu/mapping/SimpleSymbol;

    const/4 v0, 0x1

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lkawa/lib/kawa/hashtable;->Lit9:Lgnu/math/IntNum;

    const-string v0, "i"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/kawa/hashtable;->Lit8:Lgnu/mapping/SimpleSymbol;

    const-string v0, "-"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/kawa/hashtable;->Lit7:Lgnu/mapping/SimpleSymbol;

    const-string v0, "length"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/kawa/hashtable;->Lit6:Lgnu/mapping/SimpleSymbol;

    const-string v0, "table"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/kawa/hashtable;->Lit5:Lgnu/mapping/SimpleSymbol;

    const-string v0, "hashtable-check-mutable"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/kawa/hashtable;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lkawa/lang/SyntaxRules;

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "hash-table-walk%"

    invoke-static {v1}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v1

    sput-object v1, Lkawa/lib/kawa/hashtable;->Lit2:Lgnu/mapping/SimpleSymbol;

    aput-object v1, v7, v0

    const/4 v0, 0x1

    new-array v8, v0, [Lkawa/lang/SyntaxRule;

    const/4 v9, 0x0

    new-instance v0, Lkawa/lang/SyntaxRule;

    new-instance v1, Lkawa/lang/SyntaxPattern;

    const-string v2, "\u000c\u0018\u000c\u0007\u000c\u000f\u000c\u0017\u0008"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const-string v2, "\u0001\u0001\u0001"

    const-string v3, "\u0011\u0018\u0004aI\u0011\u0018\u000c\u0008\u0011\u0018\u0014\u0008\u0003\u0018\u001c\u0008\u0011\u0018$\u0011\u0018,\u0011\u00184\u0008\u0011\u0018$\u00b9\u0008\t\u000b\u0011\u0018<\u0011\u0018D\u0011\u0018L\u0008\u0011\u0018T\t\u0003\u0011\u0018\\\u0008\u000bQ9\u0011\u0018d\t\u000b\u0018l\u0018t\u0008\u0013"

    const/16 v4, 0xf

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v10, "let*"

    invoke-static {v10}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x1

    sget-object v10, Lkawa/lib/kawa/hashtable;->Lit5:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/4 v5, 0x2

    const-string v10, "$lookup$"

    invoke-static {v10}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v10

    const-string v11, "*"

    invoke-static {v11}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v11

    const-string v12, "quasiquote"

    invoke-static {v12}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v12

    const-string v13, ".table"

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

    const-string v12, "kawa/hashtable.scm"

    const v13, 0xa015

    invoke-static {v10, v11, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x3

    sget-object v10, Lkawa/lib/kawa/hashtable;->Lit6:Lgnu/mapping/SimpleSymbol;

    const-string v11, "primitive-array-length"

    invoke-static {v11}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v11

    sget-object v12, Lkawa/lib/kawa/hashtable;->Lit11:Lgnu/mapping/SimpleSymbol;

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v14, "kawa/hashtable.scm"

    const v15, 0xb027

    invoke-static {v12, v13, v14, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v12

    const-string v13, "kawa/hashtable.scm"

    const v14, 0xb00f

    invoke-static {v11, v12, v13, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v11

    sget-object v12, Lkawa/lib/kawa/hashtable;->Lit5:Lgnu/mapping/SimpleSymbol;

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v14, "kawa/hashtable.scm"

    const v15, 0xb041

    invoke-static {v12, v13, v14, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v12

    const-string v13, "kawa/hashtable.scm"

    const v14, 0xb00e

    invoke-static {v11, v12, v13, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v11

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v13, "kawa/hashtable.scm"

    const v14, 0xb00e

    invoke-static {v11, v12, v13, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v11

    const-string v12, "kawa/hashtable.scm"

    const v13, 0xb006

    invoke-static {v10, v11, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v12, "kawa/hashtable.scm"

    const v13, 0xb006

    invoke-static {v10, v11, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x4

    const-string v10, "do"

    invoke-static {v10}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x5

    sget-object v10, Lkawa/lib/kawa/hashtable;->Lit8:Lgnu/mapping/SimpleSymbol;

    sget-object v11, Lkawa/lib/kawa/hashtable;->Lit10:Lgnu/mapping/SimpleSymbol;

    const-string v12, "<int>"

    invoke-static {v12}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v12

    sget-object v13, Lkawa/lib/kawa/hashtable;->Lit7:Lgnu/mapping/SimpleSymbol;

    sget-object v14, Lkawa/lib/kawa/hashtable;->Lit6:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lkawa/lib/kawa/hashtable;->Lit9:Lgnu/math/IntNum;

    sget-object v16, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v17, "kawa/hashtable.scm"

    const v18, 0xc023

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    const-string v16, "kawa/hashtable.scm"

    const v17, 0xc01c

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    const-string v15, "kawa/hashtable.scm"

    const v16, 0xc019

    invoke-static/range {v13 .. v16}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v13

    sget-object v14, Lkawa/lib/kawa/hashtable;->Lit7:Lgnu/mapping/SimpleSymbol;

    sget-object v15, Lkawa/lib/kawa/hashtable;->Lit8:Lgnu/mapping/SimpleSymbol;

    sget-object v16, Lkawa/lib/kawa/hashtable;->Lit9:Lgnu/math/IntNum;

    sget-object v17, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v18, "kawa/hashtable.scm"

    const v19, 0xc02b

    invoke-static/range {v16 .. v19}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v16

    const-string v17, "kawa/hashtable.scm"

    const v18, 0xc029

    invoke-static/range {v15 .. v18}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v15

    const-string v16, "kawa/hashtable.scm"

    const v17, 0xc026

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v16, "kawa/hashtable.scm"

    const v17, 0xc026

    invoke-static/range {v14 .. v17}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v14

    const-string v15, "kawa/hashtable.scm"

    const v16, 0xc019

    invoke-static/range {v13 .. v16}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v13

    const-string v14, "kawa/hashtable.scm"

    const v15, 0xc013

    invoke-static {v12, v13, v14, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v12

    const-string v13, "kawa/hashtable.scm"

    const v14, 0xc010

    invoke-static {v11, v12, v13, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v11

    const-string v12, "kawa/hashtable.scm"

    const v13, 0xc00d

    invoke-static {v10, v11, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v12, "kawa/hashtable.scm"

    const v13, 0xc00c

    invoke-static {v10, v11, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x6

    const-string v10, "<"

    invoke-static {v10}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v10

    sget-object v11, Lkawa/lib/kawa/hashtable;->Lit8:Lgnu/mapping/SimpleSymbol;

    const/4 v12, 0x0

    invoke-static {v12}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v12

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v14, "kawa/hashtable.scm"

    const v15, 0xd00b

    invoke-static {v12, v13, v14, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v12

    const-string v13, "kawa/hashtable.scm"

    const v14, 0xd009

    invoke-static {v11, v12, v13, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v11

    const-string v12, "kawa/hashtable.scm"

    const v13, 0xd006

    invoke-static {v10, v11, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    sget-object v11, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v13, "kawa/hashtable.scm"

    const v14, 0xd00e

    invoke-static {v11, v12, v13, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v11

    const-string v12, "kawa/hashtable.scm"

    const v13, 0xd005

    invoke-static {v10, v11, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x7

    sget-object v10, Lkawa/lib/kawa/hashtable;->Lit10:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/16 v5, 0x8

    sget-object v10, Lkawa/lib/kawa/hashtable;->Lit11:Lgnu/mapping/SimpleSymbol;

    aput-object v10, v4, v5

    const/16 v5, 0x9

    const-string v10, "primitive-array-get"

    invoke-static {v10}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v10

    sget-object v11, Lkawa/lib/kawa/hashtable;->Lit11:Lgnu/mapping/SimpleSymbol;

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v13, "kawa/hashtable.scm"

    const v14, 0xf01d

    invoke-static {v11, v12, v13, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v11

    const-string v12, "kawa/hashtable.scm"

    const v13, 0xf008

    invoke-static {v10, v11, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    sget-object v11, Lkawa/lib/kawa/hashtable;->Lit5:Lgnu/mapping/SimpleSymbol;

    sget-object v12, Lkawa/lib/kawa/hashtable;->Lit8:Lgnu/mapping/SimpleSymbol;

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v14, "kawa/hashtable.scm"

    const v15, 0xf03d

    invoke-static {v12, v13, v14, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v12

    const-string v13, "kawa/hashtable.scm"

    const v14, 0xf037

    invoke-static {v11, v12, v13, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v11

    const-string v12, "kawa/hashtable.scm"

    const v13, 0xf007

    invoke-static {v10, v11, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    aput-object v10, v4, v5

    const/16 v5, 0xa

    const-string v10, "invoke"

    invoke-static {v10}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v10

    aput-object v10, v4, v5

    const/16 v5, 0xb

    const-string v10, "quote"

    invoke-static {v10}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v10

    const-string v11, "getEntryNext"

    invoke-static {v11}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v11

    sget-object v12, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v13, "kawa/hashtable.scm"

    const v14, 0x1001b

    invoke-static {v11, v12, v13, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v11

    const-string v12, "kawa/hashtable.scm"

    const v13, 0x1001b

    invoke-static {v10, v11, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    aput-object v10, v4, v5

    const/16 v5, 0xc

    const-string v10, "eq?"

    invoke-static {v10}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v10

    aput-object v10, v4, v5

    const/16 v5, 0xd

    const/4 v10, 0x0

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v12, "kawa/hashtable.scm"

    const v13, 0x11012

    invoke-static {v10, v11, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    aput-object v10, v4, v5

    const/16 v5, 0xe

    sget-object v10, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    sget-object v11, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v12, "kawa/hashtable.scm"

    const v13, 0x1101a

    invoke-static {v10, v11, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v0, v8, v9

    const/4 v0, 0x3

    invoke-direct {v6, v7, v8, v0}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v6, Lkawa/lib/kawa/hashtable;->Lit3:Lkawa/lang/SyntaxRules;

    const-string v0, "mutable"

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    sput-object v0, Lkawa/lib/kawa/hashtable;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v0, 0x64

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lkawa/lib/kawa/hashtable;->Lit0:Lgnu/math/IntNum;

    new-instance v0, Lkawa/lib/kawa/hashtable;

    invoke-direct {v0}, Lkawa/lib/kawa/hashtable;-><init>()V

    sput-object v0, Lkawa/lib/kawa/hashtable;->$instance:Lkawa/lib/kawa/hashtable;

    sget-object v0, Lkawa/lib/kawa/hashtable;->Lit2:Lgnu/mapping/SimpleSymbol;

    sget-object v1, Lkawa/lib/kawa/hashtable;->Lit3:Lkawa/lang/SyntaxRules;

    sget-object v2, Lkawa/lib/kawa/hashtable;->$instance:Lkawa/lib/kawa/hashtable;

    invoke-static {v0, v1, v2}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lkawa/lib/kawa/hashtable;->hash$Mntable$Mnwalk$Pc:Lkawa/lang/Macro;

    .line 4
    const-string v0, "kawa.lib.std_syntax"

    const-string v1, "let$St"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lkawa/lib/kawa/hashtable;->$Prvt$let$St:Lgnu/kawa/reflect/FieldLocation;

    const-string v0, "kawa.lib.std_syntax"

    const-string v1, "do"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lkawa/lib/kawa/hashtable;->$Prvt$do:Lgnu/kawa/reflect/FieldLocation;

    const-class v0, Lkawa/lib/kawa/hashtable$HashTable;

    sput-object v0, Lkawa/lib/kawa/hashtable;->hashtable:Ljava/lang/Class;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/kawa/hashtable;->$instance:Lkawa/lib/kawa/hashtable;

    const/4 v2, 0x1

    sget-object v3, Lkawa/lib/kawa/hashtable;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x1001

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/kawa/hashtable;->hashtable$Mncheck$Mnmutable:Lgnu/expr/ModuleMethod;

    sget-object v0, Lkawa/lib/kawa/hashtable;->$instance:Lkawa/lib/kawa/hashtable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static hashtableCheckMutable(Lkawa/lib/kawa/hashtable$HashTable;)V
    .locals 2
    .parameter "ht"

    .prologue
    .line 74
    iget-boolean v0, p0, Lkawa/lib/kawa/hashtable$HashTable;->mutable:Z

    if-nez v0, :cond_0

    const-string v0, "cannot modify non-mutable hashtable"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    if-ne v0, v3, :cond_0

    .line 74
    :try_start_0
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Lkawa/lib/kawa/hashtable;->hashtableCheckMutable(Lkawa/lib/kawa/hashtable$HashTable;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "hashtable-check-mutable"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    if-ne v0, v1, :cond_1

    .line 74
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_0

    const v0, -0xbffff

    :goto_0
    return v0

    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 2
    .parameter "$ctx"

    .prologue
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 3
    .local v0, $result:Lgnu/lists/Consumer;
    sget-object v1, Lkawa/lib/prim_syntax;->$instance:Lkawa/lib/prim_syntax;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 4
    sget-object v1, Lkawa/lib/std_syntax;->$instance:Lkawa/lib/std_syntax;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 5
    sget-object v1, Lkawa/lib/misc;->$instance:Lkawa/lib/misc;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 20
    return-void
.end method
