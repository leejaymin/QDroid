.class Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity$4;
.super Ljava/lang/Object;
.source "DemoPostMatchSalesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;


# direct methods
.method constructor <init>(Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity$4;->this$0:Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity$4;->this$0:Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;

    const-string v1, "state"

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->deleteFile(Ljava/lang/String;)Z

    .line 89
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity$4;->this$0:Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;

    const/4 v1, 0x1

    #setter for: Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->movingOn:Z
    invoke-static {v0, v1}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->access$1(Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;Z)V

    .line 90
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity$4;->this$0:Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;

    invoke-virtual {v0}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->finish()V

    .line 91
    return-void
.end method
