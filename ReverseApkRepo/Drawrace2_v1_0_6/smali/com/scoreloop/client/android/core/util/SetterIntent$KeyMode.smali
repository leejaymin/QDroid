.class public final enum Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/util/SetterIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COERCE_NULL_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

.field public static final enum THROWS_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

.field public static final enum USE_NULL_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

.field private static final synthetic a:[Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    const-string v1, "COERCE_NULL_WHEN_NO_KEY"

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->COERCE_NULL_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    new-instance v0, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    const-string v1, "THROWS_WHEN_NO_KEY"

    invoke-direct {v0, v1, v3}, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->THROWS_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    new-instance v0, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    const-string v1, "USE_NULL_WHEN_NO_KEY"

    invoke-direct {v0, v1, v4}, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->USE_NULL_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->COERCE_NULL_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->THROWS_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->USE_NULL_WHEN_NO_KEY:Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->a:[Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;
    .locals 1
    .parameter

    .prologue
    .line 15
    const-class v0, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->a:[Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/core/util/SetterIntent$KeyMode;

    return-object v0
.end method
