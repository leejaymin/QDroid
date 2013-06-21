.class Lcom/spritefish/fastburstcamera/activities/CollageActivity$1$1;
.super Ljava/lang/Object;
.source "CollageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/CollageActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spritefish/fastburstcamera/activities/CollageActivity$1;

.field private final synthetic val$ef:Lcom/spritefish/fastburstcamera/collage/effects/Effect;

.field private final synthetic val$qa:Lcom/spritefish/fastburstcamera/controls/QuickAction;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/CollageActivity$1;Lcom/spritefish/fastburstcamera/collage/effects/Effect;Lcom/spritefish/fastburstcamera/controls/QuickAction;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$1$1;->this$1:Lcom/spritefish/fastburstcamera/activities/CollageActivity$1;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$1$1;->val$ef:Lcom/spritefish/fastburstcamera/collage/effects/Effect;

    iput-object p3, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$1$1;->val$qa:Lcom/spritefish/fastburstcamera/controls/QuickAction;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 107
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$1$1;->this$1:Lcom/spritefish/fastburstcamera/activities/CollageActivity$1;

    #getter for: Lcom/spritefish/fastburstcamera/activities/CollageActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/CollageActivity$1;->access$0(Lcom/spritefish/fastburstcamera/activities/CollageActivity$1;)Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$1$1;->val$ef:Lcom/spritefish/fastburstcamera/collage/effects/Effect;

    #setter for: Lcom/spritefish/fastburstcamera/activities/CollageActivity;->selectedEffect:Lcom/spritefish/fastburstcamera/collage/effects/Effect;
    invoke-static {v1, v2}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->access$6(Lcom/spritefish/fastburstcamera/activities/CollageActivity;Lcom/spritefish/fastburstcamera/collage/effects/Effect;)V

    .line 108
    new-instance v0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$1$1;->this$1:Lcom/spritefish/fastburstcamera/activities/CollageActivity$1;

    #getter for: Lcom/spritefish/fastburstcamera/activities/CollageActivity$1;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/CollageActivity$1;->access$0(Lcom/spritefish/fastburstcamera/activities/CollageActivity$1;)Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;-><init>(Lcom/spritefish/fastburstcamera/activities/CollageActivity;Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;)V

    .line 109
    .local v0, t:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$1$1;->val$qa:Lcom/spritefish/fastburstcamera/controls/QuickAction;

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->dismiss()V

    .line 110
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 111
    return-void
.end method
