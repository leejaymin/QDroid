.class Lexam/Data/SDCard$1;
.super Ljava/lang/Object;
.source "SDCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Data/SDCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Data/SDCard;


# direct methods
.method constructor <init>(Lexam/Data/SDCard;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Data/SDCard$1;->this$0:Lexam/Data/SDCard;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 15
    .parameter "v"

    .prologue
    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 35
    :sswitch_0
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 36
    .local v8, rootdir:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, datadir:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, cachedir:Ljava/lang/String;
    iget-object v10, p0, Lexam/Data/SDCard$1;->this$0:Lexam/Data/SDCard;

    iget-object v10, v10, Lexam/Data/SDCard;->mEdit:Landroid/widget/EditText;

    const-string v11, "ext = %s\nroot=%s\ndata=%s\ncache=%s"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 39
    iget-object v14, p0, Lexam/Data/SDCard$1;->this$0:Lexam/Data/SDCard;

    iget-object v14, v14, Lexam/Data/SDCard;->mSdPath:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v8, v12, v13

    const/4 v13, 0x2

    aput-object v2, v12, v13

    const/4 v13, 0x3

    aput-object v0, v12, v13

    .line 38
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 42
    .end local v0           #cachedir:Ljava/lang/String;
    .end local v2           #datadir:Ljava/lang/String;
    .end local v8           #rootdir:Ljava/lang/String;
    :sswitch_1
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lexam/Data/SDCard$1;->this$0:Lexam/Data/SDCard;

    iget-object v11, v11, Lexam/Data/SDCard;->mSdPath:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/dir"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v3, dir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 44
    new-instance v5, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lexam/Data/SDCard$1;->this$0:Lexam/Data/SDCard;

    iget-object v11, v11, Lexam/Data/SDCard;->mSdPath:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/dir/file.txt"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v5, file:Ljava/io/File;
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 47
    .local v7, fos:Ljava/io/FileOutputStream;
    const-string v9, "This file exists in SDcard"

    .line 48
    .local v9, str:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 49
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 50
    iget-object v10, p0, Lexam/Data/SDCard$1;->this$0:Lexam/Data/SDCard;

    iget-object v10, v10, Lexam/Data/SDCard;->mEdit:Landroid/widget/EditText;

    const-string v11, "write success"

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 51
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v9           #str:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 52
    .local v4, e:Ljava/io/FileNotFoundException;
    iget-object v10, p0, Lexam/Data/SDCard$1;->this$0:Lexam/Data/SDCard;

    iget-object v10, v10, Lexam/Data/SDCard;->mEdit:Landroid/widget/EditText;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "File Not Found."

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 54
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    .line 55
    .local v4, e:Ljava/lang/SecurityException;
    iget-object v10, p0, Lexam/Data/SDCard$1;->this$0:Lexam/Data/SDCard;

    iget-object v10, v10, Lexam/Data/SDCard;->mEdit:Landroid/widget/EditText;

    const-string v11, "Security Exception"

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 57
    .end local v4           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v4

    .line 58
    .local v4, e:Ljava/lang/Exception;
    iget-object v10, p0, Lexam/Data/SDCard$1;->this$0:Lexam/Data/SDCard;

    iget-object v10, v10, Lexam/Data/SDCard;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 63
    .end local v3           #dir:Ljava/io/File;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #file:Ljava/io/File;
    :sswitch_2
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lexam/Data/SDCard$1;->this$0:Lexam/Data/SDCard;

    iget-object v11, v11, Lexam/Data/SDCard;->mSdPath:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/dir/file.txt"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 64
    .local v6, fis:Ljava/io/FileInputStream;
    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v10

    new-array v1, v10, [B

    .line 65
    .local v1, data:[B
    :cond_0
    invoke-virtual {v6, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    .line 66
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 67
    iget-object v10, p0, Lexam/Data/SDCard$1;->this$0:Lexam/Data/SDCard;

    iget-object v10, v10, Lexam/Data/SDCard;->mEdit:Landroid/widget/EditText;

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_0

    .line 68
    .end local v1           #data:[B
    .end local v6           #fis:Ljava/io/FileInputStream;
    :catch_3
    move-exception v4

    .line 69
    .local v4, e:Ljava/io/FileNotFoundException;
    iget-object v10, p0, Lexam/Data/SDCard$1;->this$0:Lexam/Data/SDCard;

    iget-object v10, v10, Lexam/Data/SDCard;->mEdit:Landroid/widget/EditText;

    const-string v11, "File Not Found"

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 71
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v10

    goto/16 :goto_0

    .line 33
    :sswitch_data_0
    .sparse-switch
        0x7f0c001a -> :sswitch_1
        0x7f0c001b -> :sswitch_2
        0x7f0c0020 -> :sswitch_0
    .end sparse-switch
.end method
