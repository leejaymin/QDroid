.class Lcom/madvil/ms/MusicToPhoneActivity$16;
.super Ljava/lang/Object;
.source "MusicToPhoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madvil/ms/MusicToPhoneActivity;->previewDialogInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/madvil/ms/MusicToPhoneActivity;


# direct methods
.method constructor <init>(Lcom/madvil/ms/MusicToPhoneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/madvil/ms/MusicToPhoneActivity$16;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$16;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #getter for: Lcom/madvil/ms/MusicToPhoneActivity;->previewDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/madvil/ms/MusicToPhoneActivity;->access$9(Lcom/madvil/ms/MusicToPhoneActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 607
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$16;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    invoke-virtual {v0}, Lcom/madvil/ms/MusicToPhoneActivity;->cancelPreviewDialog()V

    .line 608
    return-void
.end method
