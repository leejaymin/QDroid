.class Lcom/ui/LapseIt/project/SoundTrackView$7;
.super Ljava/lang/Object;
.source "SoundTrackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/project/SoundTrackView;->analyzeTrackHandler()V
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
    iput-object p1, p0, Lcom/ui/LapseIt/project/SoundTrackView$7;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView$7;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    sget-object v1, Lcom/ui/LapseIt/project/ProjectView;->audioFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ui/LapseIt/project/SoundTrackView$7;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    invoke-virtual {v2}, Lcom/ui/LapseIt/project/SoundTrackView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    #calls: Lcom/ui/LapseIt/project/SoundTrackView;->requestAudioSpectrum(Ljava/lang/String;I)I
    invoke-static {v0, v1, v2}, Lcom/ui/LapseIt/project/SoundTrackView;->access$12(Lcom/ui/LapseIt/project/SoundTrackView;Ljava/lang/String;I)I

    .line 319
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView$7;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->progressAnalyze:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/ui/LapseIt/project/SoundTrackView;->access$13(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView$7;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    #getter for: Lcom/ui/LapseIt/project/SoundTrackView;->progressAnalyze:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/ui/LapseIt/project/SoundTrackView;->access$13(Lcom/ui/LapseIt/project/SoundTrackView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 321
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView$7;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    const/4 v1, 0x0

    #setter for: Lcom/ui/LapseIt/project/SoundTrackView;->progressAnalyze:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/ui/LapseIt/project/SoundTrackView;->access$14(Lcom/ui/LapseIt/project/SoundTrackView;Landroid/app/ProgressDialog;)V

    .line 322
    iget-object v0, p0, Lcom/ui/LapseIt/project/SoundTrackView$7;->this$0:Lcom/ui/LapseIt/project/SoundTrackView;

    invoke-static {v0}, Lui/utils/OrientationUtils;->unlockScreen(Landroid/app/Activity;)V

    .line 324
    :cond_0
    return-void
.end method
