.class Lcom/mobclix/android/sdk/Mobclix$Sync;
.super Ljava/lang/Object;
.source "Mobclix.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/Mobclix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Sync"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/Mobclix;


# direct methods
.method private constructor <init>(Lcom/mobclix/android/sdk/Mobclix;)V
    .locals 0
    .parameter

    .prologue
    .line 694
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$Sync;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobclix/android/sdk/Mobclix;Lcom/mobclix/android/sdk/Mobclix$Sync;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/Mobclix$Sync;-><init>(Lcom/mobclix/android/sdk/Mobclix;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 22

    .prologue
    .line 697
    monitor-enter p0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$0()Z

    move-result v19

    if-nez v19, :cond_0

    .line 699
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$12()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/mobclix/android/sdk/Mobclix;->access$13(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    :try_start_1
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$6()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v19

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->context:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/mobclix/android/sdk/Mobclix;->access$14(Lcom/mobclix/android/sdk/Mobclix;)Landroid/content/Context;

    move-result-object v19

    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$15()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v12

    .line 703
    .local v12, mcDir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$16()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v2

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 704
    .local v2, anDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 706
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 707
    .local v8, files:[Ljava/io/File;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move-object v0, v8

    array-length v0, v0

    move/from16 v19, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v10

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    .line 785
    .end local v2           #anDir:Ljava/io/File;
    .end local v8           #files:[Ljava/io/File;
    .end local v10           #i:I
    .end local v12           #mcDir:Ljava/io/File;
    :goto_1
    const/16 v19, 0x0

    :try_start_2
    invoke-static/range {v19 .. v19}, Lcom/mobclix/android/sdk/Mobclix;->access$18(Ljava/lang/String;)V

    .line 786
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/mobclix/android/sdk/Mobclix;->access$9(I)V

    .line 787
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/mobclix/android/sdk/Mobclix;->access$11(Z)V

    .line 789
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$2()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/mobclix/android/sdk/Mobclix;->access$13(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 790
    :goto_2
    monitor-exit p0

    return-void

    .line 708
    .restart local v2       #anDir:Ljava/io/File;
    .restart local v8       #files:[Ljava/io/File;
    .restart local v10       #i:I
    .restart local v12       #mcDir:Ljava/io/File;
    :cond_1
    :try_start_3
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 709
    .local v5, data:Ljava/lang/StringBuffer;
    const-string v19, "p=android"

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 710
    const-string v19, "&a="

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$6()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/mobclix/android/sdk/Mobclix;->getApplicationId()Ljava/lang/String;

    move-result-object v20

    const-string v21, "UTF-8"

    invoke-static/range {v20 .. v21}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 711
    const-string v19, "&m="

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$6()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/mobclix/android/sdk/Mobclix;->getMobclixVersion()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 712
    const-string v19, "&d="

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$6()Lcom/mobclix/android/sdk/Mobclix;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/mobclix/android/sdk/Mobclix;->getDeviceId()Ljava/lang/String;

    move-result-object v20

    const-string v21, "UTF-8"

    invoke-static/range {v20 .. v21}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 713
    const-string v19, "&v="

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$Sync;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v20, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->applicationVersion:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/mobclix/android/sdk/Mobclix;->access$17(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "UTF-8"

    invoke-static/range {v20 .. v21}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 714
    const-string v19, "&j="

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 716
    new-instance v9, Ljava/io/FileInputStream;

    aget-object v19, v8, v10

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 717
    .local v9, fis:Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 718
    .local v3, bis:Ljava/io/BufferedInputStream;
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 720
    .local v6, dis:Ljava/io/DataInputStream;
    :goto_3
    invoke-virtual {v6}, Ljava/io/DataInputStream;->available()I

    move-result v19

    if-nez v19, :cond_3

    .line 723
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    .line 724
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 725
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 727
    const-string v19, "]}]"

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 729
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/mobclix/android/sdk/Mobclix;->access$18(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 734
    const/16 v17, 0x0

    .line 735
    .local v17, url:Ljava/net/URL;
    const/4 v4, 0x0

    .line 737
    .local v4, conn:Ljava/net/HttpURLConnection;
    :try_start_4
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/Mobclix$Sync;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    move-object/from16 v19, v0

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->analyticsServer:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/mobclix/android/sdk/Mobclix;->access$19(Lcom/mobclix/android/sdk/Mobclix;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 738
    .end local v17           #url:Ljava/net/URL;
    .local v18, url:Ljava/net/URL;
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    .end local v5           #data:Ljava/lang/StringBuffer;
    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 740
    const/16 v19, 0x1

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 741
    const/16 v19, 0x1

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 742
    const/16 v19, 0x0

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 743
    const-string v19, "POST"

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 745
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    .line 746
    .local v13, ost:Ljava/io/OutputStream;
    new-instance v14, Ljava/io/PrintWriter;

    invoke-direct {v14, v13}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 747
    .local v14, pw:Ljava/io/PrintWriter;
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$20()Ljava/lang/String;

    move-result-object v19

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 749
    invoke-virtual {v14}, Ljava/io/PrintWriter;->flush()V

    .line 750
    invoke-virtual {v14}, Ljava/io/PrintWriter;->close()V

    .line 753
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v0, v15

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 754
    .local v15, rd:Ljava/io/BufferedReader;
    const/4 v11, 0x0

    .line 758
    .local v11, line:Ljava/lang/String;
    :cond_2
    :goto_4
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .local v16, templine:Ljava/lang/String;
    if-nez v16, :cond_4

    .line 762
    const-string v19, "1"

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 768
    :goto_5
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v17, v18

    .line 775
    .end local v11           #line:Ljava/lang/String;
    .end local v13           #ost:Ljava/io/OutputStream;
    .end local v14           #pw:Ljava/io/PrintWriter;
    .end local v15           #rd:Ljava/io/BufferedReader;
    .end local v16           #templine:Ljava/lang/String;
    .end local v18           #url:Ljava/net/URL;
    .restart local v17       #url:Ljava/net/URL;
    :goto_6
    :try_start_6
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$1()I

    move-result v19

    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$21()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 777
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$2()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/mobclix/android/sdk/Mobclix;->access$13(I)V

    goto/16 :goto_2

    .line 783
    .end local v2           #anDir:Ljava/io/File;
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #conn:Ljava/net/HttpURLConnection;
    .end local v6           #dis:Ljava/io/DataInputStream;
    .end local v8           #files:[Ljava/io/File;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v10           #i:I
    .end local v12           #mcDir:Ljava/io/File;
    .end local v17           #url:Ljava/net/URL;
    :catch_0
    move-exception v19

    goto/16 :goto_1

    .line 721
    .restart local v2       #anDir:Ljava/io/File;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #data:Ljava/lang/StringBuffer;
    .restart local v6       #dis:Ljava/io/DataInputStream;
    .restart local v8       #files:[Ljava/io/File;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    .restart local v10       #i:I
    .restart local v12       #mcDir:Ljava/io/File;
    :cond_3
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v19

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_3

    .line 697
    .end local v2           #anDir:Ljava/io/File;
    .end local v3           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #data:Ljava/lang/StringBuffer;
    .end local v6           #dis:Ljava/io/DataInputStream;
    .end local v8           #files:[Ljava/io/File;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v10           #i:I
    .end local v12           #mcDir:Ljava/io/File;
    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 759
    .restart local v2       #anDir:Ljava/io/File;
    .restart local v3       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #conn:Ljava/net/HttpURLConnection;
    .restart local v6       #dis:Ljava/io/DataInputStream;
    .restart local v8       #files:[Ljava/io/File;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    .restart local v10       #i:I
    .restart local v11       #line:Ljava/lang/String;
    .restart local v12       #mcDir:Ljava/io/File;
    .restart local v13       #ost:Ljava/io/OutputStream;
    .restart local v14       #pw:Ljava/io/PrintWriter;
    .restart local v15       #rd:Ljava/io/BufferedReader;
    .restart local v16       #templine:Ljava/lang/String;
    .restart local v18       #url:Ljava/net/URL;
    :cond_4
    if-nez v11, :cond_2

    move-object/from16 v11, v16

    goto :goto_4

    .line 766
    :cond_5
    :try_start_7
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$21()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/mobclix/android/sdk/Mobclix;->access$13(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    .line 769
    .end local v11           #line:Ljava/lang/String;
    .end local v13           #ost:Ljava/io/OutputStream;
    .end local v14           #pw:Ljava/io/PrintWriter;
    .end local v15           #rd:Ljava/io/BufferedReader;
    .end local v16           #templine:Ljava/lang/String;
    :catch_1
    move-exception v19

    move-object/from16 v7, v19

    move-object/from16 v17, v18

    .line 771
    .end local v18           #url:Ljava/net/URL;
    .local v7, e:Ljava/lang/Exception;
    .restart local v17       #url:Ljava/net/URL;
    :goto_7
    :try_start_8
    invoke-static {}, Lcom/mobclix/android/sdk/Mobclix;->access$21()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/mobclix/android/sdk/Mobclix;->access$13(I)V

    goto :goto_6

    .line 780
    .end local v7           #e:Ljava/lang/Exception;
    :cond_6
    aget-object v19, v8, v10

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 707
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 769
    .restart local v5       #data:Ljava/lang/StringBuffer;
    :catch_2
    move-exception v19

    move-object/from16 v7, v19

    goto :goto_7
.end method
