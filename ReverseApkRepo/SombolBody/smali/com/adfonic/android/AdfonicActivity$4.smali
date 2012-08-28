.class Lcom/adfonic/android/AdfonicActivity$4;
.super Ljava/lang/Object;
.source "AdfonicActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adfonic/android/AdfonicActivity;->setErrorListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adfonic/android/AdfonicActivity;


# direct methods
.method constructor <init>(Lcom/adfonic/android/AdfonicActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/adfonic/android/AdfonicActivity$4;->this$0:Lcom/adfonic/android/AdfonicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/adfonic/android/AdfonicActivity$4;->this$0:Lcom/adfonic/android/AdfonicActivity;

    #getter for: Lcom/adfonic/android/AdfonicActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/adfonic/android/AdfonicActivity;->access$300(Lcom/adfonic/android/AdfonicActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adfonic/android/AdfonicActivity$4$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/adfonic/android/AdfonicActivity$4$1;-><init>(Lcom/adfonic/android/AdfonicActivity$4;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 297
    const/4 v0, 0x1

    return v0
.end method
