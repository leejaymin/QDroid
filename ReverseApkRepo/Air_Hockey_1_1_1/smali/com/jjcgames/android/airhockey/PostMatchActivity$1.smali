.class Lcom/jjcgames/android/airhockey/PostMatchActivity$1;
.super Ljava/lang/Object;
.source "PostMatchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjcgames/android/airhockey/PostMatchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jjcgames/android/airhockey/PostMatchActivity;


# direct methods
.method constructor <init>(Lcom/jjcgames/android/airhockey/PostMatchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jjcgames/android/airhockey/PostMatchActivity$1;->this$0:Lcom/jjcgames/android/airhockey/PostMatchActivity;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/PostMatchActivity$1;->this$0:Lcom/jjcgames/android/airhockey/PostMatchActivity;

    invoke-virtual {v0}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->finish()V

    .line 73
    return-void
.end method
