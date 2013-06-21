.class synthetic Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$3;
.super Ljava/lang/Object;
.source "UserHeaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$scoreloop$client$android$ui$component$user$UserHeaderActivity$ControlMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 117
    invoke-static {}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;->values()[Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$3;->$SwitchMap$com$scoreloop$client$android$ui$component$user$UserHeaderActivity$ControlMode:[I

    :try_start_0
    sget-object v0, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$3;->$SwitchMap$com$scoreloop$client$android$ui$component$user$UserHeaderActivity$ControlMode:[I

    sget-object v1, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;->PROFILE:Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/component/user/UserHeaderActivity$ControlMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
