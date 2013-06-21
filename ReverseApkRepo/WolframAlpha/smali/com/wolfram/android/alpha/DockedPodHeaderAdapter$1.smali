.class Lcom/wolfram/android/alpha/DockedPodHeaderAdapter$1;
.super Ljava/lang/Object;
.source "DockedPodHeaderAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wolfram/android/alpha/DockedPodHeaderAdapter;->assign_pod_view_to_barpod_docked_title_bar(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wolfram/android/alpha/DockedPodHeaderAdapter;

.field final synthetic val$pod_view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/DockedPodHeaderAdapter;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/wolfram/android/alpha/DockedPodHeaderAdapter$1;->this$0:Lcom/wolfram/android/alpha/DockedPodHeaderAdapter;

    iput-object p2, p0, Lcom/wolfram/android/alpha/DockedPodHeaderAdapter$1;->val$pod_view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 75
    iget-object p0, p0, Lcom/wolfram/android/alpha/DockedPodHeaderAdapter$1;->val$pod_view:Landroid/view/View;

    .end local p0
    check-cast p0, Lcom/wolfram/android/alpha/view/PodView;

    sget-object v0, Lcom/wolfram/android/alpha/view/PodView;->states:[Lcom/wolfram/alpha/WAPodState;

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/view/PodView;->ToggleView_OFFClick([Lcom/wolfram/alpha/WAPodState;)V

    .line 76
    return-void
.end method
