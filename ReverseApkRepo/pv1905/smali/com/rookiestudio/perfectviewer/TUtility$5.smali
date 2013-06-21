.class Lcom/rookiestudio/perfectviewer/TUtility$5;
.super Ljava/lang/Object;
.source "TUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TUtility;->DoSaveHistory(Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$FileName:Ljava/lang/String;

.field private final synthetic val$FileOrder:I

.field private final synthetic val$Index:I

.field private final synthetic val$Total:I


# direct methods
.method constructor <init>(ILjava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput p1, p0, Lcom/rookiestudio/perfectviewer/TUtility$5;->val$FileOrder:I

    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TUtility$5;->val$FileName:Ljava/lang/String;

    iput p3, p0, Lcom/rookiestudio/perfectviewer/TUtility$5;->val$Index:I

    iput p4, p0, Lcom/rookiestudio/perfectviewer/TUtility$5;->val$Total:I

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 239
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TUtility$5;->val$FileOrder:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TUtility$5;->val$FileName:Ljava/lang/String;

    iget v1, p0, Lcom/rookiestudio/perfectviewer/TUtility$5;->val$Index:I

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/Config;->AddHistoryFile(Ljava/lang/String;I)V

    .line 241
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->HistoryManager:Lcom/rookiestudio/perfectviewer/THistoryManager;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TUtility$5;->val$FileName:Ljava/lang/String;

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TUtility$5;->val$Index:I

    iget v3, p0, Lcom/rookiestudio/perfectviewer/TUtility$5;->val$Total:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/rookiestudio/perfectviewer/THistoryManager;->AddHistoryFile(Ljava/lang/String;II)V

    .line 246
    :goto_0
    const-string v0, "LastOpenFile"

    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->LastOpenFile:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v0, "LastUseFolder"

    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->LastUseFolder:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/Config;->SaveSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TUtility$5;->val$FileName:Ljava/lang/String;

    iget v1, p0, Lcom/rookiestudio/perfectviewer/TUtility$5;->val$FileOrder:I

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TUtility$5;->val$Index:I

    invoke-static {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/Config;->AddHistoryFile(Ljava/lang/String;II)V

    .line 244
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->HistoryManager:Lcom/rookiestudio/perfectviewer/THistoryManager;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TUtility$5;->val$FileName:Ljava/lang/String;

    iget v2, p0, Lcom/rookiestudio/perfectviewer/TUtility$5;->val$FileOrder:I

    iget v3, p0, Lcom/rookiestudio/perfectviewer/TUtility$5;->val$Index:I

    iget v4, p0, Lcom/rookiestudio/perfectviewer/TUtility$5;->val$Total:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/rookiestudio/perfectviewer/THistoryManager;->AddHistoryFile(Ljava/lang/String;III)V

    goto :goto_0
.end method
