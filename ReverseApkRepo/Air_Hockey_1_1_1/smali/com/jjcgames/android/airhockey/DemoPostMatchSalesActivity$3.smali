.class Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity$3;
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
    iput-object p1, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity$3;->this$0:Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity$3;->this$0:Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity$3;->this$0:Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;

    .line 80
    const-class v3, Lcom/jjcgames/android/airhockey/MultitouchTestActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->startActivity(Landroid/content/Intent;)V

    .line 81
    return-void
.end method
