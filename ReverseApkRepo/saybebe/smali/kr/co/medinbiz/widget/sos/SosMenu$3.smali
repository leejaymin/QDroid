.class Lkr/co/medinbiz/widget/sos/SosMenu$3;
.super Ljava/lang/Thread;
.source "SosMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/sos/SosMenu;->gpsInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/sos/SosMenu;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/sos/SosMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/sos/SosMenu$3;->this$0:Lkr/co/medinbiz/widget/sos/SosMenu;

    .line 118
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 121
    :goto_0
    iget-object v1, p0, Lkr/co/medinbiz/widget/sos/SosMenu$3;->this$0:Lkr/co/medinbiz/widget/sos/SosMenu;

    #getter for: Lkr/co/medinbiz/widget/sos/SosMenu;->isLocaiton:Z
    invoke-static {v1}, Lkr/co/medinbiz/widget/sos/SosMenu;->access$4(Lkr/co/medinbiz/widget/sos/SosMenu;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    iget-object v1, p0, Lkr/co/medinbiz/widget/sos/SosMenu$3;->this$0:Lkr/co/medinbiz/widget/sos/SosMenu;

    #getter for: Lkr/co/medinbiz/widget/sos/SosMenu;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lkr/co/medinbiz/widget/sos/SosMenu;->access$5(Lkr/co/medinbiz/widget/sos/SosMenu;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 132
    return-void

    .line 123
    :cond_0
    const-wide/16 v1, 0xc8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
