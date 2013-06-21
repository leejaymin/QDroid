.class Lkr/co/medinbiz/widget/ultra/PhotoView$6;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/ultra/PhotoView;->feed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/ultra/PhotoView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$6;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$6;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    #calls: Lkr/co/medinbiz/widget/ultra/PhotoView;->write()V
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/PhotoView;->access$9(Lkr/co/medinbiz/widget/ultra/PhotoView;)V

    .line 399
    return-void
.end method
