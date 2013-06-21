.class Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity$1;
.super Ljava/lang/Object;
.source "DemoPostMatchSalesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->tick()V
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
    iput-object p1, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity$1;->this$0:Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity$1;->this$0:Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;

    #calls: Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->tick()V
    invoke-static {v0}, Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;->access$0(Lcom/jjcgames/android/airhockey/DemoPostMatchSalesActivity;)V

    .line 41
    return-void
.end method
