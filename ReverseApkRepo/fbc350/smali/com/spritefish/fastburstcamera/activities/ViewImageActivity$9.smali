.class Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$9;
.super Ljava/lang/Object;
.source "ViewImageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->onNewPicture(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity$9;->this$0:Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;

    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/activities/ViewImageActivity;->updateBurstInfo()V

    .line 791
    return-void
.end method
