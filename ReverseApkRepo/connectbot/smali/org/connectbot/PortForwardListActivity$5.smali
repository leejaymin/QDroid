.class Lorg/connectbot/PortForwardListActivity$5;
.super Ljava/lang/Object;
.source "PortForwardListActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/PortForwardListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/PortForwardListActivity;

.field private final synthetic val$pfb:Lorg/connectbot/bean/PortForwardBean;


# direct methods
.method constructor <init>(Lorg/connectbot/PortForwardListActivity;Lorg/connectbot/bean/PortForwardBean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/PortForwardListActivity$5;->this$0:Lorg/connectbot/PortForwardListActivity;

    iput-object p2, p0, Lorg/connectbot/PortForwardListActivity$5;->val$pfb:Lorg/connectbot/bean/PortForwardBean;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/connectbot/PortForwardListActivity$5;)Lorg/connectbot/PortForwardListActivity;
    .locals 1
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lorg/connectbot/PortForwardListActivity$5;->this$0:Lorg/connectbot/PortForwardListActivity;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x2

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 253
    iget-object v0, p0, Lorg/connectbot/PortForwardListActivity$5;->this$0:Lorg/connectbot/PortForwardListActivity;

    iget-object v0, v0, Lorg/connectbot/PortForwardListActivity;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03000c

    invoke-virtual {v0, v1, v11, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 255
    .local v7, editTunnelView:Landroid/view/View;
    const v0, 0x7f0b0025

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 256
    .local v4, typeSpinner:Landroid/widget/Spinner;
    const-string v0, "local"

    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$5;->val$pfb:Lorg/connectbot/bean/PortForwardBean;

    invoke-virtual {v1}, Lorg/connectbot/bean/PortForwardBean;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v4, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 263
    :goto_0
    const v0, 0x7f0b0010

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 264
    .local v3, nicknameEdit:Landroid/widget/EditText;
    iget-object v0, p0, Lorg/connectbot/PortForwardListActivity$5;->val$pfb:Lorg/connectbot/bean/PortForwardBean;

    invoke-virtual {v0}, Lorg/connectbot/bean/PortForwardBean;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 266
    const v0, 0x7f0b0026

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 267
    .local v5, sourcePortEdit:Landroid/widget/EditText;
    iget-object v0, p0, Lorg/connectbot/PortForwardListActivity$5;->val$pfb:Lorg/connectbot/bean/PortForwardBean;

    invoke-virtual {v0}, Lorg/connectbot/bean/PortForwardBean;->getSourcePort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 269
    const v0, 0x7f0b0027

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 270
    .local v6, destEdit:Landroid/widget/EditText;
    const-string v0, "dynamic5"

    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$5;->val$pfb:Lorg/connectbot/bean/PortForwardBean;

    invoke-virtual {v1}, Lorg/connectbot/bean/PortForwardBean;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 276
    :goto_1
    new-instance v0, Lorg/connectbot/PortForwardListActivity$5$1;

    invoke-direct {v0, p0, v6}, Lorg/connectbot/PortForwardListActivity$5$1;-><init>(Lorg/connectbot/PortForwardListActivity$5;Landroid/widget/EditText;)V

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 285
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$5;->this$0:Lorg/connectbot/PortForwardListActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 286
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 287
    const v9, 0x7f080041

    new-instance v0, Lorg/connectbot/PortForwardListActivity$5$2;

    iget-object v2, p0, Lorg/connectbot/PortForwardListActivity$5;->val$pfb:Lorg/connectbot/bean/PortForwardBean;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/connectbot/PortForwardListActivity$5$2;-><init>(Lorg/connectbot/PortForwardListActivity$5;Lorg/connectbot/bean/PortForwardBean;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v8, v9, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 330
    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 332
    return v10

    .line 258
    .end local v3           #nicknameEdit:Landroid/widget/EditText;
    .end local v5           #sourcePortEdit:Landroid/widget/EditText;
    .end local v6           #destEdit:Landroid/widget/EditText;
    :cond_0
    const-string v0, "remote"

    iget-object v1, p0, Lorg/connectbot/PortForwardListActivity$5;->val$pfb:Lorg/connectbot/bean/PortForwardBean;

    invoke-virtual {v1}, Lorg/connectbot/bean/PortForwardBean;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    invoke-virtual {v4, v10}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    .line 261
    :cond_1
    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    .line 273
    .restart local v3       #nicknameEdit:Landroid/widget/EditText;
    .restart local v5       #sourcePortEdit:Landroid/widget/EditText;
    .restart local v6       #destEdit:Landroid/widget/EditText;
    :cond_2
    const-string v0, "%s:%d"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/connectbot/PortForwardListActivity$5;->val$pfb:Lorg/connectbot/bean/PortForwardBean;

    invoke-virtual {v2}, Lorg/connectbot/bean/PortForwardBean;->getDestAddr()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lorg/connectbot/PortForwardListActivity$5;->val$pfb:Lorg/connectbot/bean/PortForwardBean;

    invoke-virtual {v2}, Lorg/connectbot/bean/PortForwardBean;->getDestPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
