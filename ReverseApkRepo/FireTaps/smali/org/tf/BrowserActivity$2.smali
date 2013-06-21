.class Lorg/tf/BrowserActivity$2;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/tf/BrowserActivity;->reportLoadingFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/tf/BrowserActivity;


# direct methods
.method constructor <init>(Lorg/tf/BrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/tf/BrowserActivity$2;->this$0:Lorg/tf/BrowserActivity;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lorg/tf/BrowserActivity$2;->this$0:Lorg/tf/BrowserActivity;

    #calls: Lorg/tf/BrowserActivity;->onLoadingFinished()V
    invoke-static {v0}, Lorg/tf/BrowserActivity;->access$7(Lorg/tf/BrowserActivity;)V

    .line 327
    return-void
.end method
