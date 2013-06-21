.class public Lcom/google/devtools/simple/runtime/components/util/YailConstants;
.super Ljava/lang/Object;
.source "YailConstants.java"


# static fields
.field public static final YAIL_HEADER:Lgnu/mapping/SimpleSymbol;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "*list*"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/devtools/simple/runtime/components/util/YailConstants;->YAIL_HEADER:Lgnu/mapping/SimpleSymbol;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method
