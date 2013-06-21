.class Lcom/wareone/tappmt/TapPMT$5;
.super Ljava/lang/Object;
.source "TapPMT.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/TapPMT;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/TapPMT;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/TapPMT;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/TapPMT$5;->this$0:Lcom/wareone/tappmt/TapPMT;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT$5;->this$0:Lcom/wareone/tappmt/TapPMT;

    #calls: Lcom/wareone/tappmt/TapPMT;->_getTemplate()V
    invoke-static {v0}, Lcom/wareone/tappmt/TapPMT;->access$14(Lcom/wareone/tappmt/TapPMT;)V

    .line 357
    return-void
.end method
