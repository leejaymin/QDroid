.class Lcom/dakkhin/android/bhadram/EntryList$7;
.super Ljava/lang/Object;
.source "EntryList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dakkhin/android/bhadram/EntryList;->onMenuItemSelected(ILandroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dakkhin/android/bhadram/EntryList;


# direct methods
.method constructor <init>(Lcom/dakkhin/android/bhadram/EntryList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/dakkhin/android/bhadram/EntryList$7;->this$0:Lcom/dakkhin/android/bhadram/EntryList;

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/dakkhin/android/bhadram/EntryList$7;)Lcom/dakkhin/android/bhadram/EntryList;
    .locals 1
    .parameter

    .prologue
    .line 275
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/EntryList$7;->this$0:Lcom/dakkhin/android/bhadram/EntryList;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const-string v4, "akandaka"

    const-string v3, "Ok"

    .line 279
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 281
    .local v7, importRoot:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    new-instance v6, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "akandaka"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    .local v6, importFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 285
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/dakkhin/android/bhadram/EntryList$7;->this$0:Lcom/dakkhin/android/bhadram/EntryList;

    invoke-direct {v9, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 286
    .local v9, infoDialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f040015

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 287
    const v1, 0x7f040019

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 288
    const-string v1, "Ok"

    new-instance v1, Lcom/dakkhin/android/bhadram/EntryList$7$1;

    invoke-direct {v1, p0}, Lcom/dakkhin/android/bhadram/EntryList$7$1;-><init>(Lcom/dakkhin/android/bhadram/EntryList$7;)V

    invoke-virtual {v9, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 294
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 331
    .end local v6           #importFile:Ljava/io/File;
    .end local v9           #infoDialog:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 296
    .restart local v6       #importFile:Ljava/io/File;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    const-string v2, "/data/com.dakkhin.android.bhadram/databases/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "akandaka"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 296
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 299
    .local v11, outFileStr:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    .local v10, outFile:Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 303
    .local v8, inStream:Ljava/io/FileInputStream;
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 304
    .local v0, inChannel:Ljava/nio/channels/FileChannel;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 305
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 307
    :cond_2
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 308
    .local v12, outStream:Ljava/io/FileOutputStream;
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 310
    .local v5, outChannel:Ljava/nio/channels/FileChannel;
    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 311
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 312
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 314
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/dakkhin/android/bhadram/EntryList$7;->this$0:Lcom/dakkhin/android/bhadram/EntryList;

    invoke-direct {v9, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 315
    .restart local v9       #infoDialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f040016

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 316
    const v1, 0x7f040018

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 317
    const-string v1, "Ok"

    new-instance v2, Lcom/dakkhin/android/bhadram/EntryList$7$2;

    invoke-direct {v2, p0}, Lcom/dakkhin/android/bhadram/EntryList$7$2;-><init>(Lcom/dakkhin/android/bhadram/EntryList$7;)V

    invoke-virtual {v9, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 324
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 326
    .end local v0           #inChannel:Ljava/nio/channels/FileChannel;
    .end local v5           #outChannel:Ljava/nio/channels/FileChannel;
    .end local v8           #inStream:Ljava/io/FileInputStream;
    .end local v9           #infoDialog:Landroid/app/AlertDialog$Builder;
    .end local v12           #outStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 327
    :catch_1
    move-exception v1

    goto :goto_0
.end method
