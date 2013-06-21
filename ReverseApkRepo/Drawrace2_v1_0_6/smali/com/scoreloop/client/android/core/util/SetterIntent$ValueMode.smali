.class public final enum Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/util/SetterIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALLOWS_AND_COERCES_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

.field public static final enum ALLOWS_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

.field public static final enum REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

.field private static final synthetic a:[Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    const-string v1, "ALLOWS_AND_COERCES_NULL_VALUE"

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->ALLOWS_AND_COERCES_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    new-instance v0, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    const-string v1, "ALLOWS_NULL_VALUE"

    invoke-direct {v0, v1, v3}, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->ALLOWS_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    new-instance v0, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    const-string v1, "REQUIRES_NON_NULL_VALUE"

    invoke-direct {v0, v1, v4}, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->ALLOWS_AND_COERCES_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->ALLOWS_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->REQUIRES_NON_NULL_VALUE:Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->a:[Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;
    .locals 1
    .parameter

    .prologue
    .line 19
    const-class v0, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->a:[Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/core/util/SetterIntent$ValueMode;

    return-object v0
.end method
