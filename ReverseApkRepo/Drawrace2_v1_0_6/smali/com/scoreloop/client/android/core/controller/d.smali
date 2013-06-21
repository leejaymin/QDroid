.class final enum Lcom/scoreloop/client/android/core/controller/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/core/controller/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BEGINS_WITH:Lcom/scoreloop/client/android/core/controller/d;

.field public static final enum EQUALS_ANY:Lcom/scoreloop/client/android/core/controller/d;

.field public static final enum EXACT:Lcom/scoreloop/client/android/core/controller/d;

.field public static final enum IS:Lcom/scoreloop/client/android/core/controller/d;

.field public static final enum IS_GREATER:Lcom/scoreloop/client/android/core/controller/d;

.field public static final enum IS_LESS:Lcom/scoreloop/client/android/core/controller/d;

.field public static final enum IS_NOT:Lcom/scoreloop/client/android/core/controller/d;

.field public static final enum LIKE:Lcom/scoreloop/client/android/core/controller/d;

.field private static final synthetic c:[Lcom/scoreloop/client/android/core/controller/d;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5
    new-instance v0, Lcom/scoreloop/client/android/core/controller/d;

    const-string v1, "EXACT"

    const/4 v2, 0x0

    const-string v3, "exact match"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/scoreloop/client/android/core/controller/d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/controller/d;->EXACT:Lcom/scoreloop/client/android/core/controller/d;

    new-instance v0, Lcom/scoreloop/client/android/core/controller/d;

    const-string v1, "LIKE"

    const-string v2, "like"

    const-string v3, "pattern match"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/scoreloop/client/android/core/controller/d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/controller/d;->LIKE:Lcom/scoreloop/client/android/core/controller/d;

    new-instance v0, Lcom/scoreloop/client/android/core/controller/d;

    const-string v1, "BEGINS_WITH"

    const-string v2, "begins_with"

    const-string v3, "string begins with given value"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/scoreloop/client/android/core/controller/d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/controller/d;->BEGINS_WITH:Lcom/scoreloop/client/android/core/controller/d;

    new-instance v0, Lcom/scoreloop/client/android/core/controller/d;

    const-string v1, "IS"

    const-string v2, "equals"

    const-string v3, "is"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/scoreloop/client/android/core/controller/d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/controller/d;->IS:Lcom/scoreloop/client/android/core/controller/d;

    .line 6
    new-instance v0, Lcom/scoreloop/client/android/core/controller/d;

    const-string v1, "IS_GREATER"

    const-string v2, "greater_than"

    const-string v3, "is greater than"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/scoreloop/client/android/core/controller/d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/controller/d;->IS_GREATER:Lcom/scoreloop/client/android/core/controller/d;

    new-instance v0, Lcom/scoreloop/client/android/core/controller/d;

    const-string v1, "IS_LESS"

    const/4 v2, 0x5

    const-string v3, "less_than"

    const-string v4, "is less than"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scoreloop/client/android/core/controller/d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/controller/d;->IS_LESS:Lcom/scoreloop/client/android/core/controller/d;

    new-instance v0, Lcom/scoreloop/client/android/core/controller/d;

    const-string v1, "IS_NOT"

    const/4 v2, 0x6

    const-string v3, "does_not_equal"

    const-string v4, "is not"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scoreloop/client/android/core/controller/d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/controller/d;->IS_NOT:Lcom/scoreloop/client/android/core/controller/d;

    new-instance v0, Lcom/scoreloop/client/android/core/controller/d;

    const-string v1, "EQUALS_ANY"

    const/4 v2, 0x7

    const-string v3, "equals_any"

    const-string v4, "equals any"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/scoreloop/client/android/core/controller/d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/controller/d;->EQUALS_ANY:Lcom/scoreloop/client/android/core/controller/d;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/scoreloop/client/android/core/controller/d;

    sget-object v1, Lcom/scoreloop/client/android/core/controller/d;->EXACT:Lcom/scoreloop/client/android/core/controller/d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/scoreloop/client/android/core/controller/d;->LIKE:Lcom/scoreloop/client/android/core/controller/d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/scoreloop/client/android/core/controller/d;->BEGINS_WITH:Lcom/scoreloop/client/android/core/controller/d;

    aput-object v1, v0, v7

    sget-object v1, Lcom/scoreloop/client/android/core/controller/d;->IS:Lcom/scoreloop/client/android/core/controller/d;

    aput-object v1, v0, v8

    sget-object v1, Lcom/scoreloop/client/android/core/controller/d;->IS_GREATER:Lcom/scoreloop/client/android/core/controller/d;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/scoreloop/client/android/core/controller/d;->IS_LESS:Lcom/scoreloop/client/android/core/controller/d;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/scoreloop/client/android/core/controller/d;->IS_NOT:Lcom/scoreloop/client/android/core/controller/d;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/scoreloop/client/android/core/controller/d;->EQUALS_ANY:Lcom/scoreloop/client/android/core/controller/d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/scoreloop/client/android/core/controller/d;->c:[Lcom/scoreloop/client/android/core/controller/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/scoreloop/client/android/core/controller/d;->b:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lcom/scoreloop/client/android/core/controller/d;->a:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/controller/d;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/scoreloop/client/android/core/controller/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/controller/d;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/core/controller/d;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/scoreloop/client/android/core/controller/d;->c:[Lcom/scoreloop/client/android/core/controller/d;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/core/controller/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/core/controller/d;

    return-object v0
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/d;->b:Ljava/lang/String;

    return-object v0
.end method
