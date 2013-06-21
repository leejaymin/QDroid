.class Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$4$1;
.super Ljava/lang/Object;
.source "CollageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$4;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$4$1;->this$2:Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$4;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$4$1;->this$2:Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$4;

    #getter for: Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$4;->this$1:Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$4;->access$0(Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker$4;)Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;

    move-result-object v0

    #getter for: Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->this$0:Lcom/spritefish/fastburstcamera/activities/CollageActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;->access$2(Lcom/spritefish/fastburstcamera/activities/CollageActivity$CollageWorker;)Lcom/spritefish/fastburstcamera/activities/CollageActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/activities/CollageActivity;->finish()V

    .line 283
    return-void
.end method
