.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$4;
.super Ljava/lang/Object;
.source "RecorderActivity.java"

# interfaces
.implements Lcom/spritefish/fastburstcamera/activities/NewPictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$4;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewPicture(JJ)V
    .locals 1
    .parameter "burstid"
    .parameter "pictureid"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$4;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    invoke-virtual {v0, p3, p4}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->setLastPicId(J)V

    .line 429
    return-void
.end method
