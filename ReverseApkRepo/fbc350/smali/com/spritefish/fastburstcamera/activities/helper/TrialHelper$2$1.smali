.class Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$2$1;
.super Ljava/lang/Object;
.source "TrialHelper.java"

# interfaces
.implements Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$2;->action()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$2;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$2;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$2$1;->this$1:Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$2;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$2$1;->val$activity:Landroid/app/Activity;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$2$1;->val$activity:Landroid/app/Activity;

    const v1, 0x7f070037

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method