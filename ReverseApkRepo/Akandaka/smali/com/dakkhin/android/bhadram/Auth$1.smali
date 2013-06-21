.class Lcom/dakkhin/android/bhadram/Auth$1;
.super Ljava/lang/Object;
.source "Auth.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dakkhin/android/bhadram/Auth;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dakkhin/android/bhadram/Auth;

.field private final synthetic val$passwordTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/dakkhin/android/bhadram/Auth;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/dakkhin/android/bhadram/Auth$1;->this$0:Lcom/dakkhin/android/bhadram/Auth;

    iput-object p2, p0, Lcom/dakkhin/android/bhadram/Auth$1;->val$passwordTextView:Landroid/widget/TextView;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 21
    .parameter "v"

    .prologue
    .line 44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/Auth$1;->val$passwordTextView:Landroid/widget/TextView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 45
    .local v15, pw:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/Auth$1;->val$passwordTextView:Landroid/widget/TextView;

    move-object v3, v0

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const/4 v12, 0x1

    .line 48
    .local v12, firstTime:Z
    new-instance v11, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 49
    const-string v4, "/data/com.dakkhin.android.bhadram/databases/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "akandaka"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 48
    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v11, db:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    const/4 v12, 0x0

    .line 53
    :cond_0
    if-nez v12, :cond_2

    .line 54
    new-instance v2, Lcom/dakkhin/android/bhadram/DBHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/Auth$1;->this$0:Lcom/dakkhin/android/bhadram/Auth;

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/dakkhin/android/bhadram/DBHelper;-><init>(Landroid/content/Context;)V

    .line 55
    .local v2, helper:Lcom/dakkhin/android/bhadram/DBHelper;
    invoke-virtual {v2}, Lcom/dakkhin/android/bhadram/DBHelper;->open()V

    .line 56
    invoke-virtual {v2}, Lcom/dakkhin/android/bhadram/DBHelper;->getMaster()Landroid/database/Cursor;

    move-result-object v10

    .line 57
    .local v10, c:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 59
    const-string v3, "PW"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 58
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v16

    .line 60
    .local v16, pwBytes:[B
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 61
    .local v19, storedPw:Ljava/lang/String;
    const/4 v6, 0x0

    check-cast v6, [B

    .line 62
    .local v6, digestedPw:[B
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 63
    invoke-virtual {v2}, Lcom/dakkhin/android/bhadram/DBHelper;->cleanup()V

    .line 66
    :try_start_0
    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    .line 67
    invoke-virtual {v3}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v14

    .line 68
    .local v14, md:Ljava/security/MessageDigest;
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 72
    .end local v14           #md:Ljava/security/MessageDigest;
    :goto_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 74
    .local v20, success:Z
    if-eqz v20, :cond_1

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/Auth$1;->this$0:Lcom/dakkhin/android/bhadram/Auth;

    move-object v3, v0

    const-string v4, "dakkhin_bhadram_auth"

    invoke-virtual {v3, v4}, Lcom/dakkhin/android/bhadram/Auth;->deleteFile(Ljava/lang/String;)Z

    .line 76
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/Auth$1;->this$0:Lcom/dakkhin/android/bhadram/Auth;

    move-object v3, v0

    const-class v4, Lcom/dakkhin/android/bhadram/EntryList;

    invoke-direct {v13, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v13, intent:Landroid/content/Intent;
    const-string v3, "pw"

    invoke-virtual {v15}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[C)Landroid/content/Intent;

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/Auth$1;->this$0:Lcom/dakkhin/android/bhadram/Auth;

    move-object v3, v0

    invoke-virtual {v3, v13}, Lcom/dakkhin/android/bhadram/Auth;->startActivity(Landroid/content/Intent;)V

    .line 133
    .end local v2           #helper:Lcom/dakkhin/android/bhadram/DBHelper;
    .end local v6           #digestedPw:[B
    .end local v10           #c:Landroid/database/Cursor;
    .end local v13           #intent:Landroid/content/Intent;
    .end local v16           #pwBytes:[B
    .end local v19           #storedPw:Ljava/lang/String;
    .end local v20           #success:Z
    :goto_1
    return-void

    .line 80
    .restart local v2       #helper:Lcom/dakkhin/android/bhadram/DBHelper;
    .restart local v6       #digestedPw:[B
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v16       #pwBytes:[B
    .restart local v19       #storedPw:Ljava/lang/String;
    .restart local v20       #success:Z
    :cond_1
    new-instance v8, Landroid/app/AlertDialog$Builder;

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/Auth$1;->this$0:Lcom/dakkhin/android/bhadram/Auth;

    move-object v3, v0

    .line 80
    invoke-direct {v8, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 82
    .local v8, aDialog:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f040015

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 83
    const v3, 0x7f040006

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 84
    const-string v3, "Ok"

    .line 85
    new-instance v4, Lcom/dakkhin/android/bhadram/Auth$1$1;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/dakkhin/android/bhadram/Auth$1$1;-><init>(Lcom/dakkhin/android/bhadram/Auth$1;)V

    .line 84
    invoke-virtual {v8, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 95
    .end local v2           #helper:Lcom/dakkhin/android/bhadram/DBHelper;
    .end local v6           #digestedPw:[B
    .end local v8           #aDialog:Landroid/app/AlertDialog$Builder;
    .end local v10           #c:Landroid/database/Cursor;
    .end local v16           #pwBytes:[B
    .end local v19           #storedPw:Ljava/lang/String;
    .end local v20           #success:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/Auth$1;->this$0:Lcom/dakkhin/android/bhadram/Auth;

    move-object v3, v0

    const v4, 0x7f050013

    invoke-virtual {v3, v4}, Lcom/dakkhin/android/bhadram/Auth;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 96
    .local v17, pwR:Landroid/widget/TextView;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 98
    .local v18, repeatPw:Ljava/lang/String;
    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 99
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/Auth$1;->this$0:Lcom/dakkhin/android/bhadram/Auth;

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 101
    .local v9, alert:Landroid/app/AlertDialog;
    const-string v3, "Passwords do not match"

    invoke-virtual {v9, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 104
    const-string v3, "Ok"

    .line 105
    new-instance v4, Lcom/dakkhin/android/bhadram/Auth$1$2;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/dakkhin/android/bhadram/Auth$1$2;-><init>(Lcom/dakkhin/android/bhadram/Auth$1;)V

    .line 104
    invoke-virtual {v9, v3, v4}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 109
    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 113
    .end local v9           #alert:Landroid/app/AlertDialog;
    :cond_3
    const/4 v6, 0x0

    check-cast v6, [B

    .line 116
    .restart local v6       #digestedPw:[B
    :try_start_1
    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    .line 117
    invoke-virtual {v3}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v14

    .line 118
    .restart local v14       #md:Ljava/security/MessageDigest;
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 122
    .end local v14           #md:Ljava/security/MessageDigest;
    :goto_2
    new-instance v2, Lcom/dakkhin/android/bhadram/DBHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/Auth$1;->this$0:Lcom/dakkhin/android/bhadram/Auth;

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/dakkhin/android/bhadram/DBHelper;-><init>(Landroid/content/Context;)V

    .line 123
    .restart local v2       #helper:Lcom/dakkhin/android/bhadram/DBHelper;
    invoke-virtual {v2}, Lcom/dakkhin/android/bhadram/DBHelper;->open()V

    .line 124
    const-string v3, "_DAKKHIN__AKANDAKA_"

    const-string v4, "_DAKKHIN__AKANDAKA_"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, ""

    const-string v7, ""

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/dakkhin/android/bhadram/DBHelper;->insert(Ljava/lang/String;[BLjava/lang/String;[B[B)V

    .line 125
    invoke-virtual {v2}, Lcom/dakkhin/android/bhadram/DBHelper;->cleanup()V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/Auth$1;->this$0:Lcom/dakkhin/android/bhadram/Auth;

    move-object v3, v0

    const-string v4, "dakkhin_bhadram_auth"

    invoke-virtual {v3, v4}, Lcom/dakkhin/android/bhadram/Auth;->deleteFile(Ljava/lang/String;)Z

    .line 129
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/Auth$1;->this$0:Lcom/dakkhin/android/bhadram/Auth;

    move-object v3, v0

    const-class v4, Lcom/dakkhin/android/bhadram/EntryList;

    invoke-direct {v13, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .restart local v13       #intent:Landroid/content/Intent;
    const-string v3, "pw"

    invoke-virtual {v15}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[C)Landroid/content/Intent;

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dakkhin/android/bhadram/Auth$1;->this$0:Lcom/dakkhin/android/bhadram/Auth;

    move-object v3, v0

    invoke-virtual {v3, v13}, Lcom/dakkhin/android/bhadram/Auth;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 119
    .end local v2           #helper:Lcom/dakkhin/android/bhadram/DBHelper;
    .end local v13           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_2

    .line 69
    .end local v17           #pwR:Landroid/widget/TextView;
    .end local v18           #repeatPw:Ljava/lang/String;
    .restart local v2       #helper:Lcom/dakkhin/android/bhadram/DBHelper;
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v16       #pwBytes:[B
    .restart local v19       #storedPw:Ljava/lang/String;
    :catch_1
    move-exception v3

    goto/16 :goto_0
.end method
