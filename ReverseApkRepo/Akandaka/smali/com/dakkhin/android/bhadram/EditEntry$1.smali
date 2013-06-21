.class Lcom/dakkhin/android/bhadram/EditEntry$1;
.super Ljava/lang/Object;
.source "EditEntry.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dakkhin/android/bhadram/EditEntry;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dakkhin/android/bhadram/EditEntry;


# direct methods
.method constructor <init>(Lcom/dakkhin/android/bhadram/EditEntry;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/dakkhin/android/bhadram/EditEntry$1;->this$0:Lcom/dakkhin/android/bhadram/EditEntry;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 19
    .parameter "v"

    .prologue
    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/EditEntry$1;->this$0:Lcom/dakkhin/android/bhadram/EditEntry;

    move-object v3, v0

    #calls: Lcom/dakkhin/android/bhadram/EditEntry;->checkAndAuth()V
    invoke-static {v3}, Lcom/dakkhin/android/bhadram/EditEntry;->access$0(Lcom/dakkhin/android/bhadram/EditEntry;)V

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/EditEntry$1;->this$0:Lcom/dakkhin/android/bhadram/EditEntry;

    move-object v3, v0

    #calls: Lcom/dakkhin/android/bhadram/EditEntry;->validate()Z
    invoke-static {v3}, Lcom/dakkhin/android/bhadram/EditEntry;->access$1(Lcom/dakkhin/android/bhadram/EditEntry;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/EditEntry$1;->this$0:Lcom/dakkhin/android/bhadram/EditEntry;

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v17

    .line 93
    .local v17, alert:Landroid/app/AlertDialog;
    const-string v3, "Title, User Name, Password required"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    const/4 v3, 0x1

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 96
    const-string v3, "Ok"

    new-instance v4, Lcom/dakkhin/android/bhadram/EditEntry$1$1;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/dakkhin/android/bhadram/EditEntry$1$1;-><init>(Lcom/dakkhin/android/bhadram/EditEntry$1;)V

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 102
    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog;->show()V

    .line 120
    .end local v17           #alert:Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 105
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/EditEntry$1;->this$0:Lcom/dakkhin/android/bhadram/EditEntry;

    move-object v3, v0

    #getter for: Lcom/dakkhin/android/bhadram/EditEntry;->cryptoHelper:Lcom/dakkhin/android/bhadram/CryptoHelper;
    invoke-static {v3}, Lcom/dakkhin/android/bhadram/EditEntry;->access$2(Lcom/dakkhin/android/bhadram/EditEntry;)Lcom/dakkhin/android/bhadram/CryptoHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dakkhin/android/bhadram/CryptoHelper;->encryptInit()V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/EditEntry$1;->this$0:Lcom/dakkhin/android/bhadram/EditEntry;

    move-object v3, v0

    #getter for: Lcom/dakkhin/android/bhadram/EditEntry;->cryptoHelper:Lcom/dakkhin/android/bhadram/CryptoHelper;
    invoke-static {v3}, Lcom/dakkhin/android/bhadram/EditEntry;->access$2(Lcom/dakkhin/android/bhadram/EditEntry;)Lcom/dakkhin/android/bhadram/CryptoHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/EditEntry$1;->this$0:Lcom/dakkhin/android/bhadram/EditEntry;

    move-object v4, v0

    #getter for: Lcom/dakkhin/android/bhadram/EditEntry;->nameTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/dakkhin/android/bhadram/EditEntry;->access$3(Lcom/dakkhin/android/bhadram/EditEntry;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/dakkhin/android/bhadram/CryptoHelper;->encrypt(Ljava/lang/String;)[B

    move-result-object v5

    .line 107
    .local v5, nameBytes:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/EditEntry$1;->this$0:Lcom/dakkhin/android/bhadram/EditEntry;

    move-object v3, v0

    #getter for: Lcom/dakkhin/android/bhadram/EditEntry;->cryptoHelper:Lcom/dakkhin/android/bhadram/CryptoHelper;
    invoke-static {v3}, Lcom/dakkhin/android/bhadram/EditEntry;->access$2(Lcom/dakkhin/android/bhadram/EditEntry;)Lcom/dakkhin/android/bhadram/CryptoHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/EditEntry$1;->this$0:Lcom/dakkhin/android/bhadram/EditEntry;

    move-object v4, v0

    #getter for: Lcom/dakkhin/android/bhadram/EditEntry;->pwTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/dakkhin/android/bhadram/EditEntry;->access$4(Lcom/dakkhin/android/bhadram/EditEntry;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/dakkhin/android/bhadram/CryptoHelper;->encrypt(Ljava/lang/String;)[B

    move-result-object v7

    .line 108
    .local v7, pwBytes:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/EditEntry$1;->this$0:Lcom/dakkhin/android/bhadram/EditEntry;

    move-object v3, v0

    #getter for: Lcom/dakkhin/android/bhadram/EditEntry;->cryptoHelper:Lcom/dakkhin/android/bhadram/CryptoHelper;
    invoke-static {v3}, Lcom/dakkhin/android/bhadram/EditEntry;->access$2(Lcom/dakkhin/android/bhadram/EditEntry;)Lcom/dakkhin/android/bhadram/CryptoHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/EditEntry$1;->this$0:Lcom/dakkhin/android/bhadram/EditEntry;

    move-object v4, v0

    #getter for: Lcom/dakkhin/android/bhadram/EditEntry;->infoTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/dakkhin/android/bhadram/EditEntry;->access$5(Lcom/dakkhin/android/bhadram/EditEntry;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/dakkhin/android/bhadram/CryptoHelper;->encrypt(Ljava/lang/String;)[B

    move-result-object v8

    .line 110
    .local v8, infoBytes:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/EditEntry$1;->this$0:Lcom/dakkhin/android/bhadram/EditEntry;

    move-object v3, v0

    #getter for: Lcom/dakkhin/android/bhadram/EditEntry;->mRowId:Ljava/lang/Long;
    invoke-static {v3}, Lcom/dakkhin/android/bhadram/EditEntry;->access$6(Lcom/dakkhin/android/bhadram/EditEntry;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v9, 0x0

    cmp-long v3, v3, v9

    if-nez v3, :cond_1

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/EditEntry$1;->this$0:Lcom/dakkhin/android/bhadram/EditEntry;

    move-object v3, v0

    #getter for: Lcom/dakkhin/android/bhadram/EditEntry;->dbHelper:Lcom/dakkhin/android/bhadram/DBHelper;
    invoke-static {v3}, Lcom/dakkhin/android/bhadram/EditEntry;->access$7(Lcom/dakkhin/android/bhadram/EditEntry;)Lcom/dakkhin/android/bhadram/DBHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/EditEntry$1;->this$0:Lcom/dakkhin/android/bhadram/EditEntry;

    move-object v4, v0

    #getter for: Lcom/dakkhin/android/bhadram/EditEntry;->titleTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/dakkhin/android/bhadram/EditEntry;->access$8(Lcom/dakkhin/android/bhadram/EditEntry;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/EditEntry$1;->this$0:Lcom/dakkhin/android/bhadram/EditEntry;

    move-object v6, v0

    #getter for: Lcom/dakkhin/android/bhadram/EditEntry;->descTextView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/dakkhin/android/bhadram/EditEntry;->access$9(Lcom/dakkhin/android/bhadram/EditEntry;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v3 .. v8}, Lcom/dakkhin/android/bhadram/DBHelper;->insert(Ljava/lang/String;[BLjava/lang/String;[B[B)V

    .line 116
    :goto_1
    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    .line 117
    .local v18, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/EditEntry$1;->this$0:Lcom/dakkhin/android/bhadram/EditEntry;

    move-object v3, v0

    const/4 v4, -0x1

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/dakkhin/android/bhadram/EditEntry;->setResult(ILandroid/content/Intent;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/EditEntry$1;->this$0:Lcom/dakkhin/android/bhadram/EditEntry;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/dakkhin/android/bhadram/EditEntry;->finish()V

    goto/16 :goto_0

    .line 113
    .end local v18           #intent:Landroid/content/Intent;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/EditEntry$1;->this$0:Lcom/dakkhin/android/bhadram/EditEntry;

    move-object v3, v0

    #getter for: Lcom/dakkhin/android/bhadram/EditEntry;->dbHelper:Lcom/dakkhin/android/bhadram/DBHelper;
    invoke-static {v3}, Lcom/dakkhin/android/bhadram/EditEntry;->access$7(Lcom/dakkhin/android/bhadram/EditEntry;)Lcom/dakkhin/android/bhadram/DBHelper;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/EditEntry$1;->this$0:Lcom/dakkhin/android/bhadram/EditEntry;

    move-object v3, v0

    #getter for: Lcom/dakkhin/android/bhadram/EditEntry;->mRowId:Ljava/lang/Long;
    invoke-static {v3}, Lcom/dakkhin/android/bhadram/EditEntry;->access$6(Lcom/dakkhin/android/bhadram/EditEntry;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/EditEntry$1;->this$0:Lcom/dakkhin/android/bhadram/EditEntry;

    move-object v3, v0

    #getter for: Lcom/dakkhin/android/bhadram/EditEntry;->titleTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/dakkhin/android/bhadram/EditEntry;->access$8(Lcom/dakkhin/android/bhadram/EditEntry;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/EditEntry$1;->this$0:Lcom/dakkhin/android/bhadram/EditEntry;

    move-object v3, v0

    #getter for: Lcom/dakkhin/android/bhadram/EditEntry;->descTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/dakkhin/android/bhadram/EditEntry;->access$9(Lcom/dakkhin/android/bhadram/EditEntry;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v13, v5

    move-object v15, v7

    move-object/from16 v16, v8

    invoke-virtual/range {v9 .. v16}, Lcom/dakkhin/android/bhadram/DBHelper;->update(JLjava/lang/String;[BLjava/lang/String;[B[B)V

    goto :goto_1
.end method
