.class Lcom/zubhium/ZubhiumSDK$2;
.super Landroid/os/AsyncTask;
.source "ZubhiumSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zubhium/ZubhiumSDK;->sendOfflineCrash()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zubhium/ZubhiumSDK;


# direct methods
.method constructor <init>(Lcom/zubhium/ZubhiumSDK;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zubhium/ZubhiumSDK$2;->this$0:Lcom/zubhium/ZubhiumSDK;

    .line 228
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zubhium/ZubhiumSDK$2;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "params"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$2;->this$0:Lcom/zubhium/ZubhiumSDK;

    #calls: Lcom/zubhium/ZubhiumSDK;->enableCrashReporting()V
    invoke-static {v0}, Lcom/zubhium/ZubhiumSDK;->access$1(Lcom/zubhium/ZubhiumSDK;)V

    .line 233
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$2;->this$0:Lcom/zubhium/ZubhiumSDK;

    #calls: Lcom/zubhium/ZubhiumSDK;->initDeviceId()V
    invoke-static {v0}, Lcom/zubhium/ZubhiumSDK;->access$2(Lcom/zubhium/ZubhiumSDK;)V

    .line 234
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$2;->this$0:Lcom/zubhium/ZubhiumSDK;

    #calls: Lcom/zubhium/ZubhiumSDK;->initWindow()V
    invoke-static {v0}, Lcom/zubhium/ZubhiumSDK;->access$3(Lcom/zubhium/ZubhiumSDK;)V

    .line 235
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$2;->this$0:Lcom/zubhium/ZubhiumSDK;

    invoke-virtual {v0}, Lcom/zubhium/ZubhiumSDK;->submitCrashes()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
