.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$1;
.super Ljava/lang/Object;
.source "RecorderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 305
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=com.spritefish.fastburstcamera"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 306
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    invoke-virtual {v1, v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->startActivity(Landroid/content/Intent;)V

    .line 307
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->finish()V

    .line 308
    return-void
.end method
