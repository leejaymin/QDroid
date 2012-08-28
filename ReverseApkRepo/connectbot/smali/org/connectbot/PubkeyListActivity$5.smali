.class Lorg/connectbot/PubkeyListActivity$5;
.super Ljava/lang/Object;
.source "PubkeyListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/PubkeyListActivity;->handleAddKey(Lorg/connectbot/bean/PubkeyBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/PubkeyListActivity;

.field private final synthetic val$passwordField:Landroid/widget/EditText;

.field private final synthetic val$pubkey:Lorg/connectbot/bean/PubkeyBean;


# direct methods
.method constructor <init>(Lorg/connectbot/PubkeyListActivity;Lorg/connectbot/bean/PubkeyBean;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/PubkeyListActivity$5;->this$0:Lorg/connectbot/PubkeyListActivity;

    iput-object p2, p0, Lorg/connectbot/PubkeyListActivity$5;->val$pubkey:Lorg/connectbot/bean/PubkeyBean;

    iput-object p3, p0, Lorg/connectbot/PubkeyListActivity$5;->val$passwordField:Landroid/widget/EditText;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 251
    iget-object v0, p0, Lorg/connectbot/PubkeyListActivity$5;->this$0:Lorg/connectbot/PubkeyListActivity;

    iget-object v1, p0, Lorg/connectbot/PubkeyListActivity$5;->val$pubkey:Lorg/connectbot/bean/PubkeyBean;

    iget-object v2, p0, Lorg/connectbot/PubkeyListActivity$5;->val$passwordField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/connectbot/PubkeyListActivity;->handleAddKey(Lorg/connectbot/bean/PubkeyBean;Ljava/lang/String;)V

    .line 252
    return-void
.end method
