.class Lorg/connectbot/PubkeyListActivity$9;
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

.field private final synthetic val$imported:Z

.field private final synthetic val$pubkey:Lorg/connectbot/bean/PubkeyBean;


# direct methods
.method constructor <init>(Lorg/connectbot/PubkeyListActivity;ZLorg/connectbot/bean/PubkeyBean;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/PubkeyListActivity$9;->this$0:Lorg/connectbot/PubkeyListActivity;

    iput-boolean p2, p0, Lorg/connectbot/PubkeyListActivity$9;->val$imported:Z

    iput-object p3, p0, Lorg/connectbot/PubkeyListActivity$9;->val$pubkey:Lorg/connectbot/bean/PubkeyBean;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    .line 365
    const/4 v0, 0x0

    .line 367
    .local v0, data:Ljava/lang/String;
    :try_start_0
    iget-boolean v4, p0, Lorg/connectbot/PubkeyListActivity$9;->val$imported:Z

    if-eqz v4, :cond_0

    .line 368
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lorg/connectbot/PubkeyListActivity$9;->val$pubkey:Lorg/connectbot/bean/PubkeyBean;

    invoke-virtual {v4}, Lorg/connectbot/bean/PubkeyBean;->getPrivateKey()[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    .end local v0           #data:Ljava/lang/String;
    .local v1, data:Ljava/lang/String;
    move-object v0, v1

    .line 374
    .end local v1           #data:Ljava/lang/String;
    .restart local v0       #data:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lorg/connectbot/PubkeyListActivity$9;->this$0:Lorg/connectbot/PubkeyListActivity;

    iget-object v4, v4, Lorg/connectbot/PubkeyListActivity;->clipboard:Landroid/text/ClipboardManager;

    invoke-virtual {v4, v0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 378
    :goto_1
    const/4 v4, 0x1

    return v4

    .line 370
    :cond_0
    iget-object v4, p0, Lorg/connectbot/PubkeyListActivity$9;->val$pubkey:Lorg/connectbot/bean/PubkeyBean;

    invoke-virtual {v4}, Lorg/connectbot/bean/PubkeyBean;->getPrivateKey()[B

    move-result-object v4

    iget-object v5, p0, Lorg/connectbot/PubkeyListActivity$9;->val$pubkey:Lorg/connectbot/bean/PubkeyBean;

    invoke-virtual {v5}, Lorg/connectbot/bean/PubkeyBean;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/connectbot/util/PubkeyUtils;->decodePrivate([BLjava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v3

    .line 371
    .local v3, pk:Ljava/security/PrivateKey;
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/connectbot/util/PubkeyUtils;->exportPEM(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 375
    .end local v3           #pk:Ljava/security/PrivateKey;
    :catch_0
    move-exception v2

    .line 376
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
