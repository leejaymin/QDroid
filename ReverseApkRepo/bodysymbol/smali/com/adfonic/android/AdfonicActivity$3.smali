.class Lcom/adfonic/android/AdfonicActivity$3;
.super Ljava/lang/Object;
.source "AdfonicActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adfonic/android/AdfonicActivity;->setCompletionListener()V
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
    .line 277
    iput-object p1, p0, Lcom/adfonic/android/AdfonicActivity$3;->this$0:Lcom/adfonic/android/AdfonicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/adfonic/android/AdfonicActivity$3;->this$0:Lcom/adfonic/android/AdfonicActivity;

    #calls: Lcom/adfonic/android/AdfonicActivity;->startBrowserIfNecessary()V
    invoke-static {v0}, Lcom/adfonic/android/AdfonicActivity;->access$200(Lcom/adfonic/android/AdfonicActivity;)V

    .line 281
    return-void
.end method
