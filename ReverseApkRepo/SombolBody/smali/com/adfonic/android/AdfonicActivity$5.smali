.class Lcom/adfonic/android/AdfonicActivity$5;
.super Ljava/lang/Object;
.source "AdfonicActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adfonic/android/AdfonicActivity;->prepareVideo(Landroid/widget/MediaController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adfonic/android/AdfonicActivity;

.field final synthetic val$mediaController:Landroid/widget/MediaController;


# direct methods
.method constructor <init>(Lcom/adfonic/android/AdfonicActivity;Landroid/widget/MediaController;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/adfonic/android/AdfonicActivity$5;->this$0:Lcom/adfonic/android/AdfonicActivity;

    iput-object p2, p0, Lcom/adfonic/android/AdfonicActivity$5;->val$mediaController:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/adfonic/android/AdfonicActivity$5;->this$0:Lcom/adfonic/android/AdfonicActivity;

    #getter for: Lcom/adfonic/android/AdfonicActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/adfonic/android/AdfonicActivity;->access$300(Lcom/adfonic/android/AdfonicActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adfonic/android/AdfonicActivity$5$1;

    invoke-direct {v1, p0}, Lcom/adfonic/android/AdfonicActivity$5$1;-><init>(Lcom/adfonic/android/AdfonicActivity$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 320
    return-void
.end method
