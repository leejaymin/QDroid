.class Lcom/madvil/ms/MusicToPhoneActivity$13;
.super Ljava/lang/Object;
.source "MusicToPhoneActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    iput-object p1, p0, Lcom/madvil/ms/MusicToPhoneActivity$13;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$13;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    invoke-virtual {v0}, Lcom/madvil/ms/MusicToPhoneActivity;->cancelPreviewDialog()V

    .line 556
    return-void
.end method
