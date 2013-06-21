.class Lcom/rookiestudio/perfectviewer/TPreferencesManagement$8;
.super Ljava/lang/Object;
.source "TPreferencesManagement.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->AskDelete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TPreferencesManagement;

.field private final synthetic val$FileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TPreferencesManagement;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$8;->this$0:Lcom/rookiestudio/perfectviewer/TPreferencesManagement;

    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$8;->val$FileName:Ljava/lang/String;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 283
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$8;->this$0:Lcom/rookiestudio/perfectviewer/TPreferencesManagement;

    #getter for: Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->SavePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->access$0(Lcom/rookiestudio/perfectviewer/TPreferencesManagement;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$8;->val$FileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    .local v0, SourceFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationInstance:Landroid/content/Context;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$8;->this$0:Lcom/rookiestudio/perfectviewer/TPreferencesManagement;

    const v3, 0x7f0a0096

    invoke-virtual {v2, v3}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 291
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$8;->this$0:Lcom/rookiestudio/perfectviewer/TPreferencesManagement;

    #getter for: Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->PreferencesFiles:Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->access$1(Lcom/rookiestudio/perfectviewer/TPreferencesManagement;)Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->List()V

    .line 292
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$8;->this$0:Lcom/rookiestudio/perfectviewer/TPreferencesManagement;

    #getter for: Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->PreferencesFiles:Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;
    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->access$1(Lcom/rookiestudio/perfectviewer/TPreferencesManagement;)Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$TPreferencesFiles;->notifyDataSetChanged()V

    .line 293
    return-void

    .line 288
    :cond_1
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationInstance:Landroid/content/Context;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$8;->this$0:Lcom/rookiestudio/perfectviewer/TPreferencesManagement;

    const v3, 0x7f0a0097

    invoke-virtual {v2, v3}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
