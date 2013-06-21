.class Lkr/co/medinbiz/widget/ultra/VidioView$2;
.super Ljava/lang/Object;
.source "VidioView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/ultra/VidioView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/ultra/VidioView;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/ultra/VidioView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/VidioView$2;->this$0:Lkr/co/medinbiz/widget/ultra/VidioView;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 73
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioView$2;->this$0:Lkr/co/medinbiz/widget/ultra/VidioView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/VidioView;->access$4(Lkr/co/medinbiz/widget/ultra/VidioView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 74
    return-void
.end method
