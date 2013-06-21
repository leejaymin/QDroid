.class Lcom/ui/LapseIt/project/SoundTrackView$6;
.super Ljava/lang/Object;
.source "SoundTrackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/project/SoundTrackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/project/SoundTrackView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/project/SoundTrackView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/project/SoundTrackView$6;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView$6;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->soundLine:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/ui/LapseIt/project/SoundTrackView;->access$10(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/ui/LapseIt/project/SoundTrackView$6;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->lineParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v1}, Lcom/ui/LapseIt/project/SoundTrackView;->access$11(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 647
    return-void
.end method
