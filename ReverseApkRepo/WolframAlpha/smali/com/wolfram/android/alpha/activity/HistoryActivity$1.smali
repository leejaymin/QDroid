.class Lcom/wolfram/android/alpha/activity/HistoryActivity$1;
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
    .line 355
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/HistoryActivity$1;->this$0:Lcom/wolfram/android/alpha/activity/HistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 357
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 358
    return-void
.end method
