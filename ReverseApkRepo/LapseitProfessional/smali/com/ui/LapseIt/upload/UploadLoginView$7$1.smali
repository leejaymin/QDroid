.class Lcom/ui/LapseIt/upload/UploadLoginView$7$1;
.super Ljava/lang/Object;
.source "UploadLoginView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/upload/UploadLoginView$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ui/LapseIt/upload/UploadLoginView$7;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/upload/UploadLoginView$7;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7$1;->this$1:Lcom/ui/LapseIt/upload/UploadLoginView$7;

    iput-object p2, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7$1;->val$dialog:Landroid/app/ProgressDialog;

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/ui/LapseIt/upload/UploadLoginView$7$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 441
    return-void
.end method
