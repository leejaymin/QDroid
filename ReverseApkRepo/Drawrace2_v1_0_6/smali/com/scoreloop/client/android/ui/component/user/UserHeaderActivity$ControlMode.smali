.class public final enum Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;
.super Ljava/lang/Enum;
.source "UserHeaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ControlMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

.field public static final enum BLANK:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

.field public static final enum BUDDY:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

.field public static final enum PROFILE:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    const-string v1, "BLANK"

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;->BLANK:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    new-instance v0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    const-string v1, "BUDDY"

    invoke-direct {v0, v1, v3}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;->BUDDY:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    new-instance v0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    const-string v1, "PROFILE"

    invoke-direct {v0, v1, v4}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;->PROFILE:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    sget-object v1, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;->BLANK:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;->BUDDY:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;->PROFILE:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;->$VALUES:[Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 49
    const-class v0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;->$VALUES:[Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    return-object v0
.end method
