.class public Lstericson/busybox/donate/jobs/GatherAppletInformation;
.super Lstericson/busybox/donate/jobs/AsyncJob;
.source "GatherAppletInformation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lstericson/busybox/donate/jobs/AsyncJob",
        "<",
        "Lstericson/busybox/donate/domain/Result;",
        ">;"
    }
.end annotation


# static fields
.field public static APPLET_INFO:I


# instance fields
.field private activity:Lstericson/busybox/donate/Activity/MainActivity;

.field private silent:Z

.field protected view:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput v0, Lstericson/busybox/donate/jobs/GatherAppletInformation;->APPLET_INFO:I

    .line 9
    return-void
.end method

.method public constructor <init>(Lstericson/busybox/donate/Activity/MainActivity;Z)V
    .locals 2
    .parameter "activity"
    .parameter "silent"

    .prologue
    const/4 v1, 0x0

    .line 18
    const v0, 0x7f0b003b

    invoke-direct {p0, p1, v0, v1, v1}, Lstericson/busybox/donate/jobs/AsyncJob;-><init>(Landroid/app/Activity;IZZ)V

    .line 19
    iput-object p1, p0, Lstericson/busybox/donate/jobs/GatherAppletInformation;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    .line 20
    iput-boolean p2, p0, Lstericson/busybox/donate/jobs/GatherAppletInformation;->silent:Z

    .line 21
    return-void
.end method


# virtual methods
.method bridge synthetic callback(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lstericson/busybox/donate/domain/Result;

    invoke-virtual {p0, p1}, Lstericson/busybox/donate/jobs/GatherAppletInformation;->callback(Lstericson/busybox/donate/domain/Result;)V

    return-void
.end method

.method callback(Lstericson/busybox/donate/domain/Result;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 55
    iget-boolean v0, p0, Lstericson/busybox/donate/jobs/GatherAppletInformation;->silent:Z

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lstericson/busybox/donate/jobs/GatherAppletInformation;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    sget v1, Lstericson/busybox/donate/jobs/GatherAppletInformation;->APPLET_INFO:I

    invoke-virtual {v0, p1, v1}, Lstericson/busybox/donate/Activity/MainActivity;->jobCallBack(Lstericson/busybox/donate/domain/Result;I)V

    .line 57
    :cond_0
    return-void
.end method

.method bridge synthetic handle()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lstericson/busybox/donate/jobs/GatherAppletInformation;->handle()Lstericson/busybox/donate/domain/Result;

    move-result-object v0

    return-object v0
.end method

.method handle()Lstericson/busybox/donate/domain/Result;
    .locals 4

    .prologue
    .line 26
    new-instance v0, Lstericson/busybox/donate/jobs/AppletInformation;

    invoke-direct {v0}, Lstericson/busybox/donate/jobs/AppletInformation;-><init>()V

    .line 27
    .local v0, appletInformation:Lstericson/busybox/donate/jobs/AppletInformation;
    iget-object v1, p0, Lstericson/busybox/donate/jobs/GatherAppletInformation;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    iget-boolean v2, p0, Lstericson/busybox/donate/jobs/GatherAppletInformation;->silent:Z

    sget-object v3, Lstericson/busybox/donate/Constants;->appletsString:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0, v3}, Lstericson/busybox/donate/jobs/AppletInformation;->getAppletInformation(Landroid/content/Context;ZLstericson/busybox/donate/jobs/GatherAppletInformation;[Ljava/lang/String;)Lstericson/busybox/donate/domain/Result;

    move-result-object v1

    return-object v1
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lstericson/busybox/donate/jobs/AsyncJob;->onProgressUpdate([Ljava/lang/Object;)V

    .line 41
    :try_start_0
    iget-object v0, p0, Lstericson/busybox/donate/jobs/GatherAppletInformation;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    iget-object v0, v0, Lstericson/busybox/donate/Activity/MainActivity;->view1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lstericson/busybox/donate/jobs/GatherAppletInformation;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    const v3, 0x7f0b003c

    invoke-virtual {v2, v3}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    :goto_0
    :try_start_1
    iget-object v0, p0, Lstericson/busybox/donate/jobs/GatherAppletInformation;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    iget-object v0, v0, Lstericson/busybox/donate/Activity/MainActivity;->view2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lstericson/busybox/donate/jobs/GatherAppletInformation;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    const v3, 0x7f0b003c

    invoke-virtual {v2, v3}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    :goto_1
    return-void

    .line 48
    :catch_0
    move-exception v0

    goto :goto_1

    .line 42
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public varargs publishCurrentProgress([Ljava/lang/Object;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lstericson/busybox/donate/jobs/GatherAppletInformation;->publishProgress([Ljava/lang/Object;)V

    .line 33
    return-void
.end method
