.class public final enum Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/SocialProviderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LOAD:Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;

.field public static final enum SUBMIT:Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;

.field private static final synthetic a:[Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;

    const-string v1, "LOAD"

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;->LOAD:Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;

    new-instance v0, Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;

    const-string v1, "SUBMIT"

    invoke-direct {v0, v1, v3}, Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;->SUBMIT:Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;

    sget-object v1, Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;->LOAD:Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;->SUBMIT:Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;->a:[Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;
    .locals 1
    .parameter

    .prologue
    .line 59
    const-class v0, Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;->a:[Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;

    return-object v0
.end method
