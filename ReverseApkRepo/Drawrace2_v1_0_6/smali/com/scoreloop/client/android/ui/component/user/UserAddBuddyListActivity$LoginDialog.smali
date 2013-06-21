.class Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$LoginDialog;
.super Landroid/app/Dialog;
.source "UserAddBuddyListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginDialog"
.end annotation


# instance fields
.field private loginEdit:Landroid/widget/EditText;

.field private okButton:Landroid/widget/Button;

.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "style"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$LoginDialog;->this$0:Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;

    .line 58
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 59
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c0027

    if-ne v0, v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$LoginDialog;->dismiss()V

    .line 65
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$LoginDialog;->this$0:Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;

    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$LoginDialog;->loginEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->handleDialogClick(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->access$000(Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$LoginDialog;->setContentView(I)V

    .line 73
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$LoginDialog;->this$0:Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080305

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$LoginDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    const v0, 0x7f0c0026

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$LoginDialog;->loginEdit:Landroid/widget/EditText;

    .line 75
    const v0, 0x7f0c0027

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$LoginDialog;->okButton:Landroid/widget/Button;

    .line 76
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListActivity$LoginDialog;->okButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method
