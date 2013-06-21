.class Lcom/mobclix/android/sdk/MobclixCreative$Action$5;
.super Ljava/lang/Object;
.source "MobclixCreative.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/MobclixCreative$Action;->overlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative$Action;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$5;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action$5;->this$1:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->overlay:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1013
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mobclix/android/sdk/MobclixCreative;->access$9(Z)V

    .line 1014
    return-void
.end method
