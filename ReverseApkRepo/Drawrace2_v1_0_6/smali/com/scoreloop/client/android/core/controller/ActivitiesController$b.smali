.class final enum Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/ActivitiesController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BUDDY:Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

.field public static final enum COMMUNITY:Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

.field public static final enum GAME:Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

.field public static final enum USER:Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

.field private static final synthetic a:[Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    new-instance v0, Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

    const-string v1, "BUDDY"

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;->BUDDY:Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

    new-instance v0, Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

    const-string v1, "COMMUNITY"

    invoke-direct {v0, v1, v3}, Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;->COMMUNITY:Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

    new-instance v0, Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

    const-string v1, "GAME"

    invoke-direct {v0, v1, v4}, Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;->GAME:Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

    new-instance v0, Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

    const-string v1, "USER"

    invoke-direct {v0, v1, v5}, Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;->USER:Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

    .line 107
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

    sget-object v1, Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;->BUDDY:Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;->COMMUNITY:Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;->GAME:Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;->USER:Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;->a:[Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

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
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;
    .locals 1
    .parameter

    .prologue
    .line 107
    const-class v0, Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;->a:[Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/core/controller/ActivitiesController$b;

    return-object v0
.end method
