.class public Lgnu/kawa/xml/MakeUnescapedData;
.super Lgnu/mapping/Procedure1;
.source "MakeUnescapedData.java"

# interfaces
.implements Lgnu/expr/CanInline;


# static fields
.field public static final unescapedData:Lgnu/kawa/xml/MakeUnescapedData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lgnu/kawa/xml/MakeUnescapedData;

    invoke-direct {v0}, Lgnu/kawa/xml/MakeUnescapedData;-><init>()V

    sput-object v0, Lgnu/kawa/xml/MakeUnescapedData;->unescapedData:Lgnu/kawa/xml/MakeUnescapedData;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "arg"

    .prologue
    .line 13
    new-instance v0, Lgnu/lists/UnescapedData;

    if-nez p1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-direct {v0, v1}, Lgnu/lists/UnescapedData;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public inline(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Z)Lgnu/expr/Expression;
    .locals 4
    .parameter "exp"
    .parameter "walker"
    .parameter "argsInlined"

    .prologue
    const/4 v3, 0x0

    .line 19
    invoke-virtual {p1, p2, p3}, Lgnu/expr/ApplyExp;->walkArgs(Lgnu/expr/ExpWalker;Z)V

    .line 20
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 21
    .local v0, args:[Lgnu/expr/Expression;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    aget-object v1, v0, v3

    instance-of v1, v1, Lgnu/expr/QuoteExp;

    if-eqz v1, :cond_0

    .line 22
    new-instance v2, Lgnu/expr/QuoteExp;

    aget-object v1, v0, v3

    check-cast v1, Lgnu/expr/QuoteExp;

    invoke-virtual {v1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/kawa/xml/MakeUnescapedData;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v2, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v1, v2

    .line 23
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p1

    goto :goto_0
.end method
