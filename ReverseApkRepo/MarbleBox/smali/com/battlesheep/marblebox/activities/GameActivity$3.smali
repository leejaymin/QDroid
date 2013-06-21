.class Lcom/battlesheep/marblebox/activities/GameActivity$3;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/battlesheep/marblebox/activities/GameActivity;->pause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/battlesheep/marblebox/activities/GameActivity;


# direct methods
.method constructor <init>(Lcom/battlesheep/marblebox/activities/GameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/battlesheep/marblebox/activities/GameActivity$3;->this$0:Lcom/battlesheep/marblebox/activities/GameActivity;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 255
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/GameActivity$3;->this$0:Lcom/battlesheep/marblebox/activities/GameActivity;

    #getter for: Lcom/battlesheep/marblebox/activities/GameActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/battlesheep/marblebox/activities/GameActivity;->access$0(Lcom/battlesheep/marblebox/activities/GameActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/GameActivity$3;->this$0:Lcom/battlesheep/marblebox/activities/GameActivity;

    #getter for: Lcom/battlesheep/marblebox/activities/GameActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/battlesheep/marblebox/activities/GameActivity;->access$0(Lcom/battlesheep/marblebox/activities/GameActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/battlesheep/marblebox/activities/GameActivity$3;->this$0:Lcom/battlesheep/marblebox/activities/GameActivity;

    const v1, 0x7f060009

    const v2, 0x7f06000a

    const/4 v3, 0x0

    #calls: Lcom/battlesheep/marblebox/activities/GameActivity;->showMessage(IIZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/battlesheep/marblebox/activities/GameActivity;->access$1(Lcom/battlesheep/marblebox/activities/GameActivity;IIZ)V

    .line 260
    return-void
.end method
