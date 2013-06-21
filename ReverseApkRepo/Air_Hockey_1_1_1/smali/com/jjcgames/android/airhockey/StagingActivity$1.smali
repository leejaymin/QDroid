.class Lcom/jjcgames/android/airhockey/StagingActivity$1;
.super Ljava/lang/Object;
.source "StagingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjcgames/android/airhockey/StagingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jjcgames/android/airhockey/StagingActivity;


# direct methods
.method constructor <init>(Lcom/jjcgames/android/airhockey/StagingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jjcgames/android/airhockey/StagingActivity$1;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/StagingActivity$1;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    new-instance v1, Landroid/content/Intent;

    .line 138
    iget-object v2, p0, Lcom/jjcgames/android/airhockey/StagingActivity$1;->this$0:Lcom/jjcgames/android/airhockey/StagingActivity;

    const-class v3, Lcom/jjcgames/android/airhockey/MultitouchTestActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/StagingActivity;->startActivity(Landroid/content/Intent;)V

    .line 139
    return-void
.end method
