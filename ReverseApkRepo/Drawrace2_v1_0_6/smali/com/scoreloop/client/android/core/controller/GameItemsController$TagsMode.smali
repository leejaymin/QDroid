.class public final enum Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/GameItemsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TagsMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum REQUIRES_ALL_TAGS:Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation
.end field

.field public static final enum REQUIRES_ONE_OR_MORE_TAGS:Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation
.end field

.field private static final synthetic b:[Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;


# instance fields
.field a:Lcom/scoreloop/client/android/core/controller/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    new-instance v0, Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;

    const-string v1, "REQUIRES_ALL_TAGS"

    sget-object v2, Lcom/scoreloop/client/android/core/controller/d;->EXACT:Lcom/scoreloop/client/android/core/controller/d;

    invoke-direct {v0, v1, v3, v2}, Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;-><init>(Ljava/lang/String;ILcom/scoreloop/client/android/core/controller/d;)V

    sput-object v0, Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;->REQUIRES_ALL_TAGS:Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;

    .line 148
    new-instance v0, Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;

    const-string v1, "REQUIRES_ONE_OR_MORE_TAGS"

    sget-object v2, Lcom/scoreloop/client/android/core/controller/d;->EQUALS_ANY:Lcom/scoreloop/client/android/core/controller/d;

    invoke-direct {v0, v1, v4, v2}, Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;-><init>(Ljava/lang/String;ILcom/scoreloop/client/android/core/controller/d;)V

    sput-object v0, Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;->REQUIRES_ONE_OR_MORE_TAGS:Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;

    .line 137
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;

    sget-object v1, Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;->REQUIRES_ALL_TAGS:Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;->REQUIRES_ONE_OR_MORE_TAGS:Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;->b:[Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/scoreloop/client/android/core/controller/d;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/core/controller/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 157
    iput-object p3, p0, Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;->a:Lcom/scoreloop/client/android/core/controller/d;

    .line 158
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;
    .locals 1
    .parameter

    .prologue
    .line 137
    const-class v0, Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;->b:[Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/core/controller/GameItemsController$TagsMode;

    return-object v0
.end method
