.class public Lcom/stericson/RootTools/Executer$Worker;
.super Ljava/lang/Thread;
.source "Executer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/RootTools/Executer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Worker"
.end annotation


# instance fields
.field private commands:[Ljava/lang/String;

.field private executer:Lcom/stericson/RootTools/Executer;

.field public exit:I

.field public finalResponse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sleepTime:I

.field private useRoot:Z


# direct methods
.method private constructor <init>(Lcom/stericson/RootTools/Executer;[Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;Z)V
    .locals 1
    .parameter "executer"
    .parameter "commands"
    .parameter "sleepTime"
    .parameter "result"
    .parameter "useRoot"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 107
    const/16 v0, -0x38f

    iput v0, p0, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    .line 114
    iput-object p2, p0, Lcom/stericson/RootTools/Executer$Worker;->commands:[Ljava/lang/String;

    .line 115
    iput p3, p0, Lcom/stericson/RootTools/Executer$Worker;->sleepTime:I

    .line 116
    iput-object p1, p0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    .line 117
    iget-object v0, p0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    iput-object p4, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    .line 118
    iput-boolean p5, p0, Lcom/stericson/RootTools/Executer$Worker;->useRoot:Z

    .line 119
    return-void
.end method

.method synthetic constructor <init>(Lcom/stericson/RootTools/Executer;[Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;ZLcom/stericson/RootTools/Executer$Worker;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-direct/range {p0 .. p5}, Lcom/stericson/RootTools/Executer$Worker;-><init>(Lcom/stericson/RootTools/Executer;[Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 122
    const/4 v6, 0x0

    .line 123
    .local v6, os:Ljava/io/DataOutputStream;
    const/4 v10, 0x0

    .line 124
    .local v10, osRes:Ljava/io/InputStreamReader;
    const/4 v8, 0x0

    .line 128
    .local v8, osErr:Ljava/io/InputStreamReader;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 130
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Runtime;->gc()V

    .line 132
    sget-object v16, Lcom/stericson/RootTools/RootTools;->customShell:Ljava/lang/String;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v17, v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/stericson/RootTools/Executer$Worker;->useRoot:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    const-string v16, "su"

    :goto_0
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    .line 135
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/stericson/RootTools/Executer$Worker;->useRoot:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    const-string v16, "Using Root"

    :goto_1
    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 143
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/stericson/RootTools/RootTools$Result;->setProcess(Ljava/lang/Process;)Lcom/stericson/RootTools/RootTools$Result;

    .line 148
    :cond_0
    new-instance v7, Ljava/io/DataOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    .line 149
    .end local v6           #os:Ljava/io/DataOutputStream;
    .local v7, os:Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v11, Ljava/io/InputStreamReader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    .line 150
    .end local v10           #osRes:Ljava/io/InputStreamReader;
    .local v11, osRes:Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v9, Ljava/io/InputStreamReader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    .line 151
    .end local v8           #osErr:Ljava/io/InputStreamReader;
    .local v9, osErr:Ljava/io/InputStreamReader;
    :try_start_3
    new-instance v12, Ljava/io/BufferedReader;

    invoke-direct {v12, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 152
    .local v12, reader:Ljava/io/BufferedReader;
    new-instance v13, Ljava/io/BufferedReader;

    invoke-direct {v13, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 154
    .local v13, reader_error:Ljava/io/BufferedReader;
    const/4 v14, 0x0

    .line 156
    .local v14, response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    .line 157
    new-instance v14, Ljava/util/LinkedList;

    .end local v14           #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 163
    .restart local v14       #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->commands:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_9

    .line 170
    const-string v16, "exit \n"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 173
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, line:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, line_error:Ljava/lang/String;
    :goto_4
    if-nez v4, :cond_a

    .line 188
    const-string v16, "Done reading input stream"

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 190
    :goto_5
    if-nez v5, :cond_e

    .line 201
    const-string v16, "Done reading error stream"

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 215
    :try_start_5
    const-string v16, "In finally block"

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 218
    const-string v16, "Getting Exit"

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/stericson/RootTools/Executer$Worker;->finalResponse:Ljava/util/List;

    .line 220
    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Process;->waitFor()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    .line 222
    const-string v16, "Exit done..."

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 223
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    move/from16 v16, v0

    sput v16, Lcom/stericson/RootTools/RootTools;->lastExitCode:I

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1a

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/stericson/RootTools/RootTools$Result;->onComplete(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 246
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #line_error:Ljava/lang/String;
    :cond_2
    :goto_6
    if-eqz v7, :cond_1d

    .line 247
    :try_start_6
    const-string v16, "exit \n"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 249
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 250
    const/4 v6, 0x0

    .line 252
    .end local v7           #os:Ljava/io/DataOutputStream;
    .restart local v6       #os:Ljava/io/DataOutputStream;
    :goto_7
    if-eqz v11, :cond_1c

    .line 253
    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 254
    const/4 v10, 0x0

    .line 256
    .end local v11           #osRes:Ljava/io/InputStreamReader;
    .restart local v10       #osRes:Ljava/io/InputStreamReader;
    :goto_8
    if-eqz v9, :cond_1b

    .line 257
    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 258
    const/4 v8, 0x0

    .line 263
    .end local v9           #osErr:Ljava/io/InputStreamReader;
    .restart local v8       #osErr:Ljava/io/InputStreamReader;
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/stericson/RootTools/Executer;->closeShell()V

    .line 266
    .end local v12           #reader:Ljava/io/BufferedReader;
    .end local v13           #reader_error:Ljava/io/BufferedReader;
    .end local v14           #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_a
    return-void

    .line 134
    :cond_3
    :try_start_9
    const-string v16, "sh"

    goto/16 :goto_0

    .line 135
    :cond_4
    const-string v16, "Using sh"

    goto/16 :goto_1

    .line 139
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v17

    sget-object v18, Lcom/stericson/RootTools/RootTools;->customShell:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    .line 140
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Using custom shell: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v17, Lcom/stericson/RootTools/RootTools;->customShell:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_2

    .line 233
    :catch_0
    move-exception v16

    .line 246
    :goto_b
    if-eqz v6, :cond_6

    .line 247
    :try_start_a
    const-string v16, "exit \n"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 249
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 250
    const/4 v6, 0x0

    .line 252
    :cond_6
    if-eqz v10, :cond_7

    .line 253
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V

    .line 254
    const/4 v10, 0x0

    .line 256
    :cond_7
    if-eqz v8, :cond_8

    .line 257
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c

    .line 258
    const/4 v8, 0x0

    .line 263
    :cond_8
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/stericson/RootTools/Executer;->closeShell()V

    goto :goto_a

    .line 163
    .end local v6           #os:Ljava/io/DataOutputStream;
    .end local v8           #osErr:Ljava/io/InputStreamReader;
    .end local v10           #osRes:Ljava/io/InputStreamReader;
    .restart local v7       #os:Ljava/io/DataOutputStream;
    .restart local v9       #osErr:Ljava/io/InputStreamReader;
    .restart local v11       #osRes:Ljava/io/InputStreamReader;
    .restart local v12       #reader:Ljava/io/BufferedReader;
    .restart local v13       #reader_error:Ljava/io/BufferedReader;
    .restart local v14       #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    :try_start_b
    aget-object v15, v17, v16

    .line 164
    .local v15, single:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Shell command: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 165
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    .line 167
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/Executer$Worker;->sleepTime:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Thread;->sleep(J)V

    .line 163
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 177
    .end local v15           #single:Ljava/lang/String;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #line_error:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v16, v0

    if-nez v16, :cond_b

    .line 178
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :goto_d
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "input stream: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 180
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/stericson/RootTools/RootTools$Result;->process(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_d

    .line 204
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #line_error:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 206
    .local v3, ex:Ljava/lang/Exception;
    :try_start_c
    sget-boolean v16, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v16, :cond_c

    .line 207
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Error: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 210
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v16, v0

    if-eqz v16, :cond_d

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/RootTools$Result;->onFailure(Ljava/lang/Exception;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 215
    :cond_d
    :try_start_d
    const-string v16, "In finally block"

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 218
    const-string v16, "Getting Exit"

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/stericson/RootTools/Executer$Worker;->finalResponse:Ljava/util/List;

    .line 220
    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Process;->waitFor()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    .line 222
    const-string v16, "Exit done..."

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 223
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    move/from16 v16, v0

    sput v16, Lcom/stericson/RootTools/RootTools;->lastExitCode:I

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v16, v0

    if-eqz v16, :cond_15

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/stericson/RootTools/RootTools$Result;->onComplete(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_6

    .line 233
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v12           #reader:Ljava/io/BufferedReader;
    .end local v13           #reader_error:Ljava/io/BufferedReader;
    .end local v14           #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_2
    move-exception v16

    move-object v8, v9

    .end local v9           #osErr:Ljava/io/InputStreamReader;
    .restart local v8       #osErr:Ljava/io/InputStreamReader;
    move-object v10, v11

    .end local v11           #osRes:Ljava/io/InputStreamReader;
    .restart local v10       #osRes:Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7           #os:Ljava/io/DataOutputStream;
    .restart local v6       #os:Ljava/io/DataOutputStream;
    goto/16 :goto_b

    .line 191
    .end local v6           #os:Ljava/io/DataOutputStream;
    .end local v8           #osErr:Ljava/io/InputStreamReader;
    .end local v10           #osRes:Ljava/io/InputStreamReader;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #line_error:Ljava/lang/String;
    .restart local v7       #os:Ljava/io/DataOutputStream;
    .restart local v9       #osErr:Ljava/io/InputStreamReader;
    .restart local v11       #osRes:Ljava/io/InputStreamReader;
    .restart local v12       #reader:Ljava/io/BufferedReader;
    .restart local v13       #reader_error:Ljava/io/BufferedReader;
    .restart local v14       #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_e
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v16, v0

    if-nez v16, :cond_f

    .line 192
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :goto_e
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "error stream: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5

    .line 194
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/stericson/RootTools/RootTools$Result;->processError(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_e

    .line 214
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #line_error:Ljava/lang/String;
    :catchall_0
    move-exception v16

    .line 215
    :try_start_f
    const-string v17, "In finally block"

    invoke-static/range {v17 .. v17}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    .line 218
    const-string v17, "Getting Exit"

    invoke-static/range {v17 .. v17}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/stericson/RootTools/Executer$Worker;->finalResponse:Ljava/util/List;

    .line 220
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Process;->waitFor()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    .line 222
    const-string v17, "Exit done..."

    invoke-static/range {v17 .. v17}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 223
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    move/from16 v17, v0

    sput v17, Lcom/stericson/RootTools/RootTools;->lastExitCode:I

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v17, v0

    if-eqz v17, :cond_19

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/stericson/RootTools/RootTools$Result;->onComplete(I)V

    .line 231
    :cond_10
    :goto_f
    throw v16
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    .line 237
    .end local v12           #reader:Ljava/io/BufferedReader;
    .end local v13           #reader_error:Ljava/io/BufferedReader;
    .end local v14           #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_3
    move-exception v2

    move-object v8, v9

    .end local v9           #osErr:Ljava/io/InputStreamReader;
    .restart local v8       #osErr:Ljava/io/InputStreamReader;
    move-object v10, v11

    .end local v11           #osRes:Ljava/io/InputStreamReader;
    .restart local v10       #osRes:Ljava/io/InputStreamReader;
    move-object v6, v7

    .line 238
    .end local v7           #os:Ljava/io/DataOutputStream;
    .local v2, e:Ljava/lang/Exception;
    .restart local v6       #os:Ljava/io/DataOutputStream;
    :goto_10
    :try_start_10
    sget-boolean v16, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v16, :cond_11

    .line 239
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 240
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Error: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 246
    :cond_11
    if-eqz v6, :cond_12

    .line 247
    :try_start_11
    const-string v16, "exit \n"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 249
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 250
    const/4 v6, 0x0

    .line 252
    :cond_12
    if-eqz v10, :cond_13

    .line 253
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V

    .line 254
    const/4 v10, 0x0

    .line 256
    :cond_13
    if-eqz v8, :cond_14

    .line 257
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    .line 258
    const/4 v8, 0x0

    .line 263
    :cond_14
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/stericson/RootTools/Executer;->closeShell()V

    goto/16 :goto_a

    .line 228
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #os:Ljava/io/DataOutputStream;
    .end local v8           #osErr:Ljava/io/InputStreamReader;
    .end local v10           #osRes:Ljava/io/InputStreamReader;
    .restart local v3       #ex:Ljava/lang/Exception;
    .restart local v7       #os:Ljava/io/DataOutputStream;
    .restart local v9       #osErr:Ljava/io/InputStreamReader;
    .restart local v11       #osRes:Ljava/io/InputStreamReader;
    .restart local v12       #reader:Ljava/io/BufferedReader;
    .restart local v13       #reader_error:Ljava/io/BufferedReader;
    .restart local v14       #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_15
    :try_start_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    goto/16 :goto_6

    .line 242
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v12           #reader:Ljava/io/BufferedReader;
    .end local v13           #reader_error:Ljava/io/BufferedReader;
    .end local v14           #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v16

    move-object v8, v9

    .end local v9           #osErr:Ljava/io/InputStreamReader;
    .restart local v8       #osErr:Ljava/io/InputStreamReader;
    move-object v10, v11

    .end local v11           #osRes:Ljava/io/InputStreamReader;
    .restart local v10       #osRes:Ljava/io/InputStreamReader;
    move-object v6, v7

    .line 246
    .end local v7           #os:Ljava/io/DataOutputStream;
    .restart local v6       #os:Ljava/io/DataOutputStream;
    :goto_12
    if-eqz v6, :cond_16

    .line 247
    :try_start_13
    const-string v17, "exit \n"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    .line 249
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 250
    const/4 v6, 0x0

    .line 252
    :cond_16
    if-eqz v10, :cond_17

    .line 253
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V

    .line 254
    const/4 v10, 0x0

    .line 256
    :cond_17
    if-eqz v8, :cond_18

    .line 257
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    .line 258
    const/4 v8, 0x0

    .line 263
    :cond_18
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/stericson/RootTools/Executer;->closeShell()V

    .line 265
    throw v16

    .line 228
    .end local v6           #os:Ljava/io/DataOutputStream;
    .end local v8           #osErr:Ljava/io/InputStreamReader;
    .end local v10           #osRes:Ljava/io/InputStreamReader;
    .restart local v7       #os:Ljava/io/DataOutputStream;
    .restart local v9       #osErr:Ljava/io/InputStreamReader;
    .restart local v11       #osRes:Ljava/io/InputStreamReader;
    .restart local v12       #reader:Ljava/io/BufferedReader;
    .restart local v13       #reader_error:Ljava/io/BufferedReader;
    .restart local v14       #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_19
    :try_start_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #line_error:Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    goto/16 :goto_6

    .line 260
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #line_error:Ljava/lang/String;
    :catch_4
    move-exception v16

    move-object v10, v11

    .end local v11           #osRes:Ljava/io/InputStreamReader;
    .restart local v10       #osRes:Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7           #os:Ljava/io/DataOutputStream;
    .restart local v6       #os:Ljava/io/DataOutputStream;
    :goto_14
    move-object v8, v9

    .end local v9           #osErr:Ljava/io/InputStreamReader;
    .restart local v8       #osErr:Ljava/io/InputStreamReader;
    goto/16 :goto_9

    .end local v8           #osErr:Ljava/io/InputStreamReader;
    .end local v10           #osRes:Ljava/io/InputStreamReader;
    .restart local v9       #osErr:Ljava/io/InputStreamReader;
    .restart local v11       #osRes:Ljava/io/InputStreamReader;
    :catch_5
    move-exception v16

    move-object v10, v11

    .end local v11           #osRes:Ljava/io/InputStreamReader;
    .restart local v10       #osRes:Ljava/io/InputStreamReader;
    goto :goto_14

    :catch_6
    move-exception v16

    goto :goto_14

    .end local v9           #osErr:Ljava/io/InputStreamReader;
    .end local v12           #reader:Ljava/io/BufferedReader;
    .end local v13           #reader_error:Ljava/io/BufferedReader;
    .end local v14           #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8       #osErr:Ljava/io/InputStreamReader;
    :catch_7
    move-exception v17

    goto :goto_13

    .line 242
    :catchall_2
    move-exception v16

    goto :goto_12

    .end local v6           #os:Ljava/io/DataOutputStream;
    .restart local v7       #os:Ljava/io/DataOutputStream;
    :catchall_3
    move-exception v16

    move-object v6, v7

    .end local v7           #os:Ljava/io/DataOutputStream;
    .restart local v6       #os:Ljava/io/DataOutputStream;
    goto :goto_12

    .end local v6           #os:Ljava/io/DataOutputStream;
    .end local v10           #osRes:Ljava/io/InputStreamReader;
    .restart local v7       #os:Ljava/io/DataOutputStream;
    .restart local v11       #osRes:Ljava/io/InputStreamReader;
    :catchall_4
    move-exception v16

    move-object v10, v11

    .end local v11           #osRes:Ljava/io/InputStreamReader;
    .restart local v10       #osRes:Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7           #os:Ljava/io/DataOutputStream;
    .restart local v6       #os:Ljava/io/DataOutputStream;
    goto :goto_12

    .line 260
    .restart local v2       #e:Ljava/lang/Exception;
    :catch_8
    move-exception v16

    goto :goto_11

    .line 237
    .end local v2           #e:Ljava/lang/Exception;
    :catch_9
    move-exception v2

    goto/16 :goto_10

    .end local v6           #os:Ljava/io/DataOutputStream;
    .restart local v7       #os:Ljava/io/DataOutputStream;
    :catch_a
    move-exception v2

    move-object v6, v7

    .end local v7           #os:Ljava/io/DataOutputStream;
    .restart local v6       #os:Ljava/io/DataOutputStream;
    goto/16 :goto_10

    .end local v6           #os:Ljava/io/DataOutputStream;
    .end local v10           #osRes:Ljava/io/InputStreamReader;
    .restart local v7       #os:Ljava/io/DataOutputStream;
    .restart local v11       #osRes:Ljava/io/InputStreamReader;
    :catch_b
    move-exception v2

    move-object v10, v11

    .end local v11           #osRes:Ljava/io/InputStreamReader;
    .restart local v10       #osRes:Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7           #os:Ljava/io/DataOutputStream;
    .restart local v6       #os:Ljava/io/DataOutputStream;
    goto/16 :goto_10

    .line 260
    :catch_c
    move-exception v16

    goto/16 :goto_c

    .line 233
    .end local v6           #os:Ljava/io/DataOutputStream;
    .restart local v7       #os:Ljava/io/DataOutputStream;
    :catch_d
    move-exception v16

    move-object v6, v7

    .end local v7           #os:Ljava/io/DataOutputStream;
    .restart local v6       #os:Ljava/io/DataOutputStream;
    goto/16 :goto_b

    .end local v6           #os:Ljava/io/DataOutputStream;
    .end local v10           #osRes:Ljava/io/InputStreamReader;
    .restart local v7       #os:Ljava/io/DataOutputStream;
    .restart local v11       #osRes:Ljava/io/InputStreamReader;
    :catch_e
    move-exception v16

    move-object v10, v11

    .end local v11           #osRes:Ljava/io/InputStreamReader;
    .restart local v10       #osRes:Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7           #os:Ljava/io/DataOutputStream;
    .restart local v6       #os:Ljava/io/DataOutputStream;
    goto/16 :goto_b

    .end local v8           #osErr:Ljava/io/InputStreamReader;
    .restart local v9       #osErr:Ljava/io/InputStreamReader;
    .restart local v12       #reader:Ljava/io/BufferedReader;
    .restart local v13       #reader_error:Ljava/io/BufferedReader;
    .restart local v14       #response:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1b
    move-object v8, v9

    .end local v9           #osErr:Ljava/io/InputStreamReader;
    .restart local v8       #osErr:Ljava/io/InputStreamReader;
    goto/16 :goto_9

    .end local v8           #osErr:Ljava/io/InputStreamReader;
    .end local v10           #osRes:Ljava/io/InputStreamReader;
    .restart local v9       #osErr:Ljava/io/InputStreamReader;
    .restart local v11       #osRes:Ljava/io/InputStreamReader;
    :cond_1c
    move-object v10, v11

    .end local v11           #osRes:Ljava/io/InputStreamReader;
    .restart local v10       #osRes:Ljava/io/InputStreamReader;
    goto/16 :goto_8

    .end local v6           #os:Ljava/io/DataOutputStream;
    .end local v10           #osRes:Ljava/io/InputStreamReader;
    .restart local v7       #os:Ljava/io/DataOutputStream;
    .restart local v11       #osRes:Ljava/io/InputStreamReader;
    :cond_1d
    move-object v6, v7

    .end local v7           #os:Ljava/io/DataOutputStream;
    .restart local v6       #os:Ljava/io/DataOutputStream;
    goto/16 :goto_7
.end method
