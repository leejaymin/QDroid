.class public final enum Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;
.super Ljava/lang/Enum;
.source "ScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;

.field public static final enum BACKWARD:Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;

.field public static final enum FORWARD:Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;

.field public static final enum NONE:Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;

    const-string v1, "FORWARD"

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;->FORWARD:Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;

    new-instance v0, Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;

    const-string v1, "BACKWARD"

    invoke-direct {v0, v1, v3}, Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;->BACKWARD:Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;

    new-instance v0, Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;->NONE:Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;->FORWARD:Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;->BACKWARD:Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;->NONE:Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;->$VALUES:[Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;
    .locals 1
    .parameter "name"

    .prologue
    .line 28
    const-class v0, Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;->$VALUES:[Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/ui/framework/ScreenManager$Delegate$Direction;

    return-object v0
.end method
