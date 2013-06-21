.class public Lcom/fleapapa/helper/CallLogs$Clog;
.super Ljava/lang/Object;
.source "CallLogs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fleapapa/helper/CallLogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Clog"
.end annotation


# instance fields
.field call:Lcom/fleapapa/helper/CallPapa$Call;

.field file:Ljava/io/File;

.field ll:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/fleapapa/helper/CallLogs;


# direct methods
.method public constructor <init>(Lcom/fleapapa/helper/CallLogs;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter "file"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/fleapapa/helper/CallLogs$Clog;->this$0:Lcom/fleapapa/helper/CallLogs;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p2, p0, Lcom/fleapapa/helper/CallLogs$Clog;->file:Ljava/io/File;

    return-void
.end method
