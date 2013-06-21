.class Lcom/spritefish/fastburstcamera/activities/helper/PromotionHelper$1;
.super Ljava/lang/Object;
.source "PromotionHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/helper/PromotionHelper;->showCurrentPromotion(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/helper/PromotionHelper;

.field private final synthetic val$caller:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/helper/PromotionHelper;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/helper/PromotionHelper$1;->this$0:Lcom/spritefish/fastburstcamera/activities/helper/PromotionHelper;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/helper/PromotionHelper$1;->val$caller:Landroid/app/Activity;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.spritefish.fastburstcamera"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 47
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/helper/PromotionHelper$1;->val$caller:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 49
    return-void
.end method
