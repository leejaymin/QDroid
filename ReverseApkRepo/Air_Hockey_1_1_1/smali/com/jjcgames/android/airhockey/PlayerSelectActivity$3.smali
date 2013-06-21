.class Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3;
.super Ljava/lang/Object;
.source "PlayerSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jjcgames/android/airhockey/PlayerSelectActivity;

.field private final synthetic val$playerList:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/jjcgames/android/airhockey/PlayerSelectActivity;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3;->this$0:Lcom/jjcgames/android/airhockey/PlayerSelectActivity;

    iput-object p2, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3;->val$playerList:Landroid/widget/ListView;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3;)Lcom/jjcgames/android/airhockey/PlayerSelectActivity;
    .locals 1
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3;->this$0:Lcom/jjcgames/android/airhockey/PlayerSelectActivity;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    .line 217
    const-wide/16 v1, -0x1

    cmp-long v1, p4, v1

    if-nez v1, :cond_0

    .line 218
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3;->this$0:Lcom/jjcgames/android/airhockey/PlayerSelectActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 219
    const v2, 0x7f070015

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 220
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 249
    :goto_0
    return v7

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3;->val$playerList:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jjcgames/android/airhockey/Player;

    .line 224
    .local v0, p:Lcom/jjcgames/android/airhockey/Player;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3;->this$0:Lcom/jjcgames/android/airhockey/PlayerSelectActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 225
    iget-object v2, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3;->this$0:Lcom/jjcgames/android/airhockey/PlayerSelectActivity;

    const v3, 0x7f070016

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 226
    iget-object v6, v0, Lcom/jjcgames/android/airhockey/Player;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 227
    const v2, 0x7f070017

    .line 228
    new-instance v3, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3$1;

    invoke-direct {v3, p0, v0}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3$1;-><init>(Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3;Lcom/jjcgames/android/airhockey/Player;)V

    .line 227
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 239
    const v2, 0x7f070013

    .line 240
    new-instance v3, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3$2;

    invoke-direct {v3, p0}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3$2;-><init>(Lcom/jjcgames/android/airhockey/PlayerSelectActivity$3;)V

    .line 239
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 246
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 247
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
