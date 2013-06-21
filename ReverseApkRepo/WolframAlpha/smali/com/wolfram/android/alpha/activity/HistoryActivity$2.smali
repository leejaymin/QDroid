.class Lcom/wolfram/android/alpha/activity/HistoryActivity$2;
.super Ljava/lang/Object;
.source "HistoryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wolfram/android/alpha/activity/HistoryActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wolfram/android/alpha/activity/HistoryActivity;


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/activity/HistoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/HistoryActivity$2;->this$0:Lcom/wolfram/android/alpha/activity/HistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 349
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/HistoryActivity$2;->this$0:Lcom/wolfram/android/alpha/activity/HistoryActivity;

    #getter for: Lcom/wolfram/android/alpha/activity/HistoryActivity;->history:Lcom/wolfram/android/alpha/History;
    invoke-static {v1}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->access$000(Lcom/wolfram/android/alpha/activity/HistoryActivity;)Lcom/wolfram/android/alpha/History;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/History;->clear()V

    .line 350
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/HistoryActivity$2;->this$0:Lcom/wolfram/android/alpha/activity/HistoryActivity;

    const v2, 0x7f0e004c

    invoke-virtual {v1, v2}, Lcom/wolfram/android/alpha/activity/HistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 351
    .local v0, historyViewPanel:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 352
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 353
    return-void
.end method
