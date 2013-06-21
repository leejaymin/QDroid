.class Lcom/madvil/ms/MusicToPhoneActivity$11;
.super Ljava/lang/Object;
.source "MusicToPhoneActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madvil/ms/MusicToPhoneActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/madvil/ms/MusicToPhoneActivity;


# direct methods
.method constructor <init>(Lcom/madvil/ms/MusicToPhoneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/madvil/ms/MusicToPhoneActivity$11;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/madvil/ms/MusicToPhoneActivity$11;)Lcom/madvil/ms/MusicToPhoneActivity;
    .locals 1
    .parameter

    .prologue
    .line 422
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$11;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$11;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    #setter for: Lcom/madvil/ms/MusicToPhoneActivity;->libItemChecked:I
    invoke-static {v1, p3}, Lcom/madvil/ms/MusicToPhoneActivity;->access$5(Lcom/madvil/ms/MusicToPhoneActivity;I)V

    .line 428
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/madvil/ms/MusicToPhoneActivity$11;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 429
    const-string v2, "Actions"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x7f04

    new-instance v3, Lcom/madvil/ms/MusicToPhoneActivity$11$1;

    invoke-direct {v3, p0}, Lcom/madvil/ms/MusicToPhoneActivity$11$1;-><init>(Lcom/madvil/ms/MusicToPhoneActivity$11;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 439
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 440
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 441
    return-void
.end method
