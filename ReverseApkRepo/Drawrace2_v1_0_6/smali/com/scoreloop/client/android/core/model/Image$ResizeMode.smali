.class public final enum Lcom/scoreloop/client/android/core/model/Image$ResizeMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/model/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResizeMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/core/model/Image$ResizeMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CROP:Lcom/scoreloop/client/android/core/model/Image$ResizeMode;

.field private static final synthetic a:[Lcom/scoreloop/client/android/core/model/Image$ResizeMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    new-instance v0, Lcom/scoreloop/client/android/core/model/Image$ResizeMode;

    const-string v1, "CROP"

    invoke-direct {v0, v1}, Lcom/scoreloop/client/android/core/model/Image$ResizeMode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/Image$ResizeMode;->CROP:Lcom/scoreloop/client/android/core/model/Image$ResizeMode;

    .line 13
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/scoreloop/client/android/core/model/Image$ResizeMode;

    const/4 v1, 0x0

    sget-object v2, Lcom/scoreloop/client/android/core/model/Image$ResizeMode;->CROP:Lcom/scoreloop/client/android/core/model/Image$ResizeMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/scoreloop/client/android/core/model/Image$ResizeMode;->a:[Lcom/scoreloop/client/android/core/model/Image$ResizeMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Image$ResizeMode;
    .locals 1
    .parameter

    .prologue
    .line 13
    const-class v0, Lcom/scoreloop/client/android/core/model/Image$ResizeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Image$ResizeMode;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/core/model/Image$ResizeMode;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/scoreloop/client/android/core/model/Image$ResizeMode;->a:[Lcom/scoreloop/client/android/core/model/Image$ResizeMode;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/core/model/Image$ResizeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/core/model/Image$ResizeMode;

    return-object v0
.end method
