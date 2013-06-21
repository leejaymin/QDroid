.class Lcom/fleapapa/helper/CallLogs$6;
.super Ljava/lang/Object;
.source "CallLogs.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallLogs;->layoutCallLogs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/fleapapa/helper/CallLogs$Clog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallLogs;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallLogs;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallLogs$6;->this$0:Lcom/fleapapa/helper/CallLogs;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/fleapapa/helper/CallLogs$Clog;Lcom/fleapapa/helper/CallLogs$Clog;)I
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 136
    iget-object v0, p1, Lcom/fleapapa/helper/CallLogs$Clog;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-wide v0, v0, Lcom/fleapapa/helper/CallPapa$Call;->etime:J

    iget-object v2, p2, Lcom/fleapapa/helper/CallLogs$Clog;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-wide v2, v2, Lcom/fleapapa/helper/CallPapa$Call;->etime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p2, Lcom/fleapapa/helper/CallLogs$Clog;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-wide v0, v0, Lcom/fleapapa/helper/CallPapa$Call;->etime:J

    iget-object v2, p1, Lcom/fleapapa/helper/CallLogs$Clog;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-wide v2, v2, Lcom/fleapapa/helper/CallPapa$Call;->etime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/fleapapa/helper/CallLogs$Clog;

    check-cast p2, Lcom/fleapapa/helper/CallLogs$Clog;

    invoke-virtual {p0, p1, p2}, Lcom/fleapapa/helper/CallLogs$6;->compare(Lcom/fleapapa/helper/CallLogs$Clog;Lcom/fleapapa/helper/CallLogs$Clog;)I

    move-result v0

    return v0
.end method
