.class Lcom/stickycoding/rokon/RokonActivity$3;
.super Landroid/os/Handler;
.source "RokonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stickycoding/rokon/RokonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 551
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 554
    sget-object v0, Lcom/stickycoding/rokon/RokonActivity;->lastToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 555
    sget-object v0, Lcom/stickycoding/rokon/RokonActivity;->lastToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 557
    :cond_0
    invoke-static {}, Lcom/stickycoding/rokon/Rokon;->getActivity()Lcom/stickycoding/rokon/RokonActivity;

    move-result-object v0

    sget-object v1, Lcom/stickycoding/rokon/RokonActivity;->toastMessage:Ljava/lang/String;

    sget v2, Lcom/stickycoding/rokon/RokonActivity;->toastType:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/stickycoding/rokon/RokonActivity;->lastToast:Landroid/widget/Toast;

    .line 558
    sget-object v0, Lcom/stickycoding/rokon/RokonActivity;->lastToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 559
    return-void
.end method
