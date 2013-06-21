.class Lcom/wolfram/android/alpha/view/PodView$2;
.super Ljava/lang/Object;
.source "PodView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wolfram/android/alpha/view/PodView;->ImageMap_ToggleArrows([Lcom/wolfram/alpha/WAPodState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wolfram/android/alpha/view/PodView;

.field final synthetic val$states:[Lcom/wolfram/alpha/WAPodState;


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/view/PodView;[Lcom/wolfram/alpha/WAPodState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/wolfram/android/alpha/view/PodView$2;->this$0:Lcom/wolfram/android/alpha/view/PodView;

    iput-object p2, p0, Lcom/wolfram/android/alpha/view/PodView$2;->val$states:[Lcom/wolfram/alpha/WAPodState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/PodView$2;->this$0:Lcom/wolfram/android/alpha/view/PodView;

    iget-object v1, p0, Lcom/wolfram/android/alpha/view/PodView$2;->val$states:[Lcom/wolfram/alpha/WAPodState;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/view/PodView;->ToggleView_ONClick([Lcom/wolfram/alpha/WAPodState;)V

    .line 177
    return-void
.end method
