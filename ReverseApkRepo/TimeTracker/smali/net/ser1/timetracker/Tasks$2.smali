.class Lnet/ser1/timetracker/Tasks$2;
.super Ljava/lang/Object;
.source "Tasks.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/ser1/timetracker/Tasks;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/ser1/timetracker/Tasks;


# direct methods
.method constructor <init>(Lnet/ser1/timetracker/Tasks;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/ser1/timetracker/Tasks$2;->this$0:Lnet/ser1/timetracker/Tasks;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 21
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 356
    packed-switch p2, :pswitch_data_0

    .line 412
    :goto_0
    return-void

    .line 358
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/ser1/timetracker/Tasks$2;->this$0:Lnet/ser1/timetracker/Tasks;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    invoke-virtual/range {v17 .. v18}, Lnet/ser1/timetracker/Tasks;->showDialog(I)V

    goto :goto_0

    .line 361
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/ser1/timetracker/Tasks$2;->this$0:Lnet/ser1/timetracker/Tasks;

    move-object/from16 v17, v0

    #calls: Lnet/ser1/timetracker/Tasks;->getExportCsvFileName()Ljava/io/File;
    invoke-static/range {v17 .. v17}, Lnet/ser1/timetracker/Tasks;->access$8(Lnet/ser1/timetracker/Tasks;)Ljava/io/File;

    move-result-object v10

    .line 362
    .local v10, fout:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/ser1/timetracker/Tasks$2;->this$0:Lnet/ser1/timetracker/Tasks;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    #calls: Lnet/ser1/timetracker/Tasks;->export(Ljava/io/File;)Lnet/ser1/timetracker/Tasks$Result;
    invoke-static {v0, v1}, Lnet/ser1/timetracker/Tasks;->access$9(Lnet/ser1/timetracker/Tasks;Ljava/io/File;)Lnet/ser1/timetracker/Tasks$Result;

    move-result-object v16

    .line 363
    .local v16, result:Lnet/ser1/timetracker/Tasks$Result;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/ser1/timetracker/Tasks$2;->this$0:Lnet/ser1/timetracker/Tasks;

    move-object/from16 v17, v0

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    .line 364
    const v19, 0x7f06003c

    .line 365
    const v20, 0x7f06003d

    .line 363
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/ser1/timetracker/Tasks;->perform(Lnet/ser1/timetracker/Tasks$Result;Ljava/lang/String;II)V

    goto :goto_0

    .line 368
    .end local v10           #fout:Ljava/io/File;
    .end local v16           #result:Lnet/ser1/timetracker/Tasks$Result;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/ser1/timetracker/Tasks$2;->this$0:Lnet/ser1/timetracker/Tasks;

    move-object/from16 v17, v0

    const/16 v18, 0x10

    invoke-virtual/range {v17 .. v18}, Lnet/ser1/timetracker/Tasks;->showDialog(I)V

    .line 369
    new-instance v17, Ljava/io/File;

    const-string v18, "/sdcard/timetracker.db"

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 371
    const-string v17, "/sdcard/timetracker.db"

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 372
    .local v7, backupDb:Landroid/database/sqlite/SQLiteDatabase;
    const-string v17, "/data/data/net.ser1.timetracker/databases/timetracker.db"

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 373
    .local v5, appDb:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v6, Lnet/ser1/timetracker/DBBackup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/ser1/timetracker/Tasks$2;->this$0:Lnet/ser1/timetracker/Tasks;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/ser1/timetracker/Tasks$2;->this$0:Lnet/ser1/timetracker/Tasks;

    move-object/from16 v18, v0

    #getter for: Lnet/ser1/timetracker/Tasks;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v18 .. v18}, Lnet/ser1/timetracker/Tasks;->access$10(Lnet/ser1/timetracker/Tasks;)Landroid/app/ProgressDialog;

    move-result-object v18

    const/16 v19, 0x0

    move-object v0, v6

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lnet/ser1/timetracker/DBBackup;-><init>(Lnet/ser1/timetracker/Tasks;Landroid/app/ProgressDialog;I)V

    .line 374
    .local v6, backup:Lnet/ser1/timetracker/DBBackup;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v5, v17, v18

    const/16 v18, 0x1

    aput-object v7, v17, v18

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lnet/ser1/timetracker/DBBackup;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 376
    .end local v5           #appDb:Landroid/database/sqlite/SQLiteDatabase;
    .end local v6           #backup:Lnet/ser1/timetracker/DBBackup;
    .end local v7           #backupDb:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const/4 v11, 0x0

    .line 377
    .local v11, in:Ljava/io/InputStream;
    const/4 v14, 0x0

    .line 380
    .local v14, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v12, Ljava/io/BufferedInputStream;

    new-instance v17, Ljava/io/FileInputStream;

    const-string v18, "/data/data/net.ser1.timetracker/databases/timetracker.db"

    invoke-direct/range {v17 .. v18}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 381
    .end local v11           #in:Ljava/io/InputStream;
    .local v12, in:Ljava/io/InputStream;
    :try_start_1
    new-instance v15, Ljava/io/BufferedOutputStream;

    new-instance v17, Ljava/io/FileOutputStream;

    const-string v18, "/sdcard/timetracker.db"

    invoke-direct/range {v17 .. v18}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 382
    .end local v14           #out:Ljava/io/OutputStream;
    .local v15, out:Ljava/io/OutputStream;
    :try_start_2
    invoke-virtual {v12}, Ljava/io/InputStream;->read()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    move-result v8

    .local v8, c:I
    :goto_1
    const/16 v17, -0x1

    move v0, v8

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 390
    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 391
    :goto_2
    :try_start_4
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v17

    goto/16 :goto_0

    .line 383
    :cond_1
    :try_start_5
    invoke-virtual {v15, v8}, Ljava/io/OutputStream;->write(I)V

    .line 382
    invoke-virtual {v12}, Ljava/io/InputStream;->read()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    move-result v8

    goto :goto_1

    .line 385
    .end local v8           #c:I
    .end local v12           #in:Ljava/io/InputStream;
    .end local v15           #out:Ljava/io/OutputStream;
    .restart local v11       #in:Ljava/io/InputStream;
    .restart local v14       #out:Ljava/io/OutputStream;
    :catch_1
    move-exception v17

    move-object/from16 v9, v17

    .line 386
    .local v9, ex:Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-class v17, Lnet/ser1/timetracker/Tasks;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v17

    sget-object v18, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/ser1/timetracker/Tasks$2;->this$0:Lnet/ser1/timetracker/Tasks;

    move-object/from16 v17, v0

    invoke-virtual {v9}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v18

    #setter for: Lnet/ser1/timetracker/Tasks;->exportMessage:Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lnet/ser1/timetracker/Tasks;->access$11(Lnet/ser1/timetracker/Tasks;Ljava/lang/String;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/ser1/timetracker/Tasks$2;->this$0:Lnet/ser1/timetracker/Tasks;

    move-object/from16 v17, v0

    const/16 v18, 0xb

    invoke-virtual/range {v17 .. v18}, Lnet/ser1/timetracker/Tasks;->showDialog(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 390
    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 391
    :goto_4
    :try_start_8
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v17

    goto/16 :goto_0

    .line 389
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    .line 390
    :goto_5
    :try_start_9
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 391
    :goto_6
    :try_start_a
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 392
    :goto_7
    throw v17

    .line 396
    .end local v11           #in:Ljava/io/InputStream;
    .end local v14           #out:Ljava/io/OutputStream;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/ser1/timetracker/Tasks$2;->this$0:Lnet/ser1/timetracker/Tasks;

    move-object/from16 v17, v0

    const/16 v18, 0x10

    invoke-virtual/range {v17 .. v18}, Lnet/ser1/timetracker/Tasks;->showDialog(I)V

    .line 397
    const-string v17, "/sdcard/timetracker.db"

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 398
    .restart local v7       #backupDb:Landroid/database/sqlite/SQLiteDatabase;
    const-string v17, "/data/data/net.ser1.timetracker/databases/timetracker.db"

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 399
    .restart local v5       #appDb:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v6, Lnet/ser1/timetracker/DBBackup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/ser1/timetracker/Tasks$2;->this$0:Lnet/ser1/timetracker/Tasks;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/ser1/timetracker/Tasks$2;->this$0:Lnet/ser1/timetracker/Tasks;

    move-object/from16 v18, v0

    #getter for: Lnet/ser1/timetracker/Tasks;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v18 .. v18}, Lnet/ser1/timetracker/Tasks;->access$10(Lnet/ser1/timetracker/Tasks;)Landroid/app/ProgressDialog;

    move-result-object v18

    const/16 v19, 0x1

    move-object v0, v6

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lnet/ser1/timetracker/DBBackup;-><init>(Lnet/ser1/timetracker/Tasks;Landroid/app/ProgressDialog;I)V

    .line 400
    .restart local v6       #backup:Lnet/ser1/timetracker/DBBackup;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v7, v17, v18

    const/16 v18, 0x1

    aput-object v5, v17, v18

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lnet/ser1/timetracker/DBBackup;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 403
    .end local v5           #appDb:Landroid/database/sqlite/SQLiteDatabase;
    .end local v6           #backup:Lnet/ser1/timetracker/DBBackup;
    .end local v7           #backupDb:Landroid/database/sqlite/SQLiteDatabase;
    :pswitch_4
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/ser1/timetracker/Tasks$2;->this$0:Lnet/ser1/timetracker/Tasks;

    move-object/from16 v17, v0

    const-class v18, Lnet/ser1/timetracker/Preferences;

    move-object v0, v13

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 404
    .local v13, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/ser1/timetracker/Tasks$2;->this$0:Lnet/ser1/timetracker/Tasks;

    move-object/from16 v17, v0

    const/16 v18, 0xf

    move-object/from16 v0, v17

    move-object v1, v13

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lnet/ser1/timetracker/Tasks;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 407
    .end local v13           #intent:Landroid/content/Intent;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/ser1/timetracker/Tasks$2;->this$0:Lnet/ser1/timetracker/Tasks;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Lnet/ser1/timetracker/Tasks;->showDialog(I)V

    goto/16 :goto_0

    .line 390
    .restart local v9       #ex:Ljava/lang/Exception;
    .restart local v11       #in:Ljava/io/InputStream;
    .restart local v14       #out:Ljava/io/OutputStream;
    :catch_3
    move-exception v17

    goto/16 :goto_4

    .end local v9           #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v18

    goto/16 :goto_6

    .line 391
    :catch_5
    move-exception v18

    goto/16 :goto_7

    .line 390
    .end local v11           #in:Ljava/io/InputStream;
    .end local v14           #out:Ljava/io/OutputStream;
    .restart local v8       #c:I
    .restart local v12       #in:Ljava/io/InputStream;
    .restart local v15       #out:Ljava/io/OutputStream;
    :catch_6
    move-exception v17

    goto/16 :goto_2

    .line 389
    .end local v8           #c:I
    .end local v15           #out:Ljava/io/OutputStream;
    .restart local v14       #out:Ljava/io/OutputStream;
    :catchall_1
    move-exception v17

    move-object v11, v12

    .end local v12           #in:Ljava/io/InputStream;
    .restart local v11       #in:Ljava/io/InputStream;
    goto/16 :goto_5

    .end local v11           #in:Ljava/io/InputStream;
    .end local v14           #out:Ljava/io/OutputStream;
    .restart local v12       #in:Ljava/io/InputStream;
    .restart local v15       #out:Ljava/io/OutputStream;
    :catchall_2
    move-exception v17

    move-object v14, v15

    .end local v15           #out:Ljava/io/OutputStream;
    .restart local v14       #out:Ljava/io/OutputStream;
    move-object v11, v12

    .end local v12           #in:Ljava/io/InputStream;
    .restart local v11       #in:Ljava/io/InputStream;
    goto/16 :goto_5

    .line 385
    .end local v11           #in:Ljava/io/InputStream;
    .restart local v12       #in:Ljava/io/InputStream;
    :catch_7
    move-exception v17

    move-object/from16 v9, v17

    move-object v11, v12

    .end local v12           #in:Ljava/io/InputStream;
    .restart local v11       #in:Ljava/io/InputStream;
    goto/16 :goto_3

    .end local v11           #in:Ljava/io/InputStream;
    .end local v14           #out:Ljava/io/OutputStream;
    .restart local v12       #in:Ljava/io/InputStream;
    .restart local v15       #out:Ljava/io/OutputStream;
    :catch_8
    move-exception v17

    move-object/from16 v9, v17

    move-object v14, v15

    .end local v15           #out:Ljava/io/OutputStream;
    .restart local v14       #out:Ljava/io/OutputStream;
    move-object v11, v12

    .end local v12           #in:Ljava/io/InputStream;
    .restart local v11       #in:Ljava/io/InputStream;
    goto/16 :goto_3

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
