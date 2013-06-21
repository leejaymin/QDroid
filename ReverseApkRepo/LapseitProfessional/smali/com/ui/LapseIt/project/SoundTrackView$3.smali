.class Lcom/ui/LapseIt/project/SoundTrackView$3;
.super Ljava/lang/Object;
.source "SoundTrackView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/ui/LapseIt/project/SoundTrackView$3;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 331
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 332
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView$3;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    invoke-static {v0}, Lui/utils/OrientationUtils;->unlockScreen(Landroid/app/Activity;)V

    .line 333
    return-void
.end method
