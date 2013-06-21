.class Lcom/rookiestudio/perfectviewer/TPreferencesManagement$1;
.super Ljava/lang/Object;
.source "TPreferencesManagement.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->SavePrefrencesAs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TPreferencesManagement;

.field private final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TPreferencesManagement;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$1;->this$0:Lcom/rookiestudio/perfectviewer/TPreferencesManagement;

    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$1;->val$input:Landroid/widget/EditText;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 111
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, value:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationInstance:Landroid/content/Context;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$1;->this$0:Lcom/rookiestudio/perfectviewer/TPreferencesManagement;

    const v3, 0x7f0a0123

    invoke-virtual {v2, v3}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPreferencesManagement$1;->this$0:Lcom/rookiestudio/perfectviewer/TPreferencesManagement;

    invoke-virtual {v1, v0}, Lcom/rookiestudio/perfectviewer/TPreferencesManagement;->SaveTo(Ljava/lang/String;)V

    goto :goto_0
.end method
