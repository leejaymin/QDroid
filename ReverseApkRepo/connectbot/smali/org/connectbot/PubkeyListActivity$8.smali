.class Lorg/connectbot/PubkeyListActivity$8;
.super Ljava/lang/Object;
.source "PubkeyListActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/PubkeyListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/PubkeyListActivity;

.field private final synthetic val$pubkey:Lorg/connectbot/bean/PubkeyBean;


# direct methods
.method constructor <init>(Lorg/connectbot/PubkeyListActivity;Lorg/connectbot/bean/PubkeyBean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/PubkeyListActivity$8;->this$0:Lorg/connectbot/PubkeyListActivity;

    iput-object p2, p0, Lorg/connectbot/PubkeyListActivity$8;->val$pubkey:Lorg/connectbot/bean/PubkeyBean;

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 349
    :try_start_0
    iget-object v3, p0, Lorg/connectbot/PubkeyListActivity$8;->val$pubkey:Lorg/connectbot/bean/PubkeyBean;

    invoke-virtual {v3}, Lorg/connectbot/bean/PubkeyBean;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 350
    .local v2, pk:Ljava/security/PublicKey;
    iget-object v3, p0, Lorg/connectbot/PubkeyListActivity$8;->val$pubkey:Lorg/connectbot/bean/PubkeyBean;

    invoke-virtual {v3}, Lorg/connectbot/bean/PubkeyBean;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/connectbot/util/PubkeyUtils;->convertToOpenSSHFormat(Ljava/security/PublicKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, openSSHPubkey:Ljava/lang/String;
    iget-object v3, p0, Lorg/connectbot/PubkeyListActivity$8;->this$0:Lorg/connectbot/PubkeyListActivity;

    iget-object v3, v3, Lorg/connectbot/PubkeyListActivity;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v3, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v1           #openSSHPubkey:Ljava/lang/String;
    .end local v2           #pk:Ljava/security/PublicKey;
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
