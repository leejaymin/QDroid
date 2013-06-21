.class Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity$2;
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
    iput-object p1, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity$2;->this$0:Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity$2;->this$0:Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 63
    const-string v3, "market://search?q=pname:com.jjcgames.android.airhockey"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->startActivity(Landroid/content/Intent;)V

    .line 64
    return-void
.end method
