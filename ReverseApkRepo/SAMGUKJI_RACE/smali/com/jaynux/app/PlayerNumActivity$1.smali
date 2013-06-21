.class Lcom/jaynux/app/PlayerNumActivity$1;
.super Ljava/lang/Object;
.source "PlayerNumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaynux/app/PlayerNumActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaynux/app/PlayerNumActivity;


# direct methods
.method constructor <init>(Lcom/jaynux/app/PlayerNumActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jaynux/app/PlayerNumActivity$1;->this$0:Lcom/jaynux/app/PlayerNumActivity;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jaynux/app/PlayerNumActivity$1;)Lcom/jaynux/app/PlayerNumActivity;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/jaynux/app/PlayerNumActivity$1;->this$0:Lcom/jaynux/app/PlayerNumActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x4

    .line 33
    iget-object v5, p0, Lcom/jaynux/app/PlayerNumActivity$1;->this$0:Lcom/jaynux/app/PlayerNumActivity;

    invoke-virtual {v5}, Lcom/jaynux/app/PlayerNumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f030004

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, dialog:Landroid/view/View;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/jaynux/app/PlayerNumActivity$1;->this$0:Lcom/jaynux/app/PlayerNumActivity;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v6, "ok"

    new-instance v7, Lcom/jaynux/app/PlayerNumActivity$1$1;

    invoke-direct {v7, p0, v0}, Lcom/jaynux/app/PlayerNumActivity$1$1;-><init>(Lcom/jaynux/app/PlayerNumActivity$1;Landroid/view/View;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 54
    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "Player Name"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 56
    .local v1, nameAD:Landroid/app/AlertDialog;
    const v5, 0x7f090020

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 57
    .local v2, player2:Landroid/view/ViewGroup;
    const v5, 0x7f090023

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 58
    .local v3, player3:Landroid/view/ViewGroup;
    const v5, 0x7f090026

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 61
    .local v4, player4:Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/jaynux/app/PlayerNumActivity$1;->this$0:Lcom/jaynux/app/PlayerNumActivity;

    #getter for: Lcom/jaynux/app/PlayerNumActivity;->playerNum:I
    invoke-static {v5}, Lcom/jaynux/app/PlayerNumActivity;->access$1(Lcom/jaynux/app/PlayerNumActivity;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 75
    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 76
    return-void

    .line 63
    :pswitch_0
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 66
    :pswitch_1
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 67
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 70
    :pswitch_2
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 71
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 72
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
