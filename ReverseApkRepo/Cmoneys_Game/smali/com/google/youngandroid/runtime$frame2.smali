.class public Lcom/google/youngandroid/runtime$frame2;
.super Lgnu/expr/ModuleBody;
.source "runtime334892613208221024.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/youngandroid/runtime;->inUi(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame2"
.end annotation


# instance fields
.field final lambda$Fn7:Lgnu/expr/ModuleMethod;

.field promise:Ljava/lang/Object;

.field return$Mntag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/tmp/runtime334892613208221024.scm:1722"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/youngandroid/runtime$frame2;->lambda$Fn7:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 1722
    invoke-virtual {p0}, Lcom/google/youngandroid/runtime$frame2;->lambda11()V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method lambda11()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v6, "/tmp/runtime334892613208221024.scm"

    .line 1722
    iget-object v1, p0, Lcom/google/youngandroid/runtime$frame2;->return$Mntag:Ljava/lang/Object;

    instance-of v2, v1, [Ljava/lang/Object;

    if-eqz v2, :cond_0

    check-cast v1, [Ljava/lang/Object;

    :goto_0
    invoke-static {v1}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v1

    invoke-static {v1}, Lcom/google/youngandroid/runtime;->androidLog(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/youngandroid/runtime$frame2;->return$Mntag:Ljava/lang/Object;

    .line 1726
    const/4 v2, 0x3

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/youngandroid/runtime;->$Stsuccess$St:Lgnu/mapping/Location;
    :try_end_0
    .catch Lcom/google/devtools/simple/runtime/errors/YailRuntimeError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual {v4}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_1
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/devtools/simple/runtime/errors/YailRuntimeError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v4

    :try_start_2
    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/google/youngandroid/runtime;->$Stresult$Mnindicator$St:Lgnu/mapping/Location;
    :try_end_2
    .catch Lcom/google/devtools/simple/runtime/errors/YailRuntimeError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-virtual {v4}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_3
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/devtools/simple/runtime/errors/YailRuntimeError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v4

    :try_start_4
    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/youngandroid/runtime$frame2;->promise:Ljava/lang/Object;

    invoke-static {v4}, Lkawa/lib/misc;->force(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/youngandroid/runtime;->value$To$String(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;
    :try_end_4
    .catch Lcom/google/devtools/simple/runtime/errors/YailRuntimeError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v2

    .line 1737
    :goto_1
    invoke-static {v1, v2}, Lcom/google/youngandroid/runtime;->sendToBlock(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 1722
    :cond_0
    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v7

    move-object v1, v2

    goto :goto_0

    .line 1726
    :catch_0
    move-exception v2

    :try_start_5
    const-string v3, "/tmp/runtime334892613208221024.scm"

    const/16 v4, 0x6bf

    const/16 v5, 0x30

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v2
    :try_end_5
    .catch Lcom/google/devtools/simple/runtime/errors/YailRuntimeError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_1
    move-exception v2

    move-object v0, v2

    .line 1731
    .local v0, exception:Lcom/google/devtools/simple/runtime/errors/YailRuntimeError;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/youngandroid/runtime;->androidLog(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/youngandroid/runtime;->$Stfailure$St:Lgnu/mapping/Location;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :try_start_7
    invoke-virtual {v4}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_7
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v4

    :try_start_8
    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/google/youngandroid/runtime;->$Stresult$Mnindicator$St:Lgnu/mapping/Location;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :try_start_9
    invoke-virtual {v4}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_9
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move-result-object v4

    :try_start_a
    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    move-result-object v2

    goto :goto_1

    .line 1726
    .end local v0           #exception:Lcom/google/devtools/simple/runtime/errors/YailRuntimeError;
    :catch_2
    move-exception v2

    :try_start_b
    const-string v3, "/tmp/runtime334892613208221024.scm"

    const/16 v4, 0x6c0

    const/16 v5, 0x30

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v2
    :try_end_b
    .catch Lcom/google/devtools/simple/runtime/errors/YailRuntimeError; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 1731
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 1737
    .local v0, exception:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/youngandroid/runtime;->androidLog(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/google/youngandroid/runtime;->$Stfailure$St:Lgnu/mapping/Location;

    :try_start_c
    invoke-virtual {v3}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_c
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_c .. :try_end_c} :catch_6

    move-result-object v3

    aput-object v3, v2, v7

    sget-object v3, Lcom/google/youngandroid/runtime;->$Stresult$Mnindicator$St:Lgnu/mapping/Location;

    :try_start_d
    invoke-virtual {v3}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_d
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_d .. :try_end_d} :catch_7

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Lcom/google/youngandroid/runtime;->$Stjava$Mnexception$Mnmessage$St:Lgnu/mapping/Location;

    :try_start_e
    invoke-virtual {v3}, Lgnu/mapping/Location;->get()Ljava/lang/Object;
    :try_end_e
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_e .. :try_end_e} :catch_8

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v2}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v2

    goto :goto_1

    .line 1731
    .local v0, exception:Lcom/google/devtools/simple/runtime/errors/YailRuntimeError;
    :catch_4
    move-exception v2

    :try_start_f
    const-string v3, "/tmp/runtime334892613208221024.scm"

    const/16 v4, 0x6c5

    const/16 v5, 0x23

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v2

    :catch_5
    move-exception v2

    const-string v3, "/tmp/runtime334892613208221024.scm"

    const/16 v4, 0x6c6

    const/16 v5, 0x23

    invoke-virtual {v2, v3, v4, v5}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    .line 1737
    .local v0, exception:Ljava/lang/Exception;
    :catch_6
    move-exception v1

    const-string v2, "/tmp/runtime334892613208221024.scm"

    const/16 v2, 0x6cc

    const/16 v3, 0x22

    invoke-virtual {v1, v6, v2, v3}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v1

    :catch_7
    move-exception v1

    const-string v2, "/tmp/runtime334892613208221024.scm"

    const/16 v2, 0x6cd

    const/16 v3, 0x22

    invoke-virtual {v1, v6, v2, v3}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v1

    :catch_8
    move-exception v1

    const-string v2, "/tmp/runtime334892613208221024.scm"

    const/16 v2, 0x6ce

    const/16 v3, 0x22

    invoke-virtual {v1, v6, v2, v3}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw v1
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 1722
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method
