.class Ledu/umich/PowerTutor/components/GPS$3;
.super Ljava/lang/Thread;
.source "GPS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/umich/PowerTutor/components/GPS;-><init>(Landroid/content/Context;Ledu/umich/PowerTutor/phone/PhoneConstants;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/components/GPS;

.field private final synthetic val$gpsStatusFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ledu/umich/PowerTutor/components/GPS;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/umich/PowerTutor/components/GPS$3;->this$0:Ledu/umich/PowerTutor/components/GPS;

    iput-object p2, p0, Ledu/umich/PowerTutor/components/GPS$3;->val$gpsStatusFile:Ljava/io/File;

    .line 224
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 228
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Ledu/umich/PowerTutor/components/GPS$3;->val$gpsStatusFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 229
    .local v2, fin:Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v1

    .local v1, event:I
    :goto_0
    invoke-static {}, Ledu/umich/PowerTutor/components/GPS$3;->interrupted()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 236
    .end local v1           #event:I
    .end local v2           #fin:Ljava/io/FileInputStream;
    :cond_0
    :goto_1
    invoke-static {}, Ledu/umich/PowerTutor/components/GPS$3;->interrupted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 238
    const-string v3, "GPS"

    const-string v4, "GPS status thread exited. No longer gathering gps data."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_1
    return-void

    .line 231
    .restart local v1       #event:I
    .restart local v2       #fin:Ljava/io/FileInputStream;
    :cond_2
    :try_start_1
    iget-object v3, p0, Ledu/umich/PowerTutor/components/GPS$3;->this$0:Ledu/umich/PowerTutor/components/GPS;

    #getter for: Ledu/umich/PowerTutor/components/GPS;->gpsState:Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;
    invoke-static {v3}, Ledu/umich/PowerTutor/components/GPS;->access$0(Ledu/umich/PowerTutor/components/GPS;)Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Ledu/umich/PowerTutor/components/GPS$GpsStateKeeper;->updateEvent(II)V

    .line 230
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0

    .line 233
    .end local v1           #event:I
    .end local v2           #fin:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 234
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
