.class Lgnu/expr/ClassExp$AbstractMethodFilter;
.super Ljava/lang/Object;
.source "ClassExp.java"

# interfaces
.implements Lgnu/bytecode/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/expr/ClassExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AbstractMethodFilter"
.end annotation


# static fields
.field public static final instance:Lgnu/expr/ClassExp$AbstractMethodFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 794
    new-instance v0, Lgnu/expr/ClassExp$AbstractMethodFilter;

    invoke-direct {v0}, Lgnu/expr/ClassExp$AbstractMethodFilter;-><init>()V

    sput-object v0, Lgnu/expr/ClassExp$AbstractMethodFilter;->instance:Lgnu/expr/ClassExp$AbstractMethodFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(Ljava/lang/Object;)Z
    .locals 3
    .parameter "value"

    .prologue
    .line 799
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/Method;

    move-object v1, v0

    .line 800
    .local v1, method:Lgnu/bytecode/Method;
    invoke-virtual {v1}, Lgnu/bytecode/Method;->isAbstract()Z

    move-result v2

    return v2
.end method
