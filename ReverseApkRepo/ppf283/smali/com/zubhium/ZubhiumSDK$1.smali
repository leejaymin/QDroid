.class Lcom/zubhium/ZubhiumSDK$1;
.super Ljava/lang/Object;
.source "ZubhiumSDK.java"

# interfaces
.implements Lcom/zubhium/interfaces/ZubhiumCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zubhium/ZubhiumSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zubhium/ZubhiumSDK;


# direct methods
.method constructor <init>(Lcom/zubhium/ZubhiumSDK;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zubhium/ZubhiumSDK$1;->this$0:Lcom/zubhium/ZubhiumSDK;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public submitLogs(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "exceptionHandler"
    .parameter "t"
    .parameter "e"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$1;->this$0:Lcom/zubhium/ZubhiumSDK;

    #getter for: Lcom/zubhium/ZubhiumSDK;->zubhiumSecretKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/zubhium/ZubhiumSDK;->access$0(Lcom/zubhium/ZubhiumSDK;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$1;->this$0:Lcom/zubhium/ZubhiumSDK;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zubhium/ZubhiumSDK;->reportLogs(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 180
    :goto_0
    return-void

    .line 177
    :cond_0
    const-string v0, "failed to report crash, due to invalid secret key."

    invoke-static {v0}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    .line 178
    invoke-interface {p1, p2, p3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
