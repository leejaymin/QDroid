.class Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1$2;
.super Ljava/lang/Object;
.source "TrialHelper.java"

# interfaces
.implements Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1;

.field private final synthetic val$c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1$2;->this$1:Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1$2;->val$c:Landroid/app/Activity;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 3

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.spritefish.fastburstcamera"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 151
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1$2;->val$c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 154
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1$2;->val$c:Landroid/app/Activity;

    const v1, 0x7f07006d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
