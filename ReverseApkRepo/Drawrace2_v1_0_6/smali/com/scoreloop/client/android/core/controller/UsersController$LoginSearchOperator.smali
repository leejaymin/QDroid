.class public final enum Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lcom/scoreloop/client/android/core/PublishedFor__1_0_0;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/UsersController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoginSearchOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EXACT_MATCH:Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;

.field public static final enum PREFIX:Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;

.field private static final synthetic a:[Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-instance v0, Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;

    const-string v1, "EXACT_MATCH"

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;->EXACT_MATCH:Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;

    .line 77
    new-instance v0, Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;

    const-string v1, "PREFIX"

    invoke-direct {v0, v1, v3}, Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;->PREFIX:Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;

    sget-object v1, Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;->EXACT_MATCH:Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;->PREFIX:Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;

    aput-object v1, v0, v3

    sput-object v0, Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;->a:[Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;
    .locals 1
    .parameter

    .prologue
    .line 74
    const-class v0, Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;->a:[Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/core/controller/UsersController$LoginSearchOperator;

    return-object v0
.end method
