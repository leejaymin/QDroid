.class Lcom/rookiestudio/perfectviewer/TStartup$1;
.super Ljava/lang/Object;
.source "TStartup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TStartup;->ShowDownloadMessage(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TStartup;

.field private final synthetic val$CPU_ABI:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TStartup;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TStartup$1;->this$0:Lcom/rookiestudio/perfectviewer/TStartup;

    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TStartup$1;->val$CPU_ABI:Ljava/lang/String;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "market://details?id=com.rookiestudio.perfectviewer."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TStartup$1;->val$CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, URL:Ljava/lang/String;
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TStartup$1;->this$0:Lcom/rookiestudio/perfectviewer/TStartup;

    invoke-static {v1, v0}, Lcom/rookiestudio/perfectviewer/TUtility;->OpenURL(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://play.google.com/store/apps/details?id=com.rookiestudio.perfectviewer."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TStartup$1;->val$CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TStartup$1;->this$0:Lcom/rookiestudio/perfectviewer/TStartup;

    invoke-static {v1, v0}, Lcom/rookiestudio/perfectviewer/TUtility;->OpenURL(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 211
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 212
    return-void
.end method
